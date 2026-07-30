package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.exoplayer2.text.Cue;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Qf, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1474Qf implements InterfaceC1398Nb {
    public final long A00;

    @MetaExoPlayerCustomization("Oculus does not work well with Google Guava")
    public final List<C1476Qh> A01;
    public static final C1474Qf A03 = new C1474Qf(MetaExoPlayerCustomizedCollections.A01(), 0);
    public static final String A04 = AbstractC2094gE.A0h(0);
    public static final String A05 = AbstractC2094gE.A0h(1);
    public static final InterfaceC1397Na<C1474Qf> A02 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Qg
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C1474Qf A00;
            A00 = C1474Qf.A00(bundle);
            return A00;
        }
    };

    @MetaExoPlayerCustomization("Oculus does not work well with Google Guava")
    public C1474Qf(List<C1476Qh> list, long j) {
        this.A01 = MetaExoPlayerCustomizedCollections.A03((C1476Qh[]) list.toArray(new C1476Qh[0]));
        this.A00 = j;
    }

    public static final C1474Qf A00(Bundle bundle) {
        List A01;
        List<Cue> cues = bundle.getParcelableArrayList(A04);
        if (cues == null) {
            A01 = MetaExoPlayerCustomizedCollections.A01();
        } else {
            A01 = C2017ey.A01(C1476Qh.A0I, cues);
        }
        return new C1474Qf(A01, bundle.getLong(A05));
    }
}
