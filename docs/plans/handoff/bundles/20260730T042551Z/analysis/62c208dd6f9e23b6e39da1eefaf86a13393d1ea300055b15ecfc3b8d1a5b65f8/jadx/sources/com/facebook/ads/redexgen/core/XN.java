package com.facebook.ads.redexgen.core;

import android.os.SystemClock;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;

/* loaded from: assets/audience_network.dex */
public final class XN implements S3 {
    public static byte[] A01;
    public static String[] A02 = {"fohbmjEiTj8NjqbUXaPl5n0du0El2hRv", "gmQR8xgLthHv4G5BX9pTnwOEugHSaFaL", "M9BAHt3Bse5mucctFju832VgdtGiUeNg", "ZRQmurEDuHOc8EysnH8HYFXqWPcg7n2A", "sMvIRpEi7nHILkqOqKCfNqgqE5n4SDao", "6deJ223aQhXDxnripPJDbnhkxgW9ru3n", "YwPySTAEBLT8OdBhXBX54RNz5cf1DiXs", "BPy3xf7R6eG9T49c5prT3PVlWWkpHDtF"};
    public final /* synthetic */ XM A00;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] ^ i3;
            if (A02[1].charAt(4) == 'o') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[6] = "DTuUAQXfapOnOIjA1dYmrl0sF9VKw3Jh";
            strArr[5] = "KN4VAXlDjCkdZoxnToIifIAsMDcSLzKz";
            copyOfRange[i4] = (byte) (i5 ^ 29);
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{8, 4, 102, 71, 68, 67, 87, 78, 86, 99, 87, 70, 75, 77, 113, 75, 76, 73, 105, 71, 78, 79, 82, 73, 78, 71, 0, 73, 77, 80, 79, 83, 83, 73, 66, 76, 89, 0, 76, 65, 82, 71, 69, 0, 65, 85, 68, 73, 79, 0, 76, 65, 84, 69, 78, 67, 89, 26, 0, 17, 50, 55, 48, 43, 45, 55, 49, 98, 35, 55, 38, 43, 45, 98, 54, 43, 47, 39, 49, 54, 35, 47, 50, 98, 106, 36, 48, 35, 47, 39, 98, 50, 45, 49, 43, 54, 43, 45, 44, 98, 47, 43, 49, 47, 35, 54, 33, 42, 107, 120, 98, 78, 109, 104, 111, 116, 114, 104, 110, 61, 124, 104, 121, 116, 114, 61, 105, 116, 112, 120, 110, 105, 124, 112, 109, 61, 53, 110, 100, 110, 105, 120, 112, 61, 126, 113, 114, 126, 118, 61, 112, 116, 110, 112, 124, 105, 126, 117, 52, 39, 61};
    }

    static {
        A01();
    }

    public XN(XM xm) {
        this.A00 = xm;
    }

    @Override // com.facebook.ads.redexgen.core.S3
    public final void ADb(long j) {
        AbstractC2055fb.A07(A00(2, 16, 63), A00(18, 41, 61) + j);
    }

    @Override // com.facebook.ads.redexgen.core.S3
    public final void AEa(long j) {
        InterfaceC1515Rv interfaceC1515Rv;
        InterfaceC1515Rv interfaceC1515Rv2;
        interfaceC1515Rv = this.A00.A0I;
        if (interfaceC1515Rv != null) {
            interfaceC1515Rv2 = this.A00.A0I;
            interfaceC1515Rv2.AEa(j);
        }
    }

    @Override // com.facebook.ads.redexgen.core.S3
    public final void AEc(long j, long j2, long j3, long j4) {
        long A06;
        long A07;
        StringBuilder append = new StringBuilder().append(A00(59, 52, 95)).append(j);
        String A00 = A00(0, 2, 57);
        StringBuilder append2 = append.append(A00).append(j2).append(A00).append(j3).append(A00).append(j4).append(A00);
        A06 = this.A00.A06();
        StringBuilder append3 = append2.append(A06).append(A00);
        A07 = this.A00.A07();
        String sb = append3.append(A07).toString();
        if (!XM.A0v) {
            String message = A00(2, 16, 63);
            AbstractC2055fb.A07(message, sb);
            return;
        }
        throw new SI(sb);
    }

    @Override // com.facebook.ads.redexgen.core.S3
    public final void AFH(long j, long j2, long j3, long j4) {
        long A06;
        long A07;
        StringBuilder append = new StringBuilder().append(A00(FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION, 50, 0)).append(j);
        String A00 = A00(0, 2, 57);
        StringBuilder append2 = append.append(A00).append(j2).append(A00).append(j3).append(A00).append(j4).append(A00);
        A06 = this.A00.A06();
        StringBuilder append3 = append2.append(A06).append(A00);
        A07 = this.A00.A07();
        String sb = append3.append(A07).toString();
        if (!XM.A0v) {
            String message = A00(2, 16, 63);
            AbstractC2055fb.A07(message, sb);
            return;
        }
        throw new SI(sb);
    }

    @Override // com.facebook.ads.redexgen.core.S3
    public final void AFQ(int i, long j) {
        InterfaceC1515Rv interfaceC1515Rv;
        long j2;
        InterfaceC1515Rv interfaceC1515Rv2;
        interfaceC1515Rv = this.A00.A0I;
        if (interfaceC1515Rv != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            j2 = this.A00.A07;
            long j3 = elapsedRealtime - j2;
            interfaceC1515Rv2 = this.A00.A0I;
            interfaceC1515Rv2.AFR(i, j, j3);
        }
    }
}
