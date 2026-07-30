package defpackage;

import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: Yk, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0630Yk {

    /* renamed from: do, reason: not valid java name */
    public final String f4754do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final boolean f4755do;

    /* renamed from: Yk$do, reason: invalid class name */
    public static final class Cdo {
    }

    public C0630Yk() {
        this(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false);
    }

    /* renamed from: do, reason: not valid java name */
    public final String m2946do() {
        return this.f4754do;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0630Yk)) {
            return false;
        }
        C0630Yk c0630Yk = (C0630Yk) obj;
        return C0173Do.m394do(this.f4754do, c0630Yk.f4754do) && this.f4755do == c0630Yk.f4755do;
    }

    public final int hashCode() {
        return (this.f4754do.hashCode() * 31) + (this.f4755do ? 1231 : 1237);
    }

    /* renamed from: if, reason: not valid java name */
    public final boolean m2947if() {
        return this.f4755do;
    }

    public final String toString() {
        return "GetTopicsRequest: adsSdkName=" + this.f4754do + ", shouldRecordObservation=" + this.f4755do;
    }

    public C0630Yk(String str, boolean z) {
        C0173Do.m401try(str, "adsSdkName");
        this.f4754do = str;
        this.f4755do = z;
    }
}
