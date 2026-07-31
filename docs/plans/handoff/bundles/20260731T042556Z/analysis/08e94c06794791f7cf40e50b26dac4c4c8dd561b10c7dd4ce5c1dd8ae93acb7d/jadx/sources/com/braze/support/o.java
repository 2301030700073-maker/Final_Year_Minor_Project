package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class o implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f254a;

    public o(JSONArray jSONArray) {
        this.f254a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object opt = this.f254a.opt(((Number) obj).intValue());
        Intrinsics.reifiedOperationMarker(3, "T");
        return Boolean.valueOf(opt instanceof Object);
    }
}
