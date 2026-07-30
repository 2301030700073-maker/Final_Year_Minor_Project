package defpackage;

/* loaded from: classes.dex */
public final class SG {

    /* renamed from: for, reason: not valid java name */
    public static final Cnew f3482for;

    /* renamed from: new, reason: not valid java name */
    public static final Cnew f3484new;

    /* renamed from: do, reason: not valid java name */
    public static final Cnew f3481do = new Cnew(null, false);

    /* renamed from: if, reason: not valid java name */
    public static final Cnew f3483if = new Cnew(null, true);

    /* renamed from: SG$do, reason: invalid class name */
    public static class Cdo implements Cif {

        /* renamed from: do, reason: not valid java name */
        public static final Cdo f3485do = new Cdo();

        @Override // defpackage.SG.Cif
        /* renamed from: do, reason: not valid java name */
        public final int mo2124do(CharSequence charSequence, int i) {
            int i2 = i + 0;
            int i3 = 2;
            for (int i4 = 0; i4 < i2 && i3 == 2; i4++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i4));
                Cnew cnew = SG.f3481do;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case 15:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                i3 = 2;
                                break;
                        }
                    }
                    i3 = 0;
                }
                i3 = 1;
            }
            return i3;
        }
    }

    /* renamed from: SG$for, reason: invalid class name */
    public static abstract class Cfor implements RG {

        /* renamed from: do, reason: not valid java name */
        public final Cif f3486do;

        public Cfor(Cdo cdo) {
            this.f3486do = cdo;
        }

        /* renamed from: do, reason: not valid java name */
        public abstract boolean mo2125do();

        /* renamed from: if, reason: not valid java name */
        public final boolean m2126if(CharSequence charSequence, int i) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                throw new IllegalArgumentException();
            }
            Cif cif = this.f3486do;
            if (cif == null) {
                return mo2125do();
            }
            int mo2124do = cif.mo2124do(charSequence, i);
            if (mo2124do == 0) {
                return true;
            }
            if (mo2124do != 1) {
                return mo2125do();
            }
            return false;
        }
    }

    /* renamed from: SG$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        int mo2124do(CharSequence charSequence, int i);
    }

    /* renamed from: SG$new, reason: invalid class name */
    public static class Cnew extends Cfor {

        /* renamed from: do, reason: not valid java name */
        public final boolean f3487do;

        public Cnew(Cdo cdo, boolean z) {
            super(cdo);
            this.f3487do = z;
        }

        @Override // defpackage.SG.Cfor
        /* renamed from: do */
        public final boolean mo2125do() {
            return this.f3487do;
        }
    }

    static {
        Cdo cdo = Cdo.f3485do;
        f3482for = new Cnew(cdo, false);
        f3484new = new Cnew(cdo, true);
    }
}
