package com.braze.models.cards;

import kotlin.jvm.functions.Function1;
import org.json.JSONArray;

/* loaded from: classes2.dex */
public final class c implements Function1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ JSONArray f144a;

    public c(JSONArray jSONArray) {
        this.f144a = jSONArray;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object obj2 = this.f144a.get(((Number) obj).intValue());
        if (obj2 != null) {
            return (String) obj2;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
    }
}
