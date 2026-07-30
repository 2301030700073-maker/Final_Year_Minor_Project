package defpackage;

import defpackage.C2621dD;
import org.json.JSONObject;

/* renamed from: nD, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3377nD implements InterfaceC2915iD {
    @Override // defpackage.InterfaceC2915iD
    /* renamed from: do */
    public final C2621dD mo6886do(QJ qj, JSONObject jSONObject) {
        long currentTimeMillis;
        jSONObject.optInt("settings_version", 0);
        int optInt = jSONObject.optInt("cache_duration", 3600);
        double optDouble = jSONObject.optDouble("on_demand_upload_rate_per_minute", 10.0d);
        double optDouble2 = jSONObject.optDouble("on_demand_backoff_base", 1.2d);
        int optInt2 = jSONObject.optInt("on_demand_backoff_step_duration_seconds", 60);
        C2621dD.Cif cif = jSONObject.has("session") ? new C2621dD.Cif(jSONObject.getJSONObject("session").optInt("max_custom_exception_events", 8)) : new C2621dD.Cif(new JSONObject().optInt("max_custom_exception_events", 8));
        JSONObject jSONObject2 = jSONObject.getJSONObject("features");
        C2621dD.Cdo cdo = new C2621dD.Cdo(jSONObject2.optBoolean("collect_reports", true), jSONObject2.optBoolean("collect_anrs", false), jSONObject2.optBoolean("collect_build_ids", false));
        long j = optInt;
        if (jSONObject.has("expires_at")) {
            currentTimeMillis = jSONObject.optLong("expires_at");
        } else {
            qj.getClass();
            currentTimeMillis = (j * 1000) + System.currentTimeMillis();
        }
        return new C2621dD(currentTimeMillis, cif, cdo, optDouble, optDouble2, optInt2);
    }
}
