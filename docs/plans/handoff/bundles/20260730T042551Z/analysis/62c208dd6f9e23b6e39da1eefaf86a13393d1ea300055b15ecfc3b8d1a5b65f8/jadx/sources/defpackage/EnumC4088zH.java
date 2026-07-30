package defpackage;

/* renamed from: zH, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public enum EnumC4088zH {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");


    /* renamed from: break, reason: not valid java name */
    public final String f16889break;

    EnumC4088zH(String str) {
        this.f16889break = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static EnumC4088zH m8790do(String str) {
        str.getClass();
        switch (str) {
            case "TLSv1.1":
                return TLS_1_1;
            case "TLSv1.2":
                return TLS_1_2;
            case "TLSv1.3":
                return TLS_1_3;
            case "SSLv3":
                return SSL_3_0;
            case "TLSv1":
                return TLS_1_0;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: ".concat(str));
        }
    }
}
