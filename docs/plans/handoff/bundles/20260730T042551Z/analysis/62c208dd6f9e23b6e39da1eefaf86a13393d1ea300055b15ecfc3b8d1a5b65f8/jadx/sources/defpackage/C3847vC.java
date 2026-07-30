package defpackage;

/* renamed from: vC, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3847vC {

    /* renamed from: do, reason: not valid java name */
    public final Boolean f16029do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Double f16030do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f16031do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f16032do;

    /* renamed from: if, reason: not valid java name */
    public final Integer f16033if;

    public C3847vC(Boolean bool, Double d, Integer num, Integer num2, Long l) {
        this.f16029do = bool;
        this.f16030do = d;
        this.f16031do = num;
        this.f16033if = num2;
        this.f16032do = l;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3847vC)) {
            return false;
        }
        C3847vC c3847vC = (C3847vC) obj;
        return C0173Do.m394do(this.f16029do, c3847vC.f16029do) && C0173Do.m394do(this.f16030do, c3847vC.f16030do) && C0173Do.m394do(this.f16031do, c3847vC.f16031do) && C0173Do.m394do(this.f16033if, c3847vC.f16033if) && C0173Do.m394do(this.f16032do, c3847vC.f16032do);
    }

    public final int hashCode() {
        Boolean bool = this.f16029do;
        int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d = this.f16030do;
        int hashCode2 = (hashCode + (d == null ? 0 : d.hashCode())) * 31;
        Integer num = this.f16031do;
        int hashCode3 = (hashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f16033if;
        int hashCode4 = (hashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l = this.f16032do;
        return hashCode4 + (l != null ? l.hashCode() : 0);
    }

    public final String toString() {
        return "SessionConfigs(sessionEnabled=" + this.f16029do + ", sessionSamplingRate=" + this.f16030do + ", sessionRestartTimeout=" + this.f16031do + ", cacheDuration=" + this.f16033if + ", cacheUpdatedTime=" + this.f16032do + ')';
    }
}
