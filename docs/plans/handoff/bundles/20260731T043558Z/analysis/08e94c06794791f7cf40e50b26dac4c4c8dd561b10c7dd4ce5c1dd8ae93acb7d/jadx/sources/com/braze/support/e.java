package com.braze.support;

import kotlin.jvm.functions.Function0;

/* loaded from: classes2.dex */
public final class e implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f244a;

    public e(String str) {
        this.f244a = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return "Failed to create valid enum from string: " + this.f244a;
    }
}
