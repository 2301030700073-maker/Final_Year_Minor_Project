package androidx.recyclerview.widget;

import android.view.View;

/* renamed from: androidx.recyclerview.widget.package, reason: invalid class name */
/* loaded from: classes.dex */
public final class Cpackage {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f7660do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f7661do;

    /* renamed from: androidx.recyclerview.widget.package$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f7662do = 0;

        /* renamed from: for, reason: not valid java name */
        public int f7663for;

        /* renamed from: if, reason: not valid java name */
        public int f7664if;

        /* renamed from: new, reason: not valid java name */
        public int f7665new;

        /* renamed from: try, reason: not valid java name */
        public int f7666try;

        /* renamed from: do, reason: not valid java name */
        public final boolean m4556do() {
            int i = this.f7662do;
            int i2 = 2;
            if ((i & 7) != 0) {
                int i3 = this.f7665new;
                int i4 = this.f7664if;
                if ((((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) << 0) & i) == 0) {
                    return false;
                }
            }
            if ((i & 112) != 0) {
                int i5 = this.f7665new;
                int i6 = this.f7663for;
                if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                    return false;
                }
            }
            if ((i & 1792) != 0) {
                int i7 = this.f7666try;
                int i8 = this.f7664if;
                if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                    return false;
                }
            }
            if ((i & 28672) != 0) {
                int i9 = this.f7666try;
                int i10 = this.f7663for;
                if (i9 > i10) {
                    i2 = 1;
                } else if (i9 != i10) {
                    i2 = 4;
                }
                if ((i & (i2 << 12)) == 0) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: androidx.recyclerview.widget.package$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        int mo4399do(View view);

        /* renamed from: for */
        View mo4400for(int i);

        /* renamed from: if */
        int mo4401if();

        /* renamed from: new */
        int mo4402new();

        /* renamed from: try */
        int mo4403try(View view);
    }

    public Cpackage(Cif cif) {
        this.f7661do = cif;
    }

    /* renamed from: do, reason: not valid java name */
    public final View m4554do(int i, int i2, int i3, int i4) {
        Cif cif = this.f7661do;
        int mo4401if = cif.mo4401if();
        int mo4402new = cif.mo4402new();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View mo4400for = cif.mo4400for(i);
            int mo4399do = cif.mo4399do(mo4400for);
            int mo4403try = cif.mo4403try(mo4400for);
            Cdo cdo = this.f7660do;
            cdo.f7664if = mo4401if;
            cdo.f7663for = mo4402new;
            cdo.f7665new = mo4399do;
            cdo.f7666try = mo4403try;
            if (i3 != 0) {
                cdo.f7662do = i3 | 0;
                if (cdo.m4556do()) {
                    return mo4400for;
                }
            }
            if (i4 != 0) {
                cdo.f7662do = i4 | 0;
                if (cdo.m4556do()) {
                    view = mo4400for;
                }
            }
            i += i5;
        }
        return view;
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m4555if(View view) {
        Cif cif = this.f7661do;
        int mo4401if = cif.mo4401if();
        int mo4402new = cif.mo4402new();
        int mo4399do = cif.mo4399do(view);
        int mo4403try = cif.mo4403try(view);
        Cdo cdo = this.f7660do;
        cdo.f7664if = mo4401if;
        cdo.f7663for = mo4402new;
        cdo.f7665new = mo4399do;
        cdo.f7666try = mo4403try;
        cdo.f7662do = 24579 | 0;
        return cdo.m4556do();
    }
}
