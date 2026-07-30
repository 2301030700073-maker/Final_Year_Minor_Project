package com.facebook.ads.redexgen.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* renamed from: com.facebook.ads.redexgen.X.0v, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C08530v extends AbstractC1191Et implements Handler.Callback {
    public static byte[] A0H;
    public static String[] A0I = {"3WvyQm6eZ8fyu3DVkbaCyrAZnX3I6ufJ", "FZX0zBKkzAfc6z", "6l4vC0Lm5zxy6aFWmqrnB087ialuzwGI", "qqeCXiNIH0hdSmbKUzZAHpTsBt10hP0P", "cj", "sQzUbCBUfwO044aI", "9TFEzWk8WBCpCxrEkzjotM773HUVNOJT", "kKOvl6Wchw21fZ40J"};
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public long A04;
    public ZM A05;
    public TQ A06;
    public C10538s A07;
    public AbstractC10518q A08;
    public AbstractC10518q A09;
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public final Handler A0D;
    public final P6 A0E;
    public final InterfaceC1875cf A0F;
    public final InterfaceC1882cm A0G;

    public static String A03(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 7);
        }
        return new String(copyOfRange);
    }

    public static void A09() {
        A0H = new byte[]{73, 111, 120, 110, 115, 110, 118, Byte.MAX_VALUE, 58, 126, Byte.MAX_VALUE, 121, 117, 126, 115, 116, 125, 58, 124, 123, 115, 118, Byte.MAX_VALUE, 126, 52, 58, 105, 110, 104, Byte.MAX_VALUE, 123, 119, 92, 117, 104, 119, 123, 110, 39, 119, 70, 91, 87, 113, 70, 77, 71, 70, 81, 70, 81};
    }

    static {
        A09();
    }

    public C08530v(InterfaceC1882cm interfaceC1882cm, Looper looper, InterfaceC1875cf interfaceC1875cf) {
        super(3);
        this.A0G = (InterfaceC1882cm) AbstractC2011es.A01(interfaceC1882cm);
        this.A0D = looper == null ? null : AbstractC2094gE.A0c(looper, this);
        this.A0F = interfaceC1875cf;
        this.A0E = new P6();
        this.A02 = -9223372036854775807L;
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
    }

    private long A00() {
        if (this.A01 == -1) {
            return Long.MAX_VALUE;
        }
        AbstractC2011es.A01(this.A09);
        if (this.A01 >= this.A09.A7u()) {
            return Long.MAX_VALUE;
        }
        return this.A09.A7t(this.A01);
    }

    @RequiresNonNull({"subtitle"})
    @SideEffectFree
    private long A01(long j) {
        int A8Q = this.A09.A8Q(j);
        if (A8Q != 0) {
            int nextEventTimeIndex = this.A09.A7u();
            if (nextEventTimeIndex != 0) {
                if (A8Q == -1) {
                    AbstractC10518q abstractC10518q = this.A09;
                    int nextEventTimeIndex2 = this.A09.A7u();
                    return abstractC10518q.A7t(nextEventTimeIndex2 - 1);
                }
                int nextEventTimeIndex3 = A8Q - 1;
                return this.A09.A7t(nextEventTimeIndex3);
            }
        }
        return ((AbstractC1635Wu) this.A09).A01;
    }

    @SideEffectFree
    private long A02(long j) {
        boolean z = true;
        AbstractC2011es.A08(j != -9223372036854775807L);
        if (this.A04 == -9223372036854775807L) {
            z = false;
        }
        AbstractC2011es.A08(z);
        return j - this.A04;
    }

    private void A04() {
        A0C(new C1474Qf(MetaExoPlayerCustomizedCollections.A01(), A02(this.A03)));
    }

    private void A05() {
        this.A0C = true;
        this.A06 = this.A0F.A5A((ZM) AbstractC2011es.A01(this.A05));
    }

    private void A06() {
        this.A07 = null;
        this.A01 = -1;
        if (this.A09 != null) {
            this.A09.A0B();
            this.A09 = null;
        }
        if (this.A08 != null) {
            this.A08.A0B();
            this.A08 = null;
        }
    }

    private void A07() {
        A06();
        ((TQ) AbstractC2011es.A01(this.A06)).AGj();
        this.A06 = null;
        this.A00 = 0;
    }

    private void A08() {
        A07();
        A05();
    }

    private void A0A(TP tp) {
        AbstractC2055fb.A08(A03(39, 12, 36), A03(0, 39, 29) + this.A05, tp);
        A0D(new C1881cl(this.A05, tp));
        A04();
        A08();
    }

    private void A0B(C1474Qf c1474Qf) {
        this.A0G.ACp(c1474Qf.A01);
        this.A0G.ACo(c1474Qf);
    }

    private void A0C(C1474Qf c1474Qf) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(0, c1474Qf).sendToTarget();
        } else {
            A0B(c1474Qf);
        }
    }

    @MetaExoPlayerCustomization(type = {"NEW_METHOD"}, value = "Method to propagate any SubtitleDecoder Error upwards")
    private void A0D(C1881cl c1881cl) {
        if (this.A0D != null) {
            this.A0D.obtainMessage(1, c1881cl).sendToTarget();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1Z() {
        this.A05 = null;
        this.A02 = -9223372036854775807L;
        A04();
        this.A04 = -9223372036854775807L;
        this.A03 = -9223372036854775807L;
        A07();
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1a(long j, boolean z) {
        this.A03 = j;
        A04();
        this.A0A = false;
        this.A0B = false;
        this.A02 = -9223372036854775807L;
        if (this.A00 != 0) {
            A08();
        } else {
            A06();
            ((TQ) AbstractC2011es.A01(this.A06)).flush();
        }
    }

    @Override // com.facebook.ads.redexgen.core.AbstractC1191Et
    public final void A1c(ZM[] zmArr, long j, long j2) {
        this.A04 = j2;
        this.A05 = zmArr[0];
        if (this.A06 != null) {
            this.A00 = 1;
        } else {
            A05();
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final boolean AAE() {
        return this.A0B;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final boolean AAT() {
        return true;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq
    public final void AHd(long j, long j2) {
        int i;
        this.A03 = j;
        if (AAC() && this.A02 != -9223372036854775807L && j >= this.A02) {
            A06();
            String[] strArr = A0I;
            if (strArr[4].length() == strArr[5].length()) {
                throw new RuntimeException();
            }
            A0I[0] = "FpNfrWwHerswMK3uzdCwXYpLOohu6ZxI";
            this.A0B = true;
        }
        if (this.A0B) {
            return;
        }
        if (this.A08 == null) {
            TQ tq = this.A06;
            String[] strArr2 = A0I;
            if (strArr2[7].length() != strArr2[1].length()) {
                A0I[6] = "pizgxuJ8qzJ0XY3Qb4fPPou13xZZyBde";
                ((TQ) AbstractC2011es.A01(tq)).AIn(j);
            } else {
                ((TQ) AbstractC2011es.A01(tq)).AIn(j);
            }
            try {
                this.A08 = ((TQ) AbstractC2011es.A01(this.A06)).A5j();
            } catch (TP e) {
                A0A(e);
                return;
            }
        }
        int A90 = A90();
        if (A0I[6].charAt(24) != '3') {
            String[] strArr3 = A0I;
            strArr3[4] = "FJ";
            strArr3[5] = "1OlycrCvfKlLNEvf";
            i = 0;
            if (A90 != 0) {
                return;
            }
        } else {
            String[] strArr4 = A0I;
            strArr4[3] = "rAwrherVLoB9hDbboAipBd54PP9tdkSf";
            strArr4[2] = "hVn1tpbZ7QSUOGOxJndIxosuMZKMmY4d";
            i = 2;
            if (A90 != 2) {
                return;
            }
        }
        boolean z = false;
        if (this.A09 != null) {
            long A00 = A00();
            while (A00 <= j) {
                this.A01++;
                A00 = A00();
                z = true;
            }
        }
        if (this.A08 != null) {
            AbstractC10518q abstractC10518q = this.A08;
            boolean textRendererNeedsUpdate = abstractC10518q.A05();
            if (textRendererNeedsUpdate) {
                if (!z && A00() == Long.MAX_VALUE) {
                    if (this.A00 == i) {
                        A08();
                    } else {
                        A06();
                        this.A0B = true;
                    }
                }
            } else if (((AbstractC1635Wu) abstractC10518q).A01 <= j) {
                if (this.A09 != null) {
                    this.A09.A0B();
                }
                this.A01 = abstractC10518q.A8Q(j);
                this.A09 = abstractC10518q;
                String[] strArr5 = A0I;
                if (strArr5[4].length() != strArr5[5].length()) {
                    String[] strArr6 = A0I;
                    strArr6[7] = "bBSmd5PctXg1QmIcB";
                    strArr6[1] = "qvmvf5RKavjwzG";
                    this.A08 = null;
                    z = true;
                } else {
                    this.A08 = null;
                    z = true;
                }
            }
        }
        if (z) {
            AbstractC2011es.A01(this.A09);
            A0C(new C1474Qf(this.A09.A7N(j), A02(A01(j))));
        }
        if (this.A00 == i) {
            return;
        }
        while (true) {
            try {
                boolean textRendererNeedsUpdate2 = this.A0A;
                if (!textRendererNeedsUpdate2) {
                    C10538s c10538s = this.A07;
                    if (c10538s == null) {
                        c10538s = ((TQ) AbstractC2011es.A01(this.A06)).A5h();
                        if (c10538s != null) {
                            this.A07 = c10538s;
                        } else {
                            return;
                        }
                    }
                    if (this.A00 == 1) {
                        c10538s.A02(4);
                        ((TQ) AbstractC2011es.A01(this.A06)).AGR(c10538s);
                        this.A07 = null;
                        this.A00 = i;
                        return;
                    }
                    int A1R = A1R(this.A0E, c10538s, 0);
                    if (A1R == -4) {
                        boolean textRendererNeedsUpdate3 = c10538s.A05();
                        if (textRendererNeedsUpdate3) {
                            this.A0A = true;
                            this.A0C = false;
                        } else {
                            ZM zm = this.A0E.A00;
                            if (zm != null) {
                                c10538s.A00 = zm.A0M;
                                c10538s.A0B();
                                boolean z2 = this.A0C;
                                boolean textRendererNeedsUpdate4 = c10538s.A07();
                                this.A0C = (textRendererNeedsUpdate4 ? false : true) & z2;
                            } else {
                                return;
                            }
                        }
                        boolean textRendererNeedsUpdate5 = this.A0C;
                        if (!textRendererNeedsUpdate5) {
                            ((TQ) AbstractC2011es.A01(this.A06)).AGR(c10538s);
                            this.A07 = null;
                        }
                    } else if (A1R == -3) {
                        return;
                    }
                } else {
                    return;
                }
            } catch (TP e2) {
                A0A(e2);
                return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1477Qi
    public final int AJR(ZM zm) {
        if (this.A0F.AJS(zm)) {
            int A00 = AbstractC1470Qb.A00(4);
            if (A0I[6].charAt(24) != '3') {
                throw new RuntimeException();
            }
            String[] strArr = A0I;
            strArr[4] = "EN";
            strArr[5] = "jgxOlwVisoQfrYD7";
            return A00;
        }
        if (Q2.A0E(zm.A0W)) {
            return AbstractC1470Qb.A00(1);
        }
        return AbstractC1470Qb.A00(0);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1682Yq, com.facebook.ads.redexgen.core.InterfaceC1477Qi
    public final String getName() {
        return A03(39, 12, 36);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                A0B((C1474Qf) message.obj);
                return true;
            case 1:
                return true;
            default:
                throw new IllegalStateException();
        }
    }
}
