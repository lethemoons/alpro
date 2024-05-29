import turtle as t
import colorsys as cs

t.setup(640,640)
t.bgcolor('black')
t.pencolor('white')
t.tracer(50)

t.up()
t.rt(90)
t.fd(150)
t.lt(180)
t.down()

def tree(a1,a2,d):
    if d<0:
        return
    t.color(cs.hls_to_rgb(d/11,0.5,1))
    t.pensize(d+1)
    t.fd(d*6)
    p = t.pos()
    h = t.heading()
    t.lt(a1)
    tree(a1,a2,d-1)
    t.up()
    t.goto(p)
    t.seth(h)
    t.rt(a2)
    t.down()
    tree(a1,a2,d-1)

tree(25,25,11)
t.done()