package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: assets/audience_network.dex */
public final class N4 implements InterfaceC2510n9 {
    public static byte[] A09;
    public static String[] A0A = {"0TFgGHCmbDEnT", "P3BoNX3HbYs3p91Xznd9cH02Ego1LEzw", "OWrFl7C0gkEmqIZvATANnxtRvMpHSetZ", "XjLJU23F7IQ7TgYJbWjoa78", "8eUGin29aZrVydG4hLQZ04ng176drDiv", "tE42BGb8ExLW22Y3fw0IicKZ4ID1w2IZ", "N0c3cK9W7W98ikBdYu66t8J", "EarR2SOYmotvRVJvY11PbnGgxllwGrNq"};
    public C2B A01;
    public C2C A02;
    public C2486ml A03;
    public C2483mi A04;
    public M5 A05;
    public InterfaceC1158Dm A06;
    public C1159Dn A07;
    public final String A08 = UUID.randomUUID().toString();
    public long A00 = -1;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A09, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 16);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A09 = new byte[]{-81, -64, -11, -19, -20, -15, -3, -11, -25, -6, -19, -21, -4, -23, -10, -17, -12, -19};
    }

    static {
        A04();
    }

    private void A05(M5 m5, C2483mi c2483mi, C10297t c10297t, C2B c2b, C1159Dn c1159Dn) {
        String A7E = c2483mi.A7E();
        if (!TextUtils.isEmpty(A7E)) {
            c10297t.A0d(new AF(A7E, m5.A0A()));
        }
        AU A0F = c2483mi.A0F();
        String[] strArr = A0A;
        String clientToken = strArr[3];
        if (clientToken.length() != strArr[6].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A0A;
        strArr2[3] = "l0iKT0z7S0YTo68xxrsf1qJ";
        strArr2[6] = "FTb7Q8n5ne47CtPUjUxYv1n";
        if (A0F != null) {
            C10277r c10277r = new C10277r(c2483mi.A0F().getUrl(), c2483mi.A0F().getHeight(), c2483mi.A0F().getWidth(), c2483mi.A0Y(), A03(2, 16, 120));
            c10277r.A00 = new C7z(false, -1, -1);
            c10297t.A0V();
            c10297t.A0b(c10277r);
        }
        if (c2483mi.A0E() != null) {
            c10297t.A0b(new C10277r(c2483mi.A0E().getUrl(), c2483mi.A0E().getHeight(), c2483mi.A0E().getWidth(), c2483mi.A0Y(), A03(2, 16, 120)));
        }
        String A0b = c2483mi.A0b();
        if (A0b != null && !TextUtils.isEmpty(A0b)) {
            c10297t.A0a(new C10257p(A0b, c2483mi.A0Y(), A03(2, 16, 120), c2483mi.A0A()));
        }
        C2498mx c2498mx = new C2498mx(this, c1159Dn, c2b, m5);
        String A0Y = c2483mi.A0Y();
        String clientToken2 = A03(2, 16, 120);
        c10297t.A0W(c2498mx, new C10227m(A0Y, clientToken2));
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final String A7E() {
        if (this.A04 == null) {
            return null;
        }
        return this.A04.A7E();
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final AdPlacementType A8a() {
        return AdPlacementType.MEDIUM_RECTANGLE;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC2510n9
    public final void AAi(M5 m5, A7 a7, EnumC1093Aj enumC1093Aj, C2B c2b, JSONObject jSONObject, C10558u c10558u) {
        m5.A0F().A4D();
        this.A05 = m5;
        this.A01 = c2b;
        C10297t c10297t = new C10297t(m5);
        this.A00 = System.currentTimeMillis();
        C2483mi A00 = C2K.A00(m5, jSONObject, CV.A02(jSONObject, A03(0, 2, 60)));
        this.A04 = A00;
        if (!AbstractC08821z.A06(m5, A00, a7)) {
            InterfaceC1158Dm adViewListener = new C2500mz(this, m5);
            this.A06 = adViewListener;
            C1159Dn c1159Dn = new C1159Dn(m5, a7, c10297t, new WeakReference(adViewListener), c10558u.A04(), c10558u.A07(), c10558u.A08(), c10558u.A09(), A00, this.A08);
            this.A07 = c1159Dn;
            this.A03 = new C2486ml(m5, new C2499my(this, m5, c2b), c1159Dn.getViewabilityChecker(), a7, A00);
            A05(m5, A00, c10297t, c2b, c1159Dn);
            this.A02 = new C2C(m5, this.A08, this, c2b);
            this.A02.A02();
            return;
        }
        m5.A0F().A4s();
        c2b.ADc(this, C1091Ag.A00(AdErrorType.NO_FILL));
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final boolean AJQ() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.core.AnonymousClass23
    public final void onDestroy() {
        if (this.A05 != null) {
            InterfaceC2528nR A0F = this.A05.A0F();
            String[] strArr = A0A;
            if (strArr[1].charAt(24) == strArr[4].charAt(24)) {
                throw new RuntimeException();
            }
            A0A[7] = "tMGyCfr9ucO4oWdztKDfdPlDfRrhkMp8";
            A0F.A4B(this.A07 != null);
        }
        if (this.A07 != null) {
            this.A07.A0I();
            this.A07 = null;
            this.A06 = null;
        }
        C2C c2c = this.A02;
        if (A0A[0].length() == 16) {
            throw new RuntimeException();
        }
        A0A[7] = "5ZoCIskAsYlLTmabnaeKVzywNB4LbbVC";
        if (c2c != null) {
            this.A02.A03();
        }
    }
}
