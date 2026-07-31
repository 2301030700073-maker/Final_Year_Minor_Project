package com.skydoves.balloon;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AutoDismissRunnable implements Runnable {
    public final Balloon balloon;

    public AutoDismissRunnable(Balloon balloon) {
        this.balloon = balloon;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.balloon.dismiss();
    }
}
