package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class r implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f257a;

    public r(JSONObject jSONObject) {
        this.f257a = jSONObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f257a.get((String) obj);
        Intrinsics.reifiedOperationMarker(1, "T");
        return obj2;
    }
}
