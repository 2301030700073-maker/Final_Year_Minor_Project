package com.facebook.ads.redexgen.core;

import com.google.common.primitives.ElementTypesAreNonnullByDefault;

@ElementTypesAreNonnullByDefault
/* loaded from: assets/audience_network.dex */
public abstract class PF {
    public static int A00(boolean a, boolean b) {
        if (a == b) {
            return 0;
        }
        return a ? 1 : -1;
    }
}
