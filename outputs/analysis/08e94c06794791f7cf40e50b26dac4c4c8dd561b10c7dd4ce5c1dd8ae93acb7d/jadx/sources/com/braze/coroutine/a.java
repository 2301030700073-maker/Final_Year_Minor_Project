package com.braze.coroutine;

import kotlin.jvm.functions.Function0;

/* loaded from: classes2.dex */
public final class a implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Throwable f27a;

    public a(Throwable th) {
        this.f27a = th;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return "Child job of BrazeCoroutineScope got exception: " + this.f27a;
    }
}
