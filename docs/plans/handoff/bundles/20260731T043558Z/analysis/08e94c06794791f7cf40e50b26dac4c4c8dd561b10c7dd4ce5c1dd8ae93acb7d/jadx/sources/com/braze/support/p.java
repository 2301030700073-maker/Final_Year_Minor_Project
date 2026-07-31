package com.braze.support;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class p implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f255a;

    public p(JSONArray jSONArray) {
        this.f255a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f255a.get(((Number) obj).intValue());
        Intrinsics.reifiedOperationMarker(1, "T");
        return obj2;
    }
}
