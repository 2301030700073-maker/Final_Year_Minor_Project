package defpackage;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.JsonReader;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.AndroidUtilsLight;
import com.google.android.gms.common.util.Hex;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.concurrent.ExecutionException;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: fi, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2765fi {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Gz f12966do = new Gz();

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Context f12967do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC3655ry<InterfaceC0631Yl> f12968do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Pattern f12965do = Pattern.compile("[0-9]+s");

    /* renamed from: do, reason: not valid java name */
    public static final Charset f12964do = Charset.forName("UTF-8");

    public C2765fi(Context context, InterfaceC3655ry<InterfaceC0631Yl> interfaceC3655ry) {
        this.f12967do = context;
        this.f12968do = interfaceC3655ry;
    }

    /* renamed from: case, reason: not valid java name */
    public static C4016y4 m6670case(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f12964do));
        Long l = 0L;
        jsonReader.beginObject();
        String str = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals("token")) {
                str = jsonReader.nextString();
            } else if (nextName.equals("expiresIn")) {
                l = Long.valueOf(m6675new(jsonReader.nextString()));
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        String str2 = l == null ? " tokenExpirationTimestamp" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (str2.isEmpty()) {
            return new C4016y4(str, l.longValue(), 1);
        }
        throw new IllegalStateException("Missing required properties:".concat(str2));
    }

    /* renamed from: do, reason: not valid java name */
    public static URL m6671do(String str) {
        try {
            return new URL(String.format("https://%s/%s/%s", "firebaseinstallations.googleapis.com", "v1", str));
        } catch (MalformedURLException e) {
            throw new C3286li(e.getMessage());
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static void m6672else(HttpURLConnection httpURLConnection, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("fid", str);
            jSONObject.put("appId", str2);
            jSONObject.put("authVersion", "FIS_v2");
            jSONObject.put("sdkVersion", "a:18.0.0");
            m6676this(httpURLConnection, jSONObject.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m6673goto(HttpURLConnection httpURLConnection) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("sdkVersion", "a:18.0.0");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("installation", jSONObject);
            m6676this(httpURLConnection, jSONObject2.toString().getBytes("UTF-8"));
        } catch (JSONException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m6674if(HttpURLConnection httpURLConnection, String str, String str2, String str3) {
        InputStream errorStream = httpURLConnection.getErrorStream();
        String str4 = null;
        if (errorStream != null) {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(errorStream, f12964do));
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb.append(readLine);
                    sb.append('\n');
                }
                str4 = String.format("Error when communicating with the Firebase Installations server API. HTTP response: [%d %s: %s]", Integer.valueOf(httpURLConnection.getResponseCode()), httpURLConnection.getResponseMessage(), sb);
            } catch (IOException unused) {
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused3) {
            }
        }
        if (TextUtils.isEmpty(str4)) {
            return;
        }
        Object[] objArr = new Object[3];
        objArr[0] = str2;
        objArr[1] = str3;
        objArr[2] = TextUtils.isEmpty(str) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : C4122zt.m8824for(", ", str);
        String.format("Firebase options used while communicating with Firebase server APIs: %s, %s%s", objArr);
    }

    /* renamed from: new, reason: not valid java name */
    public static long m6675new(String str) {
        Preconditions.checkArgument(f12965do.matcher(str).matches(), "Invalid Expiration Timestamp.");
        if (str == null || str.length() == 0) {
            return 0L;
        }
        return Long.parseLong(str.substring(0, str.length() - 1));
    }

    /* renamed from: this, reason: not valid java name */
    public static void m6676this(URLConnection uRLConnection, byte[] bArr) {
        OutputStream outputStream = uRLConnection.getOutputStream();
        if (outputStream == null) {
            throw new IOException("Cannot send request to FIS servers. No OutputStream available.");
        }
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
        try {
            gZIPOutputStream.write(bArr);
        } finally {
            try {
                gZIPOutputStream.close();
                outputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static C2612d4 m6677try(HttpURLConnection httpURLConnection) {
        InputStream inputStream = httpURLConnection.getInputStream();
        JsonReader jsonReader = new JsonReader(new InputStreamReader(inputStream, f12964do));
        Long l = 0L;
        jsonReader.beginObject();
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        C4016y4 c4016y4 = null;
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            if (nextName.equals(FacebookRequestErrorClassification.KEY_NAME)) {
                str2 = jsonReader.nextString();
            } else if (nextName.equals("fid")) {
                str3 = jsonReader.nextString();
            } else if (nextName.equals("refreshToken")) {
                str4 = jsonReader.nextString();
            } else if (nextName.equals("authToken")) {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    String nextName2 = jsonReader.nextName();
                    if (nextName2.equals("token")) {
                        str = jsonReader.nextString();
                    } else if (nextName2.equals("expiresIn")) {
                        l = Long.valueOf(m6675new(jsonReader.nextString()));
                    } else {
                        jsonReader.skipValue();
                    }
                }
                String str5 = l == null ? " tokenExpirationTimestamp" : RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                if (!str5.isEmpty()) {
                    throw new IllegalStateException("Missing required properties:".concat(str5));
                }
                c4016y4 = new C4016y4(str, l.longValue(), 0);
                jsonReader.endObject();
            } else {
                jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        jsonReader.close();
        inputStream.close();
        return new C2612d4(str2, str3, str4, c4016y4, 1);
    }

    /* renamed from: for, reason: not valid java name */
    public final HttpURLConnection m6678for(URL url, String str) {
        String str2;
        byte[] packageCertificateHashBytes;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.addRequestProperty("Content-Type", "application/json");
            httpURLConnection.addRequestProperty("Accept", "application/json");
            httpURLConnection.addRequestProperty("Content-Encoding", "gzip");
            httpURLConnection.addRequestProperty("Cache-Control", "no-cache");
            Context context = this.f12967do;
            httpURLConnection.addRequestProperty("X-Android-Package", context.getPackageName());
            InterfaceC0631Yl interfaceC0631Yl = this.f12968do.get();
            if (interfaceC0631Yl != null) {
                try {
                    httpURLConnection.addRequestProperty("x-firebase-client", (String) LG.m1314do(interfaceC0631Yl.mo2948do()));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                } catch (ExecutionException unused2) {
                }
            }
            try {
                packageCertificateHashBytes = AndroidUtilsLight.getPackageCertificateHashBytes(context, context.getPackageName());
            } catch (PackageManager.NameNotFoundException unused3) {
                context.getPackageName();
            }
            if (packageCertificateHashBytes != null) {
                str2 = Hex.bytesToStringUppercase(packageCertificateHashBytes, false);
                httpURLConnection.addRequestProperty("X-Android-Cert", str2);
                httpURLConnection.addRequestProperty("x-goog-api-key", str);
                return httpURLConnection;
            }
            context.getPackageName();
            str2 = null;
            httpURLConnection.addRequestProperty("X-Android-Cert", str2);
            httpURLConnection.addRequestProperty("x-goog-api-key", str);
            return httpURLConnection;
        } catch (IOException unused4) {
            throw new C3286li("Firebase Installations Service is unavailable. Please try again later.");
        }
    }
}
