package com.facebook.appevents.cloudbridge;

import android.content.SharedPreferences;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C0346Ll;
import defpackage.C0786c2;
import defpackage.C3756th;
import defpackage.C3850vF;
import defpackage.EnumC0171Dm;
import defpackage.EnumC0658Zq;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AppEventsCAPIManager {
    private static final String SETTINGS_PATH = "/cloudbridge_settings";
    private static boolean isEnabled;
    public static final AppEventsCAPIManager INSTANCE = new AppEventsCAPIManager();
    private static final String TAG = AppEventsCAPIManager.class.getCanonicalName();

    private AppEventsCAPIManager() {
    }

    public static final void enable() {
        EnumC0658Zq enumC0658Zq = EnumC0658Zq.APP_EVENTS;
        try {
            GraphRequest graphRequest = new GraphRequest(null, C0173Do.m397goto(SETTINGS_PATH, C3756th.m8303if()), null, EnumC0171Dm.GET, new C0786c2(0), 32);
            Logger.Companion companion = Logger.Companion;
            String str = TAG;
            if (str == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            companion.log(enumC0658Zq, str, " \n\nCreating Graph Request: \n=============\n%s\n\n ", graphRequest);
            graphRequest.m5270new();
        } catch (JSONException e) {
            Logger.Companion companion2 = Logger.Companion;
            String str2 = TAG;
            if (str2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            companion2.log(enumC0658Zq, str2, " \n\nGraph Request Exception: \n=============\n%s\n\n ", C3850vF.m8459static(e));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enable$lambda-0, reason: not valid java name */
    public static final void m5340enable$lambda0(C0346Ll c0346Ll) {
        C0173Do.m401try(c0346Ll, "response");
        INSTANCE.getCAPIGSettingsFromGraphResponse$facebook_core_release(c0346Ll);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0062 A[Catch: all -> 0x0097, TRY_LEAVE, TryCatch #0 {all -> 0x0097, blocks: (B:6:0x000a, B:9:0x0018, B:11:0x0039, B:17:0x0047, B:23:0x0055, B:29:0x0062), top: B:5:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Map<java.lang.String, java.lang.Object> getSavedCloudBridgeCredentials$facebook_core_release() {
        /*
            java.lang.Class<com.facebook.appevents.cloudbridge.AppEventsCAPIManager> r0 = com.facebook.appevents.cloudbridge.AppEventsCAPIManager.class
            boolean r1 = com.facebook.internal.instrument.crashshield.CrashShieldHandler.isObjectCrashing(r0)
            r2 = 0
            if (r1 == 0) goto La
            return r2
        La:
            android.content.Context r1 = defpackage.C3756th.m8299do()     // Catch: java.lang.Throwable -> L97
            java.lang.String r3 = "com.facebook.sdk.CloudBridgeSavedCredentials"
            r4 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r3, r4)     // Catch: java.lang.Throwable -> L97
            if (r1 != 0) goto L18
            return r2
        L18:
            com.facebook.appevents.cloudbridge.SettingsAPIFields r3 = com.facebook.appevents.cloudbridge.SettingsAPIFields.DATASETID     // Catch: java.lang.Throwable -> L97
            java.lang.String r5 = r3.getRawValue()     // Catch: java.lang.Throwable -> L97
            java.lang.String r5 = r1.getString(r5, r2)     // Catch: java.lang.Throwable -> L97
            com.facebook.appevents.cloudbridge.SettingsAPIFields r6 = com.facebook.appevents.cloudbridge.SettingsAPIFields.URL     // Catch: java.lang.Throwable -> L97
            java.lang.String r7 = r6.getRawValue()     // Catch: java.lang.Throwable -> L97
            java.lang.String r7 = r1.getString(r7, r2)     // Catch: java.lang.Throwable -> L97
            com.facebook.appevents.cloudbridge.SettingsAPIFields r8 = com.facebook.appevents.cloudbridge.SettingsAPIFields.ACCESSKEY     // Catch: java.lang.Throwable -> L97
            java.lang.String r9 = r8.getRawValue()     // Catch: java.lang.Throwable -> L97
            java.lang.String r1 = r1.getString(r9, r2)     // Catch: java.lang.Throwable -> L97
            r9 = 1
            if (r5 == 0) goto L42
            boolean r10 = defpackage.BF.f(r5)     // Catch: java.lang.Throwable -> L97
            if (r10 == 0) goto L40
            goto L42
        L40:
            r10 = 0
            goto L43
        L42:
            r10 = 1
        L43:
            if (r10 != 0) goto L96
            if (r7 == 0) goto L50
            boolean r10 = defpackage.BF.f(r7)     // Catch: java.lang.Throwable -> L97
            if (r10 == 0) goto L4e
            goto L50
        L4e:
            r10 = 0
            goto L51
        L50:
            r10 = 1
        L51:
            if (r10 != 0) goto L96
            if (r1 == 0) goto L5e
            boolean r10 = defpackage.BF.f(r1)     // Catch: java.lang.Throwable -> L97
            if (r10 == 0) goto L5c
            goto L5e
        L5c:
            r10 = 0
            goto L5f
        L5e:
            r10 = 1
        L5f:
            if (r10 == 0) goto L62
            goto L96
        L62:
            java.util.LinkedHashMap r10 = new java.util.LinkedHashMap     // Catch: java.lang.Throwable -> L97
            r10.<init>()     // Catch: java.lang.Throwable -> L97
            java.lang.String r6 = r6.getRawValue()     // Catch: java.lang.Throwable -> L97
            r10.put(r6, r7)     // Catch: java.lang.Throwable -> L97
            java.lang.String r3 = r3.getRawValue()     // Catch: java.lang.Throwable -> L97
            r10.put(r3, r5)     // Catch: java.lang.Throwable -> L97
            java.lang.String r3 = r8.getRawValue()     // Catch: java.lang.Throwable -> L97
            r10.put(r3, r1)     // Catch: java.lang.Throwable -> L97
            com.facebook.internal.Logger$Companion r3 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L97
            Zq r6 = defpackage.EnumC0658Zq.APP_EVENTS     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = com.facebook.appevents.cloudbridge.AppEventsCAPIManager.TAG     // Catch: java.lang.Throwable -> L97
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L97
            java.lang.String r11 = " \n\nLoading Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n "
            r12 = 3
            java.lang.Object[] r12 = new java.lang.Object[r12]     // Catch: java.lang.Throwable -> L97
            r12[r4] = r5     // Catch: java.lang.Throwable -> L97
            r12[r9] = r7     // Catch: java.lang.Throwable -> L97
            r4 = 2
            r12[r4] = r1     // Catch: java.lang.Throwable -> L97
            r3.log(r6, r8, r11, r12)     // Catch: java.lang.Throwable -> L97
            return r10
        L96:
            return r2
        L97:
            r1 = move-exception
            com.facebook.internal.instrument.crashshield.CrashShieldHandler.handleThrowable(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.cloudbridge.AppEventsCAPIManager.getSavedCloudBridgeCredentials$facebook_core_release():java.util.Map");
    }

    public final void getCAPIGSettingsFromGraphResponse$facebook_core_release(C0346Ll c0346Ll) {
        C0173Do.m401try(c0346Ll, "response");
        EnumC0658Zq enumC0658Zq = EnumC0658Zq.APP_EVENTS;
        boolean z = false;
        FacebookRequestError facebookRequestError = c0346Ll.f1995do;
        if (facebookRequestError != null) {
            Logger.Companion companion = Logger.Companion;
            String str = TAG;
            if (str == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            companion.log(enumC0658Zq, str, " \n\nGraph Response Error: \n================\nResponse Error: %s\nResponse Error Exception: %s\n\n ", facebookRequestError.toString(), String.valueOf(facebookRequestError.f9262do));
            Map<String, Object> savedCloudBridgeCredentials$facebook_core_release = getSavedCloudBridgeCredentials$facebook_core_release();
            if (savedCloudBridgeCredentials$facebook_core_release != null) {
                URL url = new URL(String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.URL.getRawValue())));
                AppEventsConversionsAPITransformerWebRequests appEventsConversionsAPITransformerWebRequests = AppEventsConversionsAPITransformerWebRequests.INSTANCE;
                AppEventsConversionsAPITransformerWebRequests.configure(String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.DATASETID.getRawValue())), url.getProtocol() + "://" + ((Object) url.getHost()), String.valueOf(savedCloudBridgeCredentials$facebook_core_release.get(SettingsAPIFields.ACCESSKEY.getRawValue())));
                isEnabled = true;
                return;
            }
            return;
        }
        Logger.Companion companion2 = Logger.Companion;
        String str2 = TAG;
        if (str2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
        }
        companion2.log(enumC0658Zq, str2, " \n\nGraph Response Received: \n================\n%s\n\n ", c0346Ll);
        try {
            Utility utility = Utility.INSTANCE;
            String str3 = null;
            JSONObject jSONObject = c0346Ll.f1997do;
            Object obj = jSONObject == null ? null : jSONObject.get("data");
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type org.json.JSONArray");
            }
            List<String> convertJSONArrayToList = Utility.convertJSONArrayToList((JSONArray) obj);
            C0173Do.m401try(convertJSONArrayToList, "<this>");
            if (!convertJSONArrayToList.isEmpty()) {
                str3 = convertJSONArrayToList.get(0);
            }
            Map<String, ? extends Object> convertJSONObjectToHashMap = Utility.convertJSONObjectToHashMap(new JSONObject(str3));
            String str4 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.URL.getRawValue());
            String str5 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.DATASETID.getRawValue());
            String str6 = (String) convertJSONObjectToHashMap.get(SettingsAPIFields.ACCESSKEY.getRawValue());
            if (str4 == null || str5 == null || str6 == null) {
                companion2.log(enumC0658Zq, str2, "CloudBridge Settings API response doesn't have valid data");
                return;
            }
            try {
                AppEventsConversionsAPITransformerWebRequests.configure(str5, str4, str6);
                setSavedCloudBridgeCredentials$facebook_core_release(convertJSONObjectToHashMap);
                SettingsAPIFields settingsAPIFields = SettingsAPIFields.ENABLED;
                if (convertJSONObjectToHashMap.get(settingsAPIFields.getRawValue()) != null) {
                    Object obj2 = convertJSONObjectToHashMap.get(settingsAPIFields.getRawValue());
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                    }
                    z = ((Boolean) obj2).booleanValue();
                }
                isEnabled = z;
            } catch (MalformedURLException e) {
                Logger.Companion companion3 = Logger.Companion;
                String str7 = TAG;
                C0173Do.m399new(str7, "TAG");
                companion3.log(enumC0658Zq, str7, "CloudBridge Settings API response doesn't have valid url\n %s ", C3850vF.m8459static(e));
            }
        } catch (NullPointerException e2) {
            Logger.Companion companion4 = Logger.Companion;
            String str8 = TAG;
            C0173Do.m399new(str8, "TAG");
            companion4.log(enumC0658Zq, str8, "CloudBridge Settings API response is not a valid json: \n%s ", C3850vF.m8459static(e2));
        } catch (JSONException e3) {
            Logger.Companion companion5 = Logger.Companion;
            String str9 = TAG;
            C0173Do.m399new(str9, "TAG");
            companion5.log(enumC0658Zq, str9, "CloudBridge Settings API response is not a valid json: \n%s ", C3850vF.m8459static(e3));
        }
    }

    public final boolean isEnabled$facebook_core_release() {
        return isEnabled;
    }

    public final void setEnabled$facebook_core_release(boolean z) {
        isEnabled = z;
    }

    public final void setSavedCloudBridgeCredentials$facebook_core_release(Map<String, ? extends Object> map) {
        SharedPreferences sharedPreferences = C3756th.m8299do().getSharedPreferences("com.facebook.sdk.CloudBridgeSavedCredentials", 0);
        if (sharedPreferences == null) {
            return;
        }
        if (map == null) {
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.clear();
            edit.apply();
            return;
        }
        SettingsAPIFields settingsAPIFields = SettingsAPIFields.DATASETID;
        Object obj = map.get(settingsAPIFields.getRawValue());
        SettingsAPIFields settingsAPIFields2 = SettingsAPIFields.URL;
        Object obj2 = map.get(settingsAPIFields2.getRawValue());
        SettingsAPIFields settingsAPIFields3 = SettingsAPIFields.ACCESSKEY;
        Object obj3 = map.get(settingsAPIFields3.getRawValue());
        if (obj == null || obj2 == null || obj3 == null) {
            return;
        }
        SharedPreferences.Editor edit2 = sharedPreferences.edit();
        edit2.putString(settingsAPIFields.getRawValue(), obj.toString());
        edit2.putString(settingsAPIFields2.getRawValue(), obj2.toString());
        edit2.putString(settingsAPIFields3.getRawValue(), obj3.toString());
        edit2.apply();
        Logger.Companion.log(EnumC0658Zq.APP_EVENTS, TAG.toString(), " \n\nSaving Cloudbridge settings from saved Prefs: \n================\n DATASETID: %s\n URL: %s \n ACCESSKEY: %s \n\n ", obj, obj2, obj3);
    }
}
