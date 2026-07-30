package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.RequestConfiguration;

/* renamed from: com.facebook.ads.redexgen.X.Yh, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1673Yh implements InterfaceC1398Nb {
    public int A00;
    public long A01;
    public long A02;
    public Object A03;
    public Object A04;
    public boolean A05;
    public C1707Zq A06 = C1707Zq.A08;
    public static String[] A07 = {"G9WL4rn12iP6MyxvnFNwDtQWsimlKdOL", "5vvu1vG4BQil762AXDshcOSHPA4me7wW", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "IsJF7Y1nrSs0jxoBG0t78uVULAdJVy1C", "We8vwXt7TZnfCQYZLmN8kIA2X", "CW", "iQjNWKLgBFbyGY8ZXGBvi2tWoFAZOZnz", "rgBv8h0AMw5V2xLZmvANYUoNfbGvDgEj"};
    public static final String A0D = AbstractC2094gE.A0h(0);
    public static final String A0A = AbstractC2094gE.A0h(1);
    public static final String A0C = AbstractC2094gE.A0h(2);
    public static final String A0B = AbstractC2094gE.A0h(3);
    public static final String A09 = AbstractC2094gE.A0h(4);
    public static final InterfaceC1397Na<C1673Yh> A08 = new InterfaceC1397Na() { // from class: com.facebook.ads.redexgen.X.Yi
        @Override // com.facebook.ads.redexgen.core.InterfaceC1397Na
        public final InterfaceC1398Nb A6V(Bundle bundle) {
            C1673Yh A01;
            A01 = C1673Yh.A01(bundle);
            return A01;
        }
    };

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 13 out of bounds for length 12
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:125)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static C1673Yh A01(Bundle bundle) {
        int i = bundle.getInt(A0D, 0);
        long j = bundle.getLong(A0A, -9223372036854775807L);
        long j2 = bundle.getLong(A0C, 0L);
        boolean z = bundle.getBoolean(A0B, false);
        Bundle bundle2 = bundle.getBundle(A09);
        C1707Zq A6V = bundle2 != null ? C1707Zq.A09.A6V(bundle2) : C1707Zq.A08;
        C1673Yh c1673Yh = new C1673Yh();
        c1673Yh.A0G(null, null, i, j, j2, A6V, z);
        return c1673Yh;
    }

    public final int A03() {
        return this.A06.A00;
    }

    public final int A04(int i) {
        return this.A06.A07(i).A00;
    }

    public final int A05(int i) {
        return this.A06.A07(i).A04();
    }

    public final int A06(int i, int i2) {
        return this.A06.A07(i).A05(i2);
    }

    public final int A07(long j) {
        return this.A06.A05(j, this.A01);
    }

    public final int A08(long j) {
        return this.A06.A06(j, this.A01);
    }

    public final long A09() {
        return this.A06.A02;
    }

    public final long A0A() {
        return this.A01;
    }

    public final long A0B() {
        return AbstractC2094gE.A0P(this.A02);
    }

    public final long A0C() {
        return this.A02;
    }

    public final long A0D(int i) {
        return this.A06.A07(i).A03;
    }

    public final long A0E(int i, int i2) {
        C1708Zr A072 = this.A06.A07(i);
        if (A072.A00 != -1) {
            return A072.A06[i2];
        }
        return -9223372036854775807L;
    }

    public final C1673Yh A0F(Object obj, Object obj2, int i, long j, long j2) {
        return A0G(obj, obj2, i, j, j2, C1707Zq.A08, false);
    }

    public final C1673Yh A0G(Object obj, Object obj2, int i, long j, long j2, C1707Zq c1707Zq, boolean z) {
        this.A03 = obj;
        this.A04 = obj2;
        this.A00 = i;
        this.A01 = j;
        this.A02 = j2;
        this.A06 = c1707Zq;
        this.A05 = z;
        return this;
    }

    public final boolean A0H(int i) {
        return !this.A06.A07(i).A07();
    }

    @MetaExoPlayerCustomization("Can be removed once MediaPeriodQueue is updated.")
    public final boolean A0I(int i, int i2) {
        C1708Zr c1708Zr = this.A06.A05[i];
        if (c1708Zr.A00 != -1) {
            int[] iArr = c1708Zr.A05;
            if (A07[2].length() == 11) {
                throw new RuntimeException();
            }
            A07[2] = "KV2GFfXtv35xYupWYP2sQJI3oJ5M";
            if (iArr[i2] != 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !getClass().equals(obj.getClass())) {
            return false;
        }
        C1673Yh c1673Yh = (C1673Yh) obj;
        if (AbstractC2094gE.A1E(this.A03, c1673Yh.A03) && AbstractC2094gE.A1E(this.A04, c1673Yh.A04) && this.A00 == c1673Yh.A00 && this.A01 == c1673Yh.A01 && this.A02 == c1673Yh.A02 && this.A05 == c1673Yh.A05 && AbstractC2094gE.A1E(this.A06, c1673Yh.A06)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((((((((((((7 * 31) + (this.A03 == null ? 0 : this.A03.hashCode())) * 31) + (this.A04 != null ? this.A04.hashCode() : 0)) * 31) + this.A00) * 31) + ((int) (this.A01 ^ (this.A01 >>> 32)))) * 31) + ((int) (this.A02 ^ (this.A02 >>> 32)))) * 31) + (this.A05 ? 1 : 0)) * 31) + this.A06.hashCode();
    }
}
