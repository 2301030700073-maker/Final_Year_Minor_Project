package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.Kw;

/* renamed from: l4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3250l4 extends Kw {

    /* renamed from: do, reason: not valid java name */
    public final long f14078do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14079do;

    /* renamed from: for, reason: not valid java name */
    public final String f14080for;

    /* renamed from: if, reason: not valid java name */
    public final int f14081if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final long f14082if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f14083if;

    /* renamed from: new, reason: not valid java name */
    public final String f14084new;

    /* renamed from: l4$do, reason: invalid class name */
    public static final class Cdo extends Kw.Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f14085do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f14086do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f14087do;

        /* renamed from: for, reason: not valid java name */
        public String f14088for;

        /* renamed from: if, reason: not valid java name */
        public Long f14089if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f14090if;

        /* renamed from: new, reason: not valid java name */
        public String f14091new;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final C3250l4 m7334do() {
            String str = this.f14085do == 0 ? " registrationStatus" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (this.f14086do == null) {
                str = str.concat(" expiresInSecs");
            }
            if (this.f14089if == null) {
                str = Cpublic.m7816case(str, " tokenCreationEpochInSecs");
            }
            if (str.isEmpty()) {
                return new C3250l4(this.f14087do, this.f14085do, this.f14090if, this.f14088for, this.f14086do.longValue(), this.f14089if.longValue(), this.f14091new);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        /* renamed from: if, reason: not valid java name */
        public final Cdo m7335if(int i) {
            if (i == 0) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.f14085do = i;
            return this;
        }

        public Cdo(Kw kw) {
            this.f14087do = kw.mo1224for();
            this.f14085do = kw.mo1221case();
            this.f14090if = kw.mo1222do();
            this.f14088for = kw.mo1227try();
            this.f14086do = Long.valueOf(kw.mo1225if());
            this.f14089if = Long.valueOf(kw.mo1223else());
            this.f14091new = kw.mo1226new();
        }
    }

    public C3250l4(String str, int i, String str2, String str3, long j, long j2, String str4) {
        this.f14079do = str;
        this.f14081if = i;
        this.f14083if = str2;
        this.f14080for = str3;
        this.f14078do = j;
        this.f14082if = j2;
        this.f14084new = str4;
    }

    @Override // defpackage.Kw
    /* renamed from: case */
    public final int mo1221case() {
        return this.f14081if;
    }

    @Override // defpackage.Kw
    /* renamed from: do */
    public final String mo1222do() {
        return this.f14083if;
    }

    @Override // defpackage.Kw
    /* renamed from: else */
    public final long mo1223else() {
        return this.f14082if;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Kw)) {
            return false;
        }
        Kw kw = (Kw) obj;
        String str3 = this.f14079do;
        if (str3 != null ? str3.equals(kw.mo1224for()) : kw.mo1224for() == null) {
            if (C4122zt.m8822do(this.f14081if, kw.mo1221case()) && ((str = this.f14083if) != null ? str.equals(kw.mo1222do()) : kw.mo1222do() == null) && ((str2 = this.f14080for) != null ? str2.equals(kw.mo1227try()) : kw.mo1227try() == null) && this.f14078do == kw.mo1225if() && this.f14082if == kw.mo1223else()) {
                String str4 = this.f14084new;
                if (str4 == null) {
                    if (kw.mo1226new() == null) {
                        return true;
                    }
                } else if (str4.equals(kw.mo1226new())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.Kw
    /* renamed from: for */
    public final String mo1224for() {
        return this.f14079do;
    }

    /* renamed from: goto, reason: not valid java name */
    public final Cdo m7333goto() {
        return new Cdo(this);
    }

    public final int hashCode() {
        String str = this.f14079do;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ C4122zt.m8819catch(this.f14081if)) * 1000003;
        String str2 = this.f14083if;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f14080for;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f14078do;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f14082if;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.f14084new;
        return (str4 != null ? str4.hashCode() : 0) ^ i2;
    }

    @Override // defpackage.Kw
    /* renamed from: if */
    public final long mo1225if() {
        return this.f14078do;
    }

    @Override // defpackage.Kw
    /* renamed from: new */
    public final String mo1226new() {
        return this.f14084new;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f14079do);
        sb.append(", registrationStatus=");
        sb.append(Cpublic.m7822final(this.f14081if));
        sb.append(", authToken=");
        sb.append(this.f14083if);
        sb.append(", refreshToken=");
        sb.append(this.f14080for);
        sb.append(", expiresInSecs=");
        sb.append(this.f14078do);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f14082if);
        sb.append(", fisError=");
        return Creturn.m7984try(sb, this.f14084new, "}");
    }

    @Override // defpackage.Kw
    /* renamed from: try */
    public final String mo1227try() {
        return this.f14080for;
    }
}
