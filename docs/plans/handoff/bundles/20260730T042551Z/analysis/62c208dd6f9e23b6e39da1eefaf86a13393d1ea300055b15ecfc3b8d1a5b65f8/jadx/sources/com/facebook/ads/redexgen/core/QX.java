package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.Timeline;

/* loaded from: assets/audience_network.dex */
public class QX implements InterfaceC1902d6 {
    public final float A00;
    public final float A01;
    public final int A02;
    public final int A03;
    public final int A04;
    public final int A05;
    public final int A06;
    public final long A07;

    @MetaExoPlayerCustomization("This is no longer set in the constructor")
    public final InterfaceC1924dS A08;
    public final InterfaceC2018ez A09;
    public final int A0A;

    public QX() {
        this(10000, 25000, 25000, 0.75f);
    }

    public QX(int i, int i2, int i3, float f) {
        this(null, -1, i, i2, i3, 1279, 719, f, 0.75f, 2000L, InterfaceC2018ez.A00);
    }

    public QX(InterfaceC1924dS interfaceC1924dS) {
        this(interfaceC1924dS, -1, 10000, 25000, 25000, 1279, 719, 0.75f, 0.75f, 2000L, InterfaceC2018ez.A00);
    }

    public QX(@MetaExoPlayerCustomization("No longer set through factory") InterfaceC1924dS interfaceC1924dS, @MetaExoPlayerCustomization("Non standard variable; used in oculus") int i, @MetaExoPlayerCustomization("Removed from upstream") int i2, int i3, int i4, int i5, int i6, float f, float f2, long j, InterfaceC2018ez interfaceC2018ez) {
        this.A08 = interfaceC1924dS;
        this.A0A = i;
        this.A05 = i2;
        this.A02 = i3;
        this.A06 = i4;
        this.A04 = i5;
        this.A03 = i6;
        this.A00 = f;
        this.A01 = f2;
        this.A07 = j;
        this.A09 = interfaceC2018ez;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint> */
    private final C08520u A00(C1669Yc c1669Yc, int[] iArr, int i, InterfaceC1924dS interfaceC1924dS, OI<C1884co> oi) {
        return new C08520u(c1669Yc, iArr, i, interfaceC1924dS, this.A0A, this.A05, this.A02, this.A06, this.A04, this.A03, this.A00, this.A01, this.A07, oi, this.A09);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.OI != com.google.common.collect.ImmutableList<com.google.common.collect.ImmutableList<com.google.android.exoplayer2.trackselection.AdaptiveTrackSelection$AdaptationCheckpoint>> */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1902d6
    public final QD[] A5R(C1901d5[] c1901d5Arr, InterfaceC1924dS interfaceC1924dS, R5 r5, Timeline timeline) {
        OI A00;
        QD A002;
        A00 = C08520u.A00(c1901d5Arr);
        QD[] qdArr = new QD[c1901d5Arr.length];
        for (int i = 0; i < c1901d5Arr.length; i++) {
            C1901d5 c1901d5 = c1901d5Arr[i];
            if (c1901d5 != null && c1901d5.A02.length != 0) {
                if (c1901d5.A02.length == 1) {
                    A002 = new C08510t(c1901d5.A01, c1901d5.A02[0], c1901d5.A00);
                } else {
                    A002 = A00(c1901d5.A01, c1901d5.A02, c1901d5.A00, interfaceC1924dS, (OI) A00.get(i));
                }
                qdArr[i] = A002;
            }
        }
        return qdArr;
    }
}
