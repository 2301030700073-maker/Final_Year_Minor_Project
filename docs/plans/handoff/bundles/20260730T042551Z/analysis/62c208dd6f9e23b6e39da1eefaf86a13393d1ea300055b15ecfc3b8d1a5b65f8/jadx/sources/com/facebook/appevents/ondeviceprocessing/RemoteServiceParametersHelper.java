package com.facebook.appevents.ondeviceprocessing;

import android.os.Bundle;
import com.facebook.appevents.AppEvent;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.ondeviceprocessing.RemoteServiceWrapper;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.E8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* loaded from: classes.dex */
public final class RemoteServiceParametersHelper {
    public static final RemoteServiceParametersHelper INSTANCE = new RemoteServiceParametersHelper();
    private static final String TAG = "RemoteServiceWrapper";

    private RemoteServiceParametersHelper() {
    }

    public static final Bundle buildEventsBundle(RemoteServiceWrapper.EventType eventType, String str, List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(RemoteServiceParametersHelper.class)) {
            return null;
        }
        try {
            C0173Do.m401try(eventType, "eventType");
            C0173Do.m401try(str, "applicationId");
            C0173Do.m401try(list, "appEvents");
            Bundle bundle = new Bundle();
            bundle.putString("event", eventType.toString());
            bundle.putString("app_id", str);
            if (RemoteServiceWrapper.EventType.CUSTOM_APP_EVENTS == eventType) {
                JSONArray buildEventsJson = INSTANCE.buildEventsJson(list, str);
                if (buildEventsJson.length() == 0) {
                    return null;
                }
                bundle.putString("custom_events", buildEventsJson.toString());
            }
            return bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, RemoteServiceParametersHelper.class);
            return null;
        }
    }

    private final JSONArray buildEventsJson(List<AppEvent> list, String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList k = E8.k(list);
            EventDeactivationManager.processEvents(k);
            boolean includeImplicitEvents = includeImplicitEvents(str);
            Iterator it = k.iterator();
            while (it.hasNext()) {
                AppEvent appEvent = (AppEvent) it.next();
                if (!appEvent.isChecksumValid()) {
                    Utility utility = Utility.INSTANCE;
                    Utility.logd(TAG, C0173Do.m397goto(appEvent, "Event with invalid checksum: "));
                } else if ((!appEvent.isImplicit()) || (appEvent.isImplicit() && includeImplicitEvents)) {
                    jSONArray.put(appEvent.getJsonObject());
                }
            }
            return jSONArray;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    private final boolean includeImplicitEvents(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(str, false);
            if (queryAppSettings != null) {
                return queryAppSettings.supportsImplicitLogging();
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
