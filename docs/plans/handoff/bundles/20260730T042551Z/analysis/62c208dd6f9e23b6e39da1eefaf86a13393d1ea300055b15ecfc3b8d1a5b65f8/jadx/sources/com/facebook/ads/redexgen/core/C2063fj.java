package com.facebook.ads.redexgen.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.facebook.ads.redexgen.X.fj, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2063fj extends BroadcastReceiver {
    public final /* synthetic */ C2064fk A00;

    public C2063fj(C2064fk c2064fk) {
        this.A00 = c2064fk;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        int A00;
        A00 = C2064fk.A00(context);
        if (AbstractC2094gE.A02 >= 31 && A00 == 5) {
            C2061fh.A02(context, this.A00);
        } else {
            this.A00.A07(A00);
        }
    }
}
