package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.exoplayer2.video.DummySurface;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.gO, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class HandlerThreadC2104gO extends HandlerThread implements Handler.Callback {
    public static byte[] A05;
    public Handler A00;
    public RunnableC2029fB A01;
    public DummySurface A02;
    public Error A03;
    public RuntimeException A04;

    static {
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{102, 87, 79, 79, 91, 113, 87, 80, 68, 67, 65, 71, 32, 7, 15, 10, 3, 2, 70, 18, 9, 70, 15, 8, 15, 18, 15, 7, 10, 15, 28, 3, 70, 2, 19, 11, 11, 31, 70, 21, 19, 20, 0, 7, 5, 3, 30, 57, 49, 52, 61, 60, 120, 44, 55, 120, 42, 61, 52, 61, 57, 43, 61, 120, 60, 45, 53, 53, 33, 120, 43, 45, 42, 62, 57, 59, 61, 70, 87, 79, 79, 91, 113, 87, 80, 68, 67, 65, 71};
    }

    public HandlerThreadC2104gO() {
        super(A00(77, 12, 60));
    }

    private void A01() {
        AbstractC2011es.A01(this.A01);
        this.A01.A08();
    }

    private void A03(int i) {
        AbstractC2011es.A01(this.A01);
        this.A01.A09(i);
        this.A02 = new DummySurface(this, this.A01.A07(), i != 0);
    }

    public final DummySurface A04(int i) {
        start();
        this.A00 = new Handler(getLooper(), this);
        this.A01 = new RunnableC2029fB(this.A00);
        boolean z = false;
        synchronized (this) {
            this.A00.obtainMessage(1, i, 0).sendToTarget();
            while (this.A02 == null && this.A04 == null && this.A03 == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        if (this.A04 == null) {
            if (this.A03 == null) {
                return (DummySurface) AbstractC2011es.A01(this.A02);
            }
            throw this.A03;
        }
        throw this.A04;
    }

    public final void A05() {
        AbstractC2011es.A01(this.A00);
        this.A00.sendEmptyMessage(2);
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x007f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r7) {
        /*
            r6 = this;
            int r0 = r7.what
            r5 = 1
            switch(r0) {
                case 1: goto L2b;
                case 2: goto L7;
                default: goto L6;
            }
        L6:
            return r5
        L7:
            r6.A01()     // Catch: java.lang.Throwable -> Lb
            goto L22
        Lb:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 60
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L26
            r3 = 46
            r2 = 31
            r0 = 70
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L26
            com.facebook.ads.redexgen.core.AbstractC2055fb.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L26
        L22:
            r6.quit()
            return r5
        L26:
            r0 = move-exception
            r6.quit()
            throw r0
        L2b:
            int r0 = r7.arg1     // Catch: java.lang.Error -> L39 java.lang.RuntimeException -> L5b java.lang.Throwable -> L7d
            r6.A03(r0)     // Catch: java.lang.Error -> L39 java.lang.RuntimeException -> L5b java.lang.Throwable -> L7d
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L36
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L36
            goto L79
        L36:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L36
            throw r0
        L39:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 60
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L7d
            r3 = 12
            r2 = 34
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L7d
            com.facebook.ads.redexgen.core.AbstractC2055fb.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L7d
            r6.A03 = r4     // Catch: java.lang.Throwable -> L7d
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L58
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L58
            goto L79
        L58:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L58
            throw r0
        L5b:
            r4 = move-exception
            r2 = 0
            r1 = 12
            r0 = 60
            java.lang.String r1 = A00(r2, r1, r0)     // Catch: java.lang.Throwable -> L7d
            r3 = 12
            r2 = 34
            r0 = 120(0x78, float:1.68E-43)
            java.lang.String r0 = A00(r3, r2, r0)     // Catch: java.lang.Throwable -> L7d
            com.facebook.ads.redexgen.core.AbstractC2055fb.A08(r1, r0, r4)     // Catch: java.lang.Throwable -> L7d
            r6.A04 = r4     // Catch: java.lang.Throwable -> L7d
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L7a
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7a
        L79:
            return r5
        L7a:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L7a
            throw r0
        L7d:
            r0 = move-exception
            monitor-enter(r6)
            r6.notify()     // Catch: java.lang.Throwable -> L84
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L84
            throw r0
        L84:
            r0 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L84
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.HandlerThreadC2104gO.handleMessage(android.os.Message):boolean");
    }
}
