package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.google.android.exoplayer2.offline.DownloadRequest;
import java.io.IOException;

/* loaded from: assets/audience_network.dex */
public class RH extends Thread implements InterfaceC1731aG {
    public long A00;
    public Exception A01;
    public final int A02;
    public final C1722a6 A03;
    public final DownloadRequest A04;
    public final InterfaceC1732aH A05;
    public final boolean A06;
    public volatile HandlerC1718a2 A07;
    public volatile boolean A08;

    public RH(DownloadRequest downloadRequest, InterfaceC1732aH interfaceC1732aH, C1722a6 c1722a6, boolean z, int i, HandlerC1718a2 handlerC1718a2) {
        this.A04 = downloadRequest;
        this.A05 = interfaceC1732aH;
        this.A03 = c1722a6;
        this.A06 = z;
        this.A02 = i;
        this.A07 = handlerC1718a2;
        this.A00 = -1L;
    }

    public static int A00(int i) {
        return Math.min((i - 1) * 1000, 5000);
    }

    public final void A05(boolean z) {
        if (z) {
            this.A07 = null;
        }
        if (!this.A08) {
            this.A08 = true;
            this.A05.cancel();
            interrupt();
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1731aG
    public final void AEh(long j, long j2, float f) {
        this.A03.A01 = j2;
        this.A03.A00 = f;
        if (j != this.A00) {
            this.A00 = j;
            HandlerC1718a2 handlerC1718a2 = this.A07;
            if (handlerC1718a2 != null) {
                handlerC1718a2.obtainMessage(10, (int) (j >> 32), (int) j, this).sendToTarget();
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (BQ.A02(this)) {
            return;
        }
        try {
            try {
                if (this.A06) {
                    this.A05.remove();
                } else {
                    int i = 0;
                    long bytesDownloaded = -1;
                    while (!this.A08) {
                        try {
                            this.A05.A5t(this);
                            break;
                        } catch (IOException e) {
                            if (!this.A08) {
                                long j = this.A03.A01;
                                if (j != bytesDownloaded) {
                                    bytesDownloaded = j;
                                    i = 0;
                                }
                                i++;
                                if (i <= this.A02) {
                                    Thread.sleep(A00(i));
                                } else {
                                    throw e;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                BQ.A00(th, this);
                return;
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        } catch (Exception e2) {
            this.A01 = e2;
        }
        Handler internalHandler = this.A07;
        if (internalHandler != null) {
            internalHandler.obtainMessage(9, this).sendToTarget();
        }
    }
}
