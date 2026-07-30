package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;

/* renamed from: com.facebook.ads.redexgen.X.7o, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class CallableC10247o implements Callable<Boolean> {
    public final BlockingQueue<Boolean> A00 = new LinkedBlockingQueue();
    public final /* synthetic */ C10297t A01;

    public CallableC10247o(C10297t c10297t, C10257p c10257p) {
        this.A01 = c10297t;
        new Handler(Looper.getMainLooper()).post(new C2325k4(this, c10297t, c10257p));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final Boolean call() throws Exception {
        return this.A00.take();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(C10257p c10257p) {
        AnonymousClass85 anonymousClass85;
        AnonymousClass85 anonymousClass852;
        long currentTimeMillis = System.currentTimeMillis();
        anonymousClass85 = this.A01.A04;
        J7 A01 = J7.A01(anonymousClass85.A02());
        Uri A00 = C5.A00(c10257p.A08);
        long j = c10257p.A00;
        if (j == -1) {
            anonymousClass852 = this.A01.A04;
            j = C10729m.A0R(anonymousClass852);
        }
        A01.A0I(A00, new C2324k3(this, c10257p, j, currentTimeMillis), j);
    }
}
