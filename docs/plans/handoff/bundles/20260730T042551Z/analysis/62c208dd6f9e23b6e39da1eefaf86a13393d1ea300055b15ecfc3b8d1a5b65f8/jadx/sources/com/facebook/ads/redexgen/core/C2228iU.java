package com.facebook.ads.redexgen.core;

import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import org.json.JSONException;

/* renamed from: com.facebook.ads.redexgen.X.iU, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2228iU implements JS {
    public static byte[] A03;
    public static String[] A04 = {"vUQacvUb1jgaOB1nXCILUaEr4ItZ5QEs", "N", "ozPzI", "iemFS7qx3ItQSdDQeBrvuJ9y9CMkfIqY", "EwROMxnfRd6F7268i4EpvPtVg3hQf", "a", "qVu8", "3RxrE6NsEsLt8TXu"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ B6 A01;
    public final /* synthetic */ B9 A02;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 120);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{85, 4, 87, 3, 80, 5, 7, 3, 62, 62, 57, 56, 50, 110, 62, 104, 44, 53, 41, 40, 35, 30, 5, 3, 22, 18, 15, 9, 8, 92, 70, 78, 120, 111, 107, 120, 111, 61, 120, 111, 111, 114, 111, 61, 114, 126, 126, 104, 111, 111, 120, 121, 124, 74, 93, 89, 74, 93, 15, 93, 74, 95, 67, 70, 74, 75, 15, 92, 90, 76, 76, 74, 92, 92, 73, 90, 67, 67, 86, 63, 62, 19, 63, 61, 32, 60, 53, 36, 53, 16, 17, 58, 13, 13, 16, 13};
    }

    static {
        A01();
    }

    public C2228iU(B9 b9, B6 b6, long j) {
        this.A02 = b9;
        this.A01 = b6;
        this.A00 = j;
    }

    private final void A02(C1306Je c1306Je) {
        C2322k1 c2322k1;
        long j;
        C2322k1 c2322k12;
        long j2;
        BA ba;
        C2322k1 c2322k13;
        C2322k1 c2322k14;
        long j3;
        B5.A06(this.A01);
        try {
            JQ response = c1306Je.A00();
            if (response != null) {
                String A6t = response.A6t();
                ba = this.A02.A06;
                c2322k13 = this.A02.A05;
                BC serverResponse = ba.A07(c2322k13, A6t, this.A00);
                if (serverResponse.A01() == BB.A03) {
                    C2224iQ c2224iQ = (C2224iQ) serverResponse;
                    String A042 = c2224iQ.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(c2224iQ.A03(), AdErrorType.ERROR_MESSAGE);
                    if (A042 != null) {
                        A6t = A042;
                    }
                    c2322k14 = this.A02.A05;
                    InterfaceC08621f A0F = c2322k14.A0F();
                    j3 = this.A02.A01;
                    A0F.A3M(C1140Cu.A01(j3), adErrorTypeFromCode.getErrorCode(), A6t, adErrorTypeFromCode.isPublicError());
                    this.A02.A0E(C1091Ag.A01(adErrorTypeFromCode, A6t));
                    return;
                }
            }
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String message = c1306Je.getMessage();
            c2322k12 = this.A02.A05;
            InterfaceC08621f A0F2 = c2322k12.A0F();
            j2 = this.A02.A01;
            long A01 = C1140Cu.A01(j2);
            int errorCode = adErrorType.getErrorCode();
            boolean isPublicError = adErrorType.isPublicError();
            if (A04[2].length() == 29) {
                throw new RuntimeException();
            }
            A04[4] = "NZ18w";
            A0F2.A3M(A01, errorCode, message, isPublicError);
            this.A02.A0E(C1091Ag.A01(adErrorType, message));
        } catch (JSONException e) {
            AdErrorType adErrorType2 = AdErrorType.NETWORK_ERROR;
            String errorMessage = c1306Je.getMessage();
            c2322k1 = this.A02.A05;
            InterfaceC08621f A0F3 = c2322k1.A0F();
            j = this.A02.A01;
            A0F3.A3M(C1140Cu.A01(j), adErrorType2.getErrorCode(), A00(16, 15, 30) + e.getMessage(), adErrorType2.isPublicError());
            this.A02.A0E(C1091Ag.A01(adErrorType2, errorMessage));
        }
    }

    @Override // com.facebook.ads.redexgen.core.JS
    public final void ACh(JQ jq) {
        C2322k1 c2322k1;
        C2322k1 c2322k12;
        AbstractC1100Au.A05(A00(79, 10, 40), A00(52, 27, 87), A00(8, 8, 114));
        if (jq != null) {
            String A6t = jq.A6t();
            c2322k1 = this.A02.A05;
            int A02 = C10729m.A02(c2322k1);
            String[] strArr = A04;
            String str = strArr[5];
            String response = strArr[1];
            if (str.length() != response.length()) {
                throw new RuntimeException();
            }
            A04[2] = "kblvpkFa8oUK1ItVGqcsW93nH";
            if (A02 > 0) {
                c2322k12 = this.A02.A05;
                C1108Bh.A00(c2322k12).A0C(A6t);
            }
            B5.A06(this.A01);
            this.A02.A0O(A6t, this.A00, this.A01);
        }
    }

    @Override // com.facebook.ads.redexgen.core.JS
    public final void AD5(Exception exc) {
        C2322k1 c2322k1;
        long j;
        AbstractC1100Au.A05(A00(89, 7, 7), A00(31, 21, FacebookMediationAdapter.ERROR_INVALID_SERVER_PARAMETERS), A00(0, 8, 30));
        if (C1306Je.class.equals(exc.getClass())) {
            A02((C1306Je) exc);
            return;
        }
        AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
        String errorMessage = exc.getMessage();
        c2322k1 = this.A02.A05;
        InterfaceC08621f A0F = c2322k1.A0F();
        j = this.A02.A01;
        A0F.A3M(C1140Cu.A01(j), adErrorType.getErrorCode(), errorMessage, adErrorType.isPublicError());
        this.A02.A0E(C1091Ag.A01(adErrorType, errorMessage));
    }
}
