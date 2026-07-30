package com.facebook.ads.redexgen.core;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: assets/audience_network.dex */
public abstract class Bf {
    public static final AtomicReference<InterfaceC1106Be> A00 = new AtomicReference<>(null);

    public static InterfaceC1106Be A00() {
        InterfaceC1106Be errorLogger = A00.get();
        if (errorLogger == null) {
            return new C2222iN();
        }
        return errorLogger;
    }

    public static void A01(InterfaceC1106Be interfaceC1106Be) {
        A00.set(interfaceC1106Be);
    }
}
