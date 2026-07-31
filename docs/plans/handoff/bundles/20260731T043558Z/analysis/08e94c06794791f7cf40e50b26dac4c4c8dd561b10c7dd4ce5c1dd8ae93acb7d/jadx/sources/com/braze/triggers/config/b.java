package com.braze.triggers.config;

import com.braze.support.BrazeLogger;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b implements a {

    /* renamed from: a, reason: collision with root package name */
    public final int f271a;

    public b(JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.f271a = json.optInt("re_eligibility", -1);
    }

    public static final String b() {
        return "Could not convert ReEligibilityConfig to JSON";
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final JSONObject getJsonKey() {
        try {
            return new JSONObject().put("re_eligibility", this.f271a);
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.config.b$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return b.b();
                }
            }, 4, (Object) null);
            return null;
        }
    }
}
