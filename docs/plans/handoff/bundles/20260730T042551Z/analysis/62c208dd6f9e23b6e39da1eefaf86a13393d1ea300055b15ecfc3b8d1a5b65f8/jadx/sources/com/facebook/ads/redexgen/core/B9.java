package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import android.util.Pair;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: assets/audience_network.dex */
public final class B9 {
    public static byte[] A08;
    public static String[] A09 = {"gkSyaXwR", "2VU3Nz3voiV1lmdRee4U2QJOpqB0EmXx", "l2PJ1mhNLKomP6h8XAPCJTvwOfm7DNfm", "U14uMoZpedA5MoqMp8wF", "ZGFJtzG5houIZuhA5wVIi53yZAjLLlX2", "TKuU0S0TRmpOZ7a0gUh222TH0KiJMCsX", "Ntgwe7QRVjptK5Vt0gMbvLxTukJluaCr", "4nIPbhAhAn1Dg8Q4wgXTfE5Yoh5xfpBP"};
    public static final D6 A0A;
    public static final Executor A0B;
    public static final AtomicReference<BD> A0C;
    public long A00;
    public long A01;
    public B8 A02;
    public Map<String, String> A03;
    public final C09153g A04;
    public final C2322k1 A05;
    public final BA A06;
    public final String A07;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 57);
        }
        return new String(copyOfRange);
    }

    public static void A0B() {
        A08 = new byte[]{108, 106, 110, 115, -101, -99, 112, 114, -32, -15, -17, -21, -19, -25, -16, -19, -23, -14, -8, 3, -10, -23, -11, -7, -23, -9, -8, 3, -19, -24, -126, -84, 89, -117, -121, 115, 89, -62, -61, -108, -70, -67, -64, -64, -108, -26, -39, -41, -39, -35, -22, -39, -40, -39, -6, -85, -47, -12, -9, -9, -85, -16, -3, -3, -6, -3, -85, -18, -6, -17, -16, -85, -26, -80, -2, -24, -85, -80, -2, -33, -35, -26, -35, -22, -31, -37, -57, -66, -51, -48, -56, -53, -60, 10, 11, -30, 5, 8, 8, -28, 11, 11, 7, -35, -33, -36, -29, -42, -47, -46};
    }

    static {
        A0B();
        A0A = new D6();
        A0B = Executors.newCachedThreadPool(A0A);
        A0C = new AtomicReference<>();
    }

    public B9(C2322k1 c2322k1) {
        this(c2322k1, AbstractC09163h.A00(c2322k1.A02()));
    }

    public B9(C2322k1 c2322k1, C09153g c09153g) {
        this.A01 = -1L;
        this.A00 = -1L;
        this.A05 = c2322k1;
        this.A06 = BA.A00();
        this.A07 = BE.A01(c2322k1);
        this.A04 = c09153g;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C2228iU A03(long j, B6 b6) {
        return new C2228iU(this, b6, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0A() {
        if (this.A05 == null || !C1311Jj.A0A(this.A05)) {
            return;
        }
        C10368b c10368b = new C10368b(A06(8, 5, 102));
        c10368b.A05(1);
        this.A05.A08().AAu(A06(86, 7, 32), AbstractC10358a.A1x, c10368b);
    }

    private void A0C(int i, String str) {
        String A06 = A06(37, 16, 59);
        String A062 = A06(0, 8, 1);
        String A063 = A06(93, 10, 99);
        AbstractC1100Au.A05(A063, A06, A062);
        AbstractC1100Au.A04(A063, String.format(Locale.US, A06(53, 26, 82), Integer.valueOf(i), str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0D(C1091Ag c1091Ag) {
        if (this.A02 != null) {
            this.A02.AD4(c1091Ag);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0E(C1091Ag c1091Ag) {
        ExecutorC1143Cx.A00(new C2226iS(this, c1091Ag));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0L(C2225iR c2225iR) {
        if (this.A02 != null) {
            this.A02.AFG(c2225iR);
        } else {
            if (c2225iR.A00() == null || c2225iR.A00().A06() == null) {
                return;
            }
            C1108Bh.A00(this.A05).A0D(c2225iR.A00().A06().toString(), c2225iR.A00().A0B());
        }
    }

    private void A0M(C2225iR c2225iR) {
        C8B syncModule;
        ExecutorC1143Cx.A00(new C2227iT(this, c2225iR));
        if (C10729m.A2U(this.A05) && (syncModule = this.A05.A06()) != null) {
            syncModule.A6T();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0N(String str, long j, B6 b6) {
        String clientChallenge;
        try {
        } catch (Exception e) {
            e = e;
        }
        try {
            BC A07 = this.A06.A07(this.A05, str, j);
            C10548t A00 = A07.A00();
            if (A00 != null) {
                C10729m.A0U(this.A05).A2w(A00.A0A());
                if (C10729m.A0w(this.A05) && A00.A08() != null) {
                    AnonymousClass93.A04(this.A05.A02(), A00.A08());
                }
                if (C10729m.A0x(this.A05) && A00.A0D() != null) {
                    AnonymousClass93.A05(this.A05.A02(), A00.A0D());
                }
                this.A05.A08().ABl();
                this.A04.A0N(A00.A07());
                B5.A05(A00.A05().A0B(), b6);
                DH.A01(this.A05, A0B, A00);
                C10368b c10368b = new C10368b(A06(30, 7, 0) + CQ.A02());
                c10368b.A06(1);
                c10368b.A0A(false);
                this.A05.A08().ABU(A06(79, 7, 63), AbstractC10358a.A1W, c10368b);
            }
            switch (A07.A01()) {
                case A02:
                    C2225iR c2225iR = (C2225iR) A07;
                    if (A00 != null) {
                        if (A00.A05().A0E()) {
                            B5.A07(str, b6);
                        }
                        if (this.A03 != null) {
                            clientChallenge = this.A03.get(A06(13, 17, FacebookMediationAdapter.ERROR_NULL_CONTEXT));
                        } else {
                            clientChallenge = null;
                        }
                        if (!TextUtils.isEmpty(A07.A02()) && !TextUtils.isEmpty(clientChallenge)) {
                            this.A05.A03().AHo(this.A05, clientChallenge, A07.A02());
                        }
                    }
                    this.A05.A0F().A3N(C1140Cu.A01(this.A01), C1140Cu.A02(this.A01, this.A00));
                    A0M(c2225iR);
                    return;
                case A03:
                    C2224iQ c2224iQ = (C2224iQ) A07;
                    String A04 = c2224iQ.A04();
                    AdErrorType adErrorTypeFromCode = AdErrorType.adErrorTypeFromCode(c2224iQ.A03(), AdErrorType.ERROR_MESSAGE);
                    A0C(c2224iQ.A03(), A04);
                    if (A04 == null) {
                        A04 = str;
                    }
                    this.A05.A0F().A3M(C1140Cu.A01(this.A01), adErrorTypeFromCode.getErrorCode(), A04, adErrorTypeFromCode.isPublicError());
                    A0E(C1091Ag.A01(adErrorTypeFromCode, A04));
                    return;
                default:
                    AdErrorType adErrorType = AdErrorType.UNKNOWN_RESPONSE;
                    this.A05.A0F().A3M(C1140Cu.A01(this.A01), adErrorType.getErrorCode(), str, adErrorType.isPublicError());
                    A0E(C1091Ag.A01(adErrorType, str));
                    return;
            }
        } catch (Exception e2) {
            e = e2;
            String message = e.getMessage();
            AdErrorType adErrorType2 = AdErrorType.PARSER_FAILURE;
            C2322k1 c2322k1 = this.A05;
            if (A09[0].length() == 29) {
                throw new RuntimeException();
            }
            A09[0] = "STn1t4NLUPoQ";
            c2322k1.A0F().A3M(C1140Cu.A01(this.A01), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            A0E(C1091Ag.A01(adErrorType2, message));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0O(String str, long j, B6 b6) {
        A0B.execute(new C2229iV(this, str, j, b6));
    }

    private boolean A0P(B6 b6) {
        String adPlacementType = b6.A06().toString();
        if (C1108Bh.A00(this.A05).A0F(adPlacementType)) {
            return false;
        }
        int A0A2 = C1108Bh.A00(this.A05).A0A(adPlacementType);
        int storedAdsCount = C10729m.A0I(this.A05);
        int A092 = C1108Bh.A00(this.A05).A09(adPlacementType);
        if (A0A2 >= storedAdsCount || A0A2 > A092) {
            C1108Bh A00 = C1108Bh.A00(this.A05);
            String type = b6.A06().toString();
            Pair<String, String> A0B2 = A00.A0B(type);
            if (A0B2 != null) {
                Object obj = A0B2.second;
                String[] strArr = A09;
                String str = strArr[1];
                String str2 = strArr[4];
                int storedAdsCount2 = str.charAt(27);
                if (storedAdsCount2 == str2.charAt(27)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A09;
                strArr2[5] = "wxWvHA1chxzz72CPhzVDSI5kTKVxH7gh";
                strArr2[2] = "qa9WwGn6xu1bvFfukLGFlV7cMdAOaohF";
                if (obj != null && A0B2.first != null) {
                    A0O(A0B2.second.toString(), 0L, b6);
                    return true;
                }
            }
        }
        return false;
    }

    public final void A0Q(B6 b6) {
        this.A01 = System.currentTimeMillis();
        C10458k.A0B(this.A05);
        A0C.get();
        if (0 != 0) {
            throw new NullPointerException(A06(FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT, 7, 52));
        }
        if (C10729m.A02(this.A05) > 0 && A0P(b6)) {
            return;
        }
        if (B5.A08(b6)) {
            D8.A06.execute(new C2231iX(this));
            String A02 = B5.A02(b6);
            if (A02 != null) {
                this.A05.A0F().AJl();
                A0O(A02, 0L, b6);
                return;
            } else {
                AdErrorType error = AdErrorType.LOAD_TOO_FREQUENTLY;
                this.A05.A0F().A3M(C1140Cu.A01(this.A01), error.getErrorCode(), error.getDefaultErrorMessage(), error.isPublicError());
                A0E(C1091Ag.A01(error, null));
                return;
            }
        }
        A0B.execute(new C2230iW(this, b6));
    }

    public final void A0R(B8 b8) {
        this.A02 = b8;
    }
}
