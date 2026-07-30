package defpackage;

import defpackage.AbstractC0533Ub;

/* renamed from: t3, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3720t3 extends AbstractC0533Ub {

    /* renamed from: case, reason: not valid java name */
    public final String f15585case;

    /* renamed from: do, reason: not valid java name */
    public final int f15586do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Cdo f15587do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Cnew f15588do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry f15589do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f15590do;

    /* renamed from: else, reason: not valid java name */
    public final String f15591else;

    /* renamed from: for, reason: not valid java name */
    public final String f15592for;

    /* renamed from: goto, reason: not valid java name */
    public final String f15593goto;

    /* renamed from: if, reason: not valid java name */
    public final String f15594if;

    /* renamed from: new, reason: not valid java name */
    public final String f15595new;

    /* renamed from: try, reason: not valid java name */
    public final String f15596try;

    /* renamed from: t3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Cif {

        /* renamed from: case, reason: not valid java name */
        public String f15597case;

        /* renamed from: do, reason: not valid java name */
        public byte f15598do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f15599do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Cdo f15600do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Cnew f15601do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry f15602do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f15603do;

        /* renamed from: else, reason: not valid java name */
        public String f15604else;

        /* renamed from: for, reason: not valid java name */
        public String f15605for;

        /* renamed from: goto, reason: not valid java name */
        public String f15606goto;

        /* renamed from: if, reason: not valid java name */
        public String f15607if;

        /* renamed from: new, reason: not valid java name */
        public String f15608new;

        /* renamed from: try, reason: not valid java name */
        public String f15609try;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final C3720t3 m8193do() {
            if (this.f15598do == 1 && this.f15603do != null && this.f15607if != null && this.f15605for != null && this.f15604else != null && this.f15606goto != null) {
                return new C3720t3(this.f15603do, this.f15607if, this.f15599do, this.f15605for, this.f15608new, this.f15609try, this.f15597case, this.f15604else, this.f15606goto, this.f15602do, this.f15601do, this.f15600do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f15603do == null) {
                sb.append(" sdkVersion");
            }
            if (this.f15607if == null) {
                sb.append(" gmpAppId");
            }
            if ((1 & this.f15598do) == 0) {
                sb.append(" platform");
            }
            if (this.f15605for == null) {
                sb.append(" installationUuid");
            }
            if (this.f15604else == null) {
                sb.append(" buildVersion");
            }
            if (this.f15606goto == null) {
                sb.append(" displayVersion");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }

        public Cdo(AbstractC0533Ub abstractC0533Ub) {
            this.f15603do = abstractC0533Ub.mo2427catch();
            this.f15607if = abstractC0533Ub.mo2431else();
            this.f15599do = abstractC0533Ub.mo2425break();
            this.f15605for = abstractC0533Ub.mo2434goto();
            this.f15608new = abstractC0533Ub.mo2426case();
            this.f15609try = abstractC0533Ub.mo2438try();
            this.f15597case = abstractC0533Ub.mo2435if();
            this.f15604else = abstractC0533Ub.mo2433for();
            this.f15606goto = abstractC0533Ub.mo2436new();
            this.f15602do = abstractC0533Ub.mo2428class();
            this.f15601do = abstractC0533Ub.mo2437this();
            this.f15600do = abstractC0533Ub.mo2430do();
            this.f15598do = (byte) 1;
        }
    }

    public C3720t3(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, AbstractC0533Ub.Ctry ctry, AbstractC0533Ub.Cnew cnew, AbstractC0533Ub.Cdo cdo) {
        this.f15590do = str;
        this.f15594if = str2;
        this.f15586do = i;
        this.f15592for = str3;
        this.f15595new = str4;
        this.f15596try = str5;
        this.f15585case = str6;
        this.f15591else = str7;
        this.f15593goto = str8;
        this.f15589do = ctry;
        this.f15588do = cnew;
        this.f15587do = cdo;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: break */
    public final int mo2425break() {
        return this.f15586do;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: case */
    public final String mo2426case() {
        return this.f15595new;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: catch */
    public final String mo2427catch() {
        return this.f15590do;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: class */
    public final AbstractC0533Ub.Ctry mo2428class() {
        return this.f15589do;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: const */
    public final Cdo mo2429const() {
        return new Cdo(this);
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: do */
    public final AbstractC0533Ub.Cdo mo2430do() {
        return this.f15587do;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: else */
    public final String mo2431else() {
        return this.f15594if;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        AbstractC0533Ub.Ctry ctry;
        AbstractC0533Ub.Cnew cnew;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub)) {
            return false;
        }
        AbstractC0533Ub abstractC0533Ub = (AbstractC0533Ub) obj;
        if (this.f15590do.equals(abstractC0533Ub.mo2427catch()) && this.f15594if.equals(abstractC0533Ub.mo2431else()) && this.f15586do == abstractC0533Ub.mo2425break() && this.f15592for.equals(abstractC0533Ub.mo2434goto()) && ((str = this.f15595new) != null ? str.equals(abstractC0533Ub.mo2426case()) : abstractC0533Ub.mo2426case() == null) && ((str2 = this.f15596try) != null ? str2.equals(abstractC0533Ub.mo2438try()) : abstractC0533Ub.mo2438try() == null) && ((str3 = this.f15585case) != null ? str3.equals(abstractC0533Ub.mo2435if()) : abstractC0533Ub.mo2435if() == null) && this.f15591else.equals(abstractC0533Ub.mo2433for()) && this.f15593goto.equals(abstractC0533Ub.mo2436new()) && ((ctry = this.f15589do) != null ? ctry.equals(abstractC0533Ub.mo2428class()) : abstractC0533Ub.mo2428class() == null) && ((cnew = this.f15588do) != null ? cnew.equals(abstractC0533Ub.mo2437this()) : abstractC0533Ub.mo2437this() == null)) {
            AbstractC0533Ub.Cdo cdo = this.f15587do;
            if (cdo == null) {
                if (abstractC0533Ub.mo2430do() == null) {
                    return true;
                }
            } else if (cdo.equals(abstractC0533Ub.mo2430do())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: for */
    public final String mo2433for() {
        return this.f15591else;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: goto */
    public final String mo2434goto() {
        return this.f15592for;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f15590do.hashCode() ^ 1000003) * 1000003) ^ this.f15594if.hashCode()) * 1000003) ^ this.f15586do) * 1000003) ^ this.f15592for.hashCode()) * 1000003;
        String str = this.f15595new;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f15596try;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f15585case;
        int hashCode4 = (((((hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.f15591else.hashCode()) * 1000003) ^ this.f15593goto.hashCode()) * 1000003;
        AbstractC0533Ub.Ctry ctry = this.f15589do;
        int hashCode5 = (hashCode4 ^ (ctry == null ? 0 : ctry.hashCode())) * 1000003;
        AbstractC0533Ub.Cnew cnew = this.f15588do;
        int hashCode6 = (hashCode5 ^ (cnew == null ? 0 : cnew.hashCode())) * 1000003;
        AbstractC0533Ub.Cdo cdo = this.f15587do;
        return hashCode6 ^ (cdo != null ? cdo.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: if */
    public final String mo2435if() {
        return this.f15585case;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: new */
    public final String mo2436new() {
        return this.f15593goto;
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: this */
    public final AbstractC0533Ub.Cnew mo2437this() {
        return this.f15588do;
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f15590do + ", gmpAppId=" + this.f15594if + ", platform=" + this.f15586do + ", installationUuid=" + this.f15592for + ", firebaseInstallationId=" + this.f15595new + ", firebaseAuthenticationToken=" + this.f15596try + ", appQualitySessionId=" + this.f15585case + ", buildVersion=" + this.f15591else + ", displayVersion=" + this.f15593goto + ", session=" + this.f15589do + ", ndkPayload=" + this.f15588do + ", appExitInfo=" + this.f15587do + "}";
    }

    @Override // defpackage.AbstractC0533Ub
    /* renamed from: try */
    public final String mo2438try() {
        return this.f15596try;
    }
}
