package com.braze.triggers.config;

import com.braze.models.IPutIntoJson;
import com.braze.support.BrazeLogger;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import io.sentry.ProfilingTraceData;
import io.sentry.protocol.SentryThread;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class c implements IPutIntoJson {

    /* renamed from: a, reason: collision with root package name */
    public final long f272a;
    public final long b;
    public final int c;
    public final int d;
    public final int e;
    public final b f;
    public final int g;

    public c(JSONObject json) {
        Intrinsics.checkNotNullParameter(json, "json");
        this.f272a = json.optLong("start_time", -1L);
        this.b = json.optLong(SDKConstants.PARAM_TOURNAMENTS_END_TIME, -1L);
        this.c = json.optInt(SentryThread.JsonKeys.PRIORITY, 0);
        this.g = json.optInt("min_seconds_since_last_trigger", -1);
        this.d = json.optInt("delay", 0);
        this.e = json.optInt(ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, -1);
        this.f = new b(json);
    }

    public static final String b() {
        return "Could not convert ScheduleConfig to JSON";
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final JSONObject getPropertiesJSONObject() {
        try {
            JSONObject propertiesJSONObject = this.f.getPropertiesJSONObject();
            if (propertiesJSONObject == null) {
                return null;
            }
            propertiesJSONObject.put("start_time", this.f272a);
            propertiesJSONObject.put(SDKConstants.PARAM_TOURNAMENTS_END_TIME, this.b);
            propertiesJSONObject.put(SentryThread.JsonKeys.PRIORITY, this.c);
            propertiesJSONObject.put("min_seconds_since_last_trigger", this.g);
            propertiesJSONObject.put(ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, this.e);
            propertiesJSONObject.put("delay", this.d);
            return propertiesJSONObject;
        } catch (JSONException e) {
            BrazeLogger.brazelog$default(BrazeLogger.INSTANCE, (Object) this, BrazeLogger.Priority.E, (Throwable) e, false, new Function0() { // from class: com.braze.triggers.config.c$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return c.b();
                }
            }, 4, (Object) null);
            return null;
        }
    }
}
