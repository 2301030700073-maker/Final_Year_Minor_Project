package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.codeless.internal.Constants;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.BF;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C3344mh;
import defpackage.C3548q7;
import defpackage.C3756th;
import defpackage.Cstrictfp;
import defpackage.EF;
import defpackage.EnumC0171Dm;
import defpackage.MJ;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* loaded from: classes.dex */
public final class Utility {
    private static final String ARC_DEVICE_PATTERN = ".+_cheets|cheets_.+";
    public static final int DEFAULT_STREAM_BUFFER_SIZE = 8192;
    private static final String EXTRA_APP_EVENTS_INFO_FORMAT_VERSION = "a2";
    private static final String FACEBOOK_PROFILE_FIELDS = "id,name,first_name,middle_name,last_name";
    private static final String HASH_ALGORITHM_MD5 = "MD5";
    private static final String HASH_ALGORITHM_SHA1 = "SHA-1";
    private static final String HASH_ALGORITHM_SHA256 = "SHA-256";
    private static final String INSTAGRAM_PROFILE_FIELDS = "id,name,profile_picture";
    public static final String LOG_TAG = "FacebookSDK";
    private static final int REFRESH_TIME_FOR_EXTENDED_DEVICE_INFO_MILLIS = 1800000;
    private static final String URL_SCHEME = "https";
    private static final String UTF8 = "UTF-8";
    private static int numCPUCores;
    public static final Utility INSTANCE = new Utility();
    private static long timestampOfLastCheck = -1;
    private static long totalExternalStorageGB = -1;
    private static long availableExternalStorageGB = -1;
    private static String deviceTimezoneAbbreviation = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private static String deviceTimeZoneName = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    private static final String NO_CARRIER = "NoCarrier";
    private static String carrierName = NO_CARRIER;

    public interface GraphMeRequestWithCacheCallback {
        void onFailure(C3344mh c3344mh);

        void onSuccess(JSONObject jSONObject);
    }

    private Utility() {
    }

    private final void appendAnonIdUnderCompliance(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String str, Context context) {
        if (Build.VERSION.SDK_INT < 31 || !isGooglePlayServicesAvailable(context)) {
            jSONObject.put("anon_id", str);
        } else {
            if (attributionIdentifiers.isTrackingLimited()) {
                return;
            }
            jSONObject.put("anon_id", str);
        }
    }

    private final void appendAttributionIdUnderCompliance(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, Context context) {
        if (Build.VERSION.SDK_INT < 31 || !isGooglePlayServicesAvailable(context)) {
            jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
        } else {
            if (attributionIdentifiers.isTrackingLimited()) {
                return;
            }
            jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
        }
    }

    public static final <T> boolean areObjectsEqual(T t, T t2) {
        return t == null ? t2 == null : C0173Do.m394do(t, t2);
    }

    public static final JSONObject awaitGetGraphMeRequestWithCache(String str) {
        C0173Do.m401try(str, "accessToken");
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(str);
        if (profileInformation != null) {
            return profileInformation;
        }
        C0346Ll m5267for = INSTANCE.getGraphMeRequestWithCache(str).m5267for();
        if (m5267for.f1995do != null) {
            return null;
        }
        return m5267for.f1998if;
    }

    public static final Uri buildUri(String str, String str2, Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme(URL_SCHEME);
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        Uri build = builder.build();
        C0173Do.m399new(build, "builder.build()");
        return build;
    }

