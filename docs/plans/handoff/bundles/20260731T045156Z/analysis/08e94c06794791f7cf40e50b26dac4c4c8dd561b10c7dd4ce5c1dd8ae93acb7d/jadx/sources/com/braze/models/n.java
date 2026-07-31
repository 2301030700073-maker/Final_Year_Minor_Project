package com.braze.models;

import com.braze.support.BrazeLogger;
import com.braze.support.JsonUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class n implements IPutIntoJson {

    /* renamed from: a, reason: collision with root package name */
    public final o f160a;
    public final double b;
    public Double c;
    public boolean d;

    public n(o sessionId, double d, Double d2, boolean z) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        this.f160a = sessionId;
        this.b = d;
        ((l) this).c = d2;
        this.d = z;
    }

    public static final String a(double d, n nVar) {
        return "End time '" + d + "' for session is less than the start time '" + nVar.b + "' for this session.";
    }

    public static final String b() {
        return "Caught exception creating Session Json.";
    }

    public final long c() {
        Double d = d();
        if (d == null) {
            return -1L;
        }
        final double doubleValue = d.doubleValue();
        long j = (long) (doubleValue - this.b);
        if (j < 0) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.W, (Throwable) null, false, new Function0() { // from class: com.braze.models.n$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.a(doubleValue, this);
                }
            }, 6, (Object) null);
        }
        return j;
    }

    public Double d() {
        return this.c;
    }

    public String toString() {
        return "\nSession(sessionId=" + this.f160a + ", startTime=" + this.b + ", endTime=" + d() + ", isSealed=" + this.d + ", duration=" + c() + ')';
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final JSONObject getJsonKey() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, this.f160a);
            jSONObject.put("start_time", this.b);
            jSONObject.put("is_sealed", this.d);
            if (d() != null) {
                jSONObject.put(SDKConstants.PARAM_TOURNAMENTS_END_TIME, d());
            }
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.models.n$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return n.b();
                }
            }, 4, (Object) null);
        }
        return jSONObject;
    }

    public n(JSONObject sessionData) {
        Intrinsics.checkNotNullParameter(sessionData, "sessionData");
        String sessionId = sessionData.getString(SDKAnalyticsEvents.PARAMETER_SESSION_ID);
        Intrinsics.checkNotNullExpressionValue(sessionId, "getString(...)");
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        UUID fromString = UUID.fromString(sessionId);
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(...)");
        this.f160a = new o(fromString);
        this.b = sessionData.getDouble("start_time");
        this.d = sessionData.getBoolean("is_sealed");
        this.c = JsonUtils.getDoubleOrNull(sessionData, SDKConstants.PARAM_TOURNAMENTS_END_TIME);
    }
}
