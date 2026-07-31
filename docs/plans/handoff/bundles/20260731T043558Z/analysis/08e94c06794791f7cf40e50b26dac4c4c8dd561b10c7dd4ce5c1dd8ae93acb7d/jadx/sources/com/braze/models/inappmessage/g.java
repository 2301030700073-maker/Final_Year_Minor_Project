package com.braze.models.inappmessage;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class g implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f156a;

    public g(JSONArray jSONArray) {
        this.f156a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(this.f156a.opt(((Number) obj).intValue()) instanceof JSONObject);
    }
}
