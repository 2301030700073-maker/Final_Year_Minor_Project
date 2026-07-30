package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.Ek, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class ViewOnClickListenerC1182Ek implements View.OnClickListener {
    public static byte[] A01;
    public final /* synthetic */ C1184Em A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 124);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-23, -22, -9, -3, -4, -62, -22, -12, -23, -10, -13, -32, -19, -34, -32, -30, -13, -24, -11, -24, -13, -8, 16, 29, 19, 33, 30, 24, 19, -35, 24, 29, 35, 20, 29, 35, -35, 16, 18, 35, 24, 30, 29, -35, 5, -8, -12, 6};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str;
        String str2;
        String str3;
        C2322k1 c2322k1;
        C2322k1 c2322k12;
        C2322k1 c2322k13;
        InterfaceC1183El interfaceC1183El;
        if (BQ.A02(this)) {
            return;
        }
        try {
            str = this.A00.A07;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            String A00 = A00(0, 11, 12);
            str2 = this.A00.A07;
            if (A00.equals(str2)) {
                return;
            }
            String A002 = A00(22, 26, 51);
            str3 = this.A00.A07;
            Intent intent = new Intent(A002, C5.A00(str3));
            intent.addFlags(268435456);
            c2322k1 = this.A00.A0A;
            c2322k1.A0F().A9o();
            try {
                c2322k13 = this.A00.A0A;
                C1114Bq.A0D(c2322k13, intent);
                interfaceC1183El = this.A00.A05;
                interfaceC1183El.AEF();
            } catch (C1112Bo e) {
                Throwable cause = e.getCause();
                Throwable th = e;
                if (cause != null) {
                    th = e.getCause();
                }
                c2322k12 = this.A00.A0A;
                c2322k12.A08().AAu(A00(11, 11, 3), AbstractC10358a.A00, new C10368b(th));
            }
        } catch (Throwable th2) {
            BQ.A00(th2, this);
        }
    }

    public ViewOnClickListenerC1182Ek(C1184Em c1184Em) {
        this.A00 = c1184Em;
    }
}
