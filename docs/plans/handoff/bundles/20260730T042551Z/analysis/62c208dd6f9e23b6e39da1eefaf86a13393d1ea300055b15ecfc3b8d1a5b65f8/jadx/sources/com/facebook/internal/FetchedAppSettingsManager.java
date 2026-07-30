package com.facebook.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.facebook.GraphRequest;
import com.facebook.appevents.codeless.internal.UnityReflection;
import com.facebook.appevents.internal.AutomaticAnalyticsLogger;
import com.facebook.appevents.internal.Constants;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FetchedAppSettings;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.O4;
import defpackage.RunnableC2786g2;
import defpackage.Y1;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class FetchedAppSettingsManager {
    private static final String APPLICATION_FIELDS = "fields";
    private static final String APP_SETTINGS_PREFS_KEY_FORMAT = "com.facebook.internal.APP_SETTINGS.%s";
    private static final String APP_SETTINGS_PREFS_STORE = "com.facebook.internal.preferences.APP_SETTINGS";
    private static final int AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD = 8;
    private static final int CODELESS_EVENTS_ENABLED_BITMASK_FIELD = 32;
    private static final int IAP_AUTOMATIC_LOGGING_ENABLED_BITMASK_FIELD = 16;
    private static final int MONITOR_ENABLED_BITMASK_FIELD = 16384;
    private static final String SDK_UPDATE_MESSAGE = "sdk_update_message";
    private static final int TRACK_UNINSTALL_ENABLED_BITMASK_FIELD = 256;
    private static boolean isUnityInit;
    private static boolean printedSDKUpdatedMessage;
    private static JSONArray unityEventBindings;
    public static final FetchedAppSettingsManager INSTANCE = new FetchedAppSettingsManager();
    private static final String TAG = "FetchedAppSettingsManager";
    private static final String APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING = "supports_implicit_sdk_logging";
    private static final String APP_SETTING_NUX_CONTENT = "gdpv4_nux_content";
    private static final String APP_SETTING_NUX_ENABLED = "gdpv4_nux_enabled";
    private static final String APP_SETTING_DIALOG_CONFIGS = "android_dialog_configs";
    private static final String APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES = "android_sdk_error_categories";
    private static final String APP_SETTING_APP_EVENTS_SESSION_TIMEOUT = "app_events_session_timeout";
    private static final String APP_SETTING_APP_EVENTS_FEATURE_BITMASK = "app_events_feature_bitmask";
    private static final String APP_SETTING_APP_EVENTS_EVENT_BINDINGS = "auto_event_mapping_android";
    private static final String APP_SETTING_SMART_LOGIN_OPTIONS = "seamless_login";
    private static final String SMART_LOGIN_BOOKMARK_ICON_URL = "smart_login_bookmark_icon_url";
    private static final String SMART_LOGIN_MENU_ICON_URL = "smart_login_menu_icon_url";
    private static final String APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD = "restrictive_data_filter_params";
    private static final String APP_SETTING_APP_EVENTS_AAM_RULE = "aam_rules";
    private static final String SUGGESTED_EVENTS_SETTING = "suggested_events_setting";
    private static final List<String> APP_SETTING_FIELDS = O4.m1618private(APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING, APP_SETTING_NUX_CONTENT, APP_SETTING_NUX_ENABLED, APP_SETTING_DIALOG_CONFIGS, APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES, APP_SETTING_APP_EVENTS_SESSION_TIMEOUT, APP_SETTING_APP_EVENTS_FEATURE_BITMASK, APP_SETTING_APP_EVENTS_EVENT_BINDINGS, APP_SETTING_SMART_LOGIN_OPTIONS, SMART_LOGIN_BOOKMARK_ICON_URL, SMART_LOGIN_MENU_ICON_URL, APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD, APP_SETTING_APP_EVENTS_AAM_RULE, SUGGESTED_EVENTS_SETTING);
    private static final Map<String, FetchedAppSettings> fetchedAppSettings = new ConcurrentHashMap();
    private static final AtomicReference<FetchAppSettingState> loadingState = new AtomicReference<>(FetchAppSettingState.NOT_LOADED);
    private static final ConcurrentLinkedQueue<FetchedAppSettingsCallback> fetchedAppSettingsCallbacks = new ConcurrentLinkedQueue<>();

    public enum FetchAppSettingState {
        NOT_LOADED,
        LOADING,
        SUCCESS,
        ERROR;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static FetchAppSettingState[] valuesCustom() {
            FetchAppSettingState[] valuesCustom = values();
            return (FetchAppSettingState[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    public interface FetchedAppSettingsCallback {
        void onError();

        void onSuccess(FetchedAppSettings fetchedAppSettings);
    }

    private FetchedAppSettingsManager() {
    }

    public static final void getAppSettingsAsync(FetchedAppSettingsCallback fetchedAppSettingsCallback) {
        C0173Do.m401try(fetchedAppSettingsCallback, "callback");
        fetchedAppSettingsCallbacks.add(fetchedAppSettingsCallback);
        loadAppSettingsAsync();
    }

    private final JSONObject getAppSettingsQueryResponse(String str) {
        Bundle bundle = new Bundle();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(APP_SETTING_FIELDS);
        bundle.putString(APPLICATION_FIELDS, TextUtils.join(",", arrayList));
        String str2 = GraphRequest.f9271for;
        GraphRequest m5286else = GraphRequest.Cfor.m5286else(null, "app", null);
        m5286else.f9280do = true;
        m5286else.f9274do = bundle;
        JSONObject jSONObject = m5286else.m5267for().f1998if;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    public static final FetchedAppSettings getAppSettingsWithoutQuery(String str) {
        if (str != null) {
            return fetchedAppSettings.get(str);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void loadAppSettingsAsync() {
        /*
            android.content.Context r0 = defpackage.C3756th.m8299do()
            java.lang.String r1 = defpackage.C3756th.m8303if()
            boolean r2 = com.facebook.internal.Utility.isNullOrEmpty(r1)
            if (r2 == 0) goto L1b
            java.util.concurrent.atomic.AtomicReference<com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState> r0 = com.facebook.internal.FetchedAppSettingsManager.loadingState
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r1 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.ERROR
            r0.set(r1)
            com.facebook.internal.FetchedAppSettingsManager r0 = com.facebook.internal.FetchedAppSettingsManager.INSTANCE
            r0.pollCallbacks()
            return
        L1b:
            java.util.Map<java.lang.String, com.facebook.internal.FetchedAppSettings> r2 = com.facebook.internal.FetchedAppSettingsManager.fetchedAppSettings
            boolean r2 = r2.containsKey(r1)
            if (r2 == 0) goto L30
            java.util.concurrent.atomic.AtomicReference<com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState> r0 = com.facebook.internal.FetchedAppSettingsManager.loadingState
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r1 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.SUCCESS
            r0.set(r1)
            com.facebook.internal.FetchedAppSettingsManager r0 = com.facebook.internal.FetchedAppSettingsManager.INSTANCE
            r0.pollCallbacks()
            return
        L30:
            java.util.concurrent.atomic.AtomicReference<com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState> r2 = com.facebook.internal.FetchedAppSettingsManager.loadingState
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r3 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.NOT_LOADED
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r4 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.LOADING
        L36:
            boolean r5 = r2.compareAndSet(r3, r4)
            r6 = 1
            r7 = 0
            if (r5 == 0) goto L40
            r2 = 1
            goto L47
        L40:
            java.lang.Object r5 = r2.get()
            if (r5 == r3) goto L36
            r2 = 0
        L47:
            if (r2 != 0) goto L63
            java.util.concurrent.atomic.AtomicReference<com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState> r2 = com.facebook.internal.FetchedAppSettingsManager.loadingState
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r3 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.ERROR
            com.facebook.internal.FetchedAppSettingsManager$FetchAppSettingState r4 = com.facebook.internal.FetchedAppSettingsManager.FetchAppSettingState.LOADING
        L4f:
            boolean r5 = r2.compareAndSet(r3, r4)
            if (r5 == 0) goto L57
            r2 = 1
            goto L5e
        L57:
            java.lang.Object r5 = r2.get()
            if (r5 == r3) goto L4f
            r2 = 0
        L5e:
            if (r2 == 0) goto L61
            goto L63
        L61:
            r2 = 0
            goto L64
        L63:
            r2 = 1
        L64:
            if (r2 != 0) goto L6c
            com.facebook.internal.FetchedAppSettingsManager r0 = com.facebook.internal.FetchedAppSettingsManager.INSTANCE
            r0.pollCallbacks()
            return
        L6c:
            java.lang.Object[] r2 = new java.lang.Object[r6]
            r2[r7] = r1
            java.lang.String r3 = "com.facebook.internal.APP_SETTINGS.%s"
            java.lang.String r4 = "java.lang.String.format(format, *args)"
            java.lang.String r2 = defpackage.Cif.m6913else(r2, r6, r3, r4)
            java.util.concurrent.Executor r3 = defpackage.C3756th.m8304new()
            Lh r4 = new Lh
            r4.<init>(r0, r2, r1, r7)
            r3.execute(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.FetchedAppSettingsManager.loadAppSettingsAsync():void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAppSettingsAsync$lambda-0, reason: not valid java name */
    public static final void m5416loadAppSettingsAsync$lambda0(Context context, String str, String str2) {
        JSONObject jSONObject;
        C0173Do.m401try(context, "$context");
        C0173Do.m401try(str, "$settingsKey");
        C0173Do.m401try(str2, "$applicationId");
        SharedPreferences sharedPreferences = context.getSharedPreferences(APP_SETTINGS_PREFS_STORE, 0);
        FetchedAppSettings fetchedAppSettings2 = null;
        String string = sharedPreferences.getString(str, null);
        if (!Utility.isNullOrEmpty(string)) {
            if (string == null) {
                throw new IllegalStateException("Required value was null.".toString());
            }
            try {
                jSONObject = new JSONObject(string);
            } catch (JSONException e) {
                Utility.logd(Utility.LOG_TAG, e);
                jSONObject = null;
            }
            if (jSONObject != null) {
                fetchedAppSettings2 = INSTANCE.parseAppSettingsFromJSON$facebook_core_release(str2, jSONObject);
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = INSTANCE;
        JSONObject appSettingsQueryResponse = fetchedAppSettingsManager.getAppSettingsQueryResponse(str2);
        if (appSettingsQueryResponse != null) {
            fetchedAppSettingsManager.parseAppSettingsFromJSON$facebook_core_release(str2, appSettingsQueryResponse);
            sharedPreferences.edit().putString(str, appSettingsQueryResponse.toString()).apply();
        }
        if (fetchedAppSettings2 != null) {
            String sdkUpdateMessage = fetchedAppSettings2.getSdkUpdateMessage();
            if (!printedSDKUpdatedMessage && sdkUpdateMessage != null && sdkUpdateMessage.length() > 0) {
                printedSDKUpdatedMessage = true;
            }
        }
        FetchedAppGateKeepersManager.queryAppGateKeepers(str2, true);
        AutomaticAnalyticsLogger.logActivateAppEvent();
        loadingState.set(fetchedAppSettings.containsKey(str2) ? FetchAppSettingState.SUCCESS : FetchAppSettingState.ERROR);
        fetchedAppSettingsManager.pollCallbacks();
    }

    private final Map<String, Map<String, FetchedAppSettings.DialogFeatureConfig>> parseDialogConfigurations(JSONObject jSONObject) {
        JSONArray optJSONArray;
        int length;
        HashMap hashMap = new HashMap();
        if (jSONObject != null && (optJSONArray = jSONObject.optJSONArray("data")) != null && (length = optJSONArray.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                FetchedAppSettings.DialogFeatureConfig.Companion companion = FetchedAppSettings.DialogFeatureConfig.Companion;
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                C0173Do.m399new(optJSONObject, "dialogConfigData.optJSONObject(i)");
                FetchedAppSettings.DialogFeatureConfig parseDialogConfig = companion.parseDialogConfig(optJSONObject);
                if (parseDialogConfig != null) {
                    String dialogName = parseDialogConfig.getDialogName();
                    Map map = (Map) hashMap.get(dialogName);
                    if (map == null) {
                        map = new HashMap();
                        hashMap.put(dialogName, map);
                    }
                    map.put(parseDialogConfig.getFeatureName(), parseDialogConfig);
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashMap;
    }

    private final synchronized void pollCallbacks() {
        FetchAppSettingState fetchAppSettingState = loadingState.get();
        if (FetchAppSettingState.NOT_LOADED != fetchAppSettingState && FetchAppSettingState.LOADING != fetchAppSettingState) {
            FetchedAppSettings fetchedAppSettings2 = fetchedAppSettings.get(C3756th.m8303if());
            Handler handler = new Handler(Looper.getMainLooper());
            if (FetchAppSettingState.ERROR == fetchAppSettingState) {
                while (true) {
                    ConcurrentLinkedQueue<FetchedAppSettingsCallback> concurrentLinkedQueue = fetchedAppSettingsCallbacks;
                    if (concurrentLinkedQueue.isEmpty()) {
                        return;
                    } else {
                        handler.post(new Y1(concurrentLinkedQueue.poll(), 3));
                    }
                }
            } else {
                while (true) {
                    ConcurrentLinkedQueue<FetchedAppSettingsCallback> concurrentLinkedQueue2 = fetchedAppSettingsCallbacks;
                    if (concurrentLinkedQueue2.isEmpty()) {
                        return;
                    }
                    handler.post(new RunnableC2786g2(2, concurrentLinkedQueue2.poll(), fetchedAppSettings2));
                }
            }
        }
    }

    public static final FetchedAppSettings queryAppSettings(String str, boolean z) {
        C0173Do.m401try(str, "applicationId");
        if (!z) {
            Map<String, FetchedAppSettings> map = fetchedAppSettings;
            if (map.containsKey(str)) {
                return map.get(str);
            }
        }
        FetchedAppSettingsManager fetchedAppSettingsManager = INSTANCE;
        JSONObject appSettingsQueryResponse = fetchedAppSettingsManager.getAppSettingsQueryResponse(str);
        if (appSettingsQueryResponse == null) {
            return null;
        }
        FetchedAppSettings parseAppSettingsFromJSON$facebook_core_release = fetchedAppSettingsManager.parseAppSettingsFromJSON$facebook_core_release(str, appSettingsQueryResponse);
        if (C0173Do.m394do(str, C3756th.m8303if())) {
            loadingState.set(FetchAppSettingState.SUCCESS);
            fetchedAppSettingsManager.pollCallbacks();
        }
        return parseAppSettingsFromJSON$facebook_core_release;
    }

    public static final void setIsUnityInit(boolean z) {
        isUnityInit = z;
        if (unityEventBindings == null || !z) {
            return;
        }
        UnityReflection unityReflection = UnityReflection.INSTANCE;
        UnityReflection.sendEventMapping(String.valueOf(unityEventBindings));
    }

    public final FetchedAppSettings parseAppSettingsFromJSON$facebook_core_release(String str, JSONObject jSONObject) {
        C0173Do.m401try(str, "applicationId");
        C0173Do.m401try(jSONObject, "settingsJSON");
        JSONArray optJSONArray = jSONObject.optJSONArray(APP_SETTING_ANDROID_SDK_ERROR_CATEGORIES);
        FacebookRequestErrorClassification.Companion companion = FacebookRequestErrorClassification.Companion;
        FacebookRequestErrorClassification createFromJSON = companion.createFromJSON(optJSONArray);
        if (createFromJSON == null) {
            createFromJSON = companion.getDefaultErrorClassification();
        }
        FacebookRequestErrorClassification facebookRequestErrorClassification = createFromJSON;
        int optInt = jSONObject.optInt(APP_SETTING_APP_EVENTS_FEATURE_BITMASK, 0);
        boolean z = (optInt & 8) != 0;
        boolean z2 = (optInt & 16) != 0;
        boolean z3 = (optInt & CODELESS_EVENTS_ENABLED_BITMASK_FIELD) != 0;
        boolean z4 = (optInt & TRACK_UNINSTALL_ENABLED_BITMASK_FIELD) != 0;
        boolean z5 = (optInt & MONITOR_ENABLED_BITMASK_FIELD) != 0;
        JSONArray optJSONArray2 = jSONObject.optJSONArray(APP_SETTING_APP_EVENTS_EVENT_BINDINGS);
        unityEventBindings = optJSONArray2;
        if (optJSONArray2 != null && InternalSettings.isUnityApp()) {
            UnityReflection unityReflection = UnityReflection.INSTANCE;
            UnityReflection.sendEventMapping(optJSONArray2 == null ? null : optJSONArray2.toString());
        }
        boolean optBoolean = jSONObject.optBoolean(APP_SETTING_SUPPORTS_IMPLICIT_SDK_LOGGING, false);
        String optString = jSONObject.optString(APP_SETTING_NUX_CONTENT, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        C0173Do.m399new(optString, "settingsJSON.optString(APP_SETTING_NUX_CONTENT, \"\")");
        boolean optBoolean2 = jSONObject.optBoolean(APP_SETTING_NUX_ENABLED, false);
        int optInt2 = jSONObject.optInt(APP_SETTING_APP_EVENTS_SESSION_TIMEOUT, Constants.getDefaultAppEventsSessionTimeoutInSeconds());
        EnumSet<SmartLoginOption> parseOptions = SmartLoginOption.Companion.parseOptions(jSONObject.optLong(APP_SETTING_SMART_LOGIN_OPTIONS));
        Map<String, Map<String, FetchedAppSettings.DialogFeatureConfig>> parseDialogConfigurations = parseDialogConfigurations(jSONObject.optJSONObject(APP_SETTING_DIALOG_CONFIGS));
        String optString2 = jSONObject.optString(SMART_LOGIN_BOOKMARK_ICON_URL);
        C0173Do.m399new(optString2, "settingsJSON.optString(SMART_LOGIN_BOOKMARK_ICON_URL)");
        String optString3 = jSONObject.optString(SMART_LOGIN_MENU_ICON_URL);
        C0173Do.m399new(optString3, "settingsJSON.optString(SMART_LOGIN_MENU_ICON_URL)");
        String optString4 = jSONObject.optString(SDK_UPDATE_MESSAGE);
        C0173Do.m399new(optString4, "settingsJSON.optString(SDK_UPDATE_MESSAGE)");
        FetchedAppSettings fetchedAppSettings2 = new FetchedAppSettings(optBoolean, optString, optBoolean2, optInt2, parseOptions, parseDialogConfigurations, z, facebookRequestErrorClassification, optString2, optString3, z2, z3, optJSONArray2, optString4, z4, z5, jSONObject.optString(APP_SETTING_APP_EVENTS_AAM_RULE), jSONObject.optString(SUGGESTED_EVENTS_SETTING), jSONObject.optString(APP_SETTING_RESTRICTIVE_EVENT_FILTER_FIELD));
        fetchedAppSettings.put(str, fetchedAppSettings2);
        return fetchedAppSettings2;
    }
}
