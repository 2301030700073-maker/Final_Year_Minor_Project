package com.facebook.appevents.integrity;

import com.facebook.appevents.ml.ModelManager;
import com.facebook.internal.FetchedAppGateKeepersManager;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import defpackage.C0173Do;
import defpackage.C3756th;
import defpackage.E8;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class IntegrityManager {
    public static final IntegrityManager INSTANCE = new IntegrityManager();
    public static final String INTEGRITY_TYPE_ADDRESS = "address";
    public static final String INTEGRITY_TYPE_HEALTH = "health";
    public static final String INTEGRITY_TYPE_NONE = "none";
    private static final String RESTRICTIVE_ON_DEVICE_PARAMS_KEY = "_onDeviceParams";
    private static boolean enabled;
    private static boolean isSampleEnabled;

    private IntegrityManager() {
    }

    public static final void enable() {
        if (CrashShieldHandler.isObjectCrashing(IntegrityManager.class)) {
            return;
        }
        try {
            enabled = true;
            FetchedAppGateKeepersManager fetchedAppGateKeepersManager = FetchedAppGateKeepersManager.INSTANCE;
            isSampleEnabled = FetchedAppGateKeepersManager.getGateKeeperForKey("FBSDKFeatureIntegritySample", C3756th.m8303if(), false);
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, IntegrityManager.class);
        }
    }

    private final String getIntegrityPredictionResult(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            float[] fArr = new float[30];
            for (int i = 0; i < 30; i++) {
                fArr[i] = 0.0f;
            }
            ModelManager modelManager = ModelManager.INSTANCE;
            String[] predict = ModelManager.predict(ModelManager.Task.MTML_INTEGRITY_DETECT, new float[][]{fArr}, new String[]{str});
            if (predict == null) {
                return INTEGRITY_TYPE_NONE;
            }
            String str2 = predict[0];
            return str2 == null ? INTEGRITY_TYPE_NONE : str2;
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return null;
        }
    }

    public static final void processParameters(Map<String, String> map) {
        if (CrashShieldHandler.isObjectCrashing(IntegrityManager.class)) {
            return;
        }
        try {
            C0173Do.m401try(map, "parameters");
            if (!enabled || map.isEmpty()) {
                return;
            }
            try {
                List<String> j = E8.j(map.keySet());
                JSONObject jSONObject = new JSONObject();
                for (String str : j) {
                    String str2 = map.get(str);
                    if (str2 == null) {
                        throw new IllegalStateException("Required value was null.".toString());
                    }
                    String str3 = str2;
                    IntegrityManager integrityManager = INSTANCE;
                    if (integrityManager.shouldFilter(str) || integrityManager.shouldFilter(str3)) {
                        map.remove(str);
                        if (!isSampleEnabled) {
                            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                        jSONObject.put(str, str3);
                    }
                }
                if (jSONObject.length() != 0) {
                    String jSONObject2 = jSONObject.toString();
                    C0173Do.m399new(jSONObject2, "restrictiveParamJson.toString()");
                    map.put(RESTRICTIVE_ON_DEVICE_PARAMS_KEY, jSONObject2);
                }
            } catch (Exception unused) {
            }
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, IntegrityManager.class);
        }
    }

    private final boolean shouldFilter(String str) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return false;
        }
        try {
            return !C0173Do.m394do(INTEGRITY_TYPE_NONE, getIntegrityPredictionResult(str));
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
            return false;
        }
    }
}
