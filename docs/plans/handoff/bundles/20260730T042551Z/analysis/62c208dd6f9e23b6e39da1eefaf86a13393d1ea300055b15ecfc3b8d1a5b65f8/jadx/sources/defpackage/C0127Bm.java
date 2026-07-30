package defpackage;

import com.facebook.internal.Utility;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C3162jc;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

/* renamed from: Bm, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0127Bm {

    /* renamed from: do, reason: not valid java name */
    public final String f279do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashMap f280do = new HashMap();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Map<String, String> f281do;

    public C0127Bm(String str, HashMap hashMap) {
        this.f279do = str;
        this.f281do = hashMap;
    }

    /* renamed from: do, reason: not valid java name */
    public static String m214do(String str, Map map) {
        StringBuilder sb = new StringBuilder();
        Iterator it = map.entrySet().iterator();
        Map.Entry entry = (Map.Entry) it.next();
        sb.append((String) entry.getKey());
        sb.append("=");
        sb.append(entry.getValue() != null ? URLEncoder.encode((String) entry.getValue(), "UTF-8") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        while (it.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it.next();
            sb.append("&");
            sb.append((String) entry2.getKey());
            sb.append("=");
            sb.append(entry2.getValue() != null ? URLEncoder.encode((String) entry2.getValue(), "UTF-8") : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        String sb2 = sb.toString();
        if (sb2.isEmpty()) {
            return str;
        }
        if (!str.contains("?")) {
            return Creturn.m7982new(str, "?", sb2);
        }
        if (!str.endsWith("&")) {
            sb2 = "&".concat(sb2);
        }
        return Cpublic.m7816case(str, sb2);
    }

    /* renamed from: if, reason: not valid java name */
    public final C0215Fm m215if() {
        Throwable th;
        HttpsURLConnection httpsURLConnection;
        C3162jc.f13733do.getClass();
        String m7145if = C3162jc.Cdo.m7145if();
        C0173Do.m399new(m7145if, "threadName");
        if (!Boolean.valueOf(EF.k(m7145if, "Firebase Blocking Thread #")).booleanValue()) {
            C2818gc.f13191do.mo585new();
        }
        InputStream inputStream = null;
        String sb = null;
        inputStream = null;
        try {
            httpsURLConnection = (HttpsURLConnection) new URL(m214do(this.f279do, this.f281do)).openConnection();
            try {
                httpsURLConnection.setReadTimeout(10000);
                httpsURLConnection.setConnectTimeout(10000);
                httpsURLConnection.setRequestMethod("GET");
                for (Map.Entry entry : this.f280do.entrySet()) {
                    httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpsURLConnection.connect();
                int responseCode = httpsURLConnection.getResponseCode();
                InputStream inputStream2 = httpsURLConnection.getInputStream();
                if (inputStream2 != null) {
                    try {
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                        char[] cArr = new char[Utility.DEFAULT_STREAM_BUFFER_SIZE];
                        StringBuilder sb2 = new StringBuilder();
                        while (true) {
                            int read = bufferedReader.read(cArr);
                            if (read == -1) {
                                break;
                            }
                            sb2.append(cArr, 0, read);
                        }
                        sb = sb2.toString();
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStream2;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (httpsURLConnection != null) {
                            httpsURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                httpsURLConnection.disconnect();
                return new C0215Fm(responseCode, sb);
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            httpsURLConnection = null;
        }
    }
}
