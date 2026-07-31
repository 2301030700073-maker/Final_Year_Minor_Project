package com.braze.support;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class h implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f247a;

    public h(JSONArray jSONArray) {
        this.f247a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f247a.get(((Number) obj).intValue());
        if (obj2 != null) {
            return (JSONObject) obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type org.json.JSONObject");
    }
}
