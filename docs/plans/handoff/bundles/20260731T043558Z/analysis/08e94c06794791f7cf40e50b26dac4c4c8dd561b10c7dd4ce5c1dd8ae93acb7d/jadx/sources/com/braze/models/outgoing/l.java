package com.braze.models.outgoing;

import com.braze.models.IPutIntoJson;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class l implements IPutIntoJson, com.braze.models.k {

    /* renamed from: a, reason: collision with root package name */
    public final JSONObject f169a;
    public final JSONArray b;

    public l(JSONObject userObject) {
        Intrinsics.checkNotNullParameter(userObject, "userObject");
        this.f169a = userObject;
        this.b = new JSONArray().put(userObject);
    }

    @Override // com.braze.models.IPutIntoJson
    /* renamed from: forJsonPut */
    public final Object getJsonObject() {
        JSONArray jsonArrayForJsonPut = this.b;
        Intrinsics.checkNotNullExpressionValue(jsonArrayForJsonPut, "jsonArrayForJsonPut");
        return jsonArrayForJsonPut;
    }

    @Override // com.braze.models.k
    public final boolean isEmpty() {
        if (this.f169a.length() == 0) {
            return true;
        }
        return this.f169a.length() == 1 && this.f169a.has("user_id");
    }
}
