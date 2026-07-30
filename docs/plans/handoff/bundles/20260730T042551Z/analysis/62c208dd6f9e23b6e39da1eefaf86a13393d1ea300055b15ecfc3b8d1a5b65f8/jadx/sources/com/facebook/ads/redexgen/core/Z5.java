package com.facebook.ads.redexgen.core;

import android.media.MediaCodec;
import android.os.SystemClock;
import android.util.Log;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: assets/audience_network.dex */
public class Z5 {
    public static byte[] A03;
    public boolean A00 = false;
    public final ConcurrentLinkedQueue<Z3> A01 = new ConcurrentLinkedQueue<>();
    public final /* synthetic */ Z6 A02;

    static {
        A05();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 32);
        }
        return new String(copyOfRange);
    }

    public static void A05() {
        A03 = new byte[]{94, 99, 120, 126, 107, 111, 114, 116, 117, 59, 108, 115, 126, 117, 59, 111, 105, 98, 114, 117, 124, 59, 111, 116, 59, 114, 117, 104, 111, 122, 117, 111, 114, 122, 111, 126, 59, 62, 104, 33, 59, 62, 104, 77, 101, 100, 105, 97, 67, 111, 100, 101, 99, 80, 111, 111, 108, 79, 112, 116, 105, 109, 105, 122, 101, 100, 90, 77, 77, 80, 77, 18, 72, 87, 86, 83, 90, 18, 77, 90, 83, 90, 94, 76, 90, 18, 92, 80, 91, 90, 92, 18, 89, 77, 80, 82, 18, 76, 90, 75, 18, 89, 86, 81, 94, 83, 83, 70, 5, 31, 26, 76, 117, 98, 98, Byte.MAX_VALUE, 98, 61, 103, 120, 121, 124, 117, 61, 98, 117, 124, 117, 113, 99, 117, 61, 115, Byte.MAX_VALUE, 116, 117, 115, 61, 118, 98, Byte.MAX_VALUE, 125, 61, 99, 117, 100, 42, 48, 53, 99, 20, 9, 30, 1, 29, 16, 8, 20, 3, 67, 95, 16, 7, 64, 95, 2, 3, 18, 95, 53, 16, 7, 64, 21, 60, 20, 21, 24, 16, 50, 30, 21, 20, 18, 48, 21, 16, 1, 5, 20, 3};
    }

    public Z5(Z6 z6) {
        this.A02 = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1691Yz A02(boolean z, C1383Mg c1383Mg, EnumC1380Mb enumC1380Mb, String str) throws MediaCodecInitializationException {
        Set<InterfaceC1691Yz> set;
        if (this.A02.A0I(z, c1383Mg) && Z6.A0G(str, c1383Mg)) {
            synchronized (this.A02.A04) {
                set = this.A02.A04.get(str);
            }
            if (set != null) {
                synchronized (set) {
                    if (!set.isEmpty()) {
                        Z6 z6 = this.A02;
                        z6.A00--;
                        Iterator<InterfaceC1691Yz> it = set.iterator();
                        InterfaceC1691Yz ret = it.next();
                        it.remove();
                        this.A02.A01().A08(z, str, enumC1380Mb, ret.hashCode());
                        return ret;
                    }
                }
            }
        }
        try {
            MZ A032 = this.A02.A01().A03(z, str, enumC1380Mb);
            InterfaceC1691Yz A033 = A03(z, str);
            this.A02.A01().A04(A032, A033.hashCode());
            return A033;
        } catch (Exception e) {
            throw new MediaCodecInitializationException(str, e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterfaceC1691Yz A03(boolean z, String str) throws Exception {
        String A04 = A04(150, 41, 81);
        if (z && Z6.A0E(str)) {
            try {
                return (InterfaceC1691Yz) Class.forName(A04).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                Log.w(A04(43, 23, 32), String.format(A04(0, 43, 59), A04, e.getMessage()));
            }
        }
        return new RQ(MediaCodec.createByCodecName(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A06, reason: merged with bridge method [inline-methods] */
    public void A0B(EnumC1380Mb enumC1380Mb) {
        String A04;
        String format;
        Z6 z6;
        Set<InterfaceC1691Yz> set;
        Iterator<Z3> it = this.A01.iterator();
        while (it.hasNext()) {
            Z3 next = it.next();
            try {
                try {
                    if (!next.A05) {
                        A07(next.A00, enumC1380Mb, Boolean.valueOf(next.A04), next.A01);
                    } else {
                        try {
                            try {
                                this.A02.A05 = SystemClock.elapsedRealtime();
                                next.A01.reset();
                                z6 = this.A02;
                            } catch (Throwable th) {
                                this.A02.A05 = -1L;
                                throw th;
                            }
                        } catch (IllegalStateException unused) {
                            A09(next.A02, next.A01);
                            z6 = this.A02;
                        }
                        z6.A05 = -1L;
                        if (next.A03) {
                            synchronized (this.A02.A04) {
                                set = this.A02.A04.get(next.A02);
                            }
                            if (set != null) {
                                synchronized (set) {
                                    set.add(next.A01);
                                    this.A02.A00++;
                                }
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.w(A04(43, 23, 32), String.format(A04(112, 38, 48), e.getMessage()));
                    try {
                        synchronized (this.A01) {
                            this.A01.remove(next);
                        }
                    } catch (Exception e2) {
                        A04 = A04(43, 23, 32);
                        format = String.format(A04(66, 46, 31), e2.getMessage());
                        Log.w(A04, format);
                    }
                }
                try {
                    synchronized (this.A01) {
                        this.A01.remove(next);
                    }
                } catch (Exception e3) {
                    A04 = A04(43, 23, 32);
                    format = String.format(A04(66, 46, 31), e3.getMessage());
                    Log.w(A04, format);
                }
            } catch (Throwable th2) {
                try {
                } catch (Exception e4) {
                    Log.w(A04(43, 23, 32), String.format(A04(66, 46, 31), e4.getMessage()));
                }
                synchronized (this.A01) {
                    this.A01.remove(next);
                    throw th2;
                }
            }
        }
    }

    private void A07(C1383Mg c1383Mg, EnumC1380Mb enumC1380Mb, Boolean bool, InterfaceC1691Yz interfaceC1691Yz) {
        try {
            if (!c1383Mg.A0Q || (!bool.booleanValue() && !c1383Mg.A0P)) {
                interfaceC1691Yz.stop();
            }
        } finally {
            this.A02.A01().A06(enumC1380Mb, interfaceC1691Yz.hashCode());
            interfaceC1691Yz.AGj();
            this.A02.A01().A05(enumC1380Mb, interfaceC1691Yz.hashCode());
        }
    }

    private void A09(String str, InterfaceC1691Yz interfaceC1691Yz) {
        Set<InterfaceC1691Yz> set;
        synchronized (this.A02.A04) {
            set = this.A02.A04.get(str);
        }
        if (set != null) {
            synchronized (set) {
                if (set.remove(interfaceC1691Yz)) {
                    Z6 z6 = this.A02;
                    z6.A00--;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void A0A(boolean r24, com.facebook.ads.redexgen.core.C1383Mg r25, final com.facebook.ads.redexgen.core.EnumC1380Mb r26, java.lang.String r27, com.facebook.ads.redexgen.core.InterfaceC1691Yz r28) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.Z5.A0A(boolean, com.facebook.ads.redexgen.X.Mg, com.facebook.ads.redexgen.X.Mb, java.lang.String, com.facebook.ads.redexgen.X.Yz):void");
    }
}
