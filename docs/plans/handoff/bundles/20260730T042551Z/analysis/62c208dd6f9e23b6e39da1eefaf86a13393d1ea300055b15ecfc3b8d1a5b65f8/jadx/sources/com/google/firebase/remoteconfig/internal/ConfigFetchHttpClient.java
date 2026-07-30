package com.google.firebase.remoteconfig.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import defpackage.C0123Bi;
import defpackage.C0145Ci;
import defpackage.C3359mw;
import j$.util.DesugarTimeZone;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ConfigFetchHttpClient {

    /* renamed from: do, reason: not valid java name */
    public static final Pattern f11975do = Pattern.compile("^[^:]+:([0-9]+):(android|ios|web):([0-9a-f]+)");

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final long f11976do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f11977do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f11978do;

    /* renamed from: for, reason: not valid java name */
    public final String f11979for;

    /* renamed from: if, reason: not valid java name */
    public final long f11980if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final String f11981if;

    /* renamed from: new, reason: not valid java name */
    public final String f11982new;

    public ConfigFetchHttpClient(Context context, String str, String str2, String str3, long j, long j2) {
        this.f11977do = context;
        this.f11978do = str;
        this.f11981if = str2;
        Matcher matcher = f11975do.matcher(str);
        this.f11979for = matcher.matches() ? matcher.group(1) : null;
        this.f11982new = str3;
        this.f11976do = j;
        this.f11980if = j2;
    }

    /* renamed from: for, reason: not valid java name */
    public static JSONObject m6130for(URLConnection uRLConnection) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(uRLConnection.getInputStream(), "utf-8"));
        StringBuilder sb = new StringBuilder();
        while (true) {
            int read = bufferedReader.read();
            if (read == -1) {
                return new JSONObject(sb.toString());
            }
            sb.append((char) read);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static void m6131new(HttpURLConnection httpURLConnection, byte[] bArr) {
        httpURLConnection.setFixedLengthStreamingMode(bArr.length);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
        bufferedOutputStream.write(bArr);
        bufferedOutputStream.flush();
        bufferedOutputStream.close();
    }

    /* renamed from: do, reason: not valid java name */
    public final JSONObject m6132do(String str, String str2, Map<String, String> map, Long l) {
        HashMap hashMap = new HashMap();
        if (str == null) {
            throw new C0123Bi("Fetch failed: Firebase installation id is null.");
        }
        hashMap.put("appInstanceId", str);
        hashMap.put("appInstanceIdToken", str2);
        hashMap.put("appId", this.f11978do);
        Context context = this.f11977do;
        Locale locale = context.getResources().getConfiguration().locale;
        hashMap.put("countryCode", locale.getCountry());
        int i = Build.VERSION.SDK_INT;
        hashMap.put("languageCode", locale.toLanguageTag());
        hashMap.put("platformVersion", Integer.toString(i));
        hashMap.put("timeZone", TimeZone.getDefault().getID());
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            if (packageInfo != null) {
                hashMap.put("appVersion", packageInfo.versionName);
                hashMap.put("appBuild", Long.toString(i >= 28 ? C3359mw.m7483if(packageInfo) : packageInfo.versionCode));
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        hashMap.put("packageName", context.getPackageName());
        hashMap.put("sdkVersion", "22.0.1");
        hashMap.put("analyticsUserProperties", new JSONObject(map));
        if (l != null) {
            long longValue = l.longValue();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
            hashMap.put("firstOpenTime", simpleDateFormat.format(Long.valueOf(longValue)));
        }
        return new JSONObject(hashMap);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(26:21|22|(2:23|24)|(24:81|82|83|27|28|(20:74|75|76|31|32|(16:67|68|69|35|(1:37)(1:66)|(1:39)(1:65)|40|41|42|(8:58|59|60|45|47|48|49|(2:51|52)(2:54|55))|44|45|47|48|49|(0)(0))|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|26|27|28|(0)|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(30:16|17|(2:18|19)|20|21|22|(2:23|24)|(24:81|82|83|27|28|(20:74|75|76|31|32|(16:67|68|69|35|(1:37)(1:66)|(1:39)(1:65)|40|41|42|(8:58|59|60|45|47|48|49|(2:51|52)(2:54|55))|44|45|47|48|49|(0)(0))|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|26|27|28|(0)|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(31:16|17|18|19|20|21|22|(2:23|24)|(24:81|82|83|27|28|(20:74|75|76|31|32|(16:67|68|69|35|(1:37)(1:66)|(1:39)(1:65)|40|41|42|(8:58|59|60|45|47|48|49|(2:51|52)(2:54|55))|44|45|47|48|49|(0)(0))|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0))|26|27|28|(0)|30|31|32|(0)|34|35|(0)(0)|(0)(0)|40|41|42|(0)|44|45|47|48|49|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0172, code lost:
    
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014a, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011a, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0101, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007d A[LOOP:0: B:8:0x0077->B:10:0x007d, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00b5 A[Catch: JSONException -> 0x0195, IOException | JSONException -> 0x0197, all -> 0x01a0, TRY_LEAVE, TryCatch #1 {all -> 0x01a0, blocks: (B:14:0x0099, B:16:0x00b5, B:93:0x018b, B:94:0x0194, B:103:0x0198, B:104:0x019f), top: B:13:0x0099 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0132 A[Catch: JSONException -> 0x0182, TryCatch #2 {JSONException -> 0x0182, blocks: (B:22:0x00cb, B:35:0x012c, B:37:0x0132, B:39:0x013a, B:45:0x015c), top: B:21:0x00cb }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x013a A[Catch: JSONException -> 0x0182, TRY_LEAVE, TryCatch #2 {JSONException -> 0x0182, blocks: (B:22:0x00cb, B:35:0x012c, B:37:0x0132, B:39:0x013a, B:45:0x015c), top: B:21:0x00cb }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x011e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018b A[Catch: JSONException -> 0x0195, IOException | JSONException -> 0x0197, all -> 0x01a0, TRY_ENTER, TryCatch #1 {all -> 0x01a0, blocks: (B:14:0x0099, B:16:0x00b5, B:93:0x018b, B:94:0x0194, B:103:0x0198, B:104:0x019f), top: B:13:0x0099 }] */
    @androidx.annotation.Keep
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.firebase.remoteconfig.internal.Cif.Cdo fetch(java.net.HttpURLConnection r22, java.lang.String r23, java.lang.String r24, java.util.Map<java.lang.String, java.lang.String> r25, java.lang.String r26, java.util.Map<java.lang.String, java.lang.String> r27, java.lang.Long r28, java.util.Date r29) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient.fetch(java.net.HttpURLConnection, java.lang.String, java.lang.String, java.util.Map, java.lang.String, java.util.Map, java.lang.Long, java.util.Date):com.google.firebase.remoteconfig.internal.if$do");
    }

    /* renamed from: if, reason: not valid java name */
    public final HttpURLConnection m6133if() {
        try {
            return (HttpURLConnection) new URL(String.format("https://firebaseremoteconfig.googleapis.com/v1/projects/%s/namespaces/%s:fetch", this.f11979for, this.f11982new)).openConnection();
        } catch (IOException e) {
            throw new C0145Ci(e.getMessage());
        }
    }
}
