package defpackage;

/* loaded from: classes.dex */
public final class UA {

    /* renamed from: do, reason: not valid java name */
    public int f3842do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f3845if = 0;

    /* renamed from: for, reason: not valid java name */
    public int f3844for = Integer.MIN_VALUE;

    /* renamed from: new, reason: not valid java name */
    public int f3847new = Integer.MIN_VALUE;

    /* renamed from: try, reason: not valid java name */
    public int f3848try = 0;

    /* renamed from: case, reason: not valid java name */
    public int f3841case = 0;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3843do = false;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f3846if = false;

    /* renamed from: do, reason: not valid java name */
    public final void m2363do(int i, int i2) {
        this.f3844for = i;
        this.f3847new = i2;
        this.f3846if = true;
        if (this.f3843do) {
            if (i2 != Integer.MIN_VALUE) {
                this.f3842do = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f3845if = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f3842do = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f3845if = i2;
        }
    }
}
