package com.facebook.ads.redexgen.core;

import java.util.concurrent.Executor;

/* renamed from: com.facebook.ads.redexgen.X.fs, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract /* synthetic */ class AbstractC2072fs {
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.f3 != com.google.android.exoplayer2.util.Consumer<T extends java.util.concurrent.Executor> */
    public static <T extends Executor> InterfaceExecutorC2073ft A00(T executor, InterfaceC2022f3<T> interfaceC2022f3) {
        return new PA(executor, interfaceC2022f3);
    }
}
