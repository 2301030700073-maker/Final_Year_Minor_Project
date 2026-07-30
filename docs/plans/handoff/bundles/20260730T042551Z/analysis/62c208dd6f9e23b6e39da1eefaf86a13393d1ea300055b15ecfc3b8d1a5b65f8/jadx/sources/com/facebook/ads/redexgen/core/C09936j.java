package com.facebook.ads.redexgen.core;

import android.content.Intent;
import android.os.Build;
import android.widget.RelativeLayout;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.HashMap;

/* renamed from: com.facebook.ads.redexgen.X.6j, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C09936j {
    public static byte[] A04;
    public static String[] A05 = {"MJXAzUwyiLvMzZCrP1QJf8uMs9b", "sHuNTXgsBnW3HGqskl7KH5QkikNWpABj", "q8u9vKEVkpk3dMxroB1EFzM5kwDKfJOq", "eyGwnlQBA4bCraIcft5FxvFgN7f8TC5N", "FmmRYKiwjJl3dX1FB2pV6kIWJpsNLC6h", "flBitaWG3wpDSjkerYNuTkR3r5UhRox3", "xkUQOvOGGj42jMnQjSDdoLzQvdQiYUba", "XqZ9VL6XKZ5Y"};
    public final Intent A00;
    public final C09886e A01;
    public final C2322k1 A02;
    public final A7 A03;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private C2163hM A06() {
        C1394Mw A02 = A02();
        if (A02 == null) {
            return null;
        }
        C2159hI c2159hI = new C2159hI();
        return new C2163hM(this.A02, this.A03, new C2367kk(this.A01), A02, null, c2159hI, A0K(c2159hI, A02));
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private C2163hM A07() {
        C1392Mu A03 = A03();
        if (A03 == null) {
            return null;
        }
        C2158hH c2158hH = new C2158hH();
        return new C2163hM(this.A02, this.A03, new M6(this.A01), A03, A03.A0s(), c2158hH, A0K(c2158hH, A03));
    }

    public static String A0L(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 59);
        }
        return new String(copyOfRange);
    }

    public static void A0M() {
        A04 = new byte[]{99, Byte.MAX_VALUE, 4, 1, 58, 1, 4, 17, 4, 58, 7, 16, 11, 1, 9, 0, 43, 41, 36, 36, 45, 58, 28, 49, 56, 45, 119, 124, 117, 125, 122, 113, 112, 85, 112, 80, 117, 96, 117, 86, 97, 122, 112, 120, 113, 35, 44, 41, 49, 32, 55, 32, 33, 26, 38, 41, 44, 38, 46, 26, 33, 32, 41, 36, 60, 26, 40, 54, 124, 115, 102, 123, 100, 119, 83, 118, 86, 115, 102, 115, 80, 103, 124, 118, 126, 119, 106, 118, 123, 121, Byte.MAX_VALUE, 119, Byte.MAX_VALUE, 116, 110, 32, 55, 37, 51, 32, 54, 55, 54, 4, 59, 54, 55, 61, 19, 54, 22, 51, 38, 51, 16, 39, 60, 54, 62, 55, 22, 9, 4, 5, 15, 63, 20, 9, 13, 5, 63, 16, 15, 12, 12, 9, 14, 7, 63, 9, 14, 20, 5, 18, 22, 1, 12};
    }

    static {
        A0M();
    }

    public C09936j(C09886e c09886e, Intent intent, A7 a7, C2322k1 c2322k1) {
        this.A01 = c09886e;
        this.A00 = intent;
        this.A03 = a7;
        this.A02 = c2322k1;
    }

    private AbstractC2478md A00() {
        int i = Build.VERSION.SDK_INT;
        String A0L = A0L(68, 18, 41);
        if (i >= 33) {
            return (AbstractC2478md) this.A00.getSerializableExtra(A0L, AbstractC2478md.class);
        }
        Intent intent = this.A00;
        String[] strArr = A05;
        if (strArr[6].charAt(13) != strArr[2].charAt(13)) {
            throw new RuntimeException();
        }
        A05[1] = "LmjecX6z1NXmevkMdudhCsYVgseeBlBL";
        return (AbstractC2478md) intent.getSerializableExtra(A0L);
    }

    private C2476mb A01() {
        int i = Build.VERSION.SDK_INT;
        String A0L = A0L(26, 19, 47);
        if (i >= 33) {
            return (C2476mb) this.A00.getSerializableExtra(A0L, C2476mb.class);
        }
        return (C2476mb) this.A00.getSerializableExtra(A0L);
    }

    private C1394Mw A02() {
        int i = Build.VERSION.SDK_INT;
        String A0L = A0L(2, 14, 94);
        if (i >= 33) {
            return (C1394Mw) this.A00.getSerializableExtra(A0L, C1394Mw.class);
        }
        return (C1394Mw) this.A00.getSerializableExtra(A0L);
    }

    private C1392Mu A03() {
        int i = Build.VERSION.SDK_INT;
        String A0L = A0L(95, 25, FacebookMediationAdapter.ERROR_REQUIRES_UNIFIED_NATIVE_ADS);
        if (i >= 33) {
            return (C1392Mu) this.A00.getSerializableExtra(A0L, C1392Mu.class);
        }
        return (C1392Mu) this.A00.getSerializableExtra(A0L);
    }

    private DS A05() {
        if (C10729m.A2m(this.A02)) {
            String stringExtra = this.A00.getStringExtra(A0L(45, 23, 126));
            C09886e c09886e = this.A01;
            C2322k1 c2322k1 = this.A02;
            A7 a7 = this.A03;
            C2367kk c2367kk = new C2367kk(this.A01);
            Intent intent = this.A00;
            String clickDelayMs = A0L(16, 10, 115);
            String stringExtra2 = intent.getStringExtra(clickDelayMs);
            if (stringExtra == null) {
                stringExtra = A0L(0, 2, 117);
            }
            int parseInt = Integer.parseInt(stringExtra);
            if (A05[5].charAt(3) != 'i') {
                throw new RuntimeException();
            }
            A05[4] = "YY09SF1W0j6b6KfCSgRusx8TJPca7HgC";
            return new ViewOnClickListenerC1378Lz(c09886e, c2322k1, a7, c2367kk, stringExtra2, parseInt);
        }
        return new C2195hu(this.A01, this.A02, this.A03, new C2367kk(this.A01));
    }

    private final C2162hL A08() {
        return new C2162hL(this.A02, this.A01);
    }

    private C2160hJ A09(RelativeLayout relativeLayout) {
        C2160hJ c2160hJ = new C2160hJ(this.A02, new C2366kj(this), this.A03, new C2367kk(this.A01));
        c2160hJ.A05(relativeLayout);
        c2160hJ.A04(this.A00.getIntExtra(A0L(120, 27, 91), 200));
        D3.A0K(relativeLayout, -16777216);
        return c2160hJ;
    }

    private LJ A0A() {
        C1394Mw A02 = A02();
        if (A02 == null) {
            return null;
        }
        return new LJ(this.A02, this.A03, new C2367kk(this.A01), A02, new C2159hI(), 1);
    }

    private LJ A0B() {
        C1392Mu A03 = A03();
        if (A03 == null) {
            return null;
        }
        return new LJ(this.A02, this.A03, new C2367kk(this.A01), A03, new C2158hH(), 0);
    }

    private C2039fL A0C() {
        C1241Gr A02;
        AbstractC2478md A00 = A00();
        if (A00 == null || (A02 = AbstractC1242Gs.A02(A00.A0r())) == null) {
            return null;
        }
        return new C2039fL(this.A02, new C2367kk(this.A01), A02, A00.A1g());
    }

    private C1956dz A0D(BG bg) {
        EC c2158hH;
        DR m6;
        C2476mb A01 = A01();
        if (A01 == null) {
            return null;
        }
        if (bg == BG.A04) {
            c2158hH = new C2159hI();
            m6 = new C2367kk(this.A01);
        } else {
            c2158hH = new C2158hH();
            m6 = new M6(this.A01);
        }
        return new C1956dz(this.A02, c2158hH, this.A03, A01, new C10297t(this.A02), m6);
    }

    private C1344Kq A0E() {
        C1394Mw A02 = A02();
        if (A02 != null) {
            return new C1344Kq(this.A02, new C2159hI(), this.A03, A02, new C10297t(this.A02), new C2367kk(this.A01));
        }
        if (A05[1].charAt(5) != 'X') {
            throw new RuntimeException();
        }
        A05[3] = "TvLwsmu9uaa0faVP4fF8b7PGg31O8U7I";
        return null;
    }

    private C1337Kj A0F() {
        C1394Mw A02 = A02();
        if (A02 == null) {
            return null;
        }
        return new C1337Kj(this.A02, new C2159hI(), this.A03, A02, new C10297t(this.A02), new C2367kk(this.A01));
    }

    private C1337Kj A0G() {
        C1392Mu A03 = A03();
        if (A03 == null) {
            return null;
        }
        return new C1337Kj(this.A02, new C2158hH(), this.A03, A03, new C10297t(this.A02), new M6(this.A01));
    }

    private C1925dT A0H() {
        C1392Mu A03;
        C1392Mu A032 = A03();
        if (A032 == null || (A03 = A03()) == null) {
            return null;
        }
        return new C1925dT(this.A02, this.A03, A032, A03, new M6(this.A01), this.A01);
    }

    private C1336Ki A0I() {
        C1394Mw dataBundle = A02();
        if (dataBundle == null) {
            return null;
        }
        dataBundle.A0y(this.A01.A08());
        return new C1336Ki(this.A02, this.A03, new C10297t(this.A02), new C2367kk(this.A01), dataBundle);
    }

    private C1336Ki A0J() {
        C1392Mu dataBundle = A03();
        if (dataBundle == null) {
            return null;
        }
        dataBundle.A0y(this.A01.A08());
        return new C1336Ki(this.A02, this.A03, new C10297t(this.A02), new C2367kk(this.A01), dataBundle);
    }

    private C1264Ho A0K(EC ec, AbstractC2478md abstractC2478md) {
        C08982p A07 = abstractC2478md.A1b().A0F().A07();
        if (A07 == null || !A07.A0M()) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(A0L(86, 9, 33), ec.A8b());
        return new C1264Ho(this.A02, abstractC2478md, A07, this.A03, null, hashMap);
    }

    public final DS A0N(BG bg, RelativeLayout relativeLayout) {
        if (bg == null) {
            return null;
        }
        switch (C09926i.A00[bg.ordinal()]) {
            case 1:
                if (relativeLayout != null) {
                    return A09(relativeLayout);
                }
                return null;
            case 2:
                return A0J();
            case 3:
                return A0G();
            case 4:
                return A07();
            case 5:
                return A05();
            case 6:
                C1337Kj A0F = A0F();
                if (A05[4].charAt(13) != '3') {
                    A05[1] = "IIJ0HXviRARge0yizoGTY0JUA2Nzjczv";
                    return A0F;
                }
                String[] strArr = A05;
                strArr[6] = "UHMFNKnwuKHYyMbevaCPtufG1H9dhH1t";
                strArr[2] = "s6UgSHR7PtydXMVItCKPjBxPhDp7nABU";
                return A0F;
            case 7:
                return A0E();
            case 8:
                return A0I();
            case 9:
                return A06();
            case 10:
                return A0C();
            case 11:
                LJ A0A = A0A();
                if (A05[5].charAt(3) != 'i') {
                    throw new RuntimeException();
                }
                A05[3] = "7AQwH6OZkLua7JLoKEhUfmskdEmJStMK";
                return A0A;
            case 12:
                return A0B();
            case 13:
            case 14:
                return A0D(bg);
            case 15:
                return A08();
            case 16:
                return A0H();
            default:
                return null;
        }
    }
}
