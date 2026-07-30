package defpackage;

/* loaded from: classes.dex */
public final class KM implements JM {

    /* renamed from: do, reason: not valid java name */
    public final Cdo f1800do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC3904wA f1801do;

    /* renamed from: KM$do, reason: invalid class name */
    public class Cdo extends AbstractC2881hg<IM> {
        public Cdo(AbstractC3904wA abstractC3904wA) {
            super(abstractC3904wA);
        }

        @Override // defpackage.PD
        /* renamed from: if, reason: not valid java name */
        public final String mo1150if() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // defpackage.AbstractC2881hg
        /* renamed from: new, reason: not valid java name */
        public final void mo1151new(C0607Xj c0607Xj, IM im) {
            IM im2 = im;
            String str = im2.f1511do;
            if (str == null) {
                c0607Xj.m2764new(1);
            } else {
                c0607Xj.m2760case(1, str);
            }
            String str2 = im2.f1512if;
            if (str2 == null) {
                c0607Xj.m2764new(2);
            } else {
                c0607Xj.m2760case(2, str2);
            }
        }
    }

    public KM(AbstractC3904wA abstractC3904wA) {
        this.f1801do = abstractC3904wA;
        this.f1800do = new Cdo(abstractC3904wA);
    }
}
