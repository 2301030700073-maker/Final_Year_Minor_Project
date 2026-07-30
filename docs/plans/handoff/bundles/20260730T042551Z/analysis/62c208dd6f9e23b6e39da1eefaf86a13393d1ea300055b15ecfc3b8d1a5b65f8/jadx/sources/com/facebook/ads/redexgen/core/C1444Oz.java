package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Message;

/* renamed from: com.facebook.ads.redexgen.X.Oz, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1444Oz implements InterfaceC2045fR {
    public Message A00;
    public C1443Oy A01;

    public C1444Oz() {
    }

    private void A00() {
        this.A00 = null;
        this.A01 = null;
        C1443Oy.A01(this);
    }

    public final C1444Oz A01(Message message, C1443Oy c1443Oy) {
        this.A00 = message;
        this.A01 = c1443Oy;
        return this;
    }

    public final void A02() {
        ((Message) AbstractC2011es.A01(this.A00)).sendToTarget();
        A00();
    }

    public final boolean A03(Handler handler) {
        boolean success = handler.sendMessageAtFrontOfQueue((Message) AbstractC2011es.A01(this.A00));
        A00();
        return success;
    }
}
