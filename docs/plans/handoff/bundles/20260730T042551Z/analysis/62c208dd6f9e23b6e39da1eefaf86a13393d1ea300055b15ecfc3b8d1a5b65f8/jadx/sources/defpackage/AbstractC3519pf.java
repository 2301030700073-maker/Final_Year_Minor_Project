package defpackage;

import android.view.View;
import defpackage.AbstractC3519pf;
import defpackage.C0821ce;
import defpackage.C2726f1;
import java.util.ArrayList;

/* renamed from: pf, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC3519pf<T extends AbstractC3519pf<T>> implements C2726f1.Cif {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public float f14961do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f14962do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3134j6 f14963do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object f14964do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final ArrayList<Cgoto> f14965do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f14966do;

    /* renamed from: for, reason: not valid java name */
    public final float f14967for;

    /* renamed from: if, reason: not valid java name */
    public float f14968if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final ArrayList<Cthis> f14969if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public boolean f14970if;

    /* renamed from: new, reason: not valid java name */
    public final float f14971new;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cif f14958do = new Cif();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cfor f14957do = new Cfor();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cnew f14959do = new Cnew();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Ctry f14960do = new Ctry();

    /* renamed from: do, reason: not valid java name */
    public static final Ccase f14955do = new Ccase();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Cdo f14956do = new Cdo();

    /* renamed from: pf$break, reason: invalid class name */
    public static abstract class Cbreak extends AbstractC3134j6 {
    }

    /* renamed from: pf$case, reason: invalid class name */
    public static class Ccase extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getRotationY();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setRotationY(f);
        }
    }

    /* renamed from: pf$do, reason: invalid class name */
    public static class Cdo extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getAlpha();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setAlpha(f);
        }
    }

    /* renamed from: pf$else, reason: invalid class name */
    public static class Celse {

        /* renamed from: do, reason: not valid java name */
        public float f14972do;

        /* renamed from: if, reason: not valid java name */
        public float f14973if;
    }

    /* renamed from: pf$for, reason: invalid class name */
    public static class Cfor extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getScaleY();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setScaleY(f);
        }
    }

    /* renamed from: pf$goto, reason: invalid class name */
    public interface Cgoto {
        /* renamed from: do, reason: not valid java name */
        void m7800do();
    }

    /* renamed from: pf$if, reason: invalid class name */
    public static class Cif extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getScaleX();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setScaleX(f);
        }
    }

    /* renamed from: pf$new, reason: invalid class name */
    public static class Cnew extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getRotation();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setRotation(f);
        }
    }

    /* renamed from: pf$this, reason: invalid class name */
    public interface Cthis {
        /* renamed from: do, reason: not valid java name */
        void m7801do();
    }

    /* renamed from: pf$try, reason: invalid class name */
    public static class Ctry extends Cbreak {
        @Override // defpackage.AbstractC3134j6
        /* renamed from: catch */
        public final float mo4915catch(Object obj) {
            return ((View) obj).getRotationX();
        }

        @Override // defpackage.AbstractC3134j6
        /* renamed from: final */
        public final void mo4916final(Object obj, float f) {
            ((View) obj).setRotationX(f);
        }
    }

    public AbstractC3519pf(Object obj) {
        C0821ce.Cdo cdo = C0821ce.f8567do;
        this.f14961do = 0.0f;
        this.f14968if = Float.MAX_VALUE;
        this.f14966do = false;
        this.f14970if = false;
        this.f14967for = -3.4028235E38f;
        this.f14962do = 0L;
        this.f14965do = new ArrayList<>();
        this.f14969if = new ArrayList<>();
        this.f14964do = obj;
        this.f14963do = cdo;
        if (cdo == f14959do || cdo == f14960do || cdo == f14955do) {
            this.f14971new = 0.1f;
            return;
        }
        if (cdo == f14956do) {
            this.f14971new = 0.00390625f;
        } else if (cdo == f14958do || cdo == f14957do) {
            this.f14971new = 0.00390625f;
        } else {
            this.f14971new = 1.0f;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00ec  */
    @Override // defpackage.C2726f1.Cif
    /* renamed from: do */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo6629do(long r26) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.AbstractC3519pf.mo6629do(long):boolean");
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7799if(float f) {
        ArrayList<Cthis> arrayList;
        this.f14963do.mo4916final(this.f14964do, f);
        int i = 0;
        while (true) {
            arrayList = this.f14969if;
            if (i >= arrayList.size()) {
                break;
            }
            if (arrayList.get(i) != null) {
                arrayList.get(i).m7801do();
            }
            i++;
        }
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            if (arrayList.get(size) == null) {
                arrayList.remove(size);
            }
        }
    }
}
