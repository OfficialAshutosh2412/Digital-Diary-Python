from flask import Flask, render_template, redirect, request, url_for, session
from flaskext.mysql import MySQL
import os
app = Flask(__name__)
app.secret_key = "abc"
mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'digitaldiary'
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
mysql.init_app(app)
app.config['UPLOAD_PATH'] = "C:\\Users\\Ashutosh Prasad\\PycharmProjects\\DigitalDiary\\static\\upload_images"

# ---------------- # for home page -------------------------------------------------------------------

@app.route('/')
def hom():
    conn=mysql.connect()
    cur=conn.cursor()
    cur.execute("select * from news")
    qw=cur.fetchall()
    return render_template('home.html', yt=qw)


# ---------------- for registration page -------------------------------------------------------------


@app.route('/register')
def reg():
    return render_template("register.html")


@app.route('/register',methods=['GET', 'POST'])
def regist():
    if request.method == 'POST':
        if request.form.get('reg'):
            f = request.files['file_data']
            f.save(os.path.join(app.config['UPLOAD_PATH'], f.filename))
            conn = mysql.connect().cursor().execute("insert into registration values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",(request.form['t1'],request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5'],request.form['t6'],request.form['t7'],request.form['t8'],request.form['t9'],request.form['t10'],request.form['t11'],f.filename))
            name_file = f.filename
            mysql.connect().commit()
            conn = mysql.connect().cursor().execute("insert into login values(%s,%s)", (request.form['t1'], request.form['t2']))
            mysql.connect().commit()
            return render_template("login.html", files = name_file)
    return render_template('register.html')


# ------------------ for login page -------------------------------------------------------------------


@app.route('/login')
def log():
    return render_template("login.html")


@app.route('/login', methods=['GET', 'POST'])
def logoin():
    mydb=mysql.connect()
    mycursor=mydb.cursor()
    if request.method=='POST':
        username = request.form['t1']
        password = request.form['t2']
        session['un'] = request.form['t1']
        if 'un' in session:
            s = session['un']
        mycursor.execute("select * from login where username='"+username+"' and password='"+password+"'")
        mycursor.fetchall()
        r=request.form['t1'].upper()
        count=mycursor.rowcount
        if count==1:
            return render_template('userhome.html',name = s)
        else:
            return render_template('login.html')
    mydb.commit()
    mycursor.close()

# --------------- for user home page -----------------------------------------------------------------------


@app.route('/users')
def homeuser():
    return render_template('userhome.html')

# -------------------- for contact us page -----------------------------------------------------------------


@app.route('/cont')
def conts():
    return  render_template("contact.html")


@app.route('/cont', methods=['GET', 'POST'])
def cnt():
    if request.method == 'POST':
        if request.form.get('send-message'):
            conn = mysql.connect().cursor().execute("insert into contactus values(%s,%s,%s,%s)",(request.form['t1'], request.form['t2'], request.form['t3'], request.form['t4']))
            mysql.connect().commit()
            mesg="contact you soon!"
            return render_template("contact.html", m=mesg)
        return render_template("contact.html")


# -------------------- for about web page ------------------------------------------------------------------

@app.route('/about')
def ab():
    return render_template("about.html")

# --------------------- for user profile web page ---------------------------------------------------------


@app.route('/profile')
def prof():
    con = mysql.connect()
    cur = con.cursor()
    cur.execute("select * from registration where username = %s", (session['un']))
    dr = cur.fetchall()
    return render_template("userprofile.html", d=dr)

# ---------------- for user contact web page ---------------------------------------------------------------


@app.route('/usercontact')
def ucon():
    return render_template("usercontact.html")


@app.route('/usercontact',methods=['GET','POST'])
def uco():
    if request.method=='POST':
        if request.form.get('s'):
            conn=mysql.connect().cursor().execute("insert into contacts(username,person,office_address,home_address,whatsapp_no,call_no,details) values(%s,%s,%s,%s,%s,%s,%s)",(request.form['t1'],request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5'],request.form['t6'],request.form['t7']))
            mysql.connect().commit()
            msg="successfully saved"
            return render_template("usercontact.html",m=msg)
        elif request.form.get('fi'):
            conn=mysql.connect()
            cur=conn.cursor()
            cur.execute("select * from contacts where username=%s",(request.form['r1']))
            sr=cur.fetchall()
            return render_template("usercontact.html",ro=sr)
        return render_template("usercontact.html")


# ----------------------- for note web page -------------------------------------------------------------------

@app.route('/notes')
def nt():
    return render_template("notes.html")


@app.route('/notes',methods=['GET','POST'])
def nitt():
    if request.method=='POST':
        if request.form.get('save'):
            conn=mysql.connect().cursor().execute("insert into notes values(%s,%s,%s,%s,%s,%s)",(request.form['t1'], request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5'],request.form['t6']))
            mysql.connect().commit()
            msg="Note Saved..."
            return render_template("notes.html",m=msg)
        elif request.form.get('s'):
            conn=mysql.connect()
            cur=conn.cursor()
            cur.execute("select * from notes where username=%s", (request.form['e1']))
            sk=cur.fetchall()
            return render_template("notes.html",awm=sk)
        return render_template("notes.html")


# --------------- for jokes web page ----------------------------------------------------------------------------------

@app.route('/jokes')
def jks():
    return render_template("jokes.html")


@app.route('/jokes',methods=['GET','POST'])
def jkjs():
    if request.method == 'POST':
        if request.form.get('save'):
            conn = mysql.connect().cursor().execute("insert into jokes(username,jokerefered,jokedetails,jokedate,joketime) values(%s,%s,%s,%s,%s)",(request.form['t1'],request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5']))
            mysql.connect().commit()
            return render_template("jokes.html")
        elif request.form.get('up'):
            conn=mysql.connect().cursor().execute("update jokes set jokerefered=%s,jokedetails=%s,jokedate=%s,joketime=%s where username=%s",(request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5'],request.form['t1']))
            mysql.connect().commit()
            return render_template("jokes.html")
        elif request.form.get('del'):
            conn=mysql.connect().cursor().execute("delete from jokes where jokerefered=%s",request.form['t2'])
            mysql.connect().commit()
            return render_template("jokes.html")
        elif request.form.get('show'):
            conn=mysql.connect()
            cur=conn.cursor()
            cur.execute("select * from jokes where username=%s",(request.form['u1']))
            fr=cur.fetchall()
            return render_template("jokes.html",po=fr)
        return render_template("jokes.html")

# ----------------------------- for feedback web page ----------------------------------------------------------------


@app.route('/feedback')
def feed():
    return render_template("feedback.html")


@app.route('/feedback',methods=['GET', 'POST'])
def feds():
    if request.method=='POST':
        if request.form.get('sd'):
            con = mysql.connect().cursor().execute("insert into feedback values(%s,%s,%s,%s,%s)", (request.form['t1'],request.form['t2'],request.form['t3'],request.form['t4'],request.form['t5']))
            mysql.connect().commit()
            return render_template("feedback.html")
        elif request.form.get('show'):
            con=mysql.connect()
            cur=con.cursor()
            cur.execute("select * from fdbkreply where username=%s",(request.form['y1']))
            nh=cur.fetchall()
            return render_template("feedback.html",er=nh)
        return render_template("feedback.html")


# --------------- for admin home web page --------------------------------------------------------------------------


@app.route('/ashutoshprasad242720002000')
def ad():
    con = mysql.connect()
    currs = con.cursor()
    currs.execute("select username from registration")
    count_1 = currs.rowcount

    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select username from contactus")
    count_2 = cur.rowcount

    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select person from contacts")
    count_3 = cur.rowcount

    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select noteid from notes")
    count_4 = cur.rowcount

    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select newsid from news")
    count_5 = cur.rowcount

    return render_template("adminhome.html", countUser = count_1, msgCount = count_2, contactCount = count_3,
                           notesCount = count_4, newsCount = count_5)

# ---------------- for admin users web page ------------------------------------------------------------------------


@app.route('/adminusers')
def adus():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from registration")
    kr = cur.fetchall()
    con = mysql.connect()
    return render_template("adminuser.html", rk=kr)


@app.route('/adminusers',methods=['GET','POST'])
def ads():
    if request.method=='POST':
        if request.form.get('so'):
            conn=mysql.connect()
            cur=conn.cursor()
            cur.execute("select * from registration where username=%s", (request.form['t1']))
            wf=cur.fetchall()
            return render_template("adminuser.html",fm=wf)
        return render_template("adminuser.html")

# ---------------- for admin contact us form ----------------------------------------------------------------------


@app.route('/admincontus')
def cnus():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from contactus")
    wf = cur.fetchall()
    return render_template("admincontactus.html", tor=wf)


@app.route('/admincontacts')
def adcons():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from contacts")
    kr = cur.fetchall()
    return render_template("admincontact.html", rg=kr)


@app.route('/admincontacts',methods=['GET','POST'])
def adcn():
    if request.method=='POST':
        if request.form.get('sss'):
            conn=mysql.connect()
            cur=conn.cursor()
            cur.execute("select * from contacts where username=%s", (request.form['t1']))
            wf=cur.fetchall()
            return render_template("admincontact.html",wr=wf)

        return render_template("admincontact.html")

# ---------- for admin notes web page ------------------------------------------------------------------------------


@app.route('/adminnotes')
def adnt():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from notes")
    rc = cur.fetchall()
    return render_template("adminnotes.html", cr=rc)


@app.route('/adminnotes',methods=['GET','POST'])
def adddc():
    if request.method=='POST':
        if request.form.get('s10'):
            conn = mysql.connect()
            cur = conn.cursor()
            cur.execute("select * from notes where username=%s",(request.form['q1']))
            lr = cur.fetchall()
            return render_template("adminnotes.html", rl=lr)
        return render_template("adminnotes.html")


# -------------------------- for admin jokes ---------------------------------------------------------------------

@app.route('/adminjokes')
def adjk():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from jokes")
    rf = cur.fetchall()
    return render_template("adminjokes.html", ur=rf)


@app.route('/adminjokes',methods=['GET','POST'])
def adkjs():
    if request.method=='POST':
        if request.form.get('soo'):
            conn = mysql.connect()
            cur = conn.cursor()
            cur.execute("select * from jokes where username=%s",(request.form['m1']))
            po=cur.fetchall()
            return render_template("adminjokes.html",yn=po)
        return render_template("adminjokes.html")


# ------------- for admin feedback ---------------------------------------------------------------------------------

@app.route('/adminfeedback')
def afd():
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("select * from feedback")
    re = cur.fetchall()
    return render_template("adminfeedback.html", yr=re)


@app.route('/adminfeedback',methods=['GET','POST'])
def rtur():
    if request.method=='POST':
        if request.form.get('send'):
            conn=mysql.connect().cursor().execute("insert into fdbkreply values(%s,%s,%s)",(request.form['l1'],request.form['l3'],request.form['l2']))
            mysql.connect().commit()
            return render_template("adminfeedback.html")
        if request.form.get('del'):
            con=mysql.connect().cursor().execute("delete from fdbkreply where fdid=%s",(request.form['l1']))
            mysql.connect().commit()
            return render_template("adminfeedback.html")
        elif request.form.get('so'):
            conn = mysql.connect()
            cur = conn.cursor()
            cur.execute("select * from fdbkreply")
            df = cur.fetchall()
            return render_template("adminfeedback.html", fd=df)
        return render_template("adminfeedback.html")

# ------------------ for admin news ------------------------------------------------------------------------------------


@app.route('/adminnews')
def adns():
    conn=mysql.connect()
    cur=conn.cursor()
    cur.execute("select * from news")
    we=cur.fetchall()
    return render_template("adminnews.html",rt=we)


@app.route('/adminnews' , methods=['GET','POST'])
def adsn():
    if request.method == 'POST':
        if request.form.get('sv'):
            conn = mysql.connect().cursor().execute("insert into news(title,description,date,time) values(%s,%s,%s,%s)",(request.form['t1'],request.form['t2'],request.form['t3'],request.form['t4']))
            mysql.connect().commit()
            msg="inserted"
            return render_template("adminnews.html",m=msg)
        elif request.form.get('del'):
            conn=mysql.connect().cursor().execute("delete from news where title=%s", request.form['t1'])
            mysql.connect().commit()
            return render_template("adminnews.html")
        return render_template("adminnews.html")

# -------------- end statement -----------------------------------------------------------------------------------------


if __name__ == "__main__":
    app.run(debug=True)
