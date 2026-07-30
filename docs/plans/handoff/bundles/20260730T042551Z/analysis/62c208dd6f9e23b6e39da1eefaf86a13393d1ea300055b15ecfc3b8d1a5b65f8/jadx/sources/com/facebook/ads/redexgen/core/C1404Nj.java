package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;
import java.util.LinkedHashMap;

/* renamed from: com.facebook.ads.redexgen.X.Nj, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1404Nj implements SharedViewpointManager {
    public static boolean A08;
    public static byte[] A09;
    public static String[] A0A = {"BoSaZzMMCoBoab6kFzr2tWGVTni5", "Vk9jbaVPkS6rtGXBWv67wEIKcLe3GnXQ", "GJsVZyBqNYZRU43kGmqANe", "Uv9MZIJr", "GbPwVrzkFOEMxWNTB1P9oG5CUgrItJXy", "gWutc4DO", "1FOrRj10jdO8", "rnakDij4LZYpzXru71B"};
    public InterfaceC2576oW A00;
    public C2564oH A01;
    public final InterfaceC2589ol A03;
    public final InterfaceC2577oX A04;
    public final ViewpointQeConfig A05;
    public final ViewpointRegistrationHook A06;
    public final LinkedHashMap<Integer, Runnable> A07 = new LinkedHashMap<>();
    public final InterfaceC2576oW A02 = new C1405Nk(this);

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 106);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-28, 85, 84, 56, 75, 77, 79, 89, 90, 75, 88, -10, -11, -36, -11, -7, -20, -18, -16, -6, -5, -20, -7};
    }

    static {
        A04();
        A08 = false;
    }

    public C1404Nj(ViewpointQeConfig viewpointQeConfig, InterfaceC2589ol interfaceC2589ol, InterfaceC2577oX interfaceC2577oX, ViewpointRegistrationHook viewpointRegistrationHook) {
        this.A05 = viewpointQeConfig;
        this.A03 = interfaceC2589ol;
        this.A04 = interfaceC2577oX;
        this.A06 = viewpointRegistrationHook;
    }

    public static C1404Nj A01() {
        return new C1404Nj(new ViewpointQeConfig(), new C1407Nm(), null, null);
    }

    private void A05(AbstractC2580oa abstractC2580oa, InterfaceC2585of interfaceC2585of, InterfaceC1403Nh interfaceC1403Nh) {
        this.A01 = C2564oH.A00(this.A05, abstractC2580oa, interfaceC2585of, interfaceC1403Nh);
        if (0 != 0) {
            this.A01.A01(null);
        }
        this.A01.A02(this.A02);
        String[] strArr = A0A;
        if (strArr[4].charAt(11) == strArr[1].charAt(11)) {
            throw new RuntimeException();
        }
        A0A[7] = "2MhPhimmgHBptxasGUILH2";
    }

    private void A06(DspViewableNode dspViewableNode, C2586oi c2586oi) {
        C2564oH c2564oH = this.A01;
        if (c2564oH != null && dspViewableNode != null) {
            if (this.A05.A00 && c2586oi != null) {
                c2564oH.A04(dspViewableNode, c2586oi);
            } else {
                c2564oH.A03(dspViewableNode);
            }
            if (0 != 0) {
                throw new NullPointerException(A02(11, 12, 29));
            }
        }
    }

    private void A07(DspViewableNode dspViewableNode, C2586oi c2586oi, C2582oc c2582oc, ViewpointRegistrationHookConfigIdentifier viewpointRegistrationHookConfigIdentifier) {
        C2564oH c2564oH = this.A01;
        if (c2564oH != null && dspViewableNode != null && c2582oc != null) {
            if (this.A05.A00 && c2586oi != null) {
                c2582oc.A02 = dspViewableNode.hashCode() + A02(0, 1, 27) + c2582oc.A08 + c2586oi;
                c2564oH.A05(dspViewableNode, c2586oi, c2582oc);
            } else {
                c2564oH.A06(dspViewableNode, c2582oc);
            }
            if (0 != 0 && viewpointRegistrationHookConfigIdentifier != null) {
                throw new NullPointerException(A02(1, 10, 124));
            }
        }
    }

    public final void A08(View view) {
        A06(view != null ? ViewpointViewNode.A00(view) : null, null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.oc != com.instagram.common.viewpoint.core.ViewpointData<?, ?> */
    public final void A09(View view, C2582oc<?, ?> c2582oc) {
        A07(view != null ? ViewpointViewNode.A00(view) : null, null, c2582oc, null);
    }

    public final void A0A(AbstractC2580oa abstractC2580oa, View view) {
        if (abstractC2580oa != null && view != null) {
            A05(abstractC2580oa, new C1406Nl(view, this.A03), new C2R(null));
        }
    }
}
