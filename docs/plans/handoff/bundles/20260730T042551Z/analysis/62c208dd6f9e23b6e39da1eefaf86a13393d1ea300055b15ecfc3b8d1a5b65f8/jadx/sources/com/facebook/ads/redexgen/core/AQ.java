package com.facebook.ads.redexgen.core;

import com.facebook.ads.NativeAdBase;
import java.util.Arrays;
import javax.annotation.Nullable;

/* loaded from: assets/audience_network.dex */
public enum AQ {
    A05(0, NativeAdBase.MediaCacheFlag.NONE),
    A04(1, NativeAdBase.MediaCacheFlag.ALL);

    public static byte[] A02;
    public final long A00;
    public final NativeAdBase.MediaCacheFlag A01;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 19);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{117, Byte.MIN_VALUE, Byte.MIN_VALUE, -123, -122, -123, 124};
    }

    static {
        A02();
    }

    AQ(long j, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = j;
        this.A01 = mediaCacheFlag;
    }

    @Nullable
    public static AQ A00(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        for (AQ aq : values()) {
            if (aq.A01 == mediaCacheFlag) {
                return aq;
            }
        }
        return null;
    }
}
