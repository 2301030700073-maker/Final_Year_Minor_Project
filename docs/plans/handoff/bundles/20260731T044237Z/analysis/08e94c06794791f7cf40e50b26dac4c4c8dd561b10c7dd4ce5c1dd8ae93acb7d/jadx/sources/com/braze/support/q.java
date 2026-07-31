package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public final class q implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONObject f256a;

    public q(JSONObject jSONObject) {
        this.f256a = jSONObject;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object opt = this.f256a.opt((String) obj);
        Intrinsics.reifiedOperationMarker(3, "T");
        return Boolean.valueOf(opt instanceof Object);
    }
}
