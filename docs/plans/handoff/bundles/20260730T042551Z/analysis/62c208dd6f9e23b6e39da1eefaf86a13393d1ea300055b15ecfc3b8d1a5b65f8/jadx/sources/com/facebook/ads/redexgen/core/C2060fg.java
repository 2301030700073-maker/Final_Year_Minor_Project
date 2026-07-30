package com.facebook.ads.redexgen.core;

import android.telephony.TelephonyCallback;
import android.telephony.TelephonyDisplayInfo;

/* renamed from: com.facebook.ads.redexgen.X.fg, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2060fg extends TelephonyCallback implements TelephonyCallback.DisplayInfoListener {
    public final C2064fk A00;

    public C2060fg(C2064fk c2064fk) {
        this.A00 = c2064fk;
    }

    @Override // android.telephony.TelephonyCallback.DisplayInfoListener
    public final void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
        int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
        boolean is5gNsa = overrideNetworkType == 3 || overrideNetworkType == 4 || overrideNetworkType == 5;
        this.A00.A07(is5gNsa ? 10 : 5);
    }
}
