package defpackage;

import java.util.Comparator;
import java.util.LinkedHashMap;

/* loaded from: classes3.dex */
public final class D7 {

    /* renamed from: break, reason: not valid java name */
    public static final D7 f494break;

    /* renamed from: case, reason: not valid java name */
    public static final D7 f495case;

    /* renamed from: catch, reason: not valid java name */
    public static final D7 f496catch;

    /* renamed from: class, reason: not valid java name */
    public static final D7 f497class;

    /* renamed from: const, reason: not valid java name */
    public static final D7 f498const;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final D7 f500do;

    /* renamed from: else, reason: not valid java name */
    public static final D7 f502else;

    /* renamed from: final, reason: not valid java name */
    public static final D7 f503final;

    /* renamed from: for, reason: not valid java name */
    public static final D7 f504for;

    /* renamed from: goto, reason: not valid java name */
    public static final D7 f505goto;

    /* renamed from: if, reason: not valid java name */
    public static final D7 f506if;

    /* renamed from: import, reason: not valid java name */
    public static final D7 f507import;

    /* renamed from: new, reason: not valid java name */
    public static final D7 f508new;

    /* renamed from: super, reason: not valid java name */
    public static final D7 f509super;

    /* renamed from: this, reason: not valid java name */
    public static final D7 f510this;

    /* renamed from: throw, reason: not valid java name */
    public static final D7 f511throw;

    /* renamed from: try, reason: not valid java name */
    public static final D7 f512try;

    /* renamed from: while, reason: not valid java name */
    public static final D7 f513while;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f514do;

    /* renamed from: do, reason: not valid java name */
    public static final Cdo f499do = new Cdo();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final LinkedHashMap f501do = new LinkedHashMap();

    /* renamed from: D7$do, reason: invalid class name */
    public class Cdo implements Comparator<String> {
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        
            return -1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int compare(java.lang.String r7, java.lang.String r8) {
            /*
                r6 = this;
                java.lang.String r7 = (java.lang.String) r7
                java.lang.String r8 = (java.lang.String) r8
                int r0 = r7.length()
                int r1 = r8.length()
                int r0 = java.lang.Math.min(r0, r1)
                r1 = 4
            L11:
                r2 = 1
                r3 = -1
                if (r1 >= r0) goto L26
                char r4 = r7.charAt(r1)
                char r5 = r8.charAt(r1)
                if (r4 == r5) goto L23
                if (r4 >= r5) goto L34
            L21:
                r2 = -1
                goto L34
            L23:
                int r1 = r1 + 1
                goto L11
            L26:
                int r7 = r7.length()
                int r8 = r8.length()
                if (r7 == r8) goto L33
                if (r7 >= r8) goto L34
                goto L21
            L33:
                r2 = 0
            L34:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.D7.Cdo.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    static {
        m350if("SSL_RSA_WITH_NULL_MD5");
        m350if("SSL_RSA_WITH_NULL_SHA");
        m350if("SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        m350if("SSL_RSA_WITH_RC4_128_MD5");
        m350if("SSL_RSA_WITH_RC4_128_SHA");
        m350if("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        m350if("SSL_RSA_WITH_DES_CBC_SHA");
        f500do = m350if("SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        m350if("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        m350if("SSL_DHE_DSS_WITH_DES_CBC_SHA");
        m350if("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        m350if("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        m350if("SSL_DHE_RSA_WITH_DES_CBC_SHA");
        m350if("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        m350if("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        m350if("SSL_DH_anon_WITH_RC4_128_MD5");
        m350if("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        m350if("SSL_DH_anon_WITH_DES_CBC_SHA");
        m350if("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_KRB5_WITH_DES_CBC_SHA");
        m350if("TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_KRB5_WITH_RC4_128_SHA");
        m350if("TLS_KRB5_WITH_DES_CBC_MD5");
        m350if("TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        m350if("TLS_KRB5_WITH_RC4_128_MD5");
        m350if("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        m350if("TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        m350if("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        m350if("TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f506if = m350if("TLS_RSA_WITH_AES_128_CBC_SHA");
        m350if("TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        m350if("TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        m350if("TLS_DH_anon_WITH_AES_128_CBC_SHA");
        f504for = m350if("TLS_RSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        m350if("TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_DH_anon_WITH_AES_256_CBC_SHA");
        m350if("TLS_RSA_WITH_NULL_SHA256");
        m350if("TLS_RSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_RSA_WITH_AES_256_CBC_SHA256");
        m350if("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        m350if("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        m350if("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        m350if("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        m350if("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        m350if("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        m350if("TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        m350if("TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        m350if("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        m350if("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        m350if("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        m350if("TLS_PSK_WITH_RC4_128_SHA");
        m350if("TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_PSK_WITH_AES_128_CBC_SHA");
        m350if("TLS_PSK_WITH_AES_256_CBC_SHA");
        m350if("TLS_RSA_WITH_SEED_CBC_SHA");
        f508new = m350if("TLS_RSA_WITH_AES_128_GCM_SHA256");
        f512try = m350if("TLS_RSA_WITH_AES_256_GCM_SHA384");
        m350if("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        m350if("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        m350if("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        m350if("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        m350if("TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        m350if("TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        m350if("TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        m350if("TLS_FALLBACK_SCSV");
        m350if("TLS_ECDH_ECDSA_WITH_NULL_SHA");
        m350if("TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        m350if("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        m350if("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_ECDH_RSA_WITH_NULL_SHA");
        m350if("TLS_ECDH_RSA_WITH_RC4_128_SHA");
        m350if("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        m350if("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_ECDHE_RSA_WITH_NULL_SHA");
        m350if("TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        m350if("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        f495case = m350if("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        f502else = m350if("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        m350if("TLS_ECDH_anon_WITH_NULL_SHA");
        m350if("TLS_ECDH_anon_WITH_RC4_128_SHA");
        m350if("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        m350if("TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        m350if("TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        m350if("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        m350if("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        m350if("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        m350if("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        m350if("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        f505goto = m350if("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        f510this = m350if("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        m350if("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        m350if("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        f494break = m350if("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        f496catch = m350if("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        m350if("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        m350if("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        m350if("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        m350if("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        f497class = m350if("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        f498const = m350if("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        m350if("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        m350if("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        f503final = m350if("TLS_AES_128_GCM_SHA256");
        f509super = m350if("TLS_AES_256_GCM_SHA384");
        f511throw = m350if("TLS_CHACHA20_POLY1305_SHA256");
        f513while = m350if("TLS_AES_128_CCM_SHA256");
        f507import = m350if("TLS_AES_256_CCM_8_SHA256");
    }

    public D7(String str) {
        str.getClass();
        this.f514do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static synchronized D7 m349do(String str) {
        D7 d7;
        String str2;
        synchronized (D7.class) {
            LinkedHashMap linkedHashMap = f501do;
            d7 = (D7) linkedHashMap.get(str);
            if (d7 == null) {
                if (str.startsWith("TLS_")) {
                    str2 = "SSL_" + str.substring(4);
                } else if (str.startsWith("SSL_")) {
                    str2 = "TLS_" + str.substring(4);
                } else {
                    str2 = str;
                }
                d7 = (D7) linkedHashMap.get(str2);
                if (d7 == null) {
                    d7 = new D7(str);
                }
                linkedHashMap.put(str, d7);
            }
        }
        return d7;
    }

    /* renamed from: if, reason: not valid java name */
    public static D7 m350if(String str) {
        D7 d7 = new D7(str);
        f501do.put(str, d7);
        return d7;
    }

    public final String toString() {
        return this.f514do;
    }
}
