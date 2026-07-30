package defpackage;

import com.facebook.internal.security.CertificateUtil;

/* renamed from: Vl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0565Vl {

    /* renamed from: do, reason: not valid java name */
    public final int f4185do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final C3488p6 f4186do;

    /* renamed from: if, reason: not valid java name */
    public final C3488p6 f4187if;

    /* renamed from: for, reason: not valid java name */
    public static final C3488p6 f4181for = C3488p6.m7786this(CertificateUtil.DELIMITER);

    /* renamed from: new, reason: not valid java name */
    public static final C3488p6 f4183new = C3488p6.m7786this(":status");

    /* renamed from: try, reason: not valid java name */
    public static final C3488p6 f4184try = C3488p6.m7786this(":method");

    /* renamed from: case, reason: not valid java name */
    public static final C3488p6 f4179case = C3488p6.m7786this(":path");

    /* renamed from: else, reason: not valid java name */
    public static final C3488p6 f4180else = C3488p6.m7786this(":scheme");

    /* renamed from: goto, reason: not valid java name */
    public static final C3488p6 f4182goto = C3488p6.m7786this(":authority");

    public C0565Vl(String str, String str2) {
        this(C3488p6.m7786this(str), C3488p6.m7786this(str2));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0565Vl)) {
            return false;
        }
        C0565Vl c0565Vl = (C0565Vl) obj;
        return this.f4186do.equals(c0565Vl.f4186do) && this.f4187if.equals(c0565Vl.f4187if);
    }

    public final int hashCode() {
        return this.f4187if.hashCode() + ((this.f4186do.hashCode() + 527) * 31);
    }

    public final String toString() {
        return SJ.m2132class("%s: %s", this.f4186do.mo2900return(), this.f4187if.mo2900return());
    }

    public C0565Vl(C3488p6 c3488p6, String str) {
        this(c3488p6, C3488p6.m7786this(str));
    }

    public C0565Vl(C3488p6 c3488p6, C3488p6 c3488p62) {
        this.f4186do = c3488p6;
        this.f4187if = c3488p62;
        this.f4185do = c3488p62.mo2897import() + c3488p6.mo2897import() + 32;
    }
}
