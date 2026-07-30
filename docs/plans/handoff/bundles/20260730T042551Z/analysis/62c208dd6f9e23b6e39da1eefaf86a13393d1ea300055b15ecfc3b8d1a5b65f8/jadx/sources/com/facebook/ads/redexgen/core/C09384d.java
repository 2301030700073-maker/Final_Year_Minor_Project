package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.Comparator;
import java.util.TreeSet;

@MetaExoPlayerCustomization("Exo version is final but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
/* renamed from: com.facebook.ads.redexgen.X.4d, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09384d implements PW {
    public static byte[] A03;
    public static String[] A04 = {"pEHJeEej7oDaKOrGwfFZ6VbJw4w8c3Yk", "EhtWM9B8QuhGIQg2ZWGmGNDhU3aFqzox", "mhwpLCRFCroGq8K4tvVQzBCj1P3CmMBJ", "pEQCkIZmE2eSZvV5JfWZR4fjdXdwA9oi", "WnFn4ajPEqOmDfjs1HajDVdIxctVAVnd", "5nNVj9aLY0YTYH6Tt7sjSNJW9d9HcliU", "tlYrgkszxPV53fTcXLWVikDBelclLvHJ", "NugMlTmX3mpNRVzI0BiZYBq"};

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public long A00;

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final long A01;

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public final TreeSet<C1994eb> A02 = new TreeSet<>(new Comparator() { // from class: com.facebook.ads.redexgen.X.ep
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return C09384d.A00((C1994eb) obj, (C1994eb) obj2);
        }
    });

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 45);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{-60, -43, -56, -62, -45, -94, -64, -62, -57, -60};
    }

    static {
        A02();
    }

    public C09384d(long j) {
        this.A01 = j;
    }

    @MetaExoPlayerCustomization("Exo version is private but in Meta code HeroLeastRecentlyUsedCacheEvictor extends this")
    public static int A00(C1994eb c1994eb, C1994eb c1994eb2) {
        if (c1994eb.A00 - c1994eb2.A00 != 0) {
            return c1994eb.A00 < c1994eb2.A00 ? -1 : 1;
        }
        int compareTo = c1994eb.compareTo(c1994eb2);
        if (A04[0].charAt(13) == 'P') {
            throw new RuntimeException();
        }
        A04[7] = "zLYrGgGuyzqSn9ZsZy5YNqU";
        return compareTo;
    }

    private void A03(InterfaceC1984eR interfaceC1984eR, long j) {
        AbstractC2085g5.A02(A01(0, 10, 50));
        while (this.A00 + j > this.A01 && !this.A02.isEmpty()) {
            interfaceC1984eR.AHb(this.A02.first());
        }
        AbstractC2085g5.A00();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1983eQ
    public final void AFB(InterfaceC1984eR interfaceC1984eR, C1994eb c1994eb) {
        this.A02.add(c1994eb);
        this.A00 += c1994eb.A01;
        A03(interfaceC1984eR, 0L);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1983eQ
    public final void AFC(InterfaceC1984eR interfaceC1984eR, C1994eb c1994eb) {
        this.A02.remove(c1994eb);
        this.A00 -= c1994eb.A01;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1983eQ
    public final void AFD(InterfaceC1984eR interfaceC1984eR, C1994eb c1994eb, C1994eb c1994eb2) {
        AFC(interfaceC1984eR, c1994eb);
        AFB(interfaceC1984eR, c1994eb2);
    }

    @Override // com.facebook.ads.redexgen.core.PW
    public final void AFE(InterfaceC1984eR interfaceC1984eR, String str, long j, long j2) {
        if (j2 != -1) {
            A03(interfaceC1984eR, j2);
        }
    }

    @Override // com.facebook.ads.redexgen.core.PW
    public final boolean AHp() {
        return true;
    }
}
