package com.facebook.ads.redexgen.core;

import android.content.DialogInterface;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.i0, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2201i0 extends BY {
    public final /* synthetic */ DialogInterface A00;
    public final /* synthetic */ DG A01;

    public C2201i0(DG dg, DialogInterface dialogInterface) {
        this.A01 = dg;
        this.A00 = dialogInterface;
    }

    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        JR jr;
        JR jr2;
        C2321k0 c2321k0;
        Map<? extends String, ? extends String> A02;
        jr = this.A01.A01.A02;
        if (jr != null) {
            jr2 = this.A01.A01.A02;
            c2321k0 = this.A01.A01.A00;
            String A03 = BE.A03(c2321k0);
            C1307Jf c1307Jf = new C1307Jf();
            A02 = this.A01.A01.A02(this.A01.A00.getText().toString());
            jr2.AG5(A03, c1307Jf.A05(A02).A08());
        }
        this.A00.cancel();
    }
}
