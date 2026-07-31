package com.braze.triggers.conditions;

import com.braze.support.StringUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class j implements d {

    /* renamed from: a, reason: collision with root package name */
    public final String f268a;

    public j(JSONObject jSONObject) {
        JSONObject optJSONObject = jSONObject.optJSONObject("data");
        if (optJSONObject == null || optJSONObject.isNull(FirebaseAnalytics.Param.CAMPAIGN_ID)) {
            return;
        }
        this.f268a = optJSONObject.optString(FirebaseAnalytics.Param.CAMPAIGN_ID, null);
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        if (!(bVar instanceof com.braze.triggers.events.g)) {
            return false;
        }
        if (StringUtils.isNullOrBlank(this.f268a)) {
            return true;
        }
        com.braze.triggers.events.g gVar = (com.braze.triggers.events.g) bVar;
        return !StringUtils.isNullOrBlank(gVar.e) && gVar.e.equals(this.f268a);
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final Object getPropertiesJSONObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", "push_click");
            if (this.f268a == null) {
                return jSONObject;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.putOpt(FirebaseAnalytics.Param.CAMPAIGN_ID, this.f268a);
            jSONObject.putOpt("data", jSONObject2);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
