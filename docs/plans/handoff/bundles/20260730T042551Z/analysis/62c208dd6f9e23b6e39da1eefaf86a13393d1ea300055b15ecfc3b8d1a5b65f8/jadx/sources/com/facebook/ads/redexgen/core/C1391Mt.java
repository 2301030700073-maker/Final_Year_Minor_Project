package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.facebook.ads.redexgen.X.Mt, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1391Mt extends AbstractC2458mI {
    public static byte[] A03;
    public long A00;
    public View A01;
    public M5 A02;

    static {
        A05();
    }

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 81);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{20, 23, 38, -15, -16, -3, -3, -12, 1, -18, 1, -12, -11, 1, -12, 2, -9, -18, 3, -8, -4, -12, -5, 0, -7, 1, 6, -9, 8, -7, 10, -7, 5, 11, 38, 55, 27, 40, 40, 37, 40, -42, 45, 30, 31, 34, 27, -42, 38, 23, 40, 41, 31, 36, 29, -42, 25, 30, 23, 31, 36, 27, 26, -42, 23, 26, 41, -42, -8, 23, 36, 36, 27, 40};
    }

    public C1391Mt(M5 m5, AnonymousClass37 anonymousClass37) {
        super(m5, anonymousClass37);
        this.A00 = 10000L;
        this.A02 = m5;
    }

    private C2461mL A01(Runnable runnable) {
        return new C2461mL(this, runnable);
    }

    private List<JSONObject> A04(AnonymousClass38 anonymousClass38) {
        ArrayList arrayList = new ArrayList();
        JSONObject A032 = anonymousClass38.A03();
        if (A032.has(A03(22, 12, 71))) {
            try {
                this.A00 = A032.getJSONObject(r1).optInt(A03(3, 19, 62), 10000);
                JSONArray adsArray = A032.getJSONArray(A03(0, 3, 98));
                if (adsArray.length() > 0) {
                    for (int i = 0; i < adsArray.length(); i++) {
                        arrayList.add((JSONObject) adsArray.get(i));
                    }
                }
            } catch (JSONException unused) {
                String A033 = A03(36, 38, FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS);
                this.A02.A0F().A5W(C1091Ag.A01(AdErrorType.UNKNOWN_ERROR, A033).A03().getErrorCode(), A033);
                return arrayList;
            }
        } else {
            arrayList.add(A032);
        }
        return arrayList;
    }

    private void A06(InterfaceC2510n9 interfaceC2510n9, JSONObject jSONObject, C10558u c10558u) {
        this.A0C = false;
        C2460mK c2460mK = new C2460mK(this, interfaceC2510n9, CV.A02(jSONObject, A03(34, 2, 114)));
        A0H().postDelayed(c2460mK, c10558u.A05());
        interfaceC2510n9.AAi(this.A02, this.A09, this.A08.A08, A01(c2460mK), jSONObject, c10558u);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0P() {
        if (this.A01 != null) {
            this.A02.A0F().A4U();
            this.A07.A0E(this.A01);
        } else {
            this.A02.A0F().A4V();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0R(AnonymousClass23 anonymousClass23, C10548t c10548t, C10528r c10528r, final AnonymousClass38 anonymousClass38) {
        this.A02.A0F().A4O();
        final InterfaceC2510n9 interfaceC2510n9 = (InterfaceC2510n9) anonymousClass23;
        if (interfaceC2510n9.AJQ()) {
            final List<JSONObject> A04 = A04(anonymousClass38);
            A06(interfaceC2510n9, A04.get(0), anonymousClass38.A01());
            if (A04.size() > 1) {
                A0H().postDelayed(new Runnable() { // from class: com.facebook.ads.redexgen.X.39
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1391Mt.this.A0a(interfaceC2510n9, A04, anonymousClass38);
                    }
                }, this.A00);
                return;
            }
            return;
        }
        A06(interfaceC2510n9, anonymousClass38.A03(), anonymousClass38.A01());
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0U(String str) {
        this.A02.A0F().A4T(str != null);
        super.A0U(str);
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC2458mI
    public final void A0Y(boolean z) {
        super.A0Y(z);
        this.A01 = null;
    }

    public final /* synthetic */ void A0a(InterfaceC2510n9 interfaceC2510n9, List list, AnonymousClass38 anonymousClass38) {
        A06(interfaceC2510n9, (JSONObject) list.get(1), anonymousClass38.A01());
    }
}
