package com.facebook.ads.redexgen.core;

import android.util.SparseArray;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: com.facebook.ads.redexgen.X.Sy, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1544Sy implements YQ {
    public static byte[] A02;
    public static String[] A03 = {"Lj4gzg03gSASgBOShz1Dc2teR2QzxoDz", "lNMp9Ll7IH0A6UIQ00LiYQlXyx", "zJlRbHqmjFAN0AXrtmPyudqKltBxvxLd", "8Uxs8Vyb8zEOA3b6SzieAq2Yt0YzCRzC", "yE2i2W7Nn3AH4nLocODfhKffgOss6qwA", "R6NQaICtPKEyciL4Nk3y9YULQFwVIf4Z", "qQnIpbnCZo9CNb7F6nWSARAgBLnssXXF", "iGvV0i7PxL9M8NBKd88FkQPDBt"};
    public final int A00;
    public final List<ZM> A01;

    public static String A02(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ FacebookMediationAdapter.ERROR_WRONG_NATIVE_TYPE);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private List<ZM> A03(YP yp) {
        String A022;
        int i;
        if (A05(32)) {
            return this.A01;
        }
        C2070fq c2070fq = new C2070fq(yp.A03);
        List<ZM> list = this.A01;
        while (c2070fq.A07() > 0) {
            int A0I = c2070fq.A0I();
            int A09 = c2070fq.A09() + c2070fq.A0I();
            if (A0I == 134) {
                list = new ArrayList<>();
                int A0I2 = c2070fq.A0I() & 31;
                for (int i2 = 0; i2 < A0I2; i2++) {
                    String A0W = c2070fq.A0W(3);
                    int A0I3 = c2070fq.A0I();
                    boolean z = (A0I3 & 128) != 0;
                    if (z) {
                        A022 = A02(19, 19, 117);
                        i = A0I3 & 63;
                    } else {
                        A022 = A02(0, 19, 34);
                        i = 1;
                    }
                    int A0I4 = c2070fq.A0I();
                    if (A03[5].charAt(3) != 'Q') {
                        throw new RuntimeException();
                    }
                    String[] strArr = A03;
                    strArr[0] = "7FyVeYA9WrZzHuuwioA3vWBoL8B8RyOM";
                    strArr[6] = "TQkUUF63gNXax52QVNqDenapGylQDbx3";
                    byte b = (byte) A0I4;
                    c2070fq.A0g(1);
                    List<byte[]> list2 = null;
                    if (z) {
                        list2 = AbstractC2019f0.A04((b & 64) != 0);
                    }
                    list.add(new P5().A11(A022).A10(A0W).A0Z(i).A12(list2).A14());
                }
            }
            c2070fq.A0f(A09);
        }
        return list;
    }

    public static void A04() {
        A02 = new byte[]{41, 56, 56, 36, 33, 43, 41, 60, 33, 39, 38, 103, 43, 45, 41, 101, 126, 120, 112, 126, 111, 111, 115, 118, 124, 126, 107, 118, 112, 113, 48, 124, 122, 126, 50, 40, 47, 39, 68, 85, 85, 73, 76, 70, 68, 81, 76, 74, 75, 10, 83, 75, 65, 11, 65, 83, 71, 11, 68, 76, 81, 38, 55, 55, 43, 46, 36, 38, 51, 46, 40, 41, 104, 63, 106, 52, 36, 51, 34, 116, 114};
    }

    static {
        A04();
    }

    public C1544Sy() {
        this(0);
    }

    @MetaExoPlayerCustomization("Replaces ImmutableList.of with MetaExoPlayerCustomizedCollections")
    public C1544Sy(int i) {
        this(i, MetaExoPlayerCustomizedCollections.A03(new ZM[0]));
    }

    public C1544Sy(int i, List<ZM> list) {
        this.A00 = i;
        this.A01 = list;
    }

    private YL A00(YP yp) {
        return new YL(A03(yp));
    }

    private YV A01(YP yp) {
        return new YV(A03(yp));
    }

    private boolean A05(int i) {
        return (this.A00 & i) != 0;
    }

    @Override // com.facebook.ads.redexgen.core.YQ
    public final SparseArray<YT> A5G() {
        return new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.core.YQ
    public final YT A5L(int i, YP yp) {
        switch (i) {
            case 2:
            case 128:
                return new C1522Sc(new C1541Sv(A01(yp)));
            case 3:
            case 4:
                return new C1522Sc(new C1527Sh(yp.A01));
            case 15:
                boolean A05 = A05(2);
                if (A03[5].charAt(3) != 'Q') {
                    throw new RuntimeException();
                }
                A03[5] = "OJDQ74LnXL8aZxJvrpziuHGD5Nuoyi98";
                if (A05) {
                    return null;
                }
                return new C1522Sc(new C1545Sz(false, yp.A01));
            case 16:
                return new C1522Sc(new C1540Su(A01(yp)));
            case 17:
                if (A05(2)) {
                    return null;
                }
                return new C1522Sc(new C1533Sn(yp.A01));
            case 21:
                return new C1522Sc(new C1537Sr());
            case 27:
                if (A05(4)) {
                    return null;
                }
                return new C1522Sc(new C1539St(A00(yp), A05(1), A05(8)));
            case 36:
                return new C1522Sc(new C1538Ss(A00(yp)));
            case 89:
                return new C1522Sc(new C1542Sw(yp.A02));
            case 129:
            case 135:
                return new C1522Sc(new T5(yp.A01));
            case 130:
                if (!A05(64)) {
                    return null;
                }
                break;
            case 134:
                if (A05(16)) {
                    return null;
                }
                return new SU(new C1524Se(A02(61, 20, 45)));
            case 138:
                break;
            case 172:
                return new C1522Sc(new T2(yp.A01));
            case 257:
                return new SU(new C1524Se(A02(38, 23, 79)));
            default:
                return null;
        }
        return new C1522Sc(new C1543Sx(yp.A01));
    }
}
