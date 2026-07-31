package com.braze.coroutine;

import kotlin.jvm.functions.Function0;

/* loaded from: classes2.dex */
public final class d implements Function0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Throwable f29a;

    public d(Throwable th) {
        this.f29a = th;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        return "Child job of SerialCoroutineScope got exception: " + this.f29a;
    }
}
