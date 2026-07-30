package com.facebook.appevents.restrictivedatafilter;

import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class RestrictiveDataManager {
    private static final String PROCESS_EVENT_NAME = "process_event_name";
    private static final String REPLACEMENT_STRING = "_removed_";
    private static final String RESTRICTIVE_PARAM = "restrictive_param";
    private static final String RESTRICTIVE_PARAM_KEY = "_restrictedParams";
    private static boolean enabled;
    public static final RestrictiveDataManager INSTANCE = new RestrictiveDataManager();
    private static final String TAG = RestrictiveDataManager.class.getCanonicalName();
    private static final List<RestrictiveParamFilter> restrictiveParamFilters = new ArrayList();
    private static final Set<String> restrictedEvents = new CopyOnWriteArraySet();

    public static final class RestrictiveParamFilter {
        private String eventName;
        private Map<String, String> restrictiveParams;

        public RestrictiveParamFilter(String str, Map<String, String> map) {
            C0173Do.m401try(str, "eventName");
            C0173Do.m401try(map, "restrictiveParams");
            this.eventName = str;
            this.restrictiveParams = map;
        }

        public final String getEventName() {
            return this.eventName;
        }

        public final Map<String, String> getRestrictiveParams() {
            return this.restrictiveParams;
        }

        public final void setEventName(String str) {
            C0173Do.m401try(str, "<set-?>");
            this.eventName = str;
        }

        public final void setRestrictiveParams(Map<String, String> map) {
            C0173Do.m401try(map, "<set-?>");
            this.restrictiveParams = map;
        }
    }

    private RestrictiveDataManager() {
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return;
        }
        try {
            enabled = true;
            INSTANCE.initialize();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RestrictiveDataManager.class);
        }
    }

    private final String getMatchedRuleType(String str, String str2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            for (RestrictiveParamFilter restrictiveParamFilter : new ArrayList(restrictiveParamFilters)) {
                if (restrictiveParamFilter != null && C0173Do.m394do(str, restrictiveParamFilter.getEventName())) {
                    for (String str3 : restrictiveParamFilter.getRestrictiveParams().keySet()) {
                        if (C0173Do.m394do(str2, str3)) {
                            return restrictiveParamFilter.getRestrictiveParams().get(str3);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
        return null;
    }

    private final void initialize() {
        String restrictiveDataSetting;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
            if (queryAppSettings == null || (restrictiveDataSetting = queryAppSettings.getRestrictiveDataSetting()) == null) {
                return;
            }
            if (restrictiveDataSetting.length() == 0) {
                return;
            }
            JSONObject jSONObject = new JSONObject(restrictiveDataSetting);
            restrictiveParamFilters.clear();
            restrictedEvents.clear();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2 != null) {
                    JSONObject optJSONObject = jSONObject2.optJSONObject(RESTRICTIVE_PARAM);
                    C0173Do.m399new(next, "key");
                    RestrictiveParamFilter restrictiveParamFilter = new RestrictiveParamFilter(next, new HashMap());
                    if (optJSONObject != null) {
                        restrictiveParamFilter.setRestrictiveParams(Utility.convertJSONObjectToStringMap(optJSONObject));
                        restrictiveParamFilters.add(restrictiveParamFilter);
                    }
                    if (jSONObject2.has(PROCESS_EVENT_NAME)) {
                        restrictedEvents.add(restrictiveParamFilter.getEventName());
                    }
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    private final boolean isRestrictedEvent(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return restrictedEvents.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }

    public static final String processEvent(String str) {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return null;
        }
        try {
            C0173Do.m401try(str, "eventName");
            return enabled ? INSTANCE.isRestrictedEvent(str) ? REPLACEMENT_STRING : str : str;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RestrictiveDataManager.class);
            return null;
        }
    }

    public static final void processParameters(Map<String, String> map, String str) {
        if (CrashShieldHandler.isObjectCrashing(RestrictiveDataManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(map, "parameters");
            C0173Do.m401try(str, "eventName");
            if (enabled) {
                HashMap hashMap = new HashMap();
                for (String str2 : new ArrayList(map.keySet())) {
                    String matchedRuleType = INSTANCE.getMatchedRuleType(str, str2);
                    if (matchedRuleType != null) {
                        hashMap.put(str2, matchedRuleType);
                        map.remove(str2);
                    }
                }
                if (!hashMap.isEmpty()) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        for (Map.Entry entry : hashMap.entrySet()) {
                            jSONObject.put((String) entry.getKey(), (String) entry.getValue());
                        }
                        map.put(RESTRICTIVE_PARAM_KEY, jSONObject.toString());
                    } catch (JSONException unused) {
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RestrictiveDataManager.class);
        }
    }
}
