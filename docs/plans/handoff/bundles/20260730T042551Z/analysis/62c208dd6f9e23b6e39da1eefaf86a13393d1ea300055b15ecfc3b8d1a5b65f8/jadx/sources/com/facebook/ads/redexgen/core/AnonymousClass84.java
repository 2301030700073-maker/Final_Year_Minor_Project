package com.facebook.ads.redexgen.core;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.84, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class AnonymousClass84 {
    public static String[] A00 = {"WfUJfZecOVcHzzrBpx92ELEjWhu2m", "ABQQ5taiOepRv8Mi5iWio7B3aVpn", "lqinWbZDhv0Ny2jUIa5P6Phm3DGMmF2T", "dPu2X3zgdKacWkfyqxYrIyrhes", "b2oe8Nr0EFLLItrmCHMxvIgMHIYOeqfq", "h", "yKBaB64vFuTn7zYoCnuYBPVEHVJ9GNEq", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};
    public static final AtomicReference<C2321k0> A01 = new AtomicReference<>();

    public static C2321k0 A00() {
        AtomicReference<C2321k0> atomicReference = A01;
        if (A00[2].charAt(13) != '2') {
            throw new RuntimeException();
        }
        A00[3] = "t";
        return atomicReference.get();
    }

    public static void A01(C2321k0 c2321k0) {
        if (c2321k0 == null) {
            return;
        }
        AnonymousClass83.A00(A01, null, c2321k0);
    }
}
