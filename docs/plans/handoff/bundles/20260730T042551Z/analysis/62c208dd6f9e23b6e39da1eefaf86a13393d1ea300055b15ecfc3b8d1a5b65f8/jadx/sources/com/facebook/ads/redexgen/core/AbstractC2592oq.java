package com.facebook.ads.redexgen.core;

import com.google.common.primitives.ElementTypesAreNonnullByDefault;

@ElementTypesAreNonnullByDefault
/* renamed from: com.facebook.ads.redexgen.X.oq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2592oq {
    public static int A00(long value) {
        return (int) ((value >>> 32) ^ value);
    }

    public static int A01(long a, long b) {
        if (a < b) {
            return -1;
        }
        return a > b ? 1 : 0;
    }
}
