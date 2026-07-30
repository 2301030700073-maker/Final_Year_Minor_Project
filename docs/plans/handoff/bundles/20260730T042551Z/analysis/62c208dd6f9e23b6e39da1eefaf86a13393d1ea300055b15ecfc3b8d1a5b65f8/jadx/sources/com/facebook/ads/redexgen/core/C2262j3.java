package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.j3, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C2262j3 implements A7 {
    public static A7 A03;
    public static byte[] A04;
    public static final String A05;
    public static volatile boolean A06;
    public final C2321k0 A00;
    public final C9O A01;
    public final A6 A02;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 64);
        }
        return new String(copyOfRange);
    }

    public static void A03() {
        A04 = new byte[]{50, 119, 100, 119, 124, 102, 60, 54, 3, 3, 18, 26, 7, 3, 30, 25, 16, 87, 3, 24, 87, 27, 24, 16, 87, 22, 25, 87, 30, 25, 1, 22, 27, 30, 19, 87, 66, 100, 119, 117, 115, 87, 85, 94, 85, 66, 89, 83, 29, 16, 25, 12};
    }

    static {
        A03();
        A05 = C2262j3.class.getSimpleName();
        A06 = false;
    }

    public C2262j3(C2321k0 c2321k0) {
        A5 dispatchCallback;
        this.A00 = c2321k0;
        if (AbstractC10749o.A0T(c2321k0)) {
            this.A01 = C9M.A00(c2321k0);
            dispatchCallback = AC.A00(c2321k0, this.A01);
        } else {
            M2 A01 = C9M.A01(c2321k0);
            dispatchCallback = AC.A01(c2321k0, A01);
            this.A01 = A01;
        }
        this.A02 = new C2265j6(c2321k0, dispatchCallback);
        D8.A08.execute(new C2264j5(this));
        A04(c2321k0);
    }

    public static synchronized A7 A01(C2321k0 c2321k0) {
        A7 a7;
        synchronized (C2262j3.class) {
            if (A03 == null) {
                A03 = new C2262j3(c2321k0);
            }
            a7 = A03;
        }
        return a7;
    }

    public static synchronized void A04(C2321k0 c2321k0) {
        synchronized (C2262j3.class) {
            if (A06) {
                return;
            }
            c2321k0.A04().AC7();
            A06 = true;
        }
    }

    private void A05(A4 a4) {
        if (!a4.A0A()) {
            Log.e(A05, A02(7, 29, 55) + a4.A06() + A02(0, 7, 82));
        } else {
            A06(a4);
            this.A01.AKB(a4, new C2263j4(this, a4));
        }
    }

    private void A06(A4 a4) {
        switch (a4.A06()) {
            case A0Q:
            case A0K:
            case A07:
            case A0J:
            case A0R:
            case A0T:
            case A0U:
                C10368b c10368b = new C10368b(new Exception(A02(36, 5, 86)));
                c10368b.A05(1);
                try {
                    c10368b.A07(new JSONObject().put(A02(48, 4, 41), a4.A06().toString()));
                } catch (JSONException unused) {
                }
                this.A00.A08().AAv(A02(41, 7, 112), AbstractC10358a.A1H, c10368b);
                break;
        }
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAn(String str, Map<String, String> data) {
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A04).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAp(String str, Map<String, String> data) {
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A06).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAq(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A07).A06(AH.A0A(str, AE.A0I)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAr(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A08).A06(AH.A0A(str, AE.A06)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAt(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A0B).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AAx(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A0C).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AB0(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0D).A06(AH.A0A(str, AE.A0T)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AB1(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0E).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AB2(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0F).A06(AH.A0A(str, AE.A0V)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AB3(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0K).A06(AH.A0A(str, AE.A0W)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABC(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0H).A06(AH.A0A(str, AE.A0X)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABE(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A0J).A06(AH.A0A(str, AE.A0a)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABF(String str, Map<String, String> data, String str2, A9 a9) {
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(a9).A02(AA.A00(str2)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABG(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A4 adEvent = new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A0L).A07(this.A00);
        A05(adEvent);
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABK(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0N).A06(AH.A0A(str, AE.A0i)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABL(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0O).A06(AH.A0A(str, AE.A0j)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABN(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A01(A9.A04).A02(AA.A0P).A06(AH.A0A(str, AE.A0k)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABO(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A04).A02(AA.A0G).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABS(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0Q).A06(AH.A0A(str, AE.A0o)).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABT(String str, Map<String, String> data) {
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0V).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void ABV(String str, Map<String, String> data) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        A05(new A3().A04(str).A00(this.A00.A09().A01()).A03(this.A00.A09().A02()).A05(data).A01(A9.A05).A02(AA.A0W).A07(this.A00));
    }

    @Override // com.facebook.ads.redexgen.core.A7
    public final void AG7(String str) {
        new AsyncTaskC1313Jl(this.A00).execute(str);
    }
}
