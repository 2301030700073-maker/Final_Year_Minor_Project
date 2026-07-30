package com.facebook.ads.redexgen.core;

import android.content.DialogInterface;

/* loaded from: assets/audience_network.dex */
public class DF implements DialogInterface.OnClickListener {
    public final /* synthetic */ C2200hz A00;

    public DF(C2200hz c2200hz) {
        this.A00 = c2200hz;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.cancel();
    }
}
