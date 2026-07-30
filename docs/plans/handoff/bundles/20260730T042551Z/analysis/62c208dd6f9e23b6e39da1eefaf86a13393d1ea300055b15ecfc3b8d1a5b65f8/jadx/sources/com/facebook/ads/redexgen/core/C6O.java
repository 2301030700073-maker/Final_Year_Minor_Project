package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.os.Looper;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.Timeline;

/* renamed from: com.facebook.ads.redexgen.X.6O, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public final class C6O extends RC implements InterfaceC1792bK {
    public long A00;
    public InterfaceC1980eN A01;
    public InterfaceC2223iP<InterfaceExecutorC2073ft> A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public final int A06;
    public final PP A07;
    public final ZE A08;
    public final TO A09;
    public final InterfaceC1786bE A0A;
    public final InterfaceC1931dZ A0B;
    public final InterfaceC1958e1 A0C;

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.iP != com.google.common.base.Supplier<com.google.android.exoplayer2.util.ReleasableExecutor> */
    @MetaExoPlayerCustomization("Allow for passing a new drmSessionManager")
    public C6O(ZE ze, InterfaceC1931dZ interfaceC1931dZ, InterfaceC1786bE interfaceC1786bE, TO to, InterfaceC1958e1 interfaceC1958e1, int i, InterfaceC2223iP<InterfaceExecutorC2073ft> interfaceC2223iP) {
        this.A07 = (PP) AbstractC2011es.A01(ze.A03);
        this.A08 = ze;
        this.A0B = interfaceC1931dZ;
        this.A0A = interfaceC1786bE;
        this.A09 = to == null ? TO.A00 : to;
        this.A0C = interfaceC1958e1;
        this.A06 = i;
        this.A04 = true;
        this.A00 = -9223372036854775807L;
        this.A02 = interfaceC2223iP;
    }

    private void A00() {
        final Timeline c6g = new C6G(this.A00, this.A05, false, this.A03, null, this.A08);
        if (this.A04) {
            Timeline timeline = new C8W(c6g) { // from class: com.facebook.ads.redexgen.X.0y
                @Override // com.facebook.ads.redexgen.core.C8W, com.google.android.exoplayer2.Timeline
                public final C1673Yh A0I(int i, C1673Yh c1673Yh, boolean z) {
                    super.A0I(i, c1673Yh, z);
                    c1673Yh.A05 = true;
                    return c1673Yh;
                }

                @Override // com.facebook.ads.redexgen.core.C8W, com.google.android.exoplayer2.Timeline
                public final C1671Yf A0L(int i, C1671Yf c1671Yf, long j) {
                    super.A0L(i, c1671Yf, j);
                    c1671Yf.A0F = true;
                    return c1671Yf;
                }
            };
            c6g = timeline;
        }
        A05(c6g);
    }

    @Override // com.facebook.ads.redexgen.core.RC
    public final void A09() {
    }

    @Override // com.facebook.ads.redexgen.core.RC
    public final void A0A(InterfaceC1980eN interfaceC1980eN) {
        this.A01 = interfaceC1980eN;
        this.A09.AGC();
        this.A09.AIk((Looper) AbstractC2011es.A01(Looper.myLooper()), A00());
        A00();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    @MetaExoPlayerCustomization("PlayerId needs to be set")
    public final R7 A5M(R5 r5, InterfaceC1918dM interfaceC1918dM, long j) {
        InterfaceExecutorC2073ft interfaceExecutorC2073ft;
        Q7 A58 = this.A0B.A58();
        if (this.A01 != null) {
            A58.A3t(this.A01);
        }
        Uri uri = this.A07.A00;
        InterfaceC1787bF A5N = this.A0A.A5N(RK.A03);
        TO to = this.A09;
        TJ A01 = A01(r5);
        InterfaceC1958e1 interfaceC1958e1 = this.A0C;
        C1782bA A02 = A02(r5);
        String str = this.A07.A04;
        int i = this.A06;
        if (this.A02 != null) {
            interfaceExecutorC2073ft = this.A02.get();
        } else {
            interfaceExecutorC2073ft = null;
        }
        return new C10177h(uri, A58, A5N, to, A01, interfaceC1958e1, A02, this, interfaceC1918dM, str, i, interfaceExecutorC2073ft);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void ABo() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1792bK
    public final void AF9(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.A00;
        }
        if (!this.A04 && this.A00 == j && this.A05 == z && this.A03 == z2) {
            return;
        }
        this.A00 = j;
        this.A05 = z;
        this.A03 = z2;
        this.A04 = false;
        A00();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1774az
    public final void AGs(R7 r7) {
        ((C10177h) r7).A0a();
    }
}
