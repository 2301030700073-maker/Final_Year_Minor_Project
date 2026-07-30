package defpackage;

import java.util.List;

/* renamed from: h4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C2847h4 extends AbstractC0504Sq {

    /* renamed from: do, reason: not valid java name */
    public final long f13246do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Cy f13247do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC2674e8 f13248do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f13249do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f13250do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0438Pq> f13251do;

    /* renamed from: if, reason: not valid java name */
    public final long f13252if;

    public C2847h4() {
        throw null;
    }

    public C2847h4(long j, long j2, AbstractC2674e8 abstractC2674e8, Integer num, String str, List list, Cy cy) {
        this.f13246do = j;
        this.f13252if = j2;
        this.f13248do = abstractC2674e8;
        this.f13249do = num;
        this.f13250do = str;
        this.f13251do = list;
        this.f13247do = cy;
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: case */
    public final long mo2191case() {
        return this.f13246do;
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: do */
    public final AbstractC2674e8 mo2192do() {
        return this.f13248do;
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: else */
    public final long mo2193else() {
        return this.f13252if;
    }

    public final boolean equals(Object obj) {
        AbstractC2674e8 abstractC2674e8;
        Integer num;
        String str;
        List<AbstractC0438Pq> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0504Sq)) {
            return false;
        }
        AbstractC0504Sq abstractC0504Sq = (AbstractC0504Sq) obj;
        if (this.f13246do == abstractC0504Sq.mo2191case() && this.f13252if == abstractC0504Sq.mo2193else() && ((abstractC2674e8 = this.f13248do) != null ? abstractC2674e8.equals(abstractC0504Sq.mo2192do()) : abstractC0504Sq.mo2192do() == null) && ((num = this.f13249do) != null ? num.equals(abstractC0504Sq.mo2194for()) : abstractC0504Sq.mo2194for() == null) && ((str = this.f13250do) != null ? str.equals(abstractC0504Sq.mo2196new()) : abstractC0504Sq.mo2196new() == null) && ((list = this.f13251do) != null ? list.equals(abstractC0504Sq.mo2195if()) : abstractC0504Sq.mo2195if() == null)) {
            Cy cy = this.f13247do;
            if (cy == null) {
                if (abstractC0504Sq.mo2197try() == null) {
                    return true;
                }
            } else if (cy.equals(abstractC0504Sq.mo2197try())) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: for */
    public final Integer mo2194for() {
        return this.f13249do;
    }

    public final int hashCode() {
        long j = this.f13246do;
        long j2 = this.f13252if;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        AbstractC2674e8 abstractC2674e8 = this.f13248do;
        int hashCode = (i ^ (abstractC2674e8 == null ? 0 : abstractC2674e8.hashCode())) * 1000003;
        Integer num = this.f13249do;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f13250do;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<AbstractC0438Pq> list = this.f13251do;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        Cy cy = this.f13247do;
        return hashCode4 ^ (cy != null ? cy.hashCode() : 0);
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: if */
    public final List<AbstractC0438Pq> mo2195if() {
        return this.f13251do;
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: new */
    public final String mo2196new() {
        return this.f13250do;
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f13246do + ", requestUptimeMs=" + this.f13252if + ", clientInfo=" + this.f13248do + ", logSource=" + this.f13249do + ", logSourceName=" + this.f13250do + ", logEvents=" + this.f13251do + ", qosTier=" + this.f13247do + "}";
    }

    @Override // defpackage.AbstractC0504Sq
    /* renamed from: try */
    public final Cy mo2197try() {
        return this.f13247do;
    }
}
