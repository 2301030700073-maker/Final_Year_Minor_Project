package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.concurrent.BlockingQueue;

/* renamed from: com.facebook.ads.redexgen.X.k3, reason: case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public class C2324k3 implements J6 {
    public static byte[] A04;
    public static String[] A05 = {"5xwnqBcSwQdKZIKpCxhEhIB1ehz5rbXz", "SVnny4sMHrVxDT0mCWgznsGyNwA0K29Q", "WSedDxIDZVsWQqxlis9Ww20KqcWIyEnI", "k4ruqDXMLqmQWww9EukWiXBxmglEjOwQ", "qeuUn3ZO1g9cCLbTYKy8rfCeNqsjP", "lwrAvEwGJvKZaAaN19YZU8UxJCWRUSKU", "KAMWqSOuX5oAD", "9nA6fjXGqk7Q6o3drz3rA7fb0omaCvC"};
    public final /* synthetic */ long A00;
    public final /* synthetic */ long A01;
    public final /* synthetic */ CallableC10247o A02;
    public final /* synthetic */ C10257p A03;

    public static String A00(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 48);
            if (A05[5].charAt(12) == 'F') {
                throw new RuntimeException();
            }
            A05[5] = "k7DX94ZUmS6mjbqg2Uqpnt5MM6ksEeAZ";
        }
        return new String(copyOfRange);
    }

    public static void A01() {
        if (A05[5].charAt(12) == 'F') {
            throw new RuntimeException();
        }
        A05[4] = "84A19LE3N5skcLW3UxwckiEcHwoNq";
        A04 = new byte[]{18, 11, 8, 11, 12, 20, 11, -9, -22, -27, -26, -16};
    }

    static {
        A01();
    }

    public C2324k3(CallableC10247o callableC10247o, C10257p c10257p, long j, long j2) {
        this.A02 = callableC10247o;
        this.A03 = c10257p;
        this.A00 = j;
        this.A01 = j2;
    }

    @Override // com.facebook.ads.redexgen.core.J6
    public final void ACy(boolean z) {
        AnonymousClass85 anonymousClass85;
        BlockingQueue blockingQueue;
        AnonymousClass85 anonymousClass852;
        AnonymousClass85 anonymousClass853;
        anonymousClass85 = this.A02.A01.A04;
        if (C10327w.A06(anonymousClass85)) {
            C10317v c10317v = new C10317v(this.A03.A06, this.A03.A07, A00(7, 5, 81), this.A03.A02, this.A03.A08);
            anonymousClass852 = this.A02.A01.A04;
            C10327w.A04(anonymousClass852, c10317v, z);
            if (!z) {
                anonymousClass853 = this.A02.A01.A04;
                C10327w.A05(anonymousClass853, this.A03.A06, this.A03.A07, this.A03.A08, A00(7, 5, 81), this.A03.A02, 2112, null, Long.valueOf(this.A00), Long.valueOf(System.currentTimeMillis() - this.A01), null);
            }
            C10297t.A0A().put(c10317v.A04, c10317v);
        }
        try {
            blockingQueue = this.A02.A00;
            blockingQueue.put(true);
        } catch (InterruptedException unused) {
        }
    }

    @Override // com.facebook.ads.redexgen.core.J6
    public final void AD6(Throwable th) {
        AnonymousClass85 anonymousClass85;
        BlockingQueue blockingQueue;
        AnonymousClass85 anonymousClass852;
        anonymousClass85 = this.A02.A01.A04;
        if (C10327w.A06(anonymousClass85)) {
            anonymousClass852 = this.A02.A01.A04;
            C10327w.A05(anonymousClass852, this.A03.A06, this.A03.A07, this.A03.A08, A00(7, 5, 81), this.A03.A02, 2119, th != null ? th.toString() : A00(0, 7, FacebookMediationAdapter.ERROR_CREATE_NATIVE_AD_FROM_BID_PAYLOAD), null, Long.valueOf(System.currentTimeMillis() - this.A01), null);
        }
        try {
            blockingQueue = this.A02.A00;
            blockingQueue.put(false);
        } catch (InterruptedException unused) {
        }
    }
}
