package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.NativeAd;

/* renamed from: com.facebook.ads.redexgen.X.ka, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2357ka implements InterfaceC1230Gg {
    public static String[] A03 = {"nDiRY7f5TVWQOdU6I2mqi9PFa0bJ0VdN", "dUUtDl8unUO3GnPy3lwgtNvfo3F9XuVE", "auWwlwtRUPVHuGctx8NQwZ9fHxwXm1Rl", "TBzFY5XPxTfovmrmdBuO6vWMd6W8Cva2", "LKANgRtOSZEoLNHfrBEFH87LShAEPYie", "UCBlHB7WfBTqWuynAgT0g", "VPae1XPQy5IfYkfssFJoJg5Ye50RabOh", "Wz70ndlImsTWQI2daID25L24SXF8SnWJ"};
    public final /* synthetic */ NativeAd A00;
    public final /* synthetic */ C2352kV A01;
    public final /* synthetic */ C2238ie A02;

    public C2357ka(C2352kV c2352kV, C2238ie c2238ie, NativeAd nativeAd) {
        this.A01 = c2352kV;
        this.A02 = c2238ie;
        this.A00 = nativeAd;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AAc() {
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AD1(LI li) {
        new Handler(Looper.getMainLooper()).postDelayed(new C2358kb(this, li), 1L);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void ADH() {
        LI li;
        LI li2;
        li = this.A01.A0A;
        if (li != null) {
            li2 = this.A01.A0A;
            String[] strArr = A03;
            if (strArr[4].charAt(31) == strArr[0].charAt(31)) {
                throw new RuntimeException();
            }
            A03[1] = "TOeEN4NbTJF6yCcoA7wHZFJASn52oXHD";
            li2.A08();
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1230Gg
    public final void AFK(View view, MotionEvent motionEvent) {
        C2322k1 c2322k1;
        boolean A0J;
        C1141Cv A1A = this.A02.A1A();
        c2322k1 = this.A01.A07;
        A1A.A06(c2322k1, motionEvent, view, view);
        if (motionEvent.getAction() == 1) {
            A0J = this.A01.A0J(this.A00);
            if (!A0J && this.A02.A13() != null) {
                this.A02.A13().onClick(view);
            }
        }
    }
}
