package com.facebook.ads.redexgen.core;

import android.media.AudioAttributes;

/* loaded from: assets/audience_network.dex */
public final class NM {
    public final AudioAttributes A00;

    public NM(C1703Zm c1703Zm) {
        AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(c1703Zm.A02).setFlags(c1703Zm.A03).setUsage(c1703Zm.A05);
        if (AbstractC2094gE.A02 >= 29) {
            NK.A00(usage, c1703Zm.A01);
        }
        if (AbstractC2094gE.A02 >= 32) {
            NL.A00(usage, c1703Zm.A04);
        }
        this.A00 = usage.build();
    }
}
