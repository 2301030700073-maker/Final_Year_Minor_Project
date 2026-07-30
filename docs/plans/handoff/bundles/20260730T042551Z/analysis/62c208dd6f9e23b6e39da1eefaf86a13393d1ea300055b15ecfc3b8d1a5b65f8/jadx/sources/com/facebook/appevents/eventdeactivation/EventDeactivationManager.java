package com.facebook.appevents.eventdeactivation;

import com.facebook.appevents.AppEvent;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class EventDeactivationManager {
    private static boolean enabled;
    public static final EventDeactivationManager INSTANCE = new EventDeactivationManager();
    private static final List<DeprecatedParamFilter> deprecatedParamFilters = new ArrayList();
    private static final Set<String> deprecatedEvents = new HashSet();

    public static final class DeprecatedParamFilter {
        private List<String> deprecateParams;
        private String eventName;

        public DeprecatedParamFilter(String str, List<String> list) {
            C0173Do.m401try(str, "eventName");
            C0173Do.m401try(list, "deprecateParams");
            this.eventName = str;
            this.deprecateParams = list;
        }

        public final List<String> getDeprecateParams() {
            return this.deprecateParams;
        }

        public final String getEventName() {
            return this.eventName;
        }

        public final void setDeprecateParams(List<String> list) {
            C0173Do.m401try(list, "<set-?>");
            this.deprecateParams = list;
        }

        public final void setEventName(String str) {
            C0173Do.m401try(str, "<set-?>");
            this.eventName = str;
        }
    }

    private EventDeactivationManager() {
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(EventDeactivationManager.class)) {
            return;
        }
        try {
            enabled = true;
            INSTANCE.initialize();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, EventDeactivationManager.class);
        }
    }

    private final synchronized void initialize() {
        FetchedAppSettings queryAppSettings;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return;
        }
        if (queryAppSettings == null) {
            return;
        }
        String restrictiveDataSetting = queryAppSettings.getRestrictiveDataSetting();
        if (restrictiveDataSetting != null) {
            if (restrictiveDataSetting.length() > 0) {
                JSONObject jSONObject = new JSONObject(restrictiveDataSetting);
                deprecatedParamFilters.clear();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                    if (jSONObject2 != null) {
                        if (jSONObject2.optBoolean("is_deprecated_event")) {
                            Set<String> set = deprecatedEvents;
                            C0173Do.m399new(next, "key");
                            set.add(next);
                        } else {
                            JSONArray optJSONArray = jSONObject2.optJSONArray("deprecated_param");
                            C0173Do.m399new(next, "key");
                            DeprecatedParamFilter deprecatedParamFilter = new DeprecatedParamFilter(next, new ArrayList());
                            if (optJSONArray != null) {
                                deprecatedParamFilter.setDeprecateParams(Utility.convertJSONArrayToList(optJSONArray));
                            }
                            deprecatedParamFilters.add(deprecatedParamFilter);
                        }
                    }
                }
            }
        }
    }

    public static final void processDeprecatedParameters(Map<String, String> map, String str) {
        if (CrashShieldHandler.isObjectCrashing(EventDeactivationManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(map, "parameters");
            C0173Do.m401try(str, "eventName");
            if (enabled) {
                ArrayList<String> arrayList = new ArrayList(map.keySet());
                for (DeprecatedParamFilter deprecatedParamFilter : new ArrayList(deprecatedParamFilters)) {
                    if (C0173Do.m394do(deprecatedParamFilter.getEventName(), str)) {
                        for (String str2 : arrayList) {
                            if (deprecatedParamFilter.getDeprecateParams().contains(str2)) {
                                map.remove(str2);
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, EventDeactivationManager.class);
        }
    }

    public static final void processEvents(List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(EventDeactivationManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(list, "events");
            if (enabled) {
                Iterator<AppEvent> it = list.iterator();
                while (it.hasNext()) {
                    if (deprecatedEvents.contains(it.next().getName())) {
                        it.remove();
                    }
                }
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, EventDeactivationManager.class);
        }
    }
}
