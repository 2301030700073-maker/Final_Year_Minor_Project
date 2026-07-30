package defpackage;

import defpackage.AbstractC0533Ub;
import java.util.List;

/* loaded from: classes3.dex */
public final class A3 extends AbstractC0533Ub.Ctry {

    /* renamed from: do, reason: not valid java name */
    public final int f21do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f22do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Ccase f23do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cdo f24do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.Cfor f25do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final AbstractC0533Ub.Ctry.AbstractC0019try f26do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Long f27do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f28do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final List<AbstractC0533Ub.Ctry.Cnew> f29do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f30do;

    /* renamed from: for, reason: not valid java name */
    public final String f31for;

    /* renamed from: if, reason: not valid java name */
    public final String f32if;

    /* renamed from: A3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.Cif {

        /* renamed from: do, reason: not valid java name */
        public byte f33do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f34do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f35do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Ccase f36do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cdo f37do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.Cfor f38do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public AbstractC0533Ub.Ctry.AbstractC0019try f39do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f40do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f41do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public List<AbstractC0533Ub.Ctry.Cnew> f42do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f43do;

        /* renamed from: for, reason: not valid java name */
        public String f44for;

        /* renamed from: if, reason: not valid java name */
        public String f45if;

        public Cdo() {
        }

        /* renamed from: do, reason: not valid java name */
        public final A3 m42do() {
            String str;
            String str2;
            AbstractC0533Ub.Ctry.Cdo cdo;
            if (this.f33do == 7 && (str = this.f41do) != null && (str2 = this.f45if) != null && (cdo = this.f37do) != null) {
                return new A3(str, str2, this.f44for, this.f35do, this.f40do, this.f43do, cdo, this.f36do, this.f39do, this.f38do, this.f42do, this.f34do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f41do == null) {
                sb.append(" generator");
            }
            if (this.f45if == null) {
                sb.append(" identifier");
            }
            if ((this.f33do & 1) == 0) {
                sb.append(" startedAt");
            }
            if ((this.f33do & 2) == 0) {
                sb.append(" crashed");
            }
            if (this.f37do == null) {
                sb.append(" app");
            }
            if ((this.f33do & 4) == 0) {
                sb.append(" generatorType");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }

        public Cdo(AbstractC0533Ub.Ctry ctry) {
            this.f41do = ctry.mo30case();
            this.f45if = ctry.mo37goto();
            this.f44for = ctry.mo38if();
            this.f35do = ctry.mo29break();
            this.f40do = ctry.mo39new();
            this.f43do = ctry.mo32class();
            this.f37do = ctry.mo34do();
            this.f36do = ctry.mo31catch();
            this.f39do = ctry.mo40this();
            this.f38do = ctry.mo36for();
            this.f42do = ctry.mo41try();
            this.f34do = ctry.mo35else();
            this.f33do = (byte) 7;
        }
    }

    public A3() {
        throw null;
    }

    public A3(String str, String str2, String str3, long j, Long l, boolean z, AbstractC0533Ub.Ctry.Cdo cdo, AbstractC0533Ub.Ctry.Ccase ccase, AbstractC0533Ub.Ctry.AbstractC0019try abstractC0019try, AbstractC0533Ub.Ctry.Cfor cfor, List list, int i) {
        this.f28do = str;
        this.f32if = str2;
        this.f31for = str3;
        this.f22do = j;
        this.f27do = l;
        this.f30do = z;
        this.f24do = cdo;
        this.f23do = ccase;
        this.f26do = abstractC0019try;
        this.f25do = cfor;
        this.f29do = list;
        this.f21do = i;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: break, reason: not valid java name */
    public final long mo29break() {
        return this.f22do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: case, reason: not valid java name */
    public final String mo30case() {
        return this.f28do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: catch, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Ccase mo31catch() {
        return this.f23do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: class, reason: not valid java name */
    public final boolean mo32class() {
        return this.f30do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: const, reason: not valid java name */
    public final Cdo mo33const() {
        return new Cdo(this);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: do, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cdo mo34do() {
        return this.f24do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: else, reason: not valid java name */
    public final int mo35else() {
        return this.f21do;
    }

    public final boolean equals(Object obj) {
        String str;
        Long l;
        AbstractC0533Ub.Ctry.Ccase ccase;
        AbstractC0533Ub.Ctry.AbstractC0019try abstractC0019try;
        AbstractC0533Ub.Ctry.Cfor cfor;
        List<AbstractC0533Ub.Ctry.Cnew> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry)) {
            return false;
        }
        AbstractC0533Ub.Ctry ctry = (AbstractC0533Ub.Ctry) obj;
        return this.f28do.equals(ctry.mo30case()) && this.f32if.equals(ctry.mo37goto()) && ((str = this.f31for) != null ? str.equals(ctry.mo38if()) : ctry.mo38if() == null) && this.f22do == ctry.mo29break() && ((l = this.f27do) != null ? l.equals(ctry.mo39new()) : ctry.mo39new() == null) && this.f30do == ctry.mo32class() && this.f24do.equals(ctry.mo34do()) && ((ccase = this.f23do) != null ? ccase.equals(ctry.mo31catch()) : ctry.mo31catch() == null) && ((abstractC0019try = this.f26do) != null ? abstractC0019try.equals(ctry.mo40this()) : ctry.mo40this() == null) && ((cfor = this.f25do) != null ? cfor.equals(ctry.mo36for()) : ctry.mo36for() == null) && ((list = this.f29do) != null ? list.equals(ctry.mo41try()) : ctry.mo41try() == null) && this.f21do == ctry.mo35else();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: for, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.Cfor mo36for() {
        return this.f25do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: goto, reason: not valid java name */
    public final String mo37goto() {
        return this.f32if;
    }

    public final int hashCode() {
        int hashCode = (((this.f28do.hashCode() ^ 1000003) * 1000003) ^ this.f32if.hashCode()) * 1000003;
        String str = this.f31for;
        int hashCode2 = str == null ? 0 : str.hashCode();
        long j = this.f22do;
        int i = (((hashCode ^ hashCode2) * 1000003) ^ ((int) ((j >>> 32) ^ j))) * 1000003;
        Long l = this.f27do;
        int hashCode3 = (((((i ^ (l == null ? 0 : l.hashCode())) * 1000003) ^ (this.f30do ? 1231 : 1237)) * 1000003) ^ this.f24do.hashCode()) * 1000003;
        AbstractC0533Ub.Ctry.Ccase ccase = this.f23do;
        int hashCode4 = (hashCode3 ^ (ccase == null ? 0 : ccase.hashCode())) * 1000003;
        AbstractC0533Ub.Ctry.AbstractC0019try abstractC0019try = this.f26do;
        int hashCode5 = (hashCode4 ^ (abstractC0019try == null ? 0 : abstractC0019try.hashCode())) * 1000003;
        AbstractC0533Ub.Ctry.Cfor cfor = this.f25do;
        int hashCode6 = (hashCode5 ^ (cfor == null ? 0 : cfor.hashCode())) * 1000003;
        List<AbstractC0533Ub.Ctry.Cnew> list = this.f29do;
        return ((hashCode6 ^ (list != null ? list.hashCode() : 0)) * 1000003) ^ this.f21do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: if, reason: not valid java name */
    public final String mo38if() {
        return this.f31for;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: new, reason: not valid java name */
    public final Long mo39new() {
        return this.f27do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: this, reason: not valid java name */
    public final AbstractC0533Ub.Ctry.AbstractC0019try mo40this() {
        return this.f26do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Session{generator=");
        sb.append(this.f28do);
        sb.append(", identifier=");
        sb.append(this.f32if);
        sb.append(", appQualitySessionId=");
        sb.append(this.f31for);
        sb.append(", startedAt=");
        sb.append(this.f22do);
        sb.append(", endedAt=");
        sb.append(this.f27do);
        sb.append(", crashed=");
        sb.append(this.f30do);
        sb.append(", app=");
        sb.append(this.f24do);
        sb.append(", user=");
        sb.append(this.f23do);
        sb.append(", os=");
        sb.append(this.f26do);
        sb.append(", device=");
        sb.append(this.f25do);
        sb.append(", events=");
        sb.append(this.f29do);
        sb.append(", generatorType=");
        return V1.m2506this(sb, this.f21do, "}");
    }

    @Override // defpackage.AbstractC0533Ub.Ctry
    /* renamed from: try, reason: not valid java name */
    public final List<AbstractC0533Ub.Ctry.Cnew> mo41try() {
        return this.f29do;
    }
}
