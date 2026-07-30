package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.Sq, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C1536Sq extends Thread {
    public final /* synthetic */ AbstractC1633Ws A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1536Sq(AbstractC1633Ws abstractC1633Ws, String str) {
        super(str);
        this.A00 = abstractC1633Ws;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            this.A00.A0R();
        } catch (Throwable th) {
            BQ.A00(th, this);
        }
    }
}
