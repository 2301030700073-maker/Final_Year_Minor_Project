package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Fa, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1198Fa implements View.OnClickListener {
    public final /* synthetic */ C1201Fd A00;

    public ViewOnClickListenerC1198Fa(C1201Fd c1201Fd) {
        this.A00 = c1201Fd;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        InterfaceC1200Fc interfaceC1200Fc;
        DQ dq;
        List list;
        C1855cL c1855cL;
        C1855cL c1855cL2;
        C1855cL c1855cL3;
        DQ dq2;
        if (BQ.A02(this)) {
            return;
        }
        try {
            interfaceC1200Fc = this.A00.A05;
            interfaceC1200Fc.AE1();
            dq = this.A00.A00;
            if (dq != null) {
                dq2 = this.A00.A00;
                D3.A0J(dq2);
            }
            list = this.A00.A07;
            Iterator it = list.iterator();
            while (it.hasNext()) {
                D3.A0L((View) it.next(), 0);
            }
            D3.A0H(this.A00);
            c1855cL = this.A00.A06;
            if (c1855cL == null) {
                return;
            }
            c1855cL2 = this.A00.A06;
            D3.A0L(c1855cL2, 0);
            c1855cL3 = this.A00.A06;
            c1855cL3.A0g(IP.A02, 14);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
