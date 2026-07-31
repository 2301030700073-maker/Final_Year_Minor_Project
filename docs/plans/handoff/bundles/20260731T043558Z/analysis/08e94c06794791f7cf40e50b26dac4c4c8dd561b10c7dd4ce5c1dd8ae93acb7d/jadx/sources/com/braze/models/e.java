package com.braze.models;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class e implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f150a;

    public e(JSONArray jSONArray) {
        this.f150a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(this.f150a.opt(((Number) obj).intValue()) instanceof Object);
    }
}
