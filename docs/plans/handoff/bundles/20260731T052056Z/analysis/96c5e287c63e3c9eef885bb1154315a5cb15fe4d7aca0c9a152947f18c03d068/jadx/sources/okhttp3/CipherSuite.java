package okhttp3;

import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CipherSuite {
    public static final CipherSuite TLS_AES_128_GCM_SHA256;
    public static final CipherSuite TLS_AES_256_GCM_SHA384;
    public static final CipherSuite TLS_CHACHA20_POLY1305_SHA256;
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256;
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384;
    public static final CipherSuite TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256;
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA;
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256;
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA;
    public static final CipherSuite TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384;
    public static final CipherSuite TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256;
    public static final CipherSuite TLS_RSA_WITH_3DES_EDE_CBC_SHA;
    public static final CipherSuite TLS_RSA_WITH_AES_128_CBC_SHA;
    public static final CipherSuite TLS_RSA_WITH_AES_128_GCM_SHA256;
    public static final CipherSuite TLS_RSA_WITH_AES_256_CBC_SHA;
    public static final CipherSuite TLS_RSA_WITH_AES_256_GCM_SHA384;
    public final String javaName;
    public static final Companion Companion = new Companion();
    public static final CipherSuite$Companion$ORDER_BY_NAME$1 ORDER_BY_NAME = new CipherSuite$Companion$ORDER_BY_NAME$1();
    public static final LinkedHashMap INSTANCES = new LinkedHashMap();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion implements CookieJar, TrailersSource {
        public static final Companion NONE = new Companion();
        public static final Companion SYSTEM = new Companion();

        public static CipherSuite init(String str) {
            CipherSuite cipherSuite = new CipherSuite(str);
            CipherSuite.INSTANCES.put(str, cipherSuite);
            return cipherSuite;
        }

        public synchronized CipherSuite forJavaName(String str) {
            CipherSuite cipherSuite;
            try {
                str.getClass();
                LinkedHashMap linkedHashMap = CipherSuite.INSTANCES;
                cipherSuite = (CipherSuite) linkedHashMap.get(str);
                if (cipherSuite == null) {
                    cipherSuite = (CipherSuite) linkedHashMap.get(StringsKt__StringsJVMKt.startsWith(str, "TLS_", false) ? "SSL_".concat(str.substring(4)) : StringsKt__StringsJVMKt.startsWith(str, "SSL_", false) ? "TLS_".concat(str.substring(4)) : str);
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(str);
                    }
                    linkedHashMap.put(str, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
            return cipherSuite;
        }

        @Override // okhttp3.CookieJar
        public List loadForRequest(HttpUrl httpUrl) {
            httpUrl.getClass();
            return EmptyList.INSTANCE;
        }

        @Override // okhttp3.CookieJar
        public void saveFromResponse(HttpUrl httpUrl, List list) {
            httpUrl.getClass();
        }
    }

    static {
        Companion.init("SSL_RSA_WITH_NULL_MD5");
        Companion.init("SSL_RSA_WITH_NULL_SHA");
        Companion.init("SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        Companion.init("SSL_RSA_WITH_RC4_128_MD5");
        Companion.init("SSL_RSA_WITH_RC4_128_SHA");
        Companion.init("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.init("SSL_RSA_WITH_DES_CBC_SHA");
        TLS_RSA_WITH_3DES_EDE_CBC_SHA = Companion.init("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.init("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        Companion.init("SSL_DHE_DSS_WITH_DES_CBC_SHA");
        Companion.init("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        Companion.init("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.init("SSL_DHE_RSA_WITH_DES_CBC_SHA");
        Companion.init("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.init("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        Companion.init("SSL_DH_anon_WITH_RC4_128_MD5");
        Companion.init("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        Companion.init("SSL_DH_anon_WITH_DES_CBC_SHA");
        Companion.init("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_KRB5_WITH_DES_CBC_SHA");
        Companion.init("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_KRB5_WITH_RC4_128_SHA");
        Companion.init("TLS_KRB5_WITH_DES_CBC_MD5");
        Companion.init("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        Companion.init("TLS_KRB5_WITH_RC4_128_MD5");
        Companion.init("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        Companion.init("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        Companion.init("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        Companion.init("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        TLS_RSA_WITH_AES_128_CBC_SHA = Companion.init("TLS_RSA_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_DH_anon_WITH_AES_128_CBC_SHA");
        TLS_RSA_WITH_AES_256_CBC_SHA = Companion.init("TLS_RSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_DH_anon_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_RSA_WITH_NULL_SHA256");
        Companion.init("TLS_RSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_RSA_WITH_AES_256_CBC_SHA256");
        Companion.init("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.init("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        Companion.init("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.init("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        Companion.init("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        Companion.init("TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        Companion.init("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.init("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        Companion.init("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.init("TLS_PSK_WITH_RC4_128_SHA");
        Companion.init("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_PSK_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_PSK_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_RSA_WITH_SEED_CBC_SHA");
        TLS_RSA_WITH_AES_128_GCM_SHA256 = Companion.init("TLS_RSA_WITH_AES_128_GCM_SHA256");
        TLS_RSA_WITH_AES_256_GCM_SHA384 = Companion.init("TLS_RSA_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        Companion.init("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        Companion.init("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        Companion.init("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        Companion.init("TLS_FALLBACK_SCSV");
        Companion.init("TLS_ECDH_ECDSA_WITH_NULL_SHA");
        Companion.init("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        Companion.init("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_ECDH_RSA_WITH_NULL_SHA");
        Companion.init("TLS_ECDH_RSA_WITH_RC4_128_SHA");
        Companion.init("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_ECDHE_RSA_WITH_NULL_SHA");
        Companion.init("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        Companion.init("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA = Companion.init("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA = Companion.init("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_ECDH_anon_WITH_NULL_SHA");
        Companion.init("TLS_ECDH_anon_WITH_RC4_128_SHA");
        Companion.init("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.init("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        Companion.init("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.init("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        Companion.init("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        Companion.init("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256 = Companion.init("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384 = Companion.init("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        Companion.init("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 = Companion.init("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 = Companion.init("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        Companion.init("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        Companion.init("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        Companion.init("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256 = Companion.init("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256 = Companion.init("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.init("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.init("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        TLS_AES_128_GCM_SHA256 = Companion.init("TLS_AES_128_GCM_SHA256");
        TLS_AES_256_GCM_SHA384 = Companion.init("TLS_AES_256_GCM_SHA384");
        TLS_CHACHA20_POLY1305_SHA256 = Companion.init("TLS_CHACHA20_POLY1305_SHA256");
        Companion.init("TLS_AES_128_CCM_SHA256");
        Companion.init("TLS_AES_128_CCM_8_SHA256");
    }

    public CipherSuite(String str) {
        this.javaName = str;
    }

    public final String toString() {
        return this.javaName;
    }
}
