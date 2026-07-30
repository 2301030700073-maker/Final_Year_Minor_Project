package defpackage;

import defpackage.AbstractC3492pA;

/* renamed from: n4, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3368n4 extends AbstractC3492pA {

    /* renamed from: do, reason: not valid java name */
    public final long f14437do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f14438do;

    /* renamed from: for, reason: not valid java name */
    public final String f14439for;

    /* renamed from: if, reason: not valid java name */
    public final String f14440if;

    /* renamed from: new, reason: not valid java name */
    public final String f14441new;

    /* renamed from: n4$do, reason: invalid class name */
    public static final class Cdo extends AbstractC3492pA.Cdo {

        /* renamed from: do, reason: not valid java name */
        public byte f14442do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public long f14443do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f14444do;

        /* renamed from: for, reason: not valid java name */
        public String f14445for;

        /* renamed from: if, reason: not valid java name */
        public String f14446if;

        /* renamed from: new, reason: not valid java name */
        public String f14447new;

        /* renamed from: do, reason: not valid java name */
        public final C3368n4 m7545do() {
            if (this.f14442do == 1 && this.f14444do != null && this.f14446if != null && this.f14445for != null && this.f14447new != null) {
                return new C3368n4(this.f14444do, this.f14446if, this.f14445for, this.f14447new, this.f14443do);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f14444do == null) {
                sb.append(" rolloutId");
            }
            if (this.f14446if == null) {
                sb.append(" variantId");
            }
            if (this.f14445for == null) {
                sb.append(" parameterKey");
            }
            if (this.f14447new == null) {
                sb.append(" parameterValue");
            }
            if ((1 & this.f14442do) == 0) {
                sb.append(" templateVersion");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public C3368n4(String str, String str2, String str3, String str4, long j) {
        this.f14438do = str;
        this.f14440if = str2;
        this.f14439for = str3;
        this.f14441new = str4;
        this.f14437do = j;
    }

    @Override // defpackage.AbstractC3492pA
    /* renamed from: do, reason: not valid java name */
    public final String mo7540do() {
        return this.f14439for;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3492pA)) {
            return false;
        }
        AbstractC3492pA abstractC3492pA = (AbstractC3492pA) obj;
        return this.f14438do.equals(abstractC3492pA.mo7541for()) && this.f14440if.equals(abstractC3492pA.mo7544try()) && this.f14439for.equals(abstractC3492pA.mo7540do()) && this.f14441new.equals(abstractC3492pA.mo7542if()) && this.f14437do == abstractC3492pA.mo7543new();
    }

    @Override // defpackage.AbstractC3492pA
    /* renamed from: for, reason: not valid java name */
    public final String mo7541for() {
        return this.f14438do;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f14438do.hashCode() ^ 1000003) * 1000003) ^ this.f14440if.hashCode()) * 1000003) ^ this.f14439for.hashCode()) * 1000003) ^ this.f14441new.hashCode()) * 1000003;
        long j = this.f14437do;
        return hashCode ^ ((int) ((j >>> 32) ^ j));
    }

    @Override // defpackage.AbstractC3492pA
    /* renamed from: if, reason: not valid java name */
    public final String mo7542if() {
        return this.f14441new;
    }

    @Override // defpackage.AbstractC3492pA
    /* renamed from: new, reason: not valid java name */
    public final long mo7543new() {
        return this.f14437do;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutId=");
        sb.append(this.f14438do);
        sb.append(", variantId=");
        sb.append(this.f14440if);
        sb.append(", parameterKey=");
        sb.append(this.f14439for);
        sb.append(", parameterValue=");
        sb.append(this.f14441new);
        sb.append(", templateVersion=");
        return C4122zt.m8818case(sb, this.f14437do, "}");
    }

    @Override // defpackage.AbstractC3492pA
    /* renamed from: try, reason: not valid java name */
    public final String mo7544try() {
        return this.f14440if;
    }
}
