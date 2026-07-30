package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* renamed from: com.facebook.ads.redexgen.X.hN, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2164hN implements InterfaceC1262Hm {
    public static byte[] A01;
    public static String[] A02 = {"BHXiYjXxfgjD7yDB", "kPfw5HKETqo8dV", "SlBKzsC69frNfTspgJs5v90302jxH173", "0t7u2eeKUCj5gcxeWZIOCTpidMAeGJtt", "hTXrvsDVbOi3Q9xrUBZOJj7T", "iLbLRTjnBQIJ87KFXaIFUijyWt7EPIGc", "0utayShxEdwMeaV3UZeoWviAuyaBWRmj", "gyVOCm6F1v6TZALkbG"};
    public final /* synthetic */ C2163hM A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 58);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{25, 23, 9, 22, 7, 16, 13, 7, 15};
    }

    static {
        A01();
    }

    public C2164hN(C2163hM c2163hM) {
        this.A00 = c2163hM;
    }

    public /* synthetic */ C2164hN(C2163hM c2163hM, C2171hU c2171hU) {
        this(c2163hM);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1262Hm
    public final void ACm() {
        this.A00.A0U(true, A00(0, 9, FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE));
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1262Hm
    public final void ADP() {
        boolean z;
        AbstractC2478md abstractC2478md;
        DR dr;
        EC ec;
        A7 a7;
        AbstractC2478md abstractC2478md2;
        C1264Ho c1264Ho;
        C1264Ho c1264Ho2;
        C2322k1 c2322k1;
        EC ec2;
        AbstractC2478md abstractC2478md3;
        AbstractC2478md abstractC2478md4;
        C2322k1 c2322k12;
        AbstractC2478md abstractC2478md5;
        AbstractC2478md abstractC2478md6;
        C2322k1 c2322k13;
        C08982p c08982p;
        C2322k1 c2322k14;
        C2322k1 c2322k15;
        z = this.A00.A0Z;
        if (!z) {
            abstractC2478md = this.A00.A0I;
            if (!TextUtils.isEmpty(abstractC2478md.A1g())) {
                a7 = this.A00.A0M;
                abstractC2478md2 = this.A00.A0I;
                String A1g = abstractC2478md2.A1g();
                FB fb = new FB();
                c1264Ho = this.A00.A07;
                FB A03 = fb.A03(c1264Ho.getViewabilityChecker());
                c1264Ho2 = this.A00.A07;
                a7.AB0(A1g, A03.A02(c1264Ho2.getTouchDataRecorder()).A05());
                c2322k1 = this.A00.A0L;
                C1108Bh A00 = C1108Bh.A00(c2322k1);
                ec2 = this.A00.A0R;
                String A8b = ec2.A8b();
                abstractC2478md3 = this.A00.A0I;
                A00.A0E(A8b, abstractC2478md3.A1g());
                abstractC2478md4 = this.A00.A0I;
                C08902h A1c = abstractC2478md4.A1c();
                c2322k12 = this.A00.A0L;
                C08902h.A07(A1c, c2322k12);
                abstractC2478md5 = this.A00.A0I;
                String A0g = abstractC2478md5.A0g();
                abstractC2478md6 = this.A00.A0I;
                AbstractC09093a.A02(A0g, AbstractC1124Ce.A00(abstractC2478md6.A0i()));
                c2322k13 = this.A00.A0L;
                c2322k13.A0F().A3B();
                c08982p = this.A00.A0J;
                if (c08982p.A0P()) {
                    c2322k14 = this.A00.A0L;
                    c2322k14.A0F().ADh();
                }
            }
            C2163hM c2163hM = this.A00;
            String[] strArr = A02;
            if (strArr[5].charAt(12) == strArr[2].charAt(12)) {
                throw new RuntimeException();
            }
            A02[4] = "GzK3XL6hk7idJD";
            dr = c2163hM.A0Q;
            ec = this.A00.A0R;
            dr.A4Z(ec.A86());
            return;
        }
        c2322k15 = this.A00.A0L;
        c2322k15.A0F().ADi();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1262Hm
    public final void ADv() {
        DR dr;
        EC ec;
        dr = this.A00.A0Q;
        ec = this.A00.A0R;
        dr.A4Z(ec.A7r());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1262Hm
    public final void AFo() {
        DR dr;
        dr = this.A00.A0Q;
        dr.ACY(15);
    }
}
