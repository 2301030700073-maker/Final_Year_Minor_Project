package defpackage;

import com.facebook.internal.security.CertificateUtil;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: xa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3985xa {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0181Ea f16565do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HE f16566do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cdo f16568do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3985xa f16569do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public HashSet<C3985xa> f16567do = null;

    /* renamed from: do, reason: not valid java name */
    public int f16564do = 0;

    /* renamed from: if, reason: not valid java name */
    public int f16570if = -1;

    /* renamed from: xa$do, reason: invalid class name */
    public enum Cdo {
        /* JADX INFO: Fake field, exist only in values array */
        NONE,
        LEFT,
        TOP,
        RIGHT,
        BOTTOM,
        BASELINE,
        CENTER,
        CENTER_X,
        CENTER_Y
    }

    public C3985xa(C0181Ea c0181Ea, Cdo cdo) {
        this.f16565do = c0181Ea;
        this.f16568do = cdo;
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m8643case() {
        return this.f16569do != null;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m8644do(C3985xa c3985xa, int i) {
        m8648if(c3985xa, i, -1, false);
    }

    /* renamed from: else, reason: not valid java name */
    public final boolean m8645else(C3985xa c3985xa) {
        if (c3985xa == null) {
            return false;
        }
        Cdo cdo = Cdo.BASELINE;
        Cdo cdo2 = this.f16568do;
        C0181Ea c0181Ea = c3985xa.f16565do;
        Cdo cdo3 = c3985xa.f16568do;
        if (cdo3 == cdo2) {
            return cdo2 != cdo || (c0181Ea.f841if && this.f16565do.f841if);
        }
        int ordinal = cdo2.ordinal();
        Cdo cdo4 = Cdo.CENTER_Y;
        Cdo cdo5 = Cdo.CENTER_X;
        switch (ordinal) {
            case 0:
            case 5:
            case 7:
            case 8:
                return false;
            case 1:
            case 3:
                boolean z = cdo3 == Cdo.LEFT || cdo3 == Cdo.RIGHT;
                if (c0181Ea instanceof C0389Nl) {
                    return z || cdo3 == cdo5;
                }
                return z;
            case 2:
            case 4:
                boolean z2 = cdo3 == Cdo.TOP || cdo3 == Cdo.BOTTOM;
                if (c0181Ea instanceof C0389Nl) {
                    return z2 || cdo3 == cdo4;
                }
                return z2;
            case 6:
                return (cdo3 == cdo || cdo3 == cdo5 || cdo3 == cdo4) ? false : true;
            default:
                throw new AssertionError(cdo2.name());
        }
    }

    /* renamed from: for, reason: not valid java name */
    public final int m8646for() {
        C3985xa c3985xa;
        if (this.f16565do.f845import == 8) {
            return 0;
        }
        int i = this.f16570if;
        return (i <= -1 || (c3985xa = this.f16569do) == null || c3985xa.f16565do.f845import != 8) ? this.f16564do : i;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m8647goto() {
        HashSet<C3985xa> hashSet;
        C3985xa c3985xa = this.f16569do;
        if (c3985xa != null && (hashSet = c3985xa.f16567do) != null) {
            hashSet.remove(this);
        }
        this.f16569do = null;
        this.f16564do = 0;
        this.f16570if = -1;
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m8648if(C3985xa c3985xa, int i, int i2, boolean z) {
        if (c3985xa == null) {
            m8647goto();
            return true;
        }
        if (!z && !m8645else(c3985xa)) {
            return false;
        }
        this.f16569do = c3985xa;
        if (c3985xa.f16567do == null) {
            c3985xa.f16567do = new HashSet<>();
        }
        this.f16569do.f16567do.add(this);
        if (i > 0) {
            this.f16564do = i;
        } else {
            this.f16564do = 0;
        }
        this.f16570if = i2;
        return true;
    }

    /* renamed from: new, reason: not valid java name */
    public final C3985xa m8649new() {
        Cdo cdo = this.f16568do;
        int ordinal = cdo.ordinal();
        C0181Ea c0181Ea = this.f16565do;
        switch (ordinal) {
            case 0:
            case 5:
            case 6:
            case 7:
            case 8:
                return null;
            case 1:
                return c0181Ea.f830for;
            case 2:
                return c0181Ea.f849new;
            case 3:
                return c0181Ea.f815do;
            case 4:
                return c0181Ea.f840if;
            default:
                throw new AssertionError(cdo.name());
        }
    }

    /* renamed from: this, reason: not valid java name */
    public final void m8650this() {
        HE he = this.f16566do;
        if (he == null) {
            this.f16566do = new HE(1);
        } else {
            he.m823for();
        }
    }

    public final String toString() {
        return this.f16565do.f812do + CertificateUtil.DELIMITER + this.f16568do.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public final boolean m8651try() {
        HashSet<C3985xa> hashSet = this.f16567do;
        if (hashSet == null) {
            return false;
        }
        Iterator<C3985xa> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().m8649new().m8643case()) {
                return true;
            }
        }
        return false;
    }
}
