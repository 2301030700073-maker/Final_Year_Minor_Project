package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ot, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1438Ot implements InterfaceC2126gl, DisplayManager.DisplayListener {
    public static byte[] A02;
    public static String[] A03 = {"oklm2xDKThiHJxM7u7wJcS0aWKi7wHNG", "OMqczftRveSo8kDMbZ9CVJeODI1lBKoY", "hSopR0pwnfuZ", "ytB3yXO7eYGwCr", "5Nu394ILVyp8", "JsK3O3lWwEDWoyjTtKlw", "iluqzB6DVhpHhr", "2Kpj6p"};
    public InterfaceC2125gk A00;
    public final DisplayManager A01;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            byte b = copyOfRange[i4];
            if (A03[0].charAt(22) != '0') {
                throw new RuntimeException();
            }
            A03[1] = "us7UOyDv98ElpwA7KIZxKDLq69Mb6PPz";
            copyOfRange[i4] = (byte) ((b - i3) - 38);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-104, -99, -89, -92, -96, -107, -83};
    }

    static {
        A03();
    }

    public C1438Ot(DisplayManager displayManager) {
        this.A01 = displayManager;
    }

    private Display A00() {
        return this.A01.getDisplay(0);
    }

    public static C1438Ot A01(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService(A02(0, 7, 14));
        if (displayManager != null) {
            return new C1438Ot(displayManager);
        }
        return null;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2126gl
    public final void AGf(InterfaceC2125gk interfaceC2125gk) {
        this.A00 = interfaceC2125gk;
        this.A01.registerDisplayListener(this, AbstractC2094gE.A0Y());
        interfaceC2125gk.ACs(A00());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2126gl
    public final void AJb() {
        this.A01.unregisterDisplayListener(this);
        this.A00 = null;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (this.A00 != null && i == 0) {
            this.A00.ACs(A00());
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
