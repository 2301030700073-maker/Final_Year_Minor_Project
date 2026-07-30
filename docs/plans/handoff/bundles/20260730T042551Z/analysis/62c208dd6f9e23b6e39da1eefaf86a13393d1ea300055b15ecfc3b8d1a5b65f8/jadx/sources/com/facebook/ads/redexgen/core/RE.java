package com.facebook.ads.redexgen.core;

import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* loaded from: assets/audience_network.dex */
public final class RE implements InterfaceC1732aH {
    public static byte[] A08;
    public static String[] A09 = {"uMWUqjzdvT", "JCiXwD9fbOJ6zbzJIqcGCn5sSqt0LRQF", "57MItfouy3vA8Xk70bmEVbgHOZ3ZiDhr", "0Oj5bCKjyYaUBav3ZkotafCPmqHs4LN9", "jQDBPIob659coWWd9cn9e1hxoV0W", "Plpspx2b5XYgIQ6XoPYNR66zb6Po4d", "vobWyVO53wo9DOiqvfsa5tfZ2hEa", "SMg7zuQOwNLh9aZZKsYOuBLn58fxxbRD"};
    public InterfaceC1731aG A00;
    public final QV A01;
    public final C1941dj A02;
    public final C09394e A03;
    public final C1999eg A04;
    public final Executor A05;
    public volatile AbstractRunnableFutureC2076fw<Void, IOException> A06;
    public volatile boolean A07;

    public static String A01(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A08, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 78);
        }
        return new String(copyOfRange);
    }

    public static void A02() {
        A08 = new byte[]{64, 69, 69, 106, 104, 117, 121, Byte.MAX_VALUE, Byte.MAX_VALUE, 126, 76, 91, 83, 81, 72, 91};
    }

    static {
        A02();
    }

    public RE(ZE ze, PX px, Executor executor) {
        this.A05 = (Executor) AbstractC2011es.A01(executor);
        AbstractC2011es.A01(ze.A03);
        this.A02 = new C1938dg().A06(ze.A03.A00).A08(ze.A03.A04).A02(4).A09();
        this.A03 = px.A07();
        this.A04 = new C1999eg(this.A03, this.A02, null, new InterfaceC1998ef() { // from class: com.facebook.ads.redexgen.X.RG
            @Override // com.facebook.ads.redexgen.core.InterfaceC1998ef
            public final void AEi(long j, long j2, long j3) {
                RE.this.A03(j, j2, j3);
            }
        });
        this.A01 = px.A02();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A03(long j, long j2, long j3) {
        float f;
        if (this.A00 == null) {
            return;
        }
        if (j == -1 || j == 0) {
            f = -1.0f;
        } else {
            f = (j2 * 100.0f) / j;
        }
        this.A00.AEh(j, j2, f);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1732aH
    public final void A5t(InterfaceC1731aG interfaceC1731aG) throws IOException, InterruptedException {
        this.A00 = interfaceC1731aG;
        if (0 != 0) {
            throw new NullPointerException(A01(0, 3, FacebookMediationAdapter.ERROR_ADVIEW_CONSTRUCTOR_EXCEPTION));
        }
        boolean z = false;
        while (!z) {
            try {
                boolean finished = this.A07;
                if (finished) {
                    break;
                }
                this.A06 = new RF(this);
                if (0 == 0) {
                    this.A05.execute(this.A06);
                    try {
                        this.A06.get();
                        z = true;
                    } catch (ExecutionException e) {
                        Throwable th = (Throwable) AbstractC2011es.A01(e.getCause());
                        if (0 == 0) {
                            boolean finished2 = th instanceof IOException;
                            if (!finished2) {
                                AbstractC2094gE.A11(th);
                                throw null;
                            }
                            throw ((IOException) th);
                        }
                    }
                } else {
                    throw new NullPointerException(A01(3, 7, 84));
                }
            } catch (Throwable th2) {
                ((AbstractRunnableFutureC2076fw) AbstractC2011es.A01(this.A06)).A03();
                if (A09[5].length() == 1) {
                    throw new RuntimeException();
                }
                String[] strArr = A09;
                strArr[3] = "oMUAA4ylSx2MgE706wotjd5LCQps2nrb";
                strArr[1] = "rYIM7N2usn2vMEsEZAwpjtxu5A0ltiab";
                if (0 != 0) {
                    throw new NullPointerException(A01(10, 6, 112));
                }
                throw th2;
            }
        }
        ((AbstractRunnableFutureC2076fw) AbstractC2011es.A01(this.A06)).A03();
        if (0 != 0) {
            throw new NullPointerException(A01(10, 6, 112));
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.fw != com.google.android.exoplayer2.util.RunnableFutureTask<java.lang.Void, java.io.IOException> */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1732aH
    public final void cancel() {
        this.A07 = true;
        AbstractRunnableFutureC2076fw<Void, IOException> abstractRunnableFutureC2076fw = this.A06;
        if (abstractRunnableFutureC2076fw != null) {
            abstractRunnableFutureC2076fw.cancel(true);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1732aH
    public final void remove() {
        this.A03.A0E().AHa(this.A03.A0F().A4b(this.A02));
    }
}
