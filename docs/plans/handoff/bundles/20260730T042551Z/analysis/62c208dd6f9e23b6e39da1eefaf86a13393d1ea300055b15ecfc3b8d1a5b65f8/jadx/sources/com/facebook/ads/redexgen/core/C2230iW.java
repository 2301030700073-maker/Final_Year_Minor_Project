package com.facebook.ads.redexgen.core;

import android.content.pm.PackageManager;
import android.util.Base64;
import com.facebook.ads.internal.protocol.AdErrorType;
import java.util.Arrays;
import java.util.Map;

/* renamed from: com.facebook.ads.redexgen.X.iW, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2230iW extends BY {
    public static byte[] A02;
    public static String[] A03 = {"rr4pEtDer0K6hYSMypGI4SVA4", "qv2m0fG", "2OIR1Yv9Y7RzsB5MK8fjyIRTaeFBsJy", "02JyCSWW55zn1AQ6h7F4FoBumR9MK", "PV14KCf6Ep37wllo1HHxqudNmgtveNCD", "8xcTKK5W7UNHePnVaLckl2F", "lGpL0wggi73mqN0I3cVtORcNpouSV80j", "84RqxglWV7M6OmuSAB1gnMVf4"};
    public final /* synthetic */ B6 A00;
    public final /* synthetic */ B9 A01;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(copyOfRange);
    }

    public static void A04() {
        A02 = new byte[]{121, 115, 97, 124, Byte.MAX_VALUE, 112, 112, 123, 108, 97, 117, 123, 103, 18, 51, 124, 50, 57, 40, 43, 51, 46, 55, 124, 63, 51, 50, 50, 57, 63, 40, 53, 51, 50};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.BY
    public final void A05() {
        C2322k1 c2322k1;
        C2322k1 c2322k12;
        C2322k1 c2322k13;
        C2322k1 c2322k14;
        C2322k1 c2322k15;
        long j;
        C2322k1 c2322k16;
        String str;
        Map<? extends String, ? extends String> map;
        JS A032;
        C2322k1 c2322k17;
        C2322k1 c2322k18;
        C2322k1 c2322k19;
        C2322k1 c2322k110;
        long j2;
        this.A01.A00 = System.currentTimeMillis();
        c2322k1 = this.A01.A05;
        if (AbstractC1138Cs.A00(c2322k1) == EnumC1137Cr.A07) {
            this.A01.A0A();
            AdErrorType adErrorType = AdErrorType.NETWORK_ERROR;
            String A01 = A01(13, 21, 62);
            c2322k110 = this.A01.A05;
            InterfaceC08621f A0F = c2322k110.A0F();
            j2 = this.A01.A01;
            A0F.A3M(C1140Cu.A01(j2), adErrorType.getErrorCode(), A01, adErrorType.isPublicError());
            this.A01.A0E(new C1091Ag(adErrorType, A01));
            return;
        }
        c2322k12 = this.A01.A05;
        C10458k.A08(c2322k12);
        c2322k13 = this.A01.A05;
        C7V.A07(c2322k13);
        C9D A00 = C9D.A00();
        c2322k14 = this.A01.A05;
        boolean z = true;
        Map<String, String> A0A = this.A00.A0A(A00.A01(c2322k14, true).A7o(this.A00.A05()));
        this.A01.A03 = A0A;
        try {
            c2322k17 = this.A01.A05;
            PackageManager packageManager = c2322k17.getPackageManager();
            if (packageManager != null) {
                String A012 = A01(1, 12, 92);
                StringBuilder sb = new StringBuilder();
                c2322k18 = this.A01.A05;
                StringBuilder append = sb.append(c2322k18.getPackageName()).append(A01(0, 1, 59));
                c2322k19 = this.A01.A05;
                A0A.put(A012, new String(Base64.encode(append.append(packageManager.getInstallerPackageName(c2322k19.getPackageName())).toString().getBytes(), 2)));
            }
        } catch (Exception unused) {
        }
        try {
            if (this.A00.A07() != EnumC1095Al.A04 && this.A00.A07() != EnumC1095Al.A06 && this.A00.A07() != EnumC1095Al.A05 && this.A00.A07() != null) {
                z = false;
            }
            c2322k16 = this.A01.A05;
            JR A022 = C1311Jj.A02(z, c2322k16);
            str = this.A01.A07;
            C1307Jf c1307Jf = new C1307Jf();
            map = this.A01.A03;
            byte[] A08 = c1307Jf.A05(map).A08();
            A032 = this.A01.A03(C1140Cu.A00(), this.A00);
            A022.AG6(str, A08, A032);
        } catch (Exception e) {
            AdErrorType adErrorType2 = AdErrorType.AD_REQUEST_FAILED;
            String message = e.getMessage();
            c2322k15 = this.A01.A05;
            InterfaceC08621f A0F2 = c2322k15.A0F();
            j = this.A01.A01;
            A0F2.A3M(C1140Cu.A01(j), adErrorType2.getErrorCode(), message, adErrorType2.isPublicError());
            B9 b9 = this.A01;
            C1091Ag A013 = C1091Ag.A01(adErrorType2, message);
            if (A03[3].length() != 29) {
                throw new RuntimeException();
            }
            A03[3] = "TysUXKeFt8WChM0CalDFmuBH7ELd8";
            b9.A0E(A013);
        }
    }

    static {
        A04();
    }

    public C2230iW(B9 b9, B6 b6) {
        this.A01 = b9;
        this.A00 = b6;
    }
}
