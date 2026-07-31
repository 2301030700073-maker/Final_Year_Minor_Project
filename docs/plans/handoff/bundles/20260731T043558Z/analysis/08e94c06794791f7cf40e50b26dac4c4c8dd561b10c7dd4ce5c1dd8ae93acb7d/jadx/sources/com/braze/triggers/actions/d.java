package com.braze.triggers.actions;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class d implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f261a;

    public d(JSONArray jSONArray) {
        this.f261a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return Boolean.valueOf(this.f261a.opt(((Number) obj).intValue()) instanceof String);
    }
}
