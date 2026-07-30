package com.facebook.appevents.suggestedevents;

import android.app.Activity;
import com.facebook.appevents.internal.ActivityLifecycleTracker;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.OF;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class SuggestedEventsManager {
    private static final String ELIGIBLE_EVENTS_KEY = "eligible_for_prediction_events";
    private static final String PRODUCTION_EVENTS_KEY = "production_events";
    public static final SuggestedEventsManager INSTANCE = new SuggestedEventsManager();
    private static final AtomicBoolean enabled = new AtomicBoolean(false);
    private static final Set<String> productionEvents = new LinkedHashSet();
    private static final Set<String> eligibleEvents = new LinkedHashSet();

    private SuggestedEventsManager() {
    }

    public static final synchronized void enable() {
        synchronized (SuggestedEventsManager.class) {
            if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
                return;
            }
            try {
                C3756th.m8304new().execute(new OF(0));
            } catch (Throwable th) {
                CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enable$lambda-0, reason: not valid java name */
    public static final void m5394enable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            AtomicBoolean atomicBoolean = enabled;
            if (atomicBoolean.get()) {
                return;
            }
            atomicBoolean.set(true);
            INSTANCE.initialize();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }

    private final void initialize() {
        String suggestedEventsSetting;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
            if (queryAppSettings == null || (suggestedEventsSetting = queryAppSettings.getSuggestedEventsSetting()) == null) {
                return;
            }
            populateEventsFromRawJsonString$facebook_core_release(suggestedEventsSetting);
            if ((!productionEvents.isEmpty()) || (!eligibleEvents.isEmpty())) {
                ModelManager modelManager = ModelManager.INSTANCE;
                File ruleFile = ModelManager.getRuleFile(ModelManager.Task.MTML_APP_EVENT_PREDICTION);
                if (ruleFile == null) {
                    return;
                }
                FeatureExtractor.initialize(ruleFile);
                Activity currentActivity = ActivityLifecycleTracker.getCurrentActivity();
                if (currentActivity != null) {
                    trackActivity(currentActivity);
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }

    public static final boolean isEligibleEvents$facebook_core_release(String str) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            C0173Do.m401try(str, "event");
            return eligibleEvents.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static final boolean isEnabled() {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            return enabled.get();
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static final boolean isProductionEvents$facebook_core_release(String str) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return false;
        }
        try {
            C0173Do.m401try(str, "event");
            return productionEvents.contains(str);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
            return false;
        }
    }

    public static final void trackActivity(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(SuggestedEventsManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            try {
                if (enabled.get() && FeatureExtractor.isInitialized() && (!productionEvents.isEmpty() || !eligibleEvents.isEmpty())) {
                    ViewObserver.Companion.startTrackingActivity(activity);
                } else {
                    ViewObserver.Companion.stopTrackingActivity(activity);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, SuggestedEventsManager.class);
        }
    }

    public final void populateEventsFromRawJsonString$facebook_core_release(String str) {
        JSONArray jSONArray;
        int length;
        JSONArray jSONArray2;
        int length2;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i = 0;
            if (jSONObject.has(PRODUCTION_EVENTS_KEY) && (length2 = (jSONArray2 = jSONObject.getJSONArray(PRODUCTION_EVENTS_KEY)).length()) > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    Set<String> set = productionEvents;
                    String string = jSONArray2.getString(i2);
                    C0173Do.m399new(string, "jsonArray.getString(i)");
                    set.add(string);
                    if (i3 >= length2) {
                        break;
                    } else {
                        i2 = i3;
                    }
                }
            }
            if (!jSONObject.has(ELIGIBLE_EVENTS_KEY) || (length = (jSONArray = jSONObject.getJSONArray(ELIGIBLE_EVENTS_KEY)).length()) <= 0) {
                return;
            }
            while (true) {
                int i4 = i + 1;
                Set<String> set2 = eligibleEvents;
                String string2 = jSONArray.getString(i);
                C0173Do.m399new(string2, "jsonArray.getString(i)");
                set2.add(string2);
                if (i4 >= length) {
                    return;
                } else {
                    i = i4;
                }
            }
        } catch (Exception unused) {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
