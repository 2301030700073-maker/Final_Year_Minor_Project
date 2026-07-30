package com.braze.models.outgoing;

import com.braze.models.IPutIntoJson;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class i implements IPutIntoJson, com.braze.models.k {

    /* renamed from: a, reason: collision with root package name */
    public final long f166a;
    public final boolean b;

    public i(long j, boolean z) {
        this.f166a = j;
        this.b = z;
    }

    @Override // com.braze.models.IPutIntoJson
    public final Object forJsonPut() {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("config_time", this.f166a);
        return jSONObject;
    }

    @Override // com.braze.models.k
    public final boolean isEmpty() {
        return !this.b;
    }
}
