package defpackage;

import android.util.Base64;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.network.FirebasePerfOkHttpClient;
import defpackage.Bz;
import defpackage.C3717t0;
import defpackage.C3947wv;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class Uw {

    /* renamed from: do, reason: not valid java name */
    public static final C0155Cs f4000do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final SecureRandom f4001do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final C3947wv f4002do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static volatile boolean f4003do;

    /* renamed from: if, reason: not valid java name */
    public static final C0155Cs f4004if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public static volatile boolean f4005if;

    static {
        C0155Cs c0155Cs;
        C0155Cs c0155Cs2 = null;
        try {
            c0155Cs = C0155Cs.m307do("application/json");
        } catch (IllegalArgumentException unused) {
            c0155Cs = null;
        }
        f4000do = c0155Cs;
        try {
            c0155Cs2 = C0155Cs.m307do("application/x-www-form-urlencoded");
        } catch (IllegalArgumentException unused2) {
        }
        f4004if = c0155Cs2;
        f4001do = new SecureRandom();
        C3947wv.Cif cif = new C3947wv.Cif();
        TimeUnit timeUnit = TimeUnit.SECONDS;
        cif.f16478if = SJ.m2142new(15L, timeUnit);
        cif.f16476for = SJ.m2142new(15L, timeUnit);
        cif.f16483new = SJ.m2142new(15L, timeUnit);
        cif.f16459do = SJ.m2142new(20L, timeUnit);
        f4002do = new C3947wv(cif);
        f4003do = false;
        f4005if = false;
    }

    /* renamed from: do, reason: not valid java name */
    public static Tz m2482do(Bz bz) {
        C3947wv c3947wv = f4002do;
        try {
            c3947wv.getClass();
            return FirebasePerfOkHttpClient.execute(Vy.m2675new(c3947wv, bz, false));
        } catch (IOException unused) {
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
            }
            try {
                c3947wv.getClass();
                return FirebasePerfOkHttpClient.execute(Vy.m2675new(c3947wv, bz, false));
            } catch (IOException e) {
                throw e;
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static PrivateKey m2483for(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str.replace("-----BEGIN PRIVATE KEY-----", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replace("-----END PRIVATE KEY-----", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED).replaceAll("\\s+", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), 0)));
        } catch (Exception e) {
            C0766bi.m4854do().m4855for(e);
            return null;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m2484if() {
        String str;
        String str2;
        PrivateKey m2483for;
        Vz vz;
        try {
            try {
                str = C3717t0.m8190do(new C3717t0.Cdo("1zBNx4RM6c+sLpy5MY8ozA==:lV59XtOp0F2hfw8D6I5K2Jhp03mdbpwcJRWxgrWbyrk=:VyAMd/ioEweMkOH1TsoCXgLM3NYLJuKLnlvdjiuL+JhHROw7JL75jmsLZ+qX4Ls89iUT76EwaSFnNdCMzjGCTW7lJtwovwHnjvgy4ZogoUY="), C3717t0.m8191for("e9E6wntbjqZg9gkRpXY/XA==:NFHXZuqpEzdFLoIkJqgwcn2jYOS0V1IfECJjS4j34T8="));
            } catch (Exception e) {
                C0766bi.m4854do().m4855for(e);
                str = null;
            }
            try {
                str2 = C3717t0.m8190do(new C3717t0.Cdo("F3kHnpqOjhGBYdfIIFVdgw==:uRsN5/Hmgkk76BK4kv111KeGdnFNwmASZKu4ke4vr6o=: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"), C3717t0.m8191for("e9E6wntbjqZg9gkRpXY/XA==:NFHXZuqpEzdFLoIkJqgwcn2jYOS0V1IfECJjS4j34T8="));
            } catch (Exception e2) {
                C0766bi.m4854do().m4855for(e2);
                str2 = null;
            }
        } catch (Exception e3) {
            C0766bi.m4854do().m4855for(e3);
        }
        if (str == null || str2 == null || (m2483for = m2483for(str2)) == null) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        String str3 = Base64.encodeToString("{\"alg\":\"RS256\",\"typ\":\"JWT\"}".getBytes(StandardCharsets.UTF_8), 11) + "." + Base64.encodeToString(new JSONObject().put("iss", str).put("scope", "https://www.googleapis.com/auth/playintegrity").put("aud", "https://oauth2.googleapis.com/token").put("iat", currentTimeMillis).put("exp", currentTimeMillis + 3600).toString().getBytes(StandardCharsets.UTF_8), 11);
        Signature signature = Signature.getInstance(OidcSecurityUtil.SIGNATURE_ALGORITHM_SHA256);
        signature.initSign(m2483for);
        signature.update(str3.getBytes(StandardCharsets.UTF_8));
        String str4 = str3 + "." + Base64.encodeToString(signature.sign(), 11);
        Cz m7036for = AbstractC3134j6.m7036for(f4004if, "grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer&assertion=" + URLEncoder.encode(str4, "UTF-8"));
        Bz.Cdo cdo = new Bz.Cdo();
        cdo.m248new("https://oauth2.googleapis.com/token");
        cdo.m247if("POST", m7036for);
        Tz m2482do = m2482do(cdo.m245do());
        try {
            int i = m2482do.f3777for;
            if ((i >= 200 && i < 300) && (vz = m2482do.f3774do) != null) {
                String optString = new JSONObject(vz.m2682new()).optString("access_token", null);
                m2482do.close();
                return optString;
            }
            C3210kN.m7244case("TOKEN_HTTP: " + m2482do.f3777for);
            m2482do.close();
            return null;
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0012 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0013 A[Catch: Exception -> 0x0075, TryCatch #0 {Exception -> 0x0075, blocks: (B:5:0x0003, B:7:0x0008, B:13:0x0013, B:16:0x0019, B:19:0x002c, B:22:0x0032, B:25:0x0035, B:27:0x0043), top: B:4:0x0003 }] */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m2485new(final boolean r3, final android.app.Activity r4) {
        /*
            if (r4 != 0) goto L3
            return
        L3:
            boolean r0 = defpackage.C0830cn.f8637for     // Catch: java.lang.Exception -> L75
            r1 = 1
            if (r0 != 0) goto Lf
            boolean r0 = defpackage.C0830cn.f8640new     // Catch: java.lang.Exception -> L75
            if (r0 == 0) goto Ld
            goto Lf
        Ld:
            r0 = 0
            goto L10
        Lf:
            r0 = 1
        L10:
            if (r0 != 0) goto L13
            return
        L13:
            Vw r0 = defpackage.C3948ww.f16490do     // Catch: java.lang.Exception -> L75
            if (r0 == 0) goto L2c
            if (r3 == 0) goto L2b
            android.os.Handler r3 = new android.os.Handler     // Catch: java.lang.Exception -> L75
            android.os.Looper r0 = android.os.Looper.getMainLooper()     // Catch: java.lang.Exception -> L75
            r3.<init>(r0)     // Catch: java.lang.Exception -> L75
            LH r0 = new LH     // Catch: java.lang.Exception -> L75
            r1 = 3
            r0.<init>(r4, r1)     // Catch: java.lang.Exception -> L75
            r3.post(r0)     // Catch: java.lang.Exception -> L75
        L2b:
            return
        L2c:
            boolean r0 = defpackage.Uw.f4003do     // Catch: java.lang.Exception -> L75
            if (r0 == 0) goto L35
            if (r3 == 0) goto L34
            defpackage.Uw.f4005if = r1     // Catch: java.lang.Exception -> L75
        L34:
            return
        L35:
            com.google.android.gms.common.GoogleApiAvailability r0 = com.google.android.gms.common.GoogleApiAvailability.getInstance()     // Catch: java.lang.Exception -> L75
            android.content.Context r2 = r4.getApplicationContext()     // Catch: java.lang.Exception -> L75
            int r0 = r0.isGooglePlayServicesAvailable(r2)     // Catch: java.lang.Exception -> L75
            if (r0 != 0) goto L7d
            defpackage.Uw.f4003do = r1     // Catch: java.lang.Exception -> L75
            r0 = 32
            byte[] r0 = new byte[r0]     // Catch: java.lang.Exception -> L75
            java.security.SecureRandom r1 = defpackage.Uw.f4001do     // Catch: java.lang.Exception -> L75
            r1.nextBytes(r0)     // Catch: java.lang.Exception -> L75
            r1 = 11
            java.lang.String r0 = android.util.Base64.encodeToString(r0, r1)     // Catch: java.lang.Exception -> L75
            android.content.Context r1 = r4.getApplicationContext()     // Catch: java.lang.Exception -> L75
            com.google.android.play.core.integrity.IntegrityManager r1 = com.google.android.play.core.integrity.IntegrityManagerFactory.create(r1)     // Catch: java.lang.Exception -> L75
            com.google.android.play.core.integrity.IntegrityTokenRequest$Builder r2 = com.google.android.play.core.integrity.IntegrityTokenRequest.builder()     // Catch: java.lang.Exception -> L75
            com.google.android.play.core.integrity.IntegrityTokenRequest$Builder r0 = r2.setNonce(r0)     // Catch: java.lang.Exception -> L75
            com.google.android.play.core.integrity.IntegrityTokenRequest r0 = r0.build()     // Catch: java.lang.Exception -> L75
            FG r0 = r1.requestIntegrityToken(r0)     // Catch: java.lang.Exception -> L75
            Sw r1 = new Sw     // Catch: java.lang.Exception -> L75
            r1.<init>()     // Catch: java.lang.Exception -> L75
            r0.mo599if(r1)     // Catch: java.lang.Exception -> L75
            goto L7d
        L75:
            r3 = move-exception
            bi r4 = defpackage.C0766bi.m4854do()
            r4.m4855for(r3)
        L7d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Uw.m2485new(boolean, android.app.Activity):void");
    }
}
