package com.facebook.appevents.internal;

import android.content.Context;
import com.facebook.appevents.AppEventsLogger;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import defpackage.C0173Do;
import defpackage.C3653rw;
import defpackage.C4120zr;
import defpackage.EnumC0658Zq;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class AppEventsLoggerUtility {
    public static final AppEventsLoggerUtility INSTANCE = new AppEventsLoggerUtility();
    private static final Map<GraphAPIActivityType, String> API_ACTIVITY_TYPE_TO_STRING = C4120zr.m8816transient(new C3653rw(GraphAPIActivityType.MOBILE_INSTALL_EVENT, "MOBILE_APP_INSTALL"), new C3653rw(GraphAPIActivityType.CUSTOM_APP_EVENTS, "CUSTOM_APP_EVENTS"));

    public enum GraphAPIActivityType {
        MOBILE_INSTALL_EVENT,
        CUSTOM_APP_EVENTS;

        /* renamed from: values, reason: to resolve conflict with enum method */
        public static GraphAPIActivityType[] valuesCustom() {
            GraphAPIActivityType[] valuesCustom = values();
            return (GraphAPIActivityType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    private AppEventsLoggerUtility() {
    }

    public static final JSONObject getJSONObjectForGraphAPICall(GraphAPIActivityType graphAPIActivityType, AttributionIdentifiers attributionIdentifiers, String str, boolean z, Context context) {
        C0173Do.m401try(graphAPIActivityType, "activityType");
        C0173Do.m401try(context, "context");
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("event", API_ACTIVITY_TYPE_TO_STRING.get(graphAPIActivityType));
        String userID = AppEventsLogger.Companion.getUserID();
        if (userID != null) {
            jSONObject.put("app_user_id", userID);
        }
        Utility.setAppEventAttributionParameters(jSONObject, attributionIdentifiers, str, z, context);
        try {
            Utility.setAppEventExtendedDeviceInfoParameters(jSONObject, context);
        } catch (Exception e) {
            Logger.Companion.log(EnumC0658Zq.APP_EVENTS, "AppEvents", "Fetching extended device info parameters failed: '%s'", e.toString());
        }
        JSONObject dataProcessingOptions = Utility.getDataProcessingOptions();
        if (dataProcessingOptions != null) {
            Iterator<String> keys = dataProcessingOptions.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                jSONObject.put(next, dataProcessingOptions.get(next));
            }
        }
        jSONObject.put("application_package_name", context.getPackageName());
        return jSONObject;
    }
}
