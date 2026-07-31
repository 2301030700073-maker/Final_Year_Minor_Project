package com.braze.support;

import com.braze.models.FeatureFlag;
import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final i f248a = new i();

    public static final String b(JSONObject jSONObject) {
        return "Failed to deserialize feature flag Json: " + jSONObject;
    }

    public final FeatureFlag a(final JSONObject featureFlagObject) {
        Intrinsics.checkNotNullParameter(featureFlagObject, "featureFlagObject");
        try {
            String string = featureFlagObject.getString("id");
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            boolean z = featureFlagObject.getBoolean("enabled");
            JSONObject optJSONObject = featureFlagObject.optJSONObject(FeatureFlag.PROPERTIES);
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            return new FeatureFlag(string, z, optJSONObject, JsonUtils.getOptionalString(featureFlagObject, FeatureFlag.TRACKING_STRING));
        } catch (Exception e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.support.i$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return i.b(featureFlagObject);
                }
            }, 4, (Object) null);
            return null;
        }
    }
}
