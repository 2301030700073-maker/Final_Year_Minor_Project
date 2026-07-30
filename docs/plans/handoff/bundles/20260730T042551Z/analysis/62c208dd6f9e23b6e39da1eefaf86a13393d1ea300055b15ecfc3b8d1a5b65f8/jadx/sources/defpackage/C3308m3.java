package defpackage;

/* renamed from: m3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3308m3 extends N0 {

    /* renamed from: break, reason: not valid java name */
    public final String f14298break;

    /* renamed from: case, reason: not valid java name */
    public final String f14299case;

    /* renamed from: catch, reason: not valid java name */
    public final String f14300catch;

    /* renamed from: do, reason: not valid java name */
    public final Integer f14301do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14302do;

    /* renamed from: else, reason: not valid java name */
    public final String f14303else;

    /* renamed from: for, reason: not valid java name */
    public final String f14304for;

    /* renamed from: goto, reason: not valid java name */
    public final String f14305goto;

    /* renamed from: if, reason: not valid java name */
    public final String f14306if;

    /* renamed from: new, reason: not valid java name */
    public final String f14307new;

    /* renamed from: this, reason: not valid java name */
    public final String f14308this;

    /* renamed from: try, reason: not valid java name */
    public final String f14309try;

    public C3308m3(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f14301do = num;
        this.f14302do = str;
        this.f14306if = str2;
        this.f14304for = str3;
        this.f14307new = str4;
        this.f14309try = str5;
        this.f14299case = str6;
        this.f14303else = str7;
        this.f14305goto = str8;
        this.f14308this = str9;
        this.f14298break = str10;
        this.f14300catch = str11;
    }

    @Override // defpackage.N0
    /* renamed from: break */
    public final String mo1471break() {
        return this.f14309try;
    }

    @Override // defpackage.N0
    /* renamed from: case */
    public final String mo1472case() {
        return this.f14305goto;
    }

    @Override // defpackage.N0
    /* renamed from: catch */
    public final String mo1473catch() {
        return this.f14307new;
    }

    @Override // defpackage.N0
    /* renamed from: class */
    public final Integer mo1474class() {
        return this.f14301do;
    }

    @Override // defpackage.N0
    /* renamed from: do */
    public final String mo1475do() {
        return this.f14300catch;
    }

    @Override // defpackage.N0
    /* renamed from: else */
    public final String mo1476else() {
        return this.f14299case;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof N0)) {
            return false;
        }
        N0 n0 = (N0) obj;
        Integer num = this.f14301do;
        if (num != null ? num.equals(n0.mo1474class()) : n0.mo1474class() == null) {
            String str = this.f14302do;
            if (str != null ? str.equals(n0.mo1481this()) : n0.mo1481this() == null) {
                String str2 = this.f14306if;
                if (str2 != null ? str2.equals(n0.mo1482try()) : n0.mo1482try() == null) {
                    String str3 = this.f14304for;
                    if (str3 != null ? str3.equals(n0.mo1477for()) : n0.mo1477for() == null) {
                        String str4 = this.f14307new;
                        if (str4 != null ? str4.equals(n0.mo1473catch()) : n0.mo1473catch() == null) {
                            String str5 = this.f14309try;
                            if (str5 != null ? str5.equals(n0.mo1471break()) : n0.mo1471break() == null) {
                                String str6 = this.f14299case;
                                if (str6 != null ? str6.equals(n0.mo1476else()) : n0.mo1476else() == null) {
                                    String str7 = this.f14303else;
                                    if (str7 != null ? str7.equals(n0.mo1480new()) : n0.mo1480new() == null) {
                                        String str8 = this.f14305goto;
                                        if (str8 != null ? str8.equals(n0.mo1472case()) : n0.mo1472case() == null) {
                                            String str9 = this.f14308this;
                                            if (str9 != null ? str9.equals(n0.mo1479if()) : n0.mo1479if() == null) {
                                                String str10 = this.f14298break;
                                                if (str10 != null ? str10.equals(n0.mo1478goto()) : n0.mo1478goto() == null) {
                                                    String str11 = this.f14300catch;
                                                    if (str11 == null) {
                                                        if (n0.mo1475do() == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(n0.mo1475do())) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // defpackage.N0
    /* renamed from: for */
    public final String mo1477for() {
        return this.f14304for;
    }

    @Override // defpackage.N0
    /* renamed from: goto */
    public final String mo1478goto() {
        return this.f14298break;
    }

    public final int hashCode() {
        Integer num = this.f14301do;
        int hashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f14302do;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f14306if;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f14304for;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f14307new;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f14309try;
        int hashCode6 = (hashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f14299case;
        int hashCode7 = (hashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f14303else;
        int hashCode8 = (hashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f14305goto;
        int hashCode9 = (hashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f14308this;
        int hashCode10 = (hashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f14298break;
        int hashCode11 = (hashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f14300catch;
        return (str11 != null ? str11.hashCode() : 0) ^ hashCode11;
    }

    @Override // defpackage.N0
    /* renamed from: if */
    public final String mo1479if() {
        return this.f14308this;
    }

    @Override // defpackage.N0
    /* renamed from: new */
    public final String mo1480new() {
        return this.f14303else;
    }

    @Override // defpackage.N0
    /* renamed from: this */
    public final String mo1481this() {
        return this.f14302do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f14301do);
        sb.append(", model=");
        sb.append(this.f14302do);
        sb.append(", hardware=");
        sb.append(this.f14306if);
        sb.append(", device=");
        sb.append(this.f14304for);
        sb.append(", product=");
        sb.append(this.f14307new);
        sb.append(", osBuild=");
        sb.append(this.f14309try);
        sb.append(", manufacturer=");
        sb.append(this.f14299case);
        sb.append(", fingerprint=");
        sb.append(this.f14303else);
        sb.append(", locale=");
        sb.append(this.f14305goto);
        sb.append(", country=");
        sb.append(this.f14308this);
        sb.append(", mccMnc=");
        sb.append(this.f14298break);
        sb.append(", applicationBuild=");
        return Creturn.m7984try(sb, this.f14300catch, "}");
    }

    @Override // defpackage.N0
    /* renamed from: try */
    public final String mo1482try() {
        return this.f14306if;
    }
}
