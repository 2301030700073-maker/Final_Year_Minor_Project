package com.facebook.ads.redexgen.core;

import android.os.Looper;
import android.util.SparseArray;
import com.facebook.ads.AdError;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.Timeline;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Cw, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1142Cw implements InterfaceC1664Xx {
    public static String[] A09 = {"7A2DuxexkNzrP7QjhGhrFYYu", "soCGQjvsRcIeT6oOZGXwOMHckv7o7per", "Y6uu4OXCAFS9biuB4W1Qiand94h2DeLJ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "HZdE1worCkoUMuRG1QGA3M81OGDro9K1", "TMt2EFIO6gjy0ISbcDhRXYxO1rG8", "1kCmjgzrPTW72y1zBKqQSTNYVdjN", "WOoZRWv9xLTzL9AmYqiIWKlutEy7PHyv"};
    public QQ A00;
    public InterfaceC2046fS A01;
    public C2052fY<R4> A02;
    public boolean A03;
    public final InterfaceC2018ez A08;
    public final C1673Yh A05 = new C1673Yh();
    public final C1671Yf A06 = new C1671Yf();
    public final R6 A07 = new R6(this.A05);
    public final SparseArray<R2> A04 = new SparseArray<>();

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0058, code lost:
    
        if (r4 != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x005a, code lost:
    
        if (r5 == false) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0064, code lost:
    
        if (r21.A00.A7O() != r11.A00) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006e, code lost:
    
        if (r21.A00.A7P() != r11.A01) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0070, code lost:
    
        if (r6 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0072, code lost:
    
        r12 = r21.A00.A7U();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a5, code lost:
    
        if (r4 != false) goto L17;
     */
    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b1  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"player"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.facebook.ads.redexgen.core.R2 A03(com.google.android.exoplayer2.Timeline r22, int r23, com.facebook.ads.redexgen.core.R5 r24) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C1142Cw.A03(com.google.android.exoplayer2.Timeline, int, com.facebook.ads.redexgen.X.R5):com.facebook.ads.redexgen.X.R2");
    }

    public C1142Cw(InterfaceC2018ez interfaceC2018ez) {
        this.A08 = (InterfaceC2018ez) AbstractC2011es.A01(interfaceC2018ez);
        this.A02 = new C2052fY<>(AbstractC2094gE.A0d(), interfaceC2018ez, new InterfaceC2050fW() { // from class: com.facebook.ads.redexgen.X.Xd
        });
    }

    private final R2 A00() {
        return A04(this.A07.A06());
    }

    private R2 A01(int i, R5 r5) {
        AbstractC2011es.A01(this.A00);
        boolean z = true;
        if (r5 != null) {
            if (this.A07.A05(r5) == null) {
                z = false;
            }
            if (z) {
                return A04(r5);
            }
            return A03(Timeline.A02, i, r5);
        }
        Timeline A7W = this.A00.A7W();
        if (i >= A7W.A07()) {
            z = false;
        }
        if (!z) {
            A7W = Timeline.A02;
        }
        return A03(A7W, i, null);
    }

    private R2 A02(Z1 z1) {
        if (z1 instanceof EK) {
            EK ek = (EK) z1;
            if (ek.A05 != null) {
                return A04(new R5(ek.A05));
            }
        }
        return A00();
    }

    private R2 A04(R5 r5) {
        Timeline A05;
        AbstractC2011es.A01(this.A00);
        if (r5 == null) {
            A05 = null;
        } else {
            A05 = this.A07.A05(r5);
        }
        if (r5 == null || A05 == null) {
            int windowIndex = this.A00.A7R();
            Timeline knownTimeline = this.A00.A7W();
            if (!(windowIndex < knownTimeline.A07())) {
                knownTimeline = Timeline.A02;
            }
            return A03(knownTimeline, windowIndex, null);
        }
        return A03(A05, A05.A0J(r5.A04, this.A05).A00, r5);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fV != com.google.android.exoplayer2.util.ListenerSet$Event<com.google.android.exoplayer2.analytics.AnalyticsListener> */
    private final void A05(R2 r2, int i, InterfaceC2049fV<R4> interfaceC2049fV) {
        this.A04.put(i, r2);
        this.A02.A0A(i, interfaceC2049fV);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1664Xx
    public final void ABz() {
        if (!this.A03) {
            final R2 A00 = A00();
            this.A03 = true;
            A05(A00, -1, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xm
            });
        }
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void ACo(final C1474Qf c1474Qf) {
        final R2 A00 = A00();
        A05(A00, 27, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xe
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void ACp(final List<C1476Qh> list) {
        final R2 A00 = A00();
        A05(A00, 27, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xb
        });
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1783bB
    public final void ACz(int i, R5 r5, final C1769au c1769au) {
        final R2 A01 = A01(i, r5);
        A05(A01, 1004, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xi
        });
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1783bB
    public final void ADp(int i, R5 r5, final C1766ar c1766ar, final C1769au c1769au) {
        final R2 A01 = A01(i, r5);
        A05(A01, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.XQ
        });
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1783bB
    public final void ADr(@MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) int i, @MetaExoPlayerCustomization(type = {"NEW_METHOD_ARGS"}) R5 r5, final C1766ar c1766ar, final C1769au c1769au, Object obj, Object obj2) {
        final R2 A01 = A01(i, r5);
        A05(A01, AdError.NO_FILL_ERROR_CODE, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xc
        });
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1783bB
    public final void ADu(int i, R5 r5, final C1766ar c1766ar, final C1769au c1769au, final IOException iOException, final boolean z) {
        final R2 A01 = A01(i, r5);
        A05(A01, 1003, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xh
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AEV(final C1687Yv c1687Yv) {
        final R2 A00 = A00();
        A05(A00, 12, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xp
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AEX(final Z1 z1) {
        final R2 A02 = A02(z1);
        A05(A02, 10, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xg
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AEZ(final boolean z, final int i) {
        final R2 A00 = A00();
        A05(A00, -1, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xo
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AF3() {
        final R2 A00 = A00();
        A05(A00, -1, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.Xk
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AFI(Timeline timeline, final int i) {
        this.A07.A07((QQ) AbstractC2011es.A01(this.A00));
        final R2 A00 = A00();
        A05(A00, 0, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.XS
        });
    }

    @Override // com.facebook.ads.redexgen.core.QJ
    public final void AFM(final Y4 y4) {
        final R2 A00 = A00();
        A05(A00, 2, new InterfaceC2049fV() { // from class: com.facebook.ads.redexgen.X.XT
        });
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1664Xx
    public final void AIl(final QQ qq, Looper looper) {
        boolean z;
        OI oi;
        if (this.A00 != null) {
            oi = this.A07.A03;
            if (!oi.isEmpty()) {
                z = false;
                AbstractC2011es.A08(z);
                this.A00 = (QQ) AbstractC2011es.A01(qq);
                this.A01 = this.A08.A5F(looper, null);
                this.A02 = this.A02.A07(looper, new InterfaceC2050fW() { // from class: com.facebook.ads.redexgen.X.Xl
                });
            }
        }
        z = true;
        AbstractC2011es.A08(z);
        this.A00 = (QQ) AbstractC2011es.A01(qq);
        this.A01 = this.A08.A5F(looper, null);
        this.A02 = this.A02.A07(looper, new InterfaceC2050fW() { // from class: com.facebook.ads.redexgen.X.Xl
        });
    }
}
