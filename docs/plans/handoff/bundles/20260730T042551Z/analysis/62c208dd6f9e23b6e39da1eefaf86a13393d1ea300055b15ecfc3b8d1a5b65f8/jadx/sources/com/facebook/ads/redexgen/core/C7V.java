package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.facebook.ads.redexgen.X.7V, reason: invalid class name */
/* loaded from: assets/audience_network.dex */
public abstract class C7V {
    public static byte[] A00;
    public static String[] A01 = {"T8", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "As3hIStO2xNa0GSSHrkEVjQu", "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC", "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN", "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb", "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC", "txdj"};
    public static final AtomicReference<C7T> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = copyOfRange.length;
            if (A01[7].length() != 4) {
                throw new RuntimeException();
            }
            A01[6] = "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa";
            if (i4 >= length) {
                return new String(copyOfRange);
            }
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 86);
            i4++;
        }
    }

    public static void A05() {
        A00 = new byte[]{19, 27, 22, 17, 33, 40, 23, 36, 36, 27, 22, 23, 17, 15, 24, 15, 28, 19, 13, 43, 38, 40, 35, 33, 49, 56, 39, 52, 52, 43, 38, 39};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 12));
    }

    public static C7T A00() {
        C7T advertisingIdInfo = A02.get();
        if (advertisingIdInfo == null) {
            return C7T.A00();
        }
        return advertisingIdInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x000a, code lost:
    
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.facebook.ads.redexgen.core.C7T A01(com.facebook.ads.redexgen.core.AnonymousClass85 r5, com.facebook.ads.redexgen.core.C7T r6) {
        /*
            if (r6 == 0) goto Lc
            java.lang.String r0 = r6.A03()     // Catch: java.lang.Throwable -> L11
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> L11
            if (r0 == 0) goto L29
        Lc:
            com.facebook.ads.redexgen.X.7T r0 = com.facebook.ads.redexgen.core.AbstractC10117b.A00(r5)     // Catch: java.lang.Throwable -> L11
            return r0
        L11:
            r0 = move-exception
            com.facebook.ads.redexgen.X.8Z r5 = r5.A08()
            int r4 = com.facebook.ads.redexgen.core.AbstractC10358a.A1Q
            com.facebook.ads.redexgen.X.8b r3 = new com.facebook.ads.redexgen.X.8b
            r3.<init>(r0)
            r2 = 12
            r1 = 7
            r0 = 84
            java.lang.String r0 = A04(r2, r1, r0)
            r5.AAu(r0, r4, r3)
        L29:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.C7V.A01(com.facebook.ads.redexgen.X.85, com.facebook.ads.redexgen.X.7T):com.facebook.ads.redexgen.X.7T");
    }

    public static C7T A02(AnonymousClass85 anonymousClass85, C7T c7t, C7U c7u) {
        C7W c7w = null;
        try {
            if (AbstractC10719l.A06(anonymousClass85) && (c7t == null || TextUtils.isEmpty(c7t.A03()))) {
                c7w = C7X.A00(anonymousClass85.getContentResolver());
            }
        } catch (Throwable th) {
            anonymousClass85.A08().AAu(A04(12, 7, 84), AbstractC10358a.A1S, new C10368b(th));
        }
        if (c7w != null && c7w.A01 != null) {
            A03.set(c7w.A01);
            c7u.A05(c7w.A01);
        }
        if (c7t == null && c7w != null && !TextUtils.isEmpty(c7w.A00)) {
            return new C7T(c7w.A00, c7w.A02, C7S.A04);
        }
        return c7t;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 12);
        }
        return attributionId;
    }

    public static void A06(C7U c7u) {
        A02.set(c7u.A02());
        A03.set(c7u.A03());
    }

    public static void A07(AnonymousClass85 anonymousClass85) {
        long j;
        C7T advertisingIdInfo;
        try {
            C7U c7u = new C7U(anonymousClass85);
            A06(c7u);
            if (A08()) {
                return;
            }
            C7T advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                j = advertisingIdInfo2.A01();
            } else {
                j = -1;
            }
            if (j > 0 && System.currentTimeMillis() - j < AbstractC10719l.A00(anonymousClass85)) {
                return;
            }
            if (AbstractC10719l.A07(anonymousClass85)) {
                advertisingIdInfo = A01(anonymousClass85, A02(anonymousClass85, null, c7u));
            } else {
                advertisingIdInfo = A02(anonymousClass85, A01(anonymousClass85, null), c7u);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c7u.A04(advertisingIdInfo);
            }
        } catch (Throwable t) {
            anonymousClass85.A08().AAu(A04(12, 7, 84), AbstractC10358a.A1R, new C10368b(t));
        }
    }

    public static boolean A08() {
        boolean z = false;
        boolean updated = C7.A04();
        if (updated) {
            String A04 = A04(0, 12, 92);
            boolean updated2 = C7.A05(A04);
            if (updated2) {
                A03.set(C7.A01(A04));
                z = true;
            }
        }
        boolean A042 = C7.A04();
        if (A01[7].length() != 4) {
            throw new RuntimeException();
        }
        A01[6] = "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm";
        if (!A042) {
            return z;
        }
        String A043 = A04(19, 13, FacebookMediationAdapter.ERROR_MAPPING_NATIVE_ASSETS);
        boolean updated3 = C7.A05(A043);
        if (updated3) {
            String A012 = C7.A01(A043);
            AtomicReference<C7T> atomicReference = A02;
            if (A012 == null) {
                if (A01[7].length() != 4) {
                    A01[7] = "Ywke";
                    A012 = A04(0, 0, 2);
                } else {
                    A01[5] = "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB";
                    A012 = A04(0, 0, 12);
                }
            }
            atomicReference.set(new C7T(A012, false, C7S.A03));
            return true;
        }
        return z;
    }
}
