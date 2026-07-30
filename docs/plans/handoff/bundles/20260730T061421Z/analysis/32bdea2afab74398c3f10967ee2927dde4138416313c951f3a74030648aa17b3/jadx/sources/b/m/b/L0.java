package b.m.b;

/* loaded from: classes.dex */
public class L0 {
    public final b.d.n mLayoutHolderMap = new b.d.n();
    public final b.d.l mOldChangedHolders = new b.d.l();

    public void a(w0 w0Var) {
        J0 j0 = (J0) this.mLayoutHolderMap.getOrDefault(w0Var, null);
        if (j0 == null) {
            j0 = J0.a();
            this.mLayoutHolderMap.put(w0Var, j0);
        }
        j0.f1113a |= 1;
    }

    public void b(w0 w0Var, Y y) {
        J0 j0 = (J0) this.mLayoutHolderMap.getOrDefault(w0Var, null);
        if (j0 == null) {
            j0 = J0.a();
            this.mLayoutHolderMap.put(w0Var, j0);
        }
        j0.f1115c = y;
        j0.f1113a |= 8;
    }

    public void c(w0 w0Var, Y y) {
        J0 j0 = (J0) this.mLayoutHolderMap.getOrDefault(w0Var, null);
        if (j0 == null) {
            j0 = J0.a();
            this.mLayoutHolderMap.put(w0Var, j0);
        }
        j0.f1114b = y;
        j0.f1113a |= 4;
    }

    public boolean d(w0 w0Var) {
        J0 j0 = (J0) this.mLayoutHolderMap.getOrDefault(w0Var, null);
        return (j0 == null || (j0.f1113a & 1) == 0) ? false : true;
    }

    public final Y e(w0 w0Var, int i) {
        J0 j0;
        Y y;
        int d2 = this.mLayoutHolderMap.d(w0Var);
        if (d2 >= 0 && (j0 = (J0) this.mLayoutHolderMap.j(d2)) != null) {
            int i2 = j0.f1113a;
            if ((i2 & i) != 0) {
                j0.f1113a = (~i) & i2;
                if (i == 4) {
                    y = j0.f1114b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    y = j0.f1115c;
                }
                if ((j0.f1113a & 12) == 0) {
                    this.mLayoutHolderMap.h(d2);
                    J0.b(j0);
                }
                return y;
            }
        }
        return null;
    }

    public void f(w0 w0Var) {
        J0 j0 = (J0) this.mLayoutHolderMap.getOrDefault(w0Var, null);
        if (j0 == null) {
            return;
        }
        j0.f1113a &= -2;
    }

    public void g(w0 w0Var) {
        b.d.l lVar = this.mOldChangedHolders;
        if (lVar.f645a) {
            lVar.c();
        }
        int i = lVar.f648d - 1;
        while (true) {
            if (i < 0) {
                break;
            }
            b.d.l lVar2 = this.mOldChangedHolders;
            if (lVar2.f645a) {
                lVar2.c();
            }
            if (w0Var == lVar2.f647c[i]) {
                b.d.l lVar3 = this.mOldChangedHolders;
                Object[] objArr = lVar3.f647c;
                Object obj = objArr[i];
                Object obj2 = b.d.l.e;
                if (obj != obj2) {
                    objArr[i] = obj2;
                    lVar3.f645a = true;
                }
            } else {
                i--;
            }
        }
        J0 j0 = (J0) this.mLayoutHolderMap.remove(w0Var);
        if (j0 != null) {
            J0.b(j0);
        }
    }
}
