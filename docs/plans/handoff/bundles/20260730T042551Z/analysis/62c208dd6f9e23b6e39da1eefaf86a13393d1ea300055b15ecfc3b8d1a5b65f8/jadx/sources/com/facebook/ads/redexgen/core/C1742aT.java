package com.facebook.ads.redexgen.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.facebook.ads.redexgen.X.aT, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1742aT extends BroadcastReceiver {
    public final /* synthetic */ C1747aY A00;

    public C1742aT(C1747aY c1747aY) {
        this.A00 = c1747aY;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (isInitialStickyBroadcast()) {
            return;
        }
        this.A00.A03();
    }
}
