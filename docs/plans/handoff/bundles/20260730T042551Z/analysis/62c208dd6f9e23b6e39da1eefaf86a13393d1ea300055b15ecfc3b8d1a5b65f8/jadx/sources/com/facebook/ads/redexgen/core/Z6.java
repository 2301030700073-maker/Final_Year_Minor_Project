package com.facebook.ads.redexgen.core;

import android.os.SystemClock;
import com.facebook.internal.security.OidcSecurityUtil;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import javax.annotation.Nullable;

/* loaded from: assets/audience_network.dex */
public final class Z6 {
    public static byte[] A06;
    public static final Z6 A07;

    @Nullable
    public MediaCodecPoolTracker A01;

    @Nullable
    public Boolean A02;
    public volatile Map<String, Set<InterfaceC1691Yz>> A04 = new HashMap();
    public final Z5 A03 = new Z5(this);
    public int A00 = 0;
    public volatile long A05 = -1;

    public static String A05(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 75);
        }
        return new String(copyOfRange);
    }

    public static void A08() {
        A06 = new byte[]{6, -2, 13, -6, -57, -3, -6, 15, -54, -3, -57, -6, 15, -54, -57, -3, -2, -4, 8, -3, -2, 11};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A0C(boolean z, C1383Mg c1383Mg, EnumC1380Mb enumC1380Mb, String str, InterfaceC1691Yz interfaceC1691Yz) {
        if (A0I(z, c1383Mg) && A0G(str, c1383Mg)) {
            boolean z2 = true;
            synchronized (this) {
                if (this.A00 < c1383Mg.A05) {
                    Set<InterfaceC1691Yz> set = this.A04.get(str);
                    if (set == null) {
                        set = A06();
                        this.A04.put(str, set);
                    }
                    if (set.contains(interfaceC1691Yz)) {
                        z2 = false;
                    } else if (((z && c1383Mg.A0M) || (!z && c1383Mg.A0L)) && set.size() < c1383Mg.A04) {
                        set.add(interfaceC1691Yz);
                        this.A00++;
                        z2 = false;
                    }
                }
                if (!z2) {
                    try {
                        try {
                            this.A05 = SystemClock.elapsedRealtime();
                            interfaceC1691Yz.reset();
                            A01().A07(enumC1380Mb, interfaceC1691Yz.hashCode());
                            return;
                        } catch (IllegalStateException unused) {
                            A0B(str, interfaceC1691Yz);
                        }
                    } finally {
                        this.A05 = -1L;
                    }
                }
            }
        }
        try {
            if (!c1383Mg.A0Q || (!z && !c1383Mg.A0P)) {
                interfaceC1691Yz.stop();
            }
        } finally {
            A01().A06(enumC1380Mb, interfaceC1691Yz.hashCode());
            interfaceC1691Yz.AGj();
            A01().A05(enumC1380Mb, interfaceC1691Yz.hashCode());
        }
    }

    static {
        A08();
        A07 = new Z6();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MediaCodecPoolTracker A01() {
        if (this.A01 != null) {
            return this.A01;
        }
        return NoOpMediaCodecPoolTracker.A02;
    }

    private InterfaceC1691Yz A03(boolean z, C1383Mg c1383Mg, EnumC1380Mb enumC1380Mb, String str) throws MediaCodecInitializationException {
        InterfaceC1691Yz A03;
        if (A0I(z, c1383Mg) && A0G(str, c1383Mg)) {
            synchronized (this) {
                Set<InterfaceC1691Yz> set = this.A04.get(str);
                if (set != null && !set.isEmpty()) {
                    this.A00--;
                    Iterator<InterfaceC1691Yz> it = set.iterator();
                    InterfaceC1691Yz ret = it.next();
                    it.remove();
                    A01().A08(z, str, enumC1380Mb, ret.hashCode());
                    return ret;
                }
            }
        }
        try {
            MZ A032 = A01().A03(z, str, enumC1380Mb);
            A03 = this.A03.A03(z, str);
            A01().A04(A032, A03.hashCode());
            return A03;
        } catch (Exception e) {
            throw new MediaCodecInitializationException(str, e);
        }
    }

    public static Z6 A04() {
        return A07;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<InterfaceC1691Yz> A06() {
        if (this.A02 != null && this.A02.booleanValue()) {
            return new CopyOnWriteArraySet();
        }
        return new HashSet();
    }

    private void A09(MediaCodecPoolTracker mediaCodecPoolTracker) {
        if (this.A01 == null) {
            this.A01 = mediaCodecPoolTracker;
        }
    }

    private void A0A(C1383Mg c1383Mg) {
        if (this.A02 == null) {
            synchronized (this) {
                if (this.A02 == null) {
                    this.A02 = Boolean.valueOf(c1383Mg.A0R);
                    if (this.A02.booleanValue()) {
                        this.A04 = new ConcurrentHashMap();
                    }
                }
            }
        }
    }

    private void A0B(String str, InterfaceC1691Yz interfaceC1691Yz) {
        Set<InterfaceC1691Yz> set = this.A04.get(str);
        if (set != null && set.remove(interfaceC1691Yz)) {
            this.A00--;
        }
    }

    public static boolean A0E(String str) {
        return str.equals(A05(0, 22, 78));
    }

    public static boolean A0G(String str, C1383Mg c1383Mg) {
        if (A0E(str) && c1383Mg.A0A) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean A0I(boolean z, C1383Mg c1383Mg) {
        if (c1383Mg.A0C && this.A05 != -1 && SystemClock.elapsedRealtime() - this.A05 > OidcSecurityUtil.TIMEOUT_IN_MILLISECONDS) {
            return false;
        }
        return A0J(z, c1383Mg);
    }

    public static boolean A0J(boolean z, C1383Mg c1383Mg) {
        return (z && c1383Mg.A0M) || (!z && c1383Mg.A0L);
    }

    public final InterfaceC1691Yz A0K(boolean z, C1383Mg c1383Mg, MediaCodecPoolTracker mediaCodecPoolTracker, EnumC1380Mb enumC1380Mb, String str) throws MediaCodecInitializationException {
        InterfaceC1691Yz A02;
        A09(mediaCodecPoolTracker);
        A0A(c1383Mg);
        if (c1383Mg.A0J) {
            A02 = this.A03.A02(z, c1383Mg, enumC1380Mb, str);
            return A02;
        }
        return A03(z, c1383Mg, enumC1380Mb, str);
    }

    public final void A0L(boolean z, C1383Mg c1383Mg, MediaCodecPoolTracker mediaCodecPoolTracker, EnumC1380Mb enumC1380Mb, String str, InterfaceC1691Yz interfaceC1691Yz) {
        A09(mediaCodecPoolTracker);
        if (c1383Mg.A0J) {
            this.A03.A0A(z, c1383Mg, enumC1380Mb, str, interfaceC1691Yz);
        } else {
            A0C(z, c1383Mg, enumC1380Mb, str, interfaceC1691Yz);
        }
    }
}