    private final void clearCookiesForDomain(Context context, String str) {
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        Object[] array = EF.t(cookie, new String[]{";"}, 0, 6).toArray(new String[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
        }
        String[] strArr = (String[]) array;
        int length = strArr.length;
        int i = 0;
        while (i < length) {
            String str2 = strArr[i];
            i++;
            Object[] array2 = EF.t(str2, new String[]{"="}, 0, 6).toArray(new String[0]);
            if (array2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr2 = (String[]) array2;
            if (strArr2.length > 0) {
                String str3 = strArr2[0];
                int length2 = str3.length() - 1;
                int i2 = 0;
                boolean z = false;
                while (i2 <= length2) {
                    boolean z2 = C0173Do.m393case(str3.charAt(!z ? i2 : length2), 32) <= 0;
                    if (z) {
                        if (!z2) {
                            break;
                        } else {
                            length2--;
                        }
                    } else if (z2) {
                        i2++;
                    } else {
                        z = true;
                    }
                }
                cookieManager.setCookie(str, C0173Do.m397goto("=;expires=Sat, 1 Jan 2000 00:00:01 UTC;", str3.subSequence(i2, length2 + 1).toString()));
            }
        }
        cookieManager.removeExpiredCookie();
    }

    public static final void clearFacebookCookies(Context context) {
        C0173Do.m401try(context, "context");
        try {
            Utility utility = INSTANCE;
            utility.clearCookiesForDomain(context, "facebook.com");
            utility.clearCookiesForDomain(context, ".facebook.com");
            utility.clearCookiesForDomain(context, "https://facebook.com");
            utility.clearCookiesForDomain(context, "https://.facebook.com");
        } catch (Exception unused) {
        }
    }

    public static final void closeQuietly(Closeable closeable) {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }

    public static final String coerceValueIfNullOrEmpty(String str, String str2) {
        return isNullOrEmpty(str) ? str2 : str;
    }

    private final long convertBytesToGB(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    public static final List<String> convertJSONArrayToList(JSONArray jSONArray) {
        C0173Do.m401try(jSONArray, "jsonArray");
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            if (length <= 0) {
                return arrayList;
            }
            int i = 0;
            while (true) {
                int i2 = i + 1;
                String string = jSONArray.getString(i);
                C0173Do.m399new(string, "jsonArray.getString(i)");
                arrayList.add(string);
                if (i2 >= length) {
                    return arrayList;
                }
                i = i2;
            }
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    public static final Map<String, Object> convertJSONObjectToHashMap(JSONObject jSONObject) {
        C0173Do.m401try(jSONObject, "jsonObject");
        HashMap hashMap = new HashMap();
        JSONArray names = jSONObject.names();
        if (names == null) {
            return hashMap;
        }
        int length = names.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                try {
                    String string = names.getString(i);
                    C0173Do.m399new(string, "keys.getString(i)");
                    Object obj = jSONObject.get(string);
                    if (obj instanceof JSONObject) {
                        obj = convertJSONObjectToHashMap((JSONObject) obj);
                    }
                    C0173Do.m399new(obj, "value");
                    hashMap.put(string, obj);
                } catch (JSONException unused) {
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashMap;
    }

    public static final Map<String, String> convertJSONObjectToStringMap(JSONObject jSONObject) {
        C0173Do.m401try(jSONObject, "jsonObject");
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                C0173Do.m399new(next, "key");
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    public static final int copyAndCloseInputStream(InputStream inputStream, OutputStream outputStream) {
        C0173Do.m401try(outputStream, "outputStream");
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(inputStream);
            try {
                byte[] bArr = new byte[DEFAULT_STREAM_BUFFER_SIZE];
                int i = 0;
                while (true) {
                    int read = bufferedInputStream2.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    outputStream.write(bArr, 0, read);
                    i += read;
                }
                bufferedInputStream2.close();
                if (inputStream != null) {
                    inputStream.close();
                }
                return i;
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                if (bufferedInputStream != null) {
                    bufferedInputStream.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static final void disconnectQuietly(URLConnection uRLConnection) {
        if (uRLConnection == null || !(uRLConnection instanceof HttpURLConnection)) {
            return;
        }
        ((HttpURLConnection) uRLConnection).disconnect();
    }

    private final boolean externalStorageExists() {
        return C0173Do.m394do("mounted", Environment.getExternalStorageState());
    }

    public static final String generateRandomString(int i) {
        String bigInteger = new BigInteger(i * 5, new Random()).toString(32);
        C0173Do.m399new(bigInteger, "BigInteger(length * 5, r).toString(32)");
        return bigInteger;
    }

    public static final String getActivityName(Context context) {
        return context == null ? "null" : context == context.getApplicationContext() ? "unknown" : context.getClass().getSimpleName();
    }

    public static final String getAppName(Context context) {
        String string;
        C0173Do.m401try(context, "context");
        try {
            C3756th c3756th = C3756th.f15751do;
            Validate.sdkInitialized();
            String str = C3756th.f15754for;
            if (str != null) {
                return str;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            if (i == 0) {
                string = applicationInfo.nonLocalizedLabel.toString();
            } else {
                string = context.getString(i);
                C0173Do.m399new(string, "context.getString(stringId)");
            }
            return string;
        } catch (Exception unused) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    public static final String getAppVersion() {
        Context m8299do = C3756th.m8299do();
        try {
            PackageInfo packageInfo = m8299do.getPackageManager().getPackageInfo(m8299do.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static final Date getBundleLongAsDate(Bundle bundle, String str, Date date) {
        long parseLong;
        C0173Do.m401try(date, "dateBase");
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (!(obj instanceof Long)) {
            if (obj instanceof String) {
                try {
                    parseLong = Long.parseLong((String) obj);
                } catch (NumberFormatException unused) {
                }
            }
            return null;
        }
        parseLong = ((Number) obj).longValue();
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date((parseLong * 1000) + date.getTime());
    }

    public static final long getContentSize(Uri uri) {
        C0173Do.m401try(uri, "contentUri");
        Cursor cursor = null;
        try {
            cursor = C3756th.m8299do().getContentResolver().query(uri, null, null, null, null);
            if (cursor == null) {
                return 0L;
            }
            int columnIndex = cursor.getColumnIndex("_size");
            cursor.moveToFirst();
            long j = cursor.getLong(columnIndex);
            cursor.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static final Locale getCurrentLocale() {
        Locale resourceLocale = getResourceLocale();
        if (resourceLocale != null) {
            return resourceLocale;
        }
        Locale locale = Locale.getDefault();
        C0173Do.m399new(locale, "getDefault()");
        return locale;
    }

    private final String getCurrentTokenDomainWithDefault() {
        String str;
        Date date = AccessToken.f9198new;
        AccessToken m5258if = AccessToken.Cif.m5258if();
        return (m5258if == null || (str = m5258if.f9203const) == null) ? "facebook" : str;
    }

    public static final JSONObject getDataProcessingOptions() {
        if (CrashShieldHandler.isObjectCrashing(Utility.class)) {
            return null;
        }
        try {
            String string = C3756th.m8299do().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string != null) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utility.class);
            return null;
        }
    }

    public static final String getGraphDomainFromTokenDomain(String str) {
        C3756th c3756th = C3756th.f15751do;
        String str2 = C3756th.f15753else;
        return str == null ? str2 : C0173Do.m394do(str, "gaming") ? BF.i(str2, "facebook.com", "fb.gg") : C0173Do.m394do(str, "instagram") ? BF.i(str2, "facebook.com", "instagram.com") : str2;
    }

    private final GraphRequest getGraphMeRequestWithCache(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", getProfileFieldsForGraphDomain(getCurrentTokenDomainWithDefault()));
        bundle.putString("access_token", str);
        GraphRequest graphRequest = new GraphRequest(null, "me", null, null, new Cstrictfp(null, 1), 32);
        graphRequest.f9274do = bundle;
        graphRequest.m5264break(EnumC0171Dm.GET);
        return graphRequest;
    }

    public static final void getGraphMeRequestWithCacheAsync(final String str, final GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback) {
        C0173Do.m401try(str, "accessToken");
        C0173Do.m401try(graphMeRequestWithCacheCallback, "callback");
        JSONObject profileInformation = ProfileInformationCache.getProfileInformation(str);
        if (profileInformation != null) {
            graphMeRequestWithCacheCallback.onSuccess(profileInformation);
            return;
        }
        GraphRequest.Cif cif = new GraphRequest.Cif() { // from class: YJ
            @Override // com.facebook.GraphRequest.Cif
            /* renamed from: if */
            public final void mo78if(C0346Ll c0346Ll) {
                Utility.m5436getGraphMeRequestWithCacheAsync$lambda3(graphMeRequestWithCacheCallback, str, c0346Ll);
            }
        };
        GraphRequest graphMeRequestWithCache = INSTANCE.getGraphMeRequestWithCache(str);
        graphMeRequestWithCache.m5271this(cif);
        graphMeRequestWithCache.m5270new();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: getGraphMeRequestWithCacheAsync$lambda-3, reason: not valid java name */
    public static final void m5436getGraphMeRequestWithCacheAsync$lambda3(GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback, String str, C0346Ll c0346Ll) {
        C0173Do.m401try(graphMeRequestWithCacheCallback, "$callback");
        C0173Do.m401try(str, "$accessToken");
        C0173Do.m401try(c0346Ll, "response");
        FacebookRequestError facebookRequestError = c0346Ll.f1995do;
        if (facebookRequestError != null) {
            graphMeRequestWithCacheCallback.onFailure(facebookRequestError.f9262do);
            return;
        }
        ProfileInformationCache profileInformationCache = ProfileInformationCache.INSTANCE;
        JSONObject jSONObject = c0346Ll.f1998if;
        if (jSONObject == null) {
            throw new IllegalStateException("Required value was null.".toString());
        }
        ProfileInformationCache.putProfileInformation(str, jSONObject);
        graphMeRequestWithCacheCallback.onSuccess(jSONObject);
    }

    public static final String getMetadataApplicationId(Context context) {
        Validate.notNull(context, "context");
        return C3756th.m8303if();
    }

    public static final Method getMethodQuietly(Class<?> cls, String str, Class<?>... clsArr) {
        C0173Do.m401try(cls, "clazz");
        C0173Do.m401try(str, "methodName");
        C0173Do.m401try(clsArr, "parameterTypes");
        try {
            return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private final String getProfileFieldsForGraphDomain(String str) {
        return C0173Do.m394do(str, "instagram") ? INSTAGRAM_PROFILE_FIELDS : FACEBOOK_PROFILE_FIELDS;
    }

    public static final Locale getResourceLocale() {
        try {
            return C3756th.m8299do().getResources().getConfiguration().locale;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final Object getStringPropertyAsJSON(JSONObject jSONObject, String str, String str2) {
        C0173Do.m401try(jSONObject, "jsonObject");
        Object opt = jSONObject.opt(str);
        if (opt != null && (opt instanceof String)) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt == null || (opt instanceof JSONObject) || (opt instanceof JSONArray)) {
            return opt;
        }
        if (str2 == null) {
            throw new C3344mh("Got an unexpected non-JSON object.");
        }
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.putOpt(str2, opt);
        return jSONObject2;
    }

    public static final String getUriString(Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    private final String hashBytes(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        C0173Do.m399new(digest, "digest");
        int length = digest.length;
        int i = 0;
        while (i < length) {
            byte b = digest[i];
            i++;
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString((b >> 0) & 15));
        }
        String sb2 = sb.toString();
        C0173Do.m399new(sb2, "builder.toString()");
        return sb2;
    }

    private final String hashWithAlgorithm(String str, String str2) {
        Charset charset = C3548q7.f15043do;
        if (str2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        byte[] bytes = str2.getBytes(charset);
        C0173Do.m399new(bytes, "(this as java.lang.String).getBytes(charset)");
        return hashWithAlgorithm(str, bytes);
    }

    public static final Object invokeMethodQuietly(Object obj, Method method, Object... objArr) {
        C0173Do.m401try(method, "method");
        C0173Do.m401try(objArr, "args");
        try {
            return method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static final boolean isAutoAppLinkSetup() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            String format = String.format("fb%s://applinks", Arrays.copyOf(new Object[]{C3756th.m8303if()}, 1));
            C0173Do.m399new(format, "java.lang.String.format(format, *args)");
            intent.setData(Uri.parse(format));
            Context m8299do = C3756th.m8299do();
            PackageManager packageManager = m8299do.getPackageManager();
            String packageName = m8299do.getPackageName();
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
            C0173Do.m399new(queryIntentActivities, "packageManager.queryIntentActivities(intent, PackageManager.MATCH_DEFAULT_ONLY)");
            Iterator<ResolveInfo> it = queryIntentActivities.iterator();
            while (it.hasNext()) {
                if (C0173Do.m394do(packageName, it.next().activityInfo.packageName)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static /* synthetic */ void isAutoAppLinkSetup$annotations() {
    }

    public static final boolean isAutofillAvailable(Context context) {
        Object systemService;
        boolean isAutofillSupported;
        boolean isEnabled;
        C0173Do.m401try(context, "context");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        systemService = context.getSystemService((Class<Object>) AutofillManager.class);
        AutofillManager autofillManager = (AutofillManager) systemService;
        if (autofillManager == null) {
            return false;
        }
        isAutofillSupported = autofillManager.isAutofillSupported();
        if (!isAutofillSupported) {
            return false;
        }
        isEnabled = autofillManager.isEnabled();
        return isEnabled;
    }

    public static final boolean isChromeOS(Context context) {
        C0173Do.m401try(context, "context");
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        String str = Build.DEVICE;
        if (str != null) {
            C0173Do.m399new(str, "DEVICE");
            Pattern compile = Pattern.compile(ARC_DEVICE_PATTERN);
            C0173Do.m399new(compile, "compile(pattern)");
            if (compile.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isContentUri(Uri uri) {
        return uri != null && BF.e("content", uri.getScheme());
    }

    public static final boolean isCurrentAccessToken(AccessToken accessToken) {
        if (accessToken != null) {
            Date date = AccessToken.f9198new;
            if (C0173Do.m394do(accessToken, AccessToken.Cif.m5258if())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean isDataProcessingRestricted() {
        if (CrashShieldHandler.isObjectCrashing(Utility.class)) {
            return false;
        }
        try {
            JSONObject dataProcessingOptions = getDataProcessingOptions();
            if (dataProcessingOptions == null) {
                return false;
            }
            try {
                JSONArray jSONArray = dataProcessingOptions.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                if (length > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        String string = jSONArray.getString(i);
                        C0173Do.m399new(string, "options.getString(i)");
                        String lowerCase = string.toLowerCase();
                        C0173Do.m399new(lowerCase, "(this as java.lang.String).toLowerCase()");
                        if (C0173Do.m394do(lowerCase, "ldu")) {
                            return true;
                        }
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                }
            } catch (Exception unused) {
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, Utility.class);
            return false;
        }
    }

    public static final boolean isFileUri(Uri uri) {
        return uri != null && BF.e("file", uri.getScheme());
    }

    private final boolean isGooglePlayServicesAvailable(Context context) {
        Method methodQuietly = getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
        if (methodQuietly == null) {
            return false;
        }
        Object invokeMethodQuietly = invokeMethodQuietly(null, methodQuietly, context);
        return (invokeMethodQuietly instanceof Integer) && C0173Do.m394do(invokeMethodQuietly, 0);
    }

    public static final boolean isNullOrEmpty(Collection<?> collection) {
        return collection == null || collection.isEmpty();
    }

    public static final boolean isWebUri(Uri uri) {
        return uri != null && (BF.e("http", uri.getScheme()) || BF.e(URL_SCHEME, uri.getScheme()) || BF.e("fbstaging", uri.getScheme()));
    }

    public static final Set<String> jsonArrayToSet(JSONArray jSONArray) {
        C0173Do.m401try(jSONArray, "jsonArray");
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                String string = jSONArray.getString(i);
                C0173Do.m399new(string, "jsonArray.getString(i)");
                hashSet.add(string);
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashSet;
    }

    public static final List<String> jsonArrayToStringList(JSONArray jSONArray) {
        C0173Do.m401try(jSONArray, "jsonArray");
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                arrayList.add(jSONArray.getString(i));
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    public static final Map<String, String> jsonStrToMap(String str) {
        C0173Do.m401try(str, "str");
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                C0173Do.m399new(next, "key");
                String string = jSONObject.getString(next);
                C0173Do.m399new(string, "jsonObject.getString(key)");
                hashMap.put(next, string);
            }
            return hashMap;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    public static final void logd(String str, Exception exc) {
        C3756th c3756th = C3756th.f15751do;
    }

    public static final String mapToJsonStr(Map<String, String> map) {
        C0173Do.m401try(map, "map");
        boolean isEmpty = map.isEmpty();
        String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (!isEmpty) {
            try {
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    jSONObject.put(entry.getKey(), entry.getValue());
                }
                str = jSONObject.toString();
            } catch (JSONException unused) {
            }
            C0173Do.m399new(str, "{\n      try {\n        val jsonObject = JSONObject()\n        for ((key, value) in map) {\n          jsonObject.put(key, value)\n        }\n        jsonObject.toString()\n      } catch (_e: JSONException) {\n        \"\"\n      }\n    }");
        }
        return str;
    }

    public static final String md5hash(String str) {
        C0173Do.m401try(str, "key");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_MD5, str);
    }

    public static final boolean mustFixWindowParamsForAutofill(Context context) {
        C0173Do.m401try(context, "context");
        return isAutofillAvailable(context);
    }

    public static final Bundle parseUrlQueryString(String str) {
        Bundle bundle = new Bundle();
        if (!isNullOrEmpty(str)) {
            if (str == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            Object[] array = EF.t(str, new String[]{"&"}, 0, 6).toArray(new String[0]);
            if (array == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
            }
            String[] strArr = (String[]) array;
            int length = strArr.length;
            int i = 0;
            while (i < length) {
                String str2 = strArr[i];
                i++;
                Object[] array2 = EF.t(str2, new String[]{"="}, 0, 6).toArray(new String[0]);
                if (array2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                String[] strArr2 = (String[]) array2;
                try {
                    if (strArr2.length == 2) {
                        bundle.putString(URLDecoder.decode(strArr2[0], UTF8), URLDecoder.decode(strArr2[1], UTF8));
                    } else if (strArr2.length == 1) {
                        bundle.putString(URLDecoder.decode(strArr2[0], UTF8), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    }
                } catch (UnsupportedEncodingException e) {
                    logd(LOG_TAG, e);
                }
            }
        }
        return bundle;
    }

    public static final void putCommaSeparatedStringList(Bundle bundle, String str, List<String> list) {
        C0173Do.m401try(bundle, "b");
        if (list != null) {
            bundle.putString(str, TextUtils.join(",", list));
        }
    }

    public static final boolean putJSONValueInBundle(Bundle bundle, String str, Object obj) {
        C0173Do.m401try(bundle, "bundle");
        if (obj == null) {
            bundle.remove(str);
            return true;
        }
        if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        }
        if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Number) obj).doubleValue());
            return true;
        }
        if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        }
        if (obj instanceof Integer) {
            bundle.putInt(str, ((Number) obj).intValue());
            return true;
        }
        if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Number) obj).longValue());
            return true;
        }
        if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        }
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        }
        if (obj instanceof JSONArray) {
            bundle.putString(str, ((JSONArray) obj).toString());
            return true;
        }
        if (!(obj instanceof JSONObject)) {
            return false;
        }
        bundle.putString(str, ((JSONObject) obj).toString());
        return true;
    }

    public static final void putNonEmptyString(Bundle bundle, String str, String str2) {
        C0173Do.m401try(bundle, "b");
        if (isNullOrEmpty(str2)) {
            return;
        }
        bundle.putString(str, str2);
    }

    public static final void putUri(Bundle bundle, String str, Uri uri) {
        C0173Do.m401try(bundle, "b");
        if (uri != null) {
            putNonEmptyString(bundle, str, uri.toString());
        }
    }

    public static final Map<String, String> readNonnullStringMapFromParcel(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (readInt > 0) {
            int i = 0;
            do {
                i++;
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                if (readString != null && readString2 != null) {
                    hashMap.put(readString, readString2);
                }
            } while (i < readInt);
        }
        return hashMap;
    }

    public static final String readStreamToString(InputStream inputStream) {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        InputStreamReader inputStreamReader;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read == -1) {
                            String sb2 = sb.toString();
                            C0173Do.m399new(sb2, "{\n      bufferedInputStream = BufferedInputStream(inputStream)\n      reader = InputStreamReader(bufferedInputStream)\n      val stringBuilder = StringBuilder()\n      val bufferSize = 1024 * 2\n      val buffer = CharArray(bufferSize)\n      var n = 0\n      while (reader.read(buffer).also { n = it } != -1) {\n        stringBuilder.append(buffer, 0, n)\n      }\n      stringBuilder.toString()\n    }");
                            closeQuietly(bufferedInputStream);
                            closeQuietly(inputStreamReader);
                            return sb2;
                        }
                        sb.append(cArr, 0, read);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    closeQuietly(bufferedInputStream);
                    closeQuietly(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th = th4;
            inputStreamReader = null;
        }
    }

    public static final Map<String, String> readStringMapFromParcel(Parcel parcel) {
        C0173Do.m401try(parcel, "parcel");
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (readInt > 0) {
            int i = 0;
            do {
                i++;
                hashMap.put(parcel.readString(), parcel.readString());
            } while (i < readInt);
        }
        return hashMap;
    }

    private final void refreshAvailableExternalStorage() {
        try {
            if (externalStorageExists()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                availableExternalStorageGB = statFs.getAvailableBlocks() * statFs.getBlockSize();
            }
            availableExternalStorageGB = convertBytesToGB(availableExternalStorageGB);
        } catch (Exception unused) {
        }
    }

    private final int refreshBestGuessNumberOfCPUCores() {
        int i = numCPUCores;
        if (i > 0) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new Cdo(1));
            if (listFiles != null) {
                numCPUCores = listFiles.length;
            }
        } catch (Exception unused) {
        }
        if (numCPUCores <= 0) {
            numCPUCores = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return numCPUCores;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: refreshBestGuessNumberOfCPUCores$lambda-4, reason: not valid java name */
    public static final boolean m5438refreshBestGuessNumberOfCPUCores$lambda4(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }

    private final void refreshCarrierName(Context context) {
        if (C0173Do.m394do(carrierName, NO_CARRIER)) {
            try {
                Object systemService = context.getSystemService("phone");
                if (systemService == null) {
                    throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
                }
                String networkOperatorName = ((TelephonyManager) systemService).getNetworkOperatorName();
                C0173Do.m399new(networkOperatorName, "telephonyManager.networkOperatorName");
                carrierName = networkOperatorName;
            } catch (Exception unused) {
            }
        }
    }

    private final void refreshPeriodicExtendedDeviceInfo(Context context) {
        if (timestampOfLastCheck == -1 || System.currentTimeMillis() - timestampOfLastCheck >= 1800000) {
            timestampOfLastCheck = System.currentTimeMillis();
            refreshTimezone();
            refreshCarrierName(context);
            refreshTotalExternalStorage();
            refreshAvailableExternalStorage();
        }
    }

    private final void refreshTimezone() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            String displayName = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            C0173Do.m399new(displayName, "tz.getDisplayName(tz.inDaylightTime(Date()), TimeZone.SHORT)");
            deviceTimezoneAbbreviation = displayName;
            String id = timeZone.getID();
            C0173Do.m399new(id, "tz.id");
            deviceTimeZoneName = id;
        } catch (AssertionError | Exception unused) {
        }
    }

    private final void refreshTotalExternalStorage() {
        try {
            if (externalStorageExists()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                totalExternalStorageGB = statFs.getBlockCount() * statFs.getBlockSize();
            }
            totalExternalStorageGB = convertBytesToGB(totalExternalStorageGB);
        } catch (Exception unused) {
        }
    }

    public static final void runOnNonUiThread(Runnable runnable) {
        try {
            C3756th.m8304new().execute(runnable);
        } catch (Exception unused) {
        }
    }

    public static final String safeGetStringFromResponse(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        String optString = jSONObject.optString(str, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        C0173Do.m399new(optString, "response.optString(propertyName, \"\")");
        return optString;
    }

    public static final void setAppEventAttributionParameters(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String str, boolean z, Context context) {
        C0173Do.m401try(jSONObject, NativeProtocol.WEB_DIALOG_PARAMS);
        C0173Do.m401try(context, "context");
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Feature feature = FeatureManager.Feature.ServiceUpdateCompliance;
        if (!FeatureManager.isEnabled(feature)) {
            jSONObject.put("anon_id", str);
        }
        jSONObject.put("application_tracking_enabled", !z);
        C3756th c3756th = C3756th.f15751do;
        jSONObject.put("advertiser_id_collection_enabled", MJ.m1410do());
        if (attributionIdentifiers != null) {
            if (FeatureManager.isEnabled(feature)) {
                INSTANCE.appendAnonIdUnderCompliance(jSONObject, attributionIdentifiers, str, context);
            }
            if (attributionIdentifiers.getAttributionId() != null) {
                if (FeatureManager.isEnabled(feature)) {
                    INSTANCE.appendAttributionIdUnderCompliance(jSONObject, attributionIdentifiers, context);
                } else {
                    jSONObject.put("attribution", attributionIdentifiers.getAttributionId());
                }
            }
            if (attributionIdentifiers.getAndroidAdvertiserId() != null) {
                jSONObject.put("advertiser_id", attributionIdentifiers.getAndroidAdvertiserId());
                jSONObject.put("advertiser_tracking_enabled", !attributionIdentifiers.isTrackingLimited());
            }
            if (!attributionIdentifiers.isTrackingLimited()) {
                String allHashedUserData = UserDataStore.getAllHashedUserData();
                if (!(allHashedUserData.length() == 0)) {
                    jSONObject.put("ud", allHashedUserData);
                }
            }
            if (attributionIdentifiers.getAndroidInstallerPackage() != null) {
                jSONObject.put("installer_package", attributionIdentifiers.getAndroidInstallerPackage());
            }
        }
    }

    public static final void setAppEventExtendedDeviceInfoParameters(JSONObject jSONObject, Context context) {
        String str;
        Locale locale;
        int i;
        Display display;
        PackageInfo packageInfo;
        C0173Do.m401try(jSONObject, NativeProtocol.WEB_DIALOG_PARAMS);
        C0173Do.m401try(context, "appContext");
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(EXTRA_APP_EVENTS_INFO_FORMAT_VERSION);
        INSTANCE.refreshPeriodicExtendedDeviceInfo(context);
        String packageName = context.getPackageName();
        int i2 = 0;
        int i3 = -1;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (packageInfo == null) {
            return;
        }
        i3 = packageInfo.versionCode;
        str = packageInfo.versionName;
        jSONArray.put(packageName);
        jSONArray.put(i3);
        jSONArray.put(str);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception unused2) {
            locale = Locale.getDefault();
        }
        jSONArray.put(locale.getLanguage() + '_' + ((Object) locale.getCountry()));
        jSONArray.put(deviceTimezoneAbbreviation);
        jSONArray.put(carrierName);
        double d = 0.0d;
        try {
            Object systemService = context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
            display = null;
            DisplayManager displayManager = systemService instanceof DisplayManager ? (DisplayManager) systemService : null;
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            }
        } catch (Exception unused3) {
        }
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            int i4 = displayMetrics.widthPixels;
            try {
                int i5 = displayMetrics.heightPixels;
                try {
                    d = displayMetrics.density;
                } catch (Exception unused4) {
                }
                i = i5;
                i2 = i4;
            } catch (Exception unused5) {
                i2 = i4;
            }
            jSONArray.put(i2);
            jSONArray.put(i);
            jSONArray.put(new DecimalFormat("#.##").format(d));
            jSONArray.put(INSTANCE.refreshBestGuessNumberOfCPUCores());
            jSONArray.put(totalExternalStorageGB);
            jSONArray.put(availableExternalStorageGB);
            jSONArray.put(deviceTimeZoneName);
            jSONObject.put(Constants.EXTINFO, jSONArray.toString());
        }
        i = 0;
        jSONArray.put(i2);
        jSONArray.put(i);
        jSONArray.put(new DecimalFormat("#.##").format(d));
        jSONArray.put(INSTANCE.refreshBestGuessNumberOfCPUCores());
        jSONArray.put(totalExternalStorageGB);
        jSONArray.put(availableExternalStorageGB);
        jSONArray.put(deviceTimeZoneName);
        jSONObject.put(Constants.EXTINFO, jSONArray.toString());
    }

    public static final String sha1hash(String str) {
        C0173Do.m401try(str, "key");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA1, str);
    }

    public static final String sha256hash(String str) {
        if (str == null) {
            return null;
        }
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA256, str);
    }

    public static final boolean stringsEqualOrEmpty(String str, String str2) {
        boolean z = str == null || str.length() == 0;
        boolean z2 = str2 == null || str2.length() == 0;
        if (z && z2) {
            return true;
        }
        if (z || z2) {
            return false;
        }
        return C0173Do.m394do(str, str2);
    }

    public static final JSONArray tryGetJSONArrayFromResponse(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONArray(str);
    }

    public static final JSONObject tryGetJSONObjectFromResponse(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.optJSONObject(str);
    }

    public static final void writeNonnullStringMapToParcel(Parcel parcel, Map<String, String> map) {
        C0173Do.m401try(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            parcel.writeString(key);
            parcel.writeString(value);
        }
    }

    public static final void writeStringMapToParcel(Parcel parcel, Map<String, String> map) {
        C0173Do.m401try(parcel, "parcel");
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            parcel.writeString(key);
            parcel.writeString(value);
        }
    }

    public static final Method getMethodQuietly(String str, String str2, Class<?>... clsArr) {
        C0173Do.m401try(str, "className");
        C0173Do.m401try(str2, "methodName");
        C0173Do.m401try(clsArr, "parameterTypes");
        try {
            return getMethodQuietly(Class.forName(str), str2, (Class<?>[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private final String hashWithAlgorithm(String str, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            C0173Do.m399new(messageDigest, "hash");
            return hashBytes(messageDigest, bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public static final boolean isNullOrEmpty(String str) {
        if (str != null) {
            return str.length() == 0;
        }
        return true;
    }

    public static final void logd(String str, String str2) {
        C3756th c3756th = C3756th.f15751do;
    }

    public static final String sha1hash(byte[] bArr) {
        C0173Do.m401try(bArr, "bytes");
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA1, bArr);
    }

    public static final String sha256hash(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return INSTANCE.hashWithAlgorithm(HASH_ALGORITHM_SHA256, bArr);
    }

    public static final void logd(String str, String str2, Throwable th) {
        C3756th c3756th = C3756th.f15751do;
    }
}
