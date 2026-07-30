package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.jB, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2270jB implements AJ {
    public static byte[] A04;
    public static String[] A05 = {"HMqNF3eSIzlMBYXVNU3nP1NvWYo5", "x1o785RKTr7Jq0RcU0BPUyycJ3fBjUeE", "GBfmO3K", "Po", "VaaklUluHJvo1XkXnH3kavV5L6d7gpHG", "rG9SvJ3uZ6", "s9MPDvRc6n", "AU4sbnw7bsTTRuLyXll9UaPcK28fS"};
    public static final String A06;
    public ViewOnAttachStateChangeListenerC2271jC A00;
    public C2582oc<C10799t, C10849y> A01;
    public final C2321k0 A02;
    public final C1404Nj A03 = C1404Nj.A01();

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A05[1].length() == 18) {
                throw new RuntimeException();
            }
            A05[1] = "YaUcq3PJYQGMSsmKTTLasxzUL6lFeW7O";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 121);
            i4++;
        }
    }

    public static void A02() {
        A04 = new byte[]{79, 115, 126, 59, 118, 126, Byte.MAX_VALUE, 114, 122, 59, 120, 105, 126, 122, 111, 114, 109, 126, 59, 109, 114, 126, 108, 59, 114, 104, 59, 117, 110, 119, 119, 53, 121, 66, 94, 73, 75, 69, 95, 88, 73, 94, 69, 66, 75, 12, 77, 12, 66, 89, 64, 64, 12, 79, 94, 73, 77, 88, 69, 90, 73, 12, 90, 69, 73, 91, 13, 83, 108, 96, 114, 117, 106, 108, 107, 113, 65, 100, 113, 100, 37, 108, 118, 37, 107, 112, 105, 105, 36, 25, 15, 9, 5, 4, 14, 53, 9, 2, 11, 4, 4, 15, 6};
    }

    static {
        A02();
        A06 = C2270jB.class.getSimpleName();
    }

    public C2270jB(C2321k0 c2321k0) {
        this.A02 = c2321k0;
    }

    private void A01() {
        this.A02.A08().AAu(A00(89, 14, 19), 3600, new C10368b(A00(67, 22, 124)));
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void ACq() {
        if (this.A01 != null) {
            this.A01.A07.A00();
        } else {
            A01();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void AFk() {
        if (this.A01 != null) {
            this.A01.A07.A03();
        } else {
            A01();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void AJZ(View view) {
        if (this.A01 == null) {
            this.A02.A08().AAu(A00(89, 14, 19), 3600, new C10368b(A00(32, 35, 85)));
            return;
        }
        this.A03.A08(view);
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void AJs(View view, String str, boolean z) {
        AJt(view, str, z, false);
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void AJt(View view, String str, boolean z, boolean z2) {
        AJu(view, str, z, z2, false);
    }

    @Override // com.facebook.ads.redexgen.core.AJ
    public final void AJu(View view, String str, boolean z, boolean z2, boolean z3) {
        if (view != null) {
            this.A00 = new ViewOnAttachStateChangeListenerC2271jC(view);
            this.A03.A0A(this.A00, view);
            if (z2) {
                this.A00.A03();
            }
            this.A01 = C2582oc.A00(new C10799t(this.A02, view, str, z, z3), new C10849y(), A06).A06(new C2272jD(new C2269jA())).A07();
            this.A03.A09(view, this.A01);
            return;
        }
        this.A02.A08().AAu(A00(89, 14, 19), 3600, new C10368b(A00(0, 32, 98)));
    }
}
