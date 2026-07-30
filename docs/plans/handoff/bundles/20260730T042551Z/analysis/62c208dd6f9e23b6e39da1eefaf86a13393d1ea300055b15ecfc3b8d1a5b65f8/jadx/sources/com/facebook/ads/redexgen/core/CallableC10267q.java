package com.facebook.ads.redexgen.core;

import android.net.TrafficStats;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Callable;

/* renamed from: com.facebook.ads.redexgen.X.7q, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class CallableC10267q implements Callable<Boolean> {
    public static byte[] A02;
    public final C10257p A00;
    public final /* synthetic */ C10297t A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 41);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{-34, -46, -29, -36, -26, -31, -25, -38, -43, -42, -32};
    }

    public CallableC10267q(C10297t c10297t, C10257p c10257p) {
        this.A01 = c10297t;
        this.A00 = c10257p;
    }

    private final Boolean A00() {
        String A01;
        AnonymousClass85 anonymousClass85;
        AnonymousClass85 anonymousClass852;
        C1D A03;
        Map map;
        if (BQ.A02(this)) {
            return null;
        }
        try {
            TrafficStats.setThreadStatsTag(61453);
            if (this.A00.A04) {
                A01 = A01(0, 6, 72);
            } else {
                A01 = A01(6, 5, 72);
            }
            String str = this.A00.A08;
            String creativeType = this.A00.A07;
            C1J c1j = new C1J(str, creativeType, this.A00.A06, A01, this.A00.A02, this.A00.A05);
            c1j.A04 = this.A00.A03;
            c1j.A02 = this.A00.A01;
            c1j.A05 = this.A00.A04;
            anonymousClass85 = this.A01.A04;
            if (C10327w.A06(anonymousClass85)) {
                map = C10297t.A0F;
                map.put(this.A00.A08, c1j);
            }
            anonymousClass852 = this.A01.A04;
            A03 = C10297t.A03(anonymousClass852.A02());
            return Boolean.valueOf(A03.AHm(c1j) != null);
        } catch (Throwable th) {
            BQ.A00(th, this);
            return null;
        }
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() throws Exception {
        if (BQ.A02(this)) {
            return null;
        }
        try {
            return A00();
        } catch (Throwable th) {
            BQ.A00(th, this);
            return null;
        }
    }
}
