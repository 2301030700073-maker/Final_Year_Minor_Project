package defpackage;

import defpackage.C3706sq;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class G2 implements C3706sq.Cdo {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cdo f1116do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HE f1117do = null;

    /* renamed from: do, reason: not valid java name */
    public float f1115do = 0.0f;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<HE> f1118do = new ArrayList<>();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f1119do = false;

    /* renamed from: G2$do, reason: invalid class name */
    public interface Cdo {
        /* renamed from: break */
        void mo327break(HE he, float f);

        /* renamed from: case */
        float mo328case(G2 g2, boolean z);

        /* renamed from: catch */
        float mo329catch(int i);

        void clear();

        /* renamed from: do */
        HE mo330do(int i);

        /* renamed from: else */
        void mo331else(HE he, float f, boolean z);

        /* renamed from: for */
        void mo332for(float f);

        /* renamed from: goto */
        float mo333goto(HE he);

        /* renamed from: if */
        int mo334if();

        /* renamed from: new */
        void mo335new();

        /* renamed from: this */
        float mo336this(HE he, boolean z);

        /* renamed from: try */
        boolean mo337try(HE he);
    }

    public G2() {
    }

    /* renamed from: case, reason: not valid java name */
    public final void m696case(HE he) {
        HE he2 = this.f1117do;
        if (he2 != null) {
            this.f1116do.mo327break(he2, -1.0f);
            this.f1117do = null;
        }
        float mo336this = this.f1116do.mo336this(he, true) * (-1.0f);
        this.f1117do = he;
        if (mo336this == 1.0f) {
            return;
        }
        this.f1115do /= mo336this;
        this.f1116do.mo332for(mo336this);
    }

    @Override // defpackage.C3706sq.Cdo
    /* renamed from: do */
    public HE mo655do(boolean[] zArr) {
        return m701try(zArr, null);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m697else(HE he, boolean z) {
        if (he.f1322if) {
            float mo333goto = this.f1116do.mo333goto(he);
            this.f1115do = (he.f1315do * mo333goto) + this.f1115do;
            this.f1116do.mo336this(he, z);
            if (z) {
                he.m824if(this);
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final void m698for(HE he, HE he2, HE he3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1115do = i;
        }
        if (z) {
            this.f1116do.mo327break(he, 1.0f);
            this.f1116do.mo327break(he2, -1.0f);
            this.f1116do.mo327break(he3, -1.0f);
        } else {
            this.f1116do.mo327break(he, -1.0f);
            this.f1116do.mo327break(he2, 1.0f);
            this.f1116do.mo327break(he3, 1.0f);
        }
    }

    /* renamed from: goto */
    public void mo656goto(G2 g2, boolean z) {
        float mo328case = this.f1116do.mo328case(g2, z);
        this.f1115do = (g2.f1115do * mo328case) + this.f1115do;
        if (z) {
            g2.f1117do.m824if(this);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public final void m699if(C3706sq c3706sq, int i) {
        this.f1116do.mo327break(c3706sq.m8158this(i), 1.0f);
        this.f1116do.mo327break(c3706sq.m8158this(i), -1.0f);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m700new(HE he, HE he2, HE he3, int i) {
        boolean z = false;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            }
            this.f1115do = i;
        }
        if (z) {
            this.f1116do.mo327break(he, 1.0f);
            this.f1116do.mo327break(he2, -1.0f);
            this.f1116do.mo327break(he3, 1.0f);
        } else {
            this.f1116do.mo327break(he, -1.0f);
            this.f1116do.mo327break(he2, 1.0f);
            this.f1116do.mo327break(he3, -1.0f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r8 = this;
            HE r0 = r8.f1117do
            if (r0 != 0) goto L7
            java.lang.String r0 = "0"
            goto L17
        L7:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = ""
            r0.<init>(r1)
            HE r1 = r8.f1117do
            r0.append(r1)
            java.lang.String r0 = r0.toString()
        L17:
            java.lang.String r1 = " = "
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r1)
            float r1 = r8.f1115do
            r2 = 0
            r3 = 0
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 == 0) goto L38
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            float r0 = r8.f1115do
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            r1 = 1
            goto L39
        L38:
            r1 = 0
        L39:
            G2$do r4 = r8.f1116do
            int r4 = r4.mo334if()
        L3f:
            if (r2 >= r4) goto L9f
            G2$do r5 = r8.f1116do
            HE r5 = r5.mo330do(r2)
            if (r5 != 0) goto L4a
            goto L9c
        L4a:
            G2$do r6 = r8.f1116do
            float r6 = r6.mo329catch(r2)
            int r7 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r7 != 0) goto L55
            goto L9c
        L55:
            java.lang.String r5 = r5.toString()
            if (r1 != 0) goto L66
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 >= 0) goto L79
            java.lang.String r1 = "- "
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r1)
            goto L75
        L66:
            if (r7 <= 0) goto L6f
            java.lang.String r1 = " + "
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r1)
            goto L79
        L6f:
            java.lang.String r1 = " - "
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r1)
        L75:
            r1 = -1082130432(0xffffffffbf800000, float:-1.0)
            float r6 = r6 * r1
        L79:
            r1 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 != 0) goto L84
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r5)
            goto L9b
        L84:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            r1.append(r0)
            r1.append(r6)
            java.lang.String r0 = " "
            r1.append(r0)
            r1.append(r5)
            java.lang.String r0 = r1.toString()
        L9b:
            r1 = 1
        L9c:
            int r2 = r2 + 1
            goto L3f
        L9f:
            if (r1 != 0) goto La7
            java.lang.String r1 = "0.0"
            java.lang.String r0 = defpackage.Cpublic.m7816case(r0, r1)
        La7:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.G2.toString():java.lang.String");
    }

    /* renamed from: try, reason: not valid java name */
    public final HE m701try(boolean[] zArr, HE he) {
        int i;
        int mo334if = this.f1116do.mo334if();
        HE he2 = null;
        float f = 0.0f;
        for (int i2 = 0; i2 < mo334if; i2++) {
            float mo329catch = this.f1116do.mo329catch(i2);
            if (mo329catch < 0.0f) {
                HE mo330do = this.f1116do.mo330do(i2);
                if ((zArr == null || !zArr[mo330do.f1316do]) && mo330do != he && (((i = mo330do.f1324new) == 3 || i == 4) && mo329catch < f)) {
                    f = mo329catch;
                    he2 = mo330do;
                }
            }
        }
        return he2;
    }

    public G2(C2861hI c2861hI) {
        this.f1116do = new D2(this, c2861hI);
    }
}
