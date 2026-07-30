package defpackage;

import defpackage.AbstractC0533Ub;

/* loaded from: classes3.dex */
public final class S3 extends AbstractC0533Ub.Ctry.AbstractC0019try {

    /* renamed from: do, reason: not valid java name */
    public final int f3434do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f3435do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f3436do;

    /* renamed from: if, reason: not valid java name */
    public final String f3437if;

    /* renamed from: S3$do, reason: invalid class name */
    public static final class Cdo extends AbstractC0533Ub.Ctry.AbstractC0019try.Cdo {

        /* renamed from: do, reason: not valid java name */
        public byte f3438do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public int f3439do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public String f3440do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public boolean f3441do;

        /* renamed from: if, reason: not valid java name */
        public String f3442if;

        /* renamed from: do, reason: not valid java name */
        public final S3 m2110do() {
            String str;
            String str2;
            if (this.f3438do == 3 && (str = this.f3440do) != null && (str2 = this.f3442if) != null) {
                return new S3(this.f3439do, str, str2, this.f3441do);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f3438do & 1) == 0) {
                sb.append(" platform");
            }
            if (this.f3440do == null) {
                sb.append(" version");
            }
            if (this.f3442if == null) {
                sb.append(" buildVersion");
            }
            if ((this.f3438do & 2) == 0) {
                sb.append(" jailbroken");
            }
            throw new IllegalStateException(V1.m2502goto("Missing required properties:", sb));
        }
    }

    public S3(int i, String str, String str2, boolean z) {
        this.f3434do = i;
        this.f3435do = str;
        this.f3437if = str2;
        this.f3436do = z;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.AbstractC0019try
    /* renamed from: do, reason: not valid java name */
    public final String mo2106do() {
        return this.f3437if;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC0533Ub.Ctry.AbstractC0019try)) {
            return false;
        }
        AbstractC0533Ub.Ctry.AbstractC0019try abstractC0019try = (AbstractC0533Ub.Ctry.AbstractC0019try) obj;
        return this.f3434do == abstractC0019try.mo2108if() && this.f3435do.equals(abstractC0019try.mo2107for()) && this.f3437if.equals(abstractC0019try.mo2106do()) && this.f3436do == abstractC0019try.mo2109new();
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.AbstractC0019try
    /* renamed from: for, reason: not valid java name */
    public final String mo2107for() {
        return this.f3435do;
    }

    public final int hashCode() {
        return ((((((this.f3434do ^ 1000003) * 1000003) ^ this.f3435do.hashCode()) * 1000003) ^ this.f3437if.hashCode()) * 1000003) ^ (this.f3436do ? 1231 : 1237);
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.AbstractC0019try
    /* renamed from: if, reason: not valid java name */
    public final int mo2108if() {
        return this.f3434do;
    }

    @Override // defpackage.AbstractC0533Ub.Ctry.AbstractC0019try
    /* renamed from: new, reason: not valid java name */
    public final boolean mo2109new() {
        return this.f3436do;
    }

    public final String toString() {
        return "OperatingSystem{platform=" + this.f3434do + ", version=" + this.f3435do + ", buildVersion=" + this.f3437if + ", jailbroken=" + this.f3436do + "}";
    }
}
