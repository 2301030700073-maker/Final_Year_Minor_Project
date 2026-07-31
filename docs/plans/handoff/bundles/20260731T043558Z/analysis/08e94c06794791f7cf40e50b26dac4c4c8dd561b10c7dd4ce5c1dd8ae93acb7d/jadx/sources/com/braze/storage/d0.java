package com.braze.storage;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class d0 implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f215a;

    public d0(JSONArray jSONArray) {
        this.f215a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f215a.get(((Number) obj).intValue());
        if (obj2 != null) {
            return (String) obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }
}
