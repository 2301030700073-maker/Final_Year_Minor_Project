package com.facebook.ads.redexgen.core;

import android.os.Looper;
import android.os.SystemClock;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutorService;

/* renamed from: com.facebook.ads.redexgen.X.Pj, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C1454Pj {
    public static byte[] A03;
    public static String[] A04 = {"ZXOVLljuGdQ2gTrQcY", "AnY6qwAsN2cEV2qqh7NXOlRMqgnXbL12", "C3RLqG3kgGcNKks9nj", "hVdBrTleqSQSp7EUmSxtJM2aSZeLdeTY", "hXXunCex6byJXMUYvVcZ4hsiNxREVLze", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "x4jMW2yFkCQJ3TaFkNFEnsDLco7eFWBD", "kIVIyQ8JpM8glrZvZDd1g0aXlAolcLuw"};
    public static final C1962e5 A05;
    public static final C1962e5 A06;
    public static final C1962e5 A07;
    public static final C1962e5 A08;
    public HandlerC1963e6<? extends InterfaceC1964e7> A00;
    public IOException A01;
    public final InterfaceExecutorC2073ft A02;

    public static String A06(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            int i5 = copyOfRange[i4] - i3;
            if (A04[1].charAt(10) == 'p') {
                throw new RuntimeException();
            }
            String[] strArr = A04;
            strArr[6] = "SkelYcjwr8Q4VqUF7DglQ0EZLKgb4BIV";
            strArr[3] = "BDhwTEuyuBQJLr2VSUkFJW2e1rFLtmdt";
            copyOfRange[i4] = (byte) (i5 - 43);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A03 = new byte[]{-127, -76, -85, -116, -88, -99, -75, -95, -82, 118, -120, -85, -99, -96, -95, -82, 118};
    }

    static {
        A07();
        A07 = A01(false, -9223372036854775807L);
        A08 = A01(true, -9223372036854775807L);
        A05 = new C1962e5(2, -9223372036854775807L);
        A06 = new C1962e5(3, -9223372036854775807L);
    }

    @MetaExoPlayerCustomization(type = {"MERGED"})
    public C1454Pj(InterfaceExecutorC2073ft interfaceExecutorC2073ft) {
        this.A02 = interfaceExecutorC2073ft;
    }

    @MetaExoPlayerCustomization(type = {"MERGED"})
    public C1454Pj(String str) {
        this(AbstractC2072fs.A00(AbstractC2094gE.A0u(A06(0, 17, 17) + str), new InterfaceC2022f3() { // from class: com.facebook.ads.redexgen.X.Pk
            @Override // com.facebook.ads.redexgen.core.InterfaceC2022f3
            public final void A2z(Object obj) {
                ((ExecutorService) obj).shutdown();
            }
        }));
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.e4 != com.google.android.exoplayer2.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.e7> */
    @MetaExoPlayerCustomization("D14742363 Needed to accept supplied looper for Exo2DashLiveManifestFetcher manifest loading")
    private final <T extends InterfaceC1964e7> long A00(Looper looper, T t, InterfaceC1961e4<T> interfaceC1961e4, int i) {
        AbstractC2011es.A08(looper != null);
        this.A01 = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new HandlerC1963e6(this, looper, t, interfaceC1961e4, i, elapsedRealtime).A06(0L);
        return elapsedRealtime;
    }

    public static C1962e5 A01(boolean z, long j) {
        return new C1962e5(z ? 1 : 0, j);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.e4 != com.google.android.exoplayer2.upstream.Loader$Callback<T extends com.facebook.ads.redexgen.X.e7> */
    public final <T extends InterfaceC1964e7> long A08(T t, InterfaceC1961e4<T> interfaceC1961e4, int i) {
        Looper looper = (Looper) AbstractC2011es.A02(Looper.myLooper());
        return A00(looper, t, interfaceC1961e4, i);
    }

    public final void A09() {
        ((HandlerC1963e6) AbstractC2011es.A02(this.A00)).A07(false);
    }

    public final void A0A() {
        this.A01 = null;
    }

    public final void A0B(int i) throws IOException {
        if (this.A01 == null) {
            if (this.A00 != null) {
                HandlerC1963e6<? extends InterfaceC1964e7> handlerC1963e6 = this.A00;
                if (i == Integer.MIN_VALUE) {
                    i = this.A00.A07;
                }
                handlerC1963e6.A05(i);
                return;
            }
            return;
        }
        throw this.A01;
    }

    public final void A0C(InterfaceC1965e8 interfaceC1965e8) {
        if (this.A00 != null) {
            this.A00.A07(true);
        }
        if (interfaceC1965e8 != null) {
            this.A02.execute(new RunnableC1966e9(interfaceC1965e8));
        }
        this.A02.AGj();
    }

    public final boolean A0D() {
        return this.A01 != null;
    }

    public final boolean A0E() {
        return this.A00 != null;
    }
}
