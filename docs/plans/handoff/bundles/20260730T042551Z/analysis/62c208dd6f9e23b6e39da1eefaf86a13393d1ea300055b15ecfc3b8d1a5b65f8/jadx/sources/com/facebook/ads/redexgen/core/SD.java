package com.facebook.ads.redexgen.core;

import android.media.AudioTrack;
import android.media.metrics.LogSessionId;

/* loaded from: assets/audience_network.dex */
public final class SD {
    public static void A00(AudioTrack audioTrack, RK rk) {
        LogSessionId A00 = rk.A00();
        LogSessionId logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        if (!A00.equals(logSessionId)) {
            audioTrack.setLogSessionId(A00);
        }
    }
}
