package com.braze.triggers.conditions;

import com.braze.support.BrazeLogger;
import com.braze.support.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class b extends l {
    public static final String d = BrazeLogger.getBrazeLogTag((Class<?>) b.class);
    public final String c;

    public b(JSONObject jSONObject) {
        super(jSONObject);
        this.c = jSONObject.getJSONObject("data").getString("event_name");
    }

    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        if (!(bVar instanceof com.braze.triggers.events.a)) {
            return false;
        }
        com.braze.triggers.events.a aVar = (com.braze.triggers.events.a) bVar;
        if (StringUtils.isNullOrBlank(aVar.f) || !aVar.f.equals(this.c)) {
            return false;
        }
        return this.f269a.a(bVar);
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final Object getJsonObject() {
        JSONObject b = super.b();
        try {
            b.put("type", "custom_event_property");
            JSONObject jSONObject = b.getJSONObject("data");
            jSONObject.put("event_name", this.c);
            b.put("data", jSONObject);
        } catch (JSONException e) {
            BrazeLogger.e(d, "Caught exception creating CustomEventWithPropertiesTriggerCondition Json.", e);
        }
        return b;
    }
}
