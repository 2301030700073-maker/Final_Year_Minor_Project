package com.facebook.ads.redexgen.core;

import android.content.DialogInterface;
import android.widget.EditText;
import java.util.concurrent.Executor;

/* loaded from: assets/audience_network.dex */
public class DG implements DialogInterface.OnClickListener {
    public final /* synthetic */ EditText A00;
    public final /* synthetic */ C2200hz A01;

    public DG(C2200hz c2200hz, EditText editText) {
        this.A01 = c2200hz;
        this.A00 = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Executor executor;
        executor = this.A01.A03;
        executor.execute(new C2201i0(this, dialogInterface));
    }
}
