package com.facebook.ads.redexgen.core;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.Pu, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1465Pu implements InterfaceC1924dS, InterfaceC1980eN {
    public int A00;
    public int A01;

    @MetaExoPlayerCustomization("Needed for Meta Custom getAvailableSamples")
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public boolean A0A;
    public final C1922dQ A0B;
    public final C1977eK A0C;
    public final InterfaceC2018ez A0D;

    @MetaExoPlayerCustomization("Upstream uses Map. Oculus doesn't play well with these collections")
    public final Map<Integer, Long> A0E;
    public final boolean A0F;
    public static String[] A0G = {"SUxX19hVOjVI379uWltnAMeusyFTR", "THKSGTZivv63ISTTiNd8h4P", "oEGRMMAZHHmekw0FN5e9xPR", "fyWJWkbF8vw5iB9DwWh3VaxjqXf", "Sb5xykiDY70tGCoota1A4p10XzqanNbg", "TO9JRkNG37qzlIM5DJk0QWLFky6VPqt", "TCAEmBXOPOAXkxJgMazcQDJ3mGOhAaFl", "PCPnQxBEYK0DKQgRSEen1tZTIUh"};
    public static final List<Long> A0M = MetaExoPlayerCustomizedCollections.A03(4400000L, 3200000L, 2300000L, 1600000L, 810000L);
    public static final List<Long> A0H = MetaExoPlayerCustomizedCollections.A03(1400000L, 990000L, 730000L, 510000L, 230000L);
    public static final List<Long> A0I = MetaExoPlayerCustomizedCollections.A03(2100000L, 1400000L, 1000000L, 890000L, 640000L);
    public static final List<Long> A0J = MetaExoPlayerCustomizedCollections.A03(2600000L, 1700000L, 1300000L, 1000000L, 700000L);
    public static final List<Long> A0K = MetaExoPlayerCustomizedCollections.A03(5700000L, 3700000L, 2300000L, 1700000L, 990000L);
    public static final List<Long> A0L = MetaExoPlayerCustomizedCollections.A03(2800000L, 1800000L, 1400000L, 1100000L, 870000L);

    @Deprecated
    public C1465Pu() {
        this(null, Collections.emptyMap(), AdError.SERVER_ERROR_CODE, InterfaceC2018ez.A00, false);
    }

    public C1465Pu(Context context, Map<Integer, Long> initialBitrateEstimates, int i, InterfaceC2018ez interfaceC2018ez, boolean z) {
        this.A0E = MetaExoPlayerCustomizedCollections.A04(initialBitrateEstimates);
        this.A0B = new C1922dQ();
        this.A0C = new C1977eK(i);
        this.A0D = interfaceC2018ez;
        this.A0F = z;
        if (context != null) {
            C2064fk A03 = C2064fk.A03(context);
            this.A00 = A03.A09();
            this.A04 = A00(this.A00);
            A03.A0A(new InterfaceC2062fi() { // from class: com.facebook.ads.redexgen.X.Pv
                @Override // com.facebook.ads.redexgen.core.InterfaceC2062fi
                public final void AEG(int i2) {
                    C1465Pu.this.A01(i2);
                }
            });
            return;
        }
        this.A00 = 0;
        this.A04 = A00(0);
    }

    private long A00(int i) {
        Long initialBitrateEstimate = this.A0E.get(Integer.valueOf(i));
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = this.A0E.get(0);
        }
        if (initialBitrateEstimate == null) {
            initialBitrateEstimate = 1000000L;
        }
        return initialBitrateEstimate.longValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A01(int i) {
        int sampleElapsedTimeMs;
        if (this.A00 == 0 || this.A0F) {
            if (this.A0A) {
                i = this.A01;
            }
            if (this.A00 == i) {
                return;
            }
            this.A00 = i;
            if (i == 1 || i == 0 || i == 8) {
                return;
            }
            this.A04 = A00(i);
            long A69 = this.A0D.A69();
            if (this.A03 > 0) {
                long nowMs = A69 - this.A07;
                sampleElapsedTimeMs = (int) nowMs;
            } else {
                sampleElapsedTimeMs = 0;
            }
            A02(sampleElapsedTimeMs, this.A06, this.A04);
            this.A07 = A69;
            this.A06 = 0L;
            this.A08 = 0L;
            this.A09 = 0L;
            this.A0C.A06();
        }
    }

    private void A02(int i, long j, long j2) {
        if (i == 0 && j == 0) {
            long j3 = this.A05;
            String[] strArr = A0G;
            if (strArr[6].charAt(17) != strArr[4].charAt(17)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0G;
            strArr2[1] = "KiPfxkrM1WZmV0sB1oGOJMm";
            strArr2[5] = "npOMJ6FO7jWj8lxnRev4c6GGlX30v16";
            if (j2 == j3) {
                return;
            }
        }
        this.A05 = j2;
        this.A0B.A00(i, j, j2);
    }

    public static boolean A04(C1941dj c1941dj, boolean z) {
        return z && !c1941dj.A06(8);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1980eN
    public final synchronized void ACZ(Q7 q7, C1941dj c1941dj, boolean z, int i) {
        if (A04(c1941dj, z)) {
            this.A06 += i;
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1980eN
    public final synchronized void AFO(Q7 q7, C1941dj c1941dj, boolean z) {
        if (A04(c1941dj, z)) {
            AbstractC2011es.A08(this.A03 > 0);
            long nowMs = this.A0D.A69();
            int i = (int) (nowMs - this.A07);
            this.A09 += i;
            this.A08 += this.A06;
            if (i > 0) {
                C1977eK c1977eK = this.A0C;
                int sampleElapsedTimeMs = (int) Math.sqrt(this.A06);
                c1977eK.A07(sampleElapsedTimeMs, (this.A06 * 8000.0f) / i);
                if (this.A09 >= 2000 || this.A08 >= 524288) {
                    this.A04 = (long) this.A0C.A05(0.5f);
                }
                int sampleElapsedTimeMs2 = this.A02;
                this.A02 = sampleElapsedTimeMs2 + 1;
                A02(i, this.A06, this.A04);
                this.A07 = nowMs;
                this.A06 = 0L;
            }
            int sampleElapsedTimeMs3 = this.A03;
            this.A03 = sampleElapsedTimeMs3 - 1;
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1980eN
    public final synchronized void AFP(@MetaExoPlayerCustomization Q7 q7, C1941dj c1941dj, boolean z, boolean z2) {
        if (A04(c1941dj, z)) {
            if (this.A03 == 0) {
                this.A07 = this.A0D.A69();
            }
            this.A03++;
        }
    }
}
