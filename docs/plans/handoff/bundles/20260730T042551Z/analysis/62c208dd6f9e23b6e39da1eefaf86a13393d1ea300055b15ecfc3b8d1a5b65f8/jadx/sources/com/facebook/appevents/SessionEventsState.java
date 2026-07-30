package com.facebook.appevents;

import android.content.Context;
import android.os.Bundle;
import com.facebook.GraphRequest;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.internal.AppEventsLoggerUtility;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C2819gd;
import defpackage.C3206kJ;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class SessionEventsState {
    private List<AppEvent> accumulatedEvents;
    private final String anonymousAppDeviceGUID;
    private final AttributionIdentifiers attributionIdentifiers;
    private final List<AppEvent> inFlightEvents;
    private int numSkippedEventsDueToFullBuffer;
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "SessionEventsState";
    private static final int MAX_ACCUMULATED_LOG_EVENTS = 1000;

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(C2819gd c2819gd) {
            this();
        }
    }

    public SessionEventsState(AttributionIdentifiers attributionIdentifiers, String str) {
        C0173Do.m401try(attributionIdentifiers, "attributionIdentifiers");
        C0173Do.m401try(str, "anonymousAppDeviceGUID");
        this.attributionIdentifiers = attributionIdentifiers;
        this.anonymousAppDeviceGUID = str;
        this.accumulatedEvents = new ArrayList();
        this.inFlightEvents = new ArrayList();
    }

    public final synchronized void accumulatePersistedEvents(List<AppEvent> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(list, "events");
            this.accumulatedEvents.addAll(list);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final synchronized void addEvent(AppEvent appEvent) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            C0173Do.m401try(appEvent, "event");
            if (this.accumulatedEvents.size() + this.inFlightEvents.size() >= MAX_ACCUMULATED_LOG_EVENTS) {
                this.numSkippedEventsDueToFullBuffer++;
            } else {
                this.accumulatedEvents.add(appEvent);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public final synchronized void clearInFlightAndStats(boolean z) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        if (z) {
            try {
                this.accumulatedEvents.addAll(this.inFlightEvents);
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, this);
                return;
            }
        }
        this.inFlightEvents.clear();
        this.numSkippedEventsDueToFullBuffer = 0;
    }

    public final synchronized int getAccumulatedEventCount() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            return this.accumulatedEvents.size();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    public final synchronized List<AppEvent> getEventsToPersist() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            List<AppEvent> list = this.accumulatedEvents;
            this.accumulatedEvents = new ArrayList();
            return list;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public final int populateRequest(GraphRequest graphRequest, Context context, boolean z, boolean z2) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return 0;
        }
        try {
            C0173Do.m401try(graphRequest, "request");
            C0173Do.m401try(context, "applicationContext");
            synchronized (this) {
                int i = this.numSkippedEventsDueToFullBuffer;
                EventDeactivationManager eventDeactivationManager = EventDeactivationManager.INSTANCE;
                EventDeactivationManager.processEvents(this.accumulatedEvents);
                this.inFlightEvents.addAll(this.accumulatedEvents);
                this.accumulatedEvents.clear();
                JSONArray jSONArray = new JSONArray();
                for (AppEvent appEvent : this.inFlightEvents) {
                    if (!appEvent.isChecksumValid()) {
                        Utility utility = Utility.INSTANCE;
                        Utility.logd(TAG, C0173Do.m397goto(appEvent, "Event with invalid checksum: "));
                    } else if (z || !appEvent.isImplicit()) {
                        jSONArray.put(appEvent.getJsonObject());
                    }
                }
                if (jSONArray.length() == 0) {
                    return 0;
                }
                C3206kJ c3206kJ = C3206kJ.f13965do;
                populateRequest(graphRequest, context, i, jSONArray, z2);
                return jSONArray.length();
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return 0;
        }
    }

    private final void populateRequest(GraphRequest graphRequest, Context context, int i, JSONArray jSONArray, boolean z) {
        JSONObject jSONObject;
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                AppEventsLoggerUtility appEventsLoggerUtility = AppEventsLoggerUtility.INSTANCE;
                jSONObject = AppEventsLoggerUtility.getJSONObjectForGraphAPICall(AppEventsLoggerUtility.GraphAPIActivityType.CUSTOM_APP_EVENTS, this.attributionIdentifiers, this.anonymousAppDeviceGUID, z, context);
                if (this.numSkippedEventsDueToFullBuffer > 0) {
                    jSONObject.put("num_skipped_events", i);
                }
            } catch (JSONException unused) {
                jSONObject = new JSONObject();
            }
            graphRequest.f9279do = jSONObject;
            Bundle bundle = graphRequest.f9274do;
            String jSONArray2 = jSONArray.toString();
            C0173Do.m399new(jSONArray2, "events.toString()");
            bundle.putString("custom_events", jSONArray2);
            graphRequest.f9277do = jSONArray2;
            graphRequest.f9274do = bundle;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
