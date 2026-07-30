package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

/* renamed from: com.facebook.ads.redexgen.X.ar, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1766ar {
    public static final AtomicLong A07 = new AtomicLong();
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final Uri A04;
    public final C1941dj A05;
    public final Map<String, List<String>> A06;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1766ar(long r13, com.facebook.ads.redexgen.core.C1941dj r15, long r16) {
        /*
            r12 = this;
            r3 = r15
            if (r3 == 0) goto L15
            android.net.Uri r4 = r3.A06
        L5:
            java.util.Map r5 = java.util.Collections.emptyMap()
            r8 = 0
            r10 = 0
            r0 = r12
            r6 = r16
            r1 = r13
            r0.<init>(r1, r3, r4, r5, r6, r8, r10)
            return
        L15:
            r4 = 0
            goto L5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1766ar.<init>(long, com.facebook.ads.redexgen.X.dj, long):void");
    }

    public C1766ar(long j, C1941dj c1941dj, Uri uri, Map<String, List<String>> responseHeaders, long j2, long j3, long j4) {
        this.A03 = j;
        this.A05 = c1941dj;
        this.A04 = uri;
        this.A06 = responseHeaders;
        this.A01 = j2;
        this.A02 = j3;
        this.A00 = j4;
    }

    public static long A00() {
        return A07.getAndIncrement();
    }
}
