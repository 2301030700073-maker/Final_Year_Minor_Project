package com.facebook.internal.security;

import android.util.Base64;
import com.facebook.internal.Utility;
import com.facebook.internal.security.OidcSecurityUtil;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C2723ez;
import defpackage.C3206kJ;
import defpackage.C3548q7;
import defpackage.C3756th;
import defpackage.O2;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class OidcSecurityUtil {
    public static final OidcSecurityUtil INSTANCE = new OidcSecurityUtil();
    private static final String OPENID_KEYS_PATH = "/.well-known/oauth/openid/keys/";
    public static final String SIGNATURE_ALGORITHM_SHA256 = "SHA256withRSA";
    public static final long TIMEOUT_IN_MILLISECONDS = 5000;

    private OidcSecurityUtil() {
    }

    public static final PublicKey getPublicKeyFromString(String str) {
        C0173Do.m401try(str, "key");
        byte[] decode = Base64.decode(BF.i(BF.i(BF.i(str, "\n", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), "-----BEGIN PUBLIC KEY-----", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), "-----END PUBLIC KEY-----", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), 0);
        C0173Do.m399new(decode, "decode(pubKeyString, Base64.DEFAULT)");
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(decode));
        C0173Do.m399new(generatePublic, "kf.generatePublic(x509publicKey)");
        return generatePublic;
    }

    public static final String getRawKeyFromEndPoint(final String str) {
        C0173Do.m401try(str, "kid");
        C3756th c3756th = C3756th.f15751do;
        final URL url = new URL("https", C0173Do.m397goto(C3756th.f15753else, "www."), OPENID_KEYS_PATH);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final C2723ez c2723ez = new C2723ez();
        C3756th.m8304new().execute(new Runnable() { // from class: uv
            @Override // java.lang.Runnable
            public final void run() {
                OidcSecurityUtil.m5481getRawKeyFromEndPoint$lambda1(url, c2723ez, str, reentrantLock, newCondition);
            }
        });
        reentrantLock.lock();
        try {
            newCondition.await(TIMEOUT_IN_MILLISECONDS, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) c2723ez.f12779do;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r5v2, types: [T, java.lang.String] */
    /* renamed from: getRawKeyFromEndPoint$lambda-1, reason: not valid java name */
    public static final void m5481getRawKeyFromEndPoint$lambda1(URL url, C2723ez c2723ez, String str, ReentrantLock reentrantLock, Condition condition) {
        C0173Do.m401try(url, "$openIdKeyUrl");
        C0173Do.m401try(c2723ez, "$result");
        C0173Do.m401try(str, "$kid");
        C0173Do.m401try(reentrantLock, "$lock");
        URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        if (uRLConnection == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
        try {
            try {
                InputStream inputStream = httpURLConnection.getInputStream();
                C0173Do.m399new(inputStream, "connection.inputStream");
                Reader inputStreamReader = new InputStreamReader(inputStream, C3548q7.f15043do);
                String m1585final = O2.m1585final(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, Utility.DEFAULT_STREAM_BUFFER_SIZE));
                httpURLConnection.getInputStream().close();
                c2723ez.f12779do = new JSONObject(m1585final).optString(str);
                httpURLConnection.disconnect();
                reentrantLock.lock();
                try {
                    condition.signal();
                    C3206kJ c3206kJ = C3206kJ.f13965do;
                } finally {
                }
            } catch (Exception e) {
                INSTANCE.getClass();
                e.getMessage();
                httpURLConnection.disconnect();
                reentrantLock.lock();
                try {
                    condition.signal();
                    C3206kJ c3206kJ2 = C3206kJ.f13965do;
                } finally {
                }
            }
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            reentrantLock.lock();
            try {
                condition.signal();
                C3206kJ c3206kJ3 = C3206kJ.f13965do;
                throw th;
            } finally {
            }
        }
    }

    public static final boolean verify(PublicKey publicKey, String str, String str2) {
        C0173Do.m401try(publicKey, "publicKey");
        C0173Do.m401try(str, "data");
        C0173Do.m401try(str2, "signature");
        try {
            Signature signature = Signature.getInstance(SIGNATURE_ALGORITHM_SHA256);
            signature.initVerify(publicKey);
            byte[] bytes = str.getBytes(C3548q7.f15043do);
            C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
            signature.update(bytes);
            byte[] decode = Base64.decode(str2, 8);
            C0173Do.m399new(decode, "decode(signature, Base64.URL_SAFE)");
            return signature.verify(decode);
        } catch (Exception unused) {
            return false;
        }
    }

    public final String getOPENID_KEYS_PATH() {
        return OPENID_KEYS_PATH;
    }
}
