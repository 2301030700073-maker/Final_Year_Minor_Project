package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.view.WindowManager;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ou, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1439Ou implements InterfaceC2126gl {
    public static byte[] A01;
    public final WindowManager A00;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 22);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{-21, -35, -30, -40, -29, -21};
    }

    public C1439Ou(WindowManager windowManager) {
        this.A00 = windowManager;
    }

    public static C1439Ou A00(Context context) {
        WindowManager windowManager = (WindowManager) context.getSystemService(A01(0, 6, 94));
        if (windowManager != null) {
            return new C1439Ou(windowManager);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2126gl
    public final void AGf(InterfaceC2125gk interfaceC2125gk) {
        interfaceC2125gk.ACs(this.A00.getDefaultDisplay());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2126gl
    public final void AJb() {
    }
}
