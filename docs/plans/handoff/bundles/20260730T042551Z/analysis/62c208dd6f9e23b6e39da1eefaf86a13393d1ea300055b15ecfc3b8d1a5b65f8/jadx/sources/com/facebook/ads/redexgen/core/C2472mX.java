package com.facebook.ads.redexgen.core;

import com.facebook.ads.AdError;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.EnumSet;

/* renamed from: com.facebook.ads.redexgen.X.mX, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2472mX implements InterfaceC09032u {
    public static String[] A07 = {"LaTcnwnUfzgLTffZJQ1IPucRbglpEgMo", "12hOZJfgSqwHBnuTqXHxpHxEQ0NbZO7A", "Dr9pHE3G5odEHWCsCqxBSNpdFpwa86Mh", "MDWd5GjifHIGoqp8wS2KmhLcZ8", "Ozio236b3SA3ZtX", "C3UkekSSOdUqAnfYGByVev7l4a4YpLBv", "Q070rE4WAmrDPncHn0R1JG2tySYrh7TO", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED};
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC2478md A01;
    public final /* synthetic */ C2476mb A02;
    public final /* synthetic */ InterfaceC09032u A03;
    public final /* synthetic */ C09042v A04;
    public final /* synthetic */ C2322k1 A05;
    public final /* synthetic */ EnumSet A06;

    public C2472mX(C09042v c09042v, C2322k1 c2322k1, AbstractC2478md abstractC2478md, C2476mb c2476mb, int i, InterfaceC09032u interfaceC09032u, EnumSet enumSet) {
        this.A04 = c09042v;
        this.A05 = c2322k1;
        this.A01 = abstractC2478md;
        this.A02 = c2476mb;
        this.A00 = i;
        this.A03 = interfaceC09032u;
        this.A06 = enumSet;
    }

    private final void A00() {
        if (this.A00 + 1 < this.A02.A1W()) {
            this.A04.A0A(this.A05, this.A06, this.A02, this.A02.A1Z(this.A00 + 1), this.A00 + 1, this.A03);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09032u
    public final void AC8(AdError adError) {
        if (this.A00 == 0) {
            this.A03.AC8(adError);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09032u
    public final void AC9() {
        this.A05.A01().AIK(this.A01.A1g(), this.A02.A1a());
        if (this.A00 == 0) {
            InterfaceC09032u interfaceC09032u = this.A03;
            String[] strArr = A07;
            if (strArr[5].charAt(13) != strArr[6].charAt(13)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A07;
            strArr2[3] = "Mfrds6r17BKRZSfVfcuH4MZ0YR";
            strArr2[4] = "cdrsota1fCopt7F";
            interfaceC09032u.AC9();
        }
        A00();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09032u
    public final void AGg() {
        if (this.A00 == 0) {
            this.A03.AGg();
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC09032u
    public final void AJc() {
        if (this.A00 == 0) {
            this.A03.AJc();
        }
    }
}
