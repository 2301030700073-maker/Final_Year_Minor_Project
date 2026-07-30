package com.facebook.appevents.aam;

import android.app.Activity;
import com.facebook.appevents.aam.MetadataIndexer;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import defpackage.C0173Do;
import defpackage.C3756th;

/* loaded from: classes.dex */
public final class MetadataIndexer {
    public static final MetadataIndexer INSTANCE = new MetadataIndexer();
    private static final String TAG = MetadataIndexer.class.getCanonicalName();
    private static boolean enabled;

    private MetadataIndexer() {
    }

    public static final void enable() {
        try {
            if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
                return;
            }
            try {
                C3756th.m8304new().execute(new Runnable() { // from class: bt
                    @Override // java.lang.Runnable
                    public final void run() {
                        MetadataIndexer.m5336enable$lambda0();
                    }
                });
            } catch (Exception e) {
                Utility utility = Utility.INSTANCE;
                Utility.logd(TAG, e);
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: enable$lambda-0, reason: not valid java name */
    public static final void m5336enable$lambda0() {
        if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
            return;
        }
        try {
            if (AttributionIdentifiers.Companion.isTrackingLimited(C3756th.m8299do())) {
                return;
            }
            INSTANCE.updateRules();
            enabled = true;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    public static final void onActivityResumed(Activity activity) {
        if (CrashShieldHandler.isObjectCrashing(MetadataIndexer.class)) {
            return;
        }
        try {
            C0173Do.m401try(activity, "activity");
            try {
                if (enabled && !MetadataRule.Companion.getRules().isEmpty()) {
                    MetadataViewObserver.Companion.startTrackingActivity(activity);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, MetadataIndexer.class);
        }
    }

    private final void updateRules() {
        String rawAamRules;
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings queryAppSettings = FetchedAppSettingsManager.queryAppSettings(C3756th.m8303if(), false);
            if (queryAppSettings == null || (rawAamRules = queryAppSettings.getRawAamRules()) == null) {
                return;
            }
            MetadataRule.Companion.updateRules(rawAamRules);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
    }
}
