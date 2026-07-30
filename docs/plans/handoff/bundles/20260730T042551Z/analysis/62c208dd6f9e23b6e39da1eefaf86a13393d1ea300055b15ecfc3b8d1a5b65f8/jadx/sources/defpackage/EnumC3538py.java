package defpackage;

import java.io.IOException;

/* renamed from: py, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC3538py {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");


    /* renamed from: break, reason: not valid java name */
    public final String f15023break;

    EnumC3538py(String str) {
        this.f15023break = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static EnumC3538py m7830do(String str) {
        if (str.equals("http/1.0")) {
            return HTTP_1_0;
        }
        if (str.equals("http/1.1")) {
            return HTTP_1_1;
        }
        if (str.equals("h2_prior_knowledge")) {
            return H2_PRIOR_KNOWLEDGE;
        }
        if (str.equals("h2")) {
            return HTTP_2;
        }
        if (str.equals("spdy/3.1")) {
            return SPDY_3;
        }
        if (str.equals("quic")) {
            return QUIC;
        }
        throw new IOException("Unexpected protocol: ".concat(str));
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f15023break;
    }
}
