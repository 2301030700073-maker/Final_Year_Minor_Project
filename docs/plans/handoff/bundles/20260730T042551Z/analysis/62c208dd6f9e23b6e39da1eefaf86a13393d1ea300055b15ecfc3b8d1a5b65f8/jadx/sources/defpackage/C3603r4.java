package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC3905wB;
import java.util.Set;

/* renamed from: r4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C3603r4 extends AbstractC3905wB.Cdo {

    /* renamed from: do, reason: not valid java name */
    public final long f15203do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Set<AbstractC3905wB.Cif> f15204do;

    /* renamed from: if, reason: not valid java name */
    public final long f15205if;

    /* renamed from: r4$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3905wB.Cdo.AbstractC0090do {

        /* renamed from: do, reason: not valid java name */
        public Long f15206do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Set<AbstractC3905wB.Cif> f15207do;

        /* renamed from: if, reason: not valid java name */
        public Long f15208if;

        /* renamed from: do, reason: not valid java name */
        public final C3603r4 m7934do() {
            String str = this.f15206do == null ? " delta" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (this.f15208if == null) {
                str = str.concat(" maxAllowedDelay");
            }
            if (this.f15207do == null) {
                str = Cpublic.m7816case(str, " flags");
            }
            if (str.isEmpty()) {
                return new C3603r4(this.f15206do.longValue(), this.f15208if.longValue(), this.f15207do);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }
    }

    public C3603r4(long j, long j2, Set set) {
        this.f15203do = j;
        this.f15205if = j2;
        this.f15204do = set;
    }

    @Override // defpackage.AbstractC3905wB.Cdo
    /* renamed from: do, reason: not valid java name */
    public final long mo7931do() {
        return this.f15203do;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3905wB.Cdo)) {
            return false;
        }
        AbstractC3905wB.Cdo cdo = (AbstractC3905wB.Cdo) obj;
        return this.f15203do == cdo.mo7931do() && this.f15205if == cdo.mo7932for() && this.f15204do.equals(cdo.mo7933if());
    }

    @Override // defpackage.AbstractC3905wB.Cdo
    /* renamed from: for, reason: not valid java name */
    public final long mo7932for() {
        return this.f15205if;
    }

    public final int hashCode() {
        long j = this.f15203do;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.f15205if;
        return this.f15204do.hashCode() ^ ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003);
    }

    @Override // defpackage.AbstractC3905wB.Cdo
    /* renamed from: if, reason: not valid java name */
    public final Set<AbstractC3905wB.Cif> mo7933if() {
        return this.f15204do;
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f15203do + ", maxAllowedDelay=" + this.f15205if + ", flags=" + this.f15204do + "}";
    }
}
