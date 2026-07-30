package defpackage;

import com.google.android.gms.ads.RequestConfiguration;
import defpackage.AbstractC3696sg;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
public final class W3 extends AbstractC3696sg {

    /* renamed from: do, reason: not valid java name */
    public final long f4302do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C0581Wf f4303do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Integer f4304do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f4305do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, String> f4306do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final byte[] f4307do;

    /* renamed from: if, reason: not valid java name */
    public final long f4308if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Integer f4309if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f4310if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final byte[] f4311if;

    /* renamed from: W3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3696sg.Cdo {

        /* renamed from: do, reason: not valid java name */
        public C0581Wf f4312do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Integer f4313do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Long f4314do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f4315do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Map<String, String> f4316do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public byte[] f4317do;

        /* renamed from: if, reason: not valid java name */
        public Integer f4318if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public Long f4319if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public String f4320if;

        /* renamed from: if, reason: not valid java name and collision with other field name */
        public byte[] f4321if;

        /* renamed from: for, reason: not valid java name */
        public final Cdo m2700for(C0581Wf c0581Wf) {
            if (c0581Wf == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f4312do = c0581Wf;
            return this;
        }

        /* renamed from: if, reason: not valid java name */
        public final W3 m2701if() {
            String str = this.f4315do == null ? " transportName" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (this.f4312do == null) {
                str = str.concat(" encodedPayload");
            }
            if (this.f4314do == null) {
                str = Cpublic.m7816case(str, " eventMillis");
            }
            if (this.f4319if == null) {
                str = Cpublic.m7816case(str, " uptimeMillis");
            }
            if (this.f4316do == null) {
                str = Cpublic.m7816case(str, " autoMetadata");
            }
            if (str.isEmpty()) {
                return new W3(this.f4315do, this.f4313do, this.f4312do, this.f4314do.longValue(), this.f4319if.longValue(), this.f4316do, this.f4318if, this.f4320if, this.f4317do, this.f4321if);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        /* renamed from: new, reason: not valid java name */
        public final Cdo m2702new(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f4315do = str;
            return this;
        }
    }

    public W3() {
        throw null;
    }

    public W3(String str, Integer num, C0581Wf c0581Wf, long j, long j2, Map map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f4305do = str;
        this.f4304do = num;
        this.f4303do = c0581Wf;
        this.f4302do = j;
        this.f4308if = j2;
        this.f4306do = map;
        this.f4309if = num2;
        this.f4310if = str2;
        this.f4307do = bArr;
        this.f4311if = bArr2;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: break, reason: not valid java name */
    public final String mo2690break() {
        return this.f4310if;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: case, reason: not valid java name */
    public final byte[] mo2691case() {
        return this.f4307do;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: catch, reason: not valid java name */
    public final String mo2692catch() {
        return this.f4305do;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: class, reason: not valid java name */
    public final long mo2693class() {
        return this.f4308if;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: else, reason: not valid java name */
    public final byte[] mo2694else() {
        return this.f4311if;
    }

    public final boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3696sg)) {
            return false;
        }
        AbstractC3696sg abstractC3696sg = (AbstractC3696sg) obj;
        if (this.f4305do.equals(abstractC3696sg.mo2692catch()) && ((num = this.f4304do) != null ? num.equals(abstractC3696sg.mo2695for()) : abstractC3696sg.mo2695for() == null) && this.f4303do.equals(abstractC3696sg.mo2697new()) && this.f4302do == abstractC3696sg.mo2699try() && this.f4308if == abstractC3696sg.mo2693class() && this.f4306do.equals(abstractC3696sg.mo2696if()) && ((num2 = this.f4309if) != null ? num2.equals(abstractC3696sg.mo2698this()) : abstractC3696sg.mo2698this() == null) && ((str = this.f4310if) != null ? str.equals(abstractC3696sg.mo2690break()) : abstractC3696sg.mo2690break() == null)) {
            boolean z = abstractC3696sg instanceof W3;
            if (Arrays.equals(this.f4307do, z ? ((W3) abstractC3696sg).f4307do : abstractC3696sg.mo2691case())) {
                if (Arrays.equals(this.f4311if, z ? ((W3) abstractC3696sg).f4311if : abstractC3696sg.mo2694else())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: for, reason: not valid java name */
    public final Integer mo2695for() {
        return this.f4304do;
    }

    public final int hashCode() {
        int hashCode = (this.f4305do.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f4304do;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f4303do.hashCode()) * 1000003;
        long j = this.f4302do;
        int i = (hashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f4308if;
        int hashCode3 = (((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f4306do.hashCode()) * 1000003;
        Integer num2 = this.f4309if;
        int hashCode4 = (hashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.f4310if;
        return ((((hashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.f4307do)) * 1000003) ^ Arrays.hashCode(this.f4311if);
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: if, reason: not valid java name */
    public final Map<String, String> mo2696if() {
        return this.f4306do;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: new, reason: not valid java name */
    public final C0581Wf mo2697new() {
        return this.f4303do;
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: this, reason: not valid java name */
    public final Integer mo2698this() {
        return this.f4309if;
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f4305do + ", code=" + this.f4304do + ", encodedPayload=" + this.f4303do + ", eventMillis=" + this.f4302do + ", uptimeMillis=" + this.f4308if + ", autoMetadata=" + this.f4306do + ", productId=" + this.f4309if + ", pseudonymousId=" + this.f4310if + ", experimentIdsClear=" + Arrays.toString(this.f4307do) + ", experimentIdsEncrypted=" + Arrays.toString(this.f4311if) + "}";
    }

    @Override // defpackage.AbstractC3696sg
    /* renamed from: try, reason: not valid java name */
    public final long mo2699try() {
        return this.f4302do;
    }
}
