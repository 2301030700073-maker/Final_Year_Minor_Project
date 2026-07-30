package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.nG, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public abstract class AbstractC2517nG extends AbstractC08781v {
    public static String A04;
    public static String A05;
    public static String A06;
    public static byte[] A07;
    public static String[] A08 = {"yKsrGZvRhlHO", "9EputwQvm", "xy4ysuU", "7AjoeEFyRFUmAcGguWz5skIE39kXLiT8", "yw7hkrjnug4F5v8JlqxYlpspwNYrqeOP", "YdvcKbM", "Mv5W7ZjuxpjDlIvwBIaHg3eS9AlP", "wZHnfIG7rJSoOb"};
    public int A00;
    public final boolean A01;
    public final AnonymousClass22 A02;
    public final boolean A03;

    public static String A0A(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 48);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        byte[] bArr = {60, 19, 22, 28, 20, 95, 19, 16, 24, 24, 26, 27, 24, 23, 29, 11, 22, 16, 29, 87, 16, 23, 13, 28, 23, 13, 87, 24, 26, 13, 16, 22, 23, 87, 47, 48, 60, 46, 17, 18, 16, 24, 44, 7, 26, 30, 22, 44, 35, 38, 44, 36, 16, 60, 32, 58, 61, 44, 42, 33, 40, 44, 59, 40, 18, 57, 36, 32, 40, 53, 47, 46, 57, 53, 55, 63, 71, 65, 87, 87, 81, 71, 71, 20, 15, 8, 23, 4, 19, 18, 0, 13, 62, 13, 8, 15, 10, 7, 1, 23, 0, 45, 6, 0, 19, 17, 25, 23, 0, 45, 27, 1, 45, 28, 29, 6, 45, 28, 7, 30, 30, 109, 107, 125, 106, 123, 116, 113, 123, 115, 106, 124, 105, 126, 117, 66, 124, 115, 121, 66, Byte.MAX_VALUE, 111, 114, 106, 110, 120};
        if (A08[1].length() != 9) {
            throw new RuntimeException();
        }
        A08[7] = "E0qxoPtldo8saq";
        A07 = bArr;
    }

    public abstract EnumC08771u A0D();

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final void A0E(Map<String, String> map, EnumC08771u enumC08771u) {
        if (!TextUtils.isEmpty(super.A02)) {
            if (this instanceof NA) {
                super.A01.ABS(super.A02, map);
            } else {
                super.A01.AB3(super.A02, map);
            }
            boolean A02 = EnumC08771u.A02(enumC08771u);
            boolean z = this.A02 != null;
            if (C10729m.A2L(super.A00)) {
                HashMap hashMap = new HashMap();
                hashMap.put(A04, Boolean.toString(!A02));
                hashMap.put(A05, Boolean.toString(z));
                hashMap.put(A06, Boolean.toString(this.A01));
                super.A01.ABC(super.A02, hashMap);
            }
            if (this.A02 != null) {
                this.A02.A07(enumC08771u);
                if (A02) {
                    this.A02.A06();
                }
                String str = map == null ? null : map.get(A0A(47, 12, ModuleDescriptor.MODULE_VERSION));
                if (this.A02.A05() < 2000 && str != null && !str.equals(A0A(121, 9, 40))) {
                    this.A00++;
                }
            } else {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(A0A(59, 10, 125), Long.toString(-1L));
                hashMap2.put(A0A(38, 9, 67), Long.toString(-1L));
                hashMap2.put(A0A(69, 7, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE), EnumC08771u.A05.name());
                super.A01.ABT(super.A02, hashMap2);
            }
        }
        CC.A04(super.A00, A0A(0, 12, 79));
    }

    static {
        A0B();
        A04 = A0A(76, 7, 4);
        A05 = A0A(97, 24, 66);
        A06 = A0A(130, 16, 45);
    }

    public AbstractC2517nG(C2322k1 c2322k1, A7 a7, String str, AnonymousClass22 anonymousClass22, boolean z) {
        this(c2322k1, a7, str, anonymousClass22, z, false);
    }

    public AbstractC2517nG(C2322k1 c2322k1, A7 a7, String str, AnonymousClass22 anonymousClass22, boolean z, boolean z2) {
        super(c2322k1, a7, str);
        this.A00 = 0;
        this.A02 = anonymousClass22;
        this.A03 = z;
        this.A01 = z2;
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC08781v
    public final EnumC08771u A0C(String str) {
        if (this.A02 != null) {
            this.A02.A08(super.A02);
        }
        if (FQ.A03(super.A00)) {
            return EnumC08771u.A06;
        }
        if (this.A00 >= C10729m.A0H(super.A00) && str != null && !str.equals(A0A(121, 9, 40))) {
            return EnumC08771u.A06;
        }
        EnumC08771u A0D = A0D();
        String[] strArr = A08;
        if (strArr[5].length() != strArr[2].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[5] = "J3wlmKx";
        strArr2[2] = "XHU2KPo";
        return A0D;
    }

    public final boolean A0F(Uri uri) {
        try {
            String queryParameter = uri.getQueryParameter(A0A(83, 14, 81));
            boolean redirectedToApp = TextUtils.isEmpty(queryParameter);
            if (redirectedToApp) {
                return false;
            }
            Intent intent = new Intent(A0A(12, 26, 73), C5.A00(queryParameter));
            intent.addFlags(268435456);
            if (Build.VERSION.SDK_INT >= 30) {
                intent.addFlags(1024);
            }
            return C1114Bq.A0D(super.A00, intent);
        } catch (C1112Bo unused) {
            return false;
        }
    }
}
