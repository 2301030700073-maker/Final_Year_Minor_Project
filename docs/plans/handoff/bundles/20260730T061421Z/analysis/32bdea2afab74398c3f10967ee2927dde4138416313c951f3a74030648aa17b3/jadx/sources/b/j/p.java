package b.j;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public final t f1001a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1002b;

    /* renamed from: c, reason: collision with root package name */
    public int f1003c = -1;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ q f1004d;

    public p(q qVar, t tVar) {
        this.f1004d = qVar;
        this.f1001a = tVar;
    }

    public void h(boolean z) {
        if (z == this.f1002b) {
            return;
        }
        this.f1002b = z;
        q qVar = this.f1004d;
        int i = z ? 1 : -1;
        int i2 = qVar.f1007c;
        qVar.f1007c = i + i2;
        if (!qVar.f1008d) {
            qVar.f1008d = true;
            while (true) {
                try {
                    if (i2 == qVar.f1007c) {
                        break;
                    }
                    boolean z2 = i2 == 0 && qVar.f1007c > 0;
                    boolean z3 = i2 > 0 && qVar.f1007c == 0;
                    int i3 = qVar.f1007c;
                    if (z2) {
                        qVar.d();
                    } else if (z3) {
                        qVar.e();
                    }
                    i2 = i3;
                } finally {
                    qVar.f1008d = false;
                }
            }
        }
        if (this.f1002b) {
            this.f1004d.c(this);
        }
    }

    public void i() {
    }

    public abstract boolean j();
}
