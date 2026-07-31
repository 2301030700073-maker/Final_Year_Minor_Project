package com.braze.triggers.conditions;

import androidx.media3.extractor.text.ttml.TtmlNode;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class f implements d {
    @Override // com.braze.triggers.conditions.c
    public final boolean a(com.braze.triggers.events.b bVar) {
        return bVar instanceof com.braze.triggers.events.e;
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final Object getJsonObject() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("type", TtmlNode.TEXT_EMPHASIS_MARK_OPEN);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }
}
