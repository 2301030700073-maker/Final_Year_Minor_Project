package com.facebook.ads.redexgen.core;

/* renamed from: com.facebook.ads.redexgen.X.f2, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2021f2 {
    public boolean A00;
    public final InterfaceC2018ez A01;

    public C2021f2() {
        this(InterfaceC2018ez.A00);
    }

    public C2021f2(InterfaceC2018ez interfaceC2018ez) {
        this.A01 = interfaceC2018ez;
    }

    public final synchronized void A00() throws InterruptedException {
        while (!this.A00) {
            wait();
        }
    }

    public final synchronized void A01() {
        boolean z = false;
        while (true) {
            boolean wasInterrupted = this.A00;
            if (wasInterrupted) {
                break;
            }
            try {
                wait();
            } catch (InterruptedException unused) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean A02() {
        boolean z;
        z = this.A00;
        this.A00 = false;
        return z;
    }

    public final synchronized boolean A03() {
        return this.A00;
    }

    public final synchronized boolean A04() {
        if (this.A00) {
            return false;
        }
        this.A00 = true;
        notifyAll();
        return true;
    }

    public final synchronized boolean A05(long j) throws InterruptedException {
        if (j <= 0) {
            return this.A00;
        }
        long nowMs = this.A01.A69();
        long j2 = nowMs + j;
        if (j2 < nowMs) {
            A00();
        } else {
            while (!this.A00 && nowMs < j2) {
                long endMs = j2 - nowMs;
                wait(endMs);
                nowMs = this.A01.A69();
            }
        }
        return this.A00;
    }
}
