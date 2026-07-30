package defpackage;

/* loaded from: classes.dex */
public final class NM implements MM {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f2364do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cfor f2365do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cif f2366do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f2367do;

    /* renamed from: NM$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<LM> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new */
        public final void mo1151new(C0607Xj c0607Xj, LM lm) {
            LM lm2 = lm;
            String str = lm2.f1948do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            byte[] m4722for = androidx.work.Cif.m4722for(lm2.f1947do);
            if (m4722for == null) {
                c0607Xj.m2764new(2);
            } else {
                c0607Xj.m2761do(2, m4722for);
            }
        }
    }

    /* renamed from: NM$for, reason: invalid class name */
    public class Cfor extends PD {
        public Cfor(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "DELETE FROM WorkProgress";
        }
    }

    /* renamed from: NM$if, reason: invalid class name */
    public class Cif extends PD {
        public Cif(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if */
        public final String mo1150if() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    public NM(AbstractC3904wA abstractC3904wA) {
        this.f2367do = abstractC3904wA;
        this.f2364do = new Cdo(abstractC3904wA);
        this.f2366do = new Cif(abstractC3904wA);
        this.f2365do = new Cfor(abstractC3904wA);
    }
}
