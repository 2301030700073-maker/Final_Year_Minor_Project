package com.segmentanalyticsreactnative;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.res.Resources;
import android.media.MediaDrm;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.core.content.pm.PackageInfoCompat;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.react.ReactApplication;
import com.facebook.react.ReactInstanceManager;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.bridge.ActivityEventListener;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.bridge.LifecycleEventListener;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.sovranreactnative.SovranModule;
import io.sentry.protocol.Device;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.Hashtable;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AnalyticsReactNativeModule.kt */
@ReactModule(name = "AnalyticsReactNative")
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\u000f\u001a\u00020\nH\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\n\u0010\u0017\u001a\u00020\u0015*\u00020\u0018J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001a\u001a\u00020\u0011H\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007J\u0010\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020\n2\b\u0010)\u001a\u0004\u0018\u00010*J\u000e\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020\u0015J*\u0010-\u001a\u00020\n2\u0006\u0010&\u001a\u00020'2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\b\u00101\u001a\u0004\u0018\u00010*H\u0016J\u0010\u00102\u001a\u00020\n2\u0006\u0010)\u001a\u00020*H\u0016J\b\u00103\u001a\u00020\nH\u0016J\b\u00104\u001a\u00020\nH\u0016J\b\u00105\u001a\u00020\nH\u0016R \u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcom/segmentanalyticsreactnative/AnalyticsReactNativeModule;", "Lcom/facebook/react/bridge/ReactContextBaseJavaModule;", "Lcom/facebook/react/bridge/ActivityEventListener;", "Lcom/facebook/react/bridge/LifecycleEventListener;", "reactContext", "Lcom/facebook/react/bridge/ReactApplicationContext;", "<init>", "(Lcom/facebook/react/bridge/ReactApplicationContext;)V", "onInitialized", "Lkotlin/Function0;", "", "getOnInitialized", "()Lkotlin/jvm/functions/Function0;", "setOnInitialized", "(Lkotlin/jvm/functions/Function0;)V", "initialize", "isColdLaunch", "", "pInfo", "Landroid/content/pm/PackageInfo;", "getName", "", "getBuildNumber", "toHexString", "", "getUniqueId", "collectDeviceId", "getConnectionType", "Lcom/segmentanalyticsreactnative/ConnectionType;", "context", "Landroid/content/Context;", "getContextInfo", "config", "Lcom/facebook/react/bridge/ReadableMap;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lcom/facebook/react/bridge/Promise;", "getReferrer", "Landroid/net/Uri;", "activity", "Landroid/app/Activity;", "trackDeepLinks", SDKConstants.PARAM_INTENT, "Landroid/content/Intent;", "setAnonymousId", "anonymousId", "onActivityResult", "requestCode", "", "resultCode", "data", "onNewIntent", "onHostResume", "onHostPause", "onHostDestroy", "segment_analytics-react-native_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class AnalyticsReactNativeModule extends ReactContextBaseJavaModule implements ActivityEventListener, LifecycleEventListener {
    private boolean isColdLaunch;
    private Function0<Unit> onInitialized;
    private final PackageInfo pInfo;

    @Override // com.facebook.react.bridge.ActivityEventListener
    public void onActivityResult(Activity activity, int requestCode, int resultCode, Intent data) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostPause() {
    }

    public final Function0<Unit> getOnInitialized() {
        return this.onInitialized;
    }

    public final void setOnInitialized(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onInitialized = function0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnalyticsReactNativeModule(ReactApplicationContext reactContext) {
        super(reactContext);
        Intrinsics.checkNotNullParameter(reactContext, "reactContext");
        this.onInitialized = new Function0() { // from class: com.segmentanalyticsreactnative.AnalyticsReactNativeModule$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Unit unit;
                unit = Unit.INSTANCE;
                return unit;
            }
        };
        this.isColdLaunch = true;
        this.pInfo = reactContext.getPackageManager().getPackageInfo(reactContext.getPackageName(), 0);
        reactContext.addActivityEventListener(this);
        reactContext.addLifecycleEventListener(this);
    }

    @Override // com.facebook.react.bridge.BaseJavaModule, com.facebook.react.bridge.NativeModule
    public void initialize() {
        super.initialize();
        this.onInitialized.invoke();
    }

    @Override // com.facebook.react.bridge.NativeModule
    public String getName() {
        return "AnalyticsReactNative";
    }

    private final String getBuildNumber() {
        return String.valueOf(PackageInfoCompat.getLongVersionCode(this.pInfo));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence toHexString$lambda$1(byte b) {
        String format = String.format("%02x", Arrays.copyOf(new Object[]{Byte.valueOf(b)}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(...)");
        return format;
    }

    public final String toHexString(byte[] bArr) {
        Intrinsics.checkNotNullParameter(bArr, "<this>");
        return ArraysKt.joinToString$default(bArr, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, new Function1() { // from class: com.segmentanalyticsreactnative.AnalyticsReactNativeModule$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                CharSequence hexString$lambda$1;
                hexString$lambda$1 = AnalyticsReactNativeModule.toHexString$lambda$1(((Byte) obj).byteValue());
                return hexString$lambda$1;
            }
        }, 30, (Object) null);
    }

    private final String getUniqueId(boolean collectDeviceId) {
        MediaDrm mediaDrm;
        MediaDrm mediaDrm2 = null;
        if (collectDeviceId) {
            try {
                mediaDrm = new MediaDrm(new UUID(-1301668207276963122L, -6645017420763422227L));
                try {
                    byte[] propertyByteArray = mediaDrm.getPropertyByteArray("deviceUniqueId");
                    Intrinsics.checkNotNullExpressionValue(propertyByteArray, "getPropertyByteArray(...)");
                    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                    messageDigest.update(propertyByteArray);
                    byte[] digest = messageDigest.digest();
                    Intrinsics.checkNotNullExpressionValue(digest, "digest(...)");
                    String hexString = toHexString(digest);
                    if (Build.VERSION.SDK_INT >= 28) {
                        mediaDrm.release();
                    } else {
                        mediaDrm.release();
                    }
                    return hexString;
                } catch (Exception unused) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        if (mediaDrm != null) {
                            mediaDrm.release();
                        }
                    } else if (mediaDrm != null) {
                        mediaDrm.release();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    mediaDrm2 = mediaDrm;
                    if (Build.VERSION.SDK_INT >= 28) {
                        if (mediaDrm2 != null) {
                            mediaDrm2.release();
                        }
                    } else if (mediaDrm2 != null) {
                        mediaDrm2.release();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                mediaDrm = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    private final ConnectionType getConnectionType(Context context) {
        NetworkCapabilities networkCapabilities;
        ConnectionType connectionType;
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        ConnectionType connectionType2 = ConnectionType.Unknown;
        if (connectivityManager == null || (networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork())) == null) {
            return connectionType2;
        }
        if (networkCapabilities.hasTransport(1)) {
            connectionType = ConnectionType.Wifi;
        } else if (networkCapabilities.hasTransport(0)) {
            connectionType = ConnectionType.Cellular;
        } else {
            connectionType = ConnectionType.Unknown;
        }
        return connectionType;
    }

    @ReactMethod
    public final void getContextInfo(ReadableMap config, Promise promise) {
        float f;
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(promise, "promise");
        String obj = getReactApplicationContext().getApplicationInfo().loadLabel(getReactApplicationContext().getPackageManager()).toString();
        String valueOf = String.valueOf(this.pInfo.versionName);
        String buildNumber = getBuildNumber();
        String packageName = getReactApplicationContext().getPackageName();
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        Intrinsics.checkNotNullExpressionValue(reactApplicationContext, "getReactApplicationContext(...)");
        ConnectionType connectionType = getConnectionType(reactApplicationContext);
        TimeZone timeZone = TimeZone.getDefault();
        Intrinsics.checkNotNullExpressionValue(timeZone, "getDefault(...)");
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String str = locale.getLanguage() + "-" + locale.getCountry();
        int i = Resources.getSystem().getDisplayMetrics().widthPixels;
        int i2 = Resources.getSystem().getDisplayMetrics().heightPixels;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        WritableMap createMap = Arguments.createMap();
        Intrinsics.checkNotNullExpressionValue(createMap, "createMap(...)");
        if (config.hasKey("collectDeviceId") && config.getBoolean("collectDeviceId")) {
            String uuid = UUID.randomUUID().toString();
            f = f2;
            Intrinsics.checkNotNullExpressionValue(uuid, "toString(...)");
            String uniqueId = getUniqueId(config.hasKey("collectDeviceId") && config.getBoolean("collectDeviceId"));
            if (uniqueId != null) {
                uuid = uniqueId;
            }
            createMap.putString("deviceId", uuid);
        } else {
            f = f2;
        }
        createMap.putString("appName", obj);
        createMap.putString(RemoteConfigConstants.RequestFieldKey.APP_VERSION, valueOf);
        createMap.putString("buildNumber", buildNumber);
        createMap.putString("bundleId", packageName);
        createMap.putString("deviceName", Build.DEVICE);
        createMap.putString("deviceType", "android");
        createMap.putString(Device.JsonKeys.MANUFACTURER, Build.MANUFACTURER);
        createMap.putString("model", Build.MODEL);
        createMap.putString("timezone", timeZone.getID());
        createMap.putString("locale", str);
        String lowerCase = connectionType.toString().toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        createMap.putString("networkType", lowerCase);
        createMap.putString("osName", "Android");
        createMap.putString("osVersion", Build.VERSION.RELEASE);
        createMap.putInt("screenWidth", i);
        createMap.putInt("screenHeight", i2);
        createMap.putDouble("screenDensity", f);
        promise.resolve(createMap);
    }

    public final Uri getReferrer(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return activity.getReferrer();
    }

    public final void trackDeepLinks(Intent intent) {
        ReactInstanceManager reactInstanceManager;
        ReactContext currentReactContext;
        if (intent == null || intent.getData() == null) {
            Log.d(getName(), "No Intent data found");
            return;
        }
        Hashtable hashtable = new Hashtable();
        if (getCurrentActivity() == null) {
            Log.d(getName(), "No activity found");
            return;
        }
        Activity currentActivity = getCurrentActivity();
        Intrinsics.checkNotNull(currentActivity);
        Uri referrer = getReferrer(currentActivity);
        if (referrer != null) {
            String uri = referrer.toString();
            Intrinsics.checkNotNullExpressionValue(uri, "toString(...)");
            hashtable.put("referring_application", uri);
        }
        Uri data = intent.getData();
        try {
            hashtable.put("url", String.valueOf(data));
            Intrinsics.checkNotNull(data);
            for (String str : data.getQueryParameterNames()) {
                String queryParameter = data.getQueryParameter(str);
                if (queryParameter != null) {
                    String str2 = queryParameter;
                    int length = str2.length() - 1;
                    int i = 0;
                    boolean z = false;
                    while (i <= length) {
                        boolean z2 = Intrinsics.compare((int) str2.charAt(!z ? i : length), 32) <= 0;
                        if (z) {
                            if (!z2) {
                                break;
                            } else {
                                length--;
                            }
                        } else if (z2) {
                            i++;
                        } else {
                            z = true;
                        }
                    }
                    if (str2.subSequence(i, length + 1).toString().length() > 0) {
                        hashtable.put(str, queryParameter);
                    }
                }
            }
            Log.d(getName(), "Sending Deeplink data to store: uri=" + data + ", referrer=" + referrer);
            Activity currentActivity2 = getCurrentActivity();
            SovranModule sovranModule = null;
            Object application = currentActivity2 != null ? currentActivity2.getApplication() : null;
            Intrinsics.checkNotNull(application, "null cannot be cast to non-null type com.facebook.react.ReactApplication");
            ReactNativeHost reactNativeHost = ((ReactApplication) application).getReactNativeHost();
            if (reactNativeHost != null && (reactInstanceManager = reactNativeHost.getReactInstanceManager()) != null && (currentReactContext = reactInstanceManager.getCurrentReactContext()) != null) {
                sovranModule = (SovranModule) currentReactContext.getNativeModule(SovranModule.class);
            }
            if (sovranModule != null) {
                sovranModule.dispatch("add-deepLink-data", hashtable);
            }
        } catch (Exception e) {
            Log.d(getName(), "Error getting URL: " + e.getMessage());
        }
    }

    public final void setAnonymousId(String anonymousId) {
        SovranModule sovranModule;
        Intrinsics.checkNotNullParameter(anonymousId, "anonymousId");
        Hashtable hashtable = new Hashtable();
        hashtable.put("anonymousId", anonymousId);
        ReactApplicationContext reactApplicationContext = getReactApplicationContext();
        if (reactApplicationContext == null || (sovranModule = (SovranModule) reactApplicationContext.getNativeModule(SovranModule.class)) == null) {
            return;
        }
        sovranModule.dispatch("add-anonymous-id", hashtable);
    }

    @Override // com.facebook.react.bridge.ActivityEventListener
    public void onNewIntent(Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        Log.d(getName(), "onNewIntent = " + intent);
        trackDeepLinks(intent);
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostResume() {
        if (getCurrentActivity() == null || !this.isColdLaunch) {
            return;
        }
        this.isColdLaunch = false;
        String name = getName();
        Activity currentActivity = getCurrentActivity();
        Intrinsics.checkNotNull(currentActivity);
        Log.d(name, "onHostResume = " + currentActivity.getIntent());
        Activity currentActivity2 = getCurrentActivity();
        Intrinsics.checkNotNull(currentActivity2);
        trackDeepLinks(currentActivity2.getIntent());
    }

    @Override // com.facebook.react.bridge.LifecycleEventListener
    public void onHostDestroy() {
        this.isColdLaunch = true;
    }
}
