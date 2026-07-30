package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.view.View;

/* loaded from: assets/audience_network.dex */
public class HE implements View.OnClickListener {
    public static String[] A01 = {"iIV4C6PCamFbOwLs9osqMP65CW35qHVZ", "vu8ePLRZods6FhLp1sOjcscbCnKQtV0u", "aj5bYqq1P6NsPozz4AKHPhJxq4tExiSQ", "sREORf6VoPUSDy", "tYmkAFK6aojaVt6XrGIUitMYwL", "t5b15Ic4Fw72vyTqFljisKwND31PO9vi", "k2wG1EEpilyBuA", "DdpD6jZ5PRtvRqlim5b1myDycB"};
    public final /* synthetic */ C1345Kr A00;

    public HE(C1345Kr c1345Kr) {
        this.A00 = c1345Kr;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        AbstractC08781v abstractC08781v;
        boolean z;
        boolean z2;
        AbstractC08781v abstractC08781v2;
        Handler handler;
        Runnable runnable;
        if (BQ.A02(this)) {
            return;
        }
        try {
            abstractC08781v = this.A00.A0U;
            if (!(abstractC08781v instanceof N9)) {
                return;
            }
            z = this.A00.A0K;
            if (A01[5].charAt(19) != 'i') {
                throw new RuntimeException();
            }
            A01[5] = "JfKhMnDlcffILoVNGoui3HCKoOWuag6G";
            if (!z) {
                this.A00.A0L = true;
                C1345Kr c1345Kr = this.A00;
                abstractC08781v2 = this.A00.A0U;
                c1345Kr.A0f(((N9) abstractC08781v2).A0G().toString());
                if (((AbstractC2025f6) this.A00).A05.A0a() >= 0) {
                    handler = this.A00.A08;
                    runnable = this.A00.A0k;
                    handler.postDelayed(runnable, ((AbstractC2025f6) this.A00).A05.A0a());
                }
            }
            C1345Kr c1345Kr2 = this.A00;
            z2 = this.A00.A0K;
            c1345Kr2.A0i(z2 ? false : true);
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
