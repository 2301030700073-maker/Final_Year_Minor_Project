package defpackage;

import androidx.work.Cif;

/* loaded from: classes.dex */
public final class TM {

    /* renamed from: case, reason: not valid java name */
    public long f3649case;

    /* renamed from: do, reason: not valid java name */
    public int f3650do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f3651do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public CM f3652do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C0225Ga f3653do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public Cif f3654do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String f3655do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public boolean f3656do;

    /* renamed from: else, reason: not valid java name */
    public long f3657else;

    /* renamed from: for, reason: not valid java name */
    public int f3658for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public long f3659for;

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public String f3660for;

    /* renamed from: if, reason: not valid java name */
    public int f3661if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public long f3662if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public Cif f3663if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public String f3664if;

    /* renamed from: new, reason: not valid java name */
    public long f3665new;

    /* renamed from: try, reason: not valid java name */
    public long f3666try;

    /* renamed from: TM$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public CM f3667do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f3668do;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            if (this.f3667do != cdo.f3667do) {
                return false;
            }
            return this.f3668do.equals(cdo.f3668do);
        }

        public final int hashCode() {
            return this.f3667do.hashCode() + (this.f3668do.hashCode() * 31);
        }
    }

    static {
        AbstractC0614Xq.m2870try("WorkSpec");
    }

    public TM(String str, String str2) {
        this.f3652do = CM.ENQUEUED;
        Cif cif = Cif.f8144do;
        this.f3654do = cif;
        this.f3663if = cif;
        this.f3653do = C0225Ga.f1194do;
        this.f3661if = 1;
        this.f3665new = 30000L;
        this.f3657else = -1L;
        this.f3658for = 1;
        this.f3655do = str;
        this.f3664if = str2;
    }

    /* renamed from: do, reason: not valid java name */
    public final long m2241do() {
        long j;
        long j2;
        if (this.f3652do == CM.ENQUEUED && this.f3650do > 0) {
            long scalb = this.f3661if == 2 ? this.f3665new * this.f3650do : (long) Math.scalb(this.f3665new, this.f3650do - 1);
            j2 = this.f3666try;
            j = Math.min(18000000L, scalb);
        } else {
            if (m2242for()) {
                long currentTimeMillis = System.currentTimeMillis();
                long j3 = this.f3666try;
                if (j3 == 0) {
                    j3 = this.f3651do + currentTimeMillis;
                }
                long j4 = this.f3659for;
                long j5 = this.f3662if;
                if (j4 != j5) {
                    return j3 + j5 + (j3 == 0 ? j4 * (-1) : 0L);
                }
                return j3 + (j3 != 0 ? j5 : 0L);
            }
            j = this.f3666try;
            if (j == 0) {
                j = System.currentTimeMillis();
            }
            j2 = this.f3651do;
        }
        return j + j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || TM.class != obj.getClass()) {
            return false;
        }
        TM tm = (TM) obj;
        if (this.f3651do != tm.f3651do || this.f3662if != tm.f3662if || this.f3659for != tm.f3659for || this.f3650do != tm.f3650do || this.f3665new != tm.f3665new || this.f3666try != tm.f3666try || this.f3649case != tm.f3649case || this.f3657else != tm.f3657else || this.f3656do != tm.f3656do || !this.f3655do.equals(tm.f3655do) || this.f3652do != tm.f3652do || !this.f3664if.equals(tm.f3664if)) {
            return false;
        }
        String str = this.f3660for;
        if (str == null ? tm.f3660for == null : str.equals(tm.f3660for)) {
            return this.f3654do.equals(tm.f3654do) && this.f3663if.equals(tm.f3663if) && this.f3653do.equals(tm.f3653do) && this.f3661if == tm.f3661if && this.f3658for == tm.f3658for;
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m2242for() {
        return this.f3662if != 0;
    }

    public final int hashCode() {
        int m6915for = Cif.m6915for(this.f3664if, (this.f3652do.hashCode() + (this.f3655do.hashCode() * 31)) * 31, 31);
        String str = this.f3660for;
        int hashCode = (this.f3663if.hashCode() + ((this.f3654do.hashCode() + ((m6915for + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31;
        long j = this.f3651do;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.f3662if;
        int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.f3659for;
        int m8819catch = (C4122zt.m8819catch(this.f3661if) + ((((this.f3653do.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31) + this.f3650do) * 31)) * 31;
        long j4 = this.f3665new;
        int i3 = (m8819catch + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.f3666try;
        int i4 = (i3 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.f3649case;
        int i5 = (i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
        long j7 = this.f3657else;
        return C4122zt.m8819catch(this.f3658for) + ((((i5 + ((int) (j7 ^ (j7 >>> 32)))) * 31) + (this.f3656do ? 1 : 0)) * 31);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2243if() {
        return !C0225Ga.f1194do.equals(this.f3653do);
    }

    public final String toString() {
        return Creturn.m7984try(new StringBuilder("{WorkSpec: "), this.f3655do, "}");
    }

    public TM(TM tm) {
        this.f3652do = CM.ENQUEUED;
        Cif cif = Cif.f8144do;
        this.f3654do = cif;
        this.f3663if = cif;
        this.f3653do = C0225Ga.f1194do;
        this.f3661if = 1;
        this.f3665new = 30000L;
        this.f3657else = -1L;
        this.f3658for = 1;
        this.f3655do = tm.f3655do;
        this.f3664if = tm.f3664if;
        this.f3652do = tm.f3652do;
        this.f3660for = tm.f3660for;
        this.f3654do = new Cif(tm.f3654do);
        this.f3663if = new Cif(tm.f3663if);
        this.f3651do = tm.f3651do;
        this.f3662if = tm.f3662if;
        this.f3659for = tm.f3659for;
        this.f3653do = new C0225Ga(tm.f3653do);
        this.f3650do = tm.f3650do;
        this.f3661if = tm.f3661if;
        this.f3665new = tm.f3665new;
        this.f3666try = tm.f3666try;
        this.f3649case = tm.f3649case;
        this.f3657else = tm.f3657else;
        this.f3656do = tm.f3656do;
        this.f3658for = tm.f3658for;
    }
}
