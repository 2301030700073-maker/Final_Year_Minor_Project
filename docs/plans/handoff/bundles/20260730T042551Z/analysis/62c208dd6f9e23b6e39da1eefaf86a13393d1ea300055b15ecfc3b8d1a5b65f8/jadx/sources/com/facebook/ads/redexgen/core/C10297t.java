package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.facebook.ads.redexgen.X.7t, reason: invalid class name and case insensitive filesystem */
/* loaded from: assets/audience_network.dex */
public final class C10297t {
    public static C1D A0A;
    public static List<String> A0B;
    public static byte[] A0C;
    public static String[] A0D = {"9sbbD15", "Lu4K49mlxrSXSmjNh7fbv8QTyeXNNeG", "dxmg93Ac1Ci0DpKcQcYnCSB5QhHSt8Hl", "k6rgF4fsXLHTj2vl", "7FEQyJVT", "NWpMXisSbHx8hQWP", "4pbn9SiXGJE3zFdxdKEeQNSdsbhvbmq3", "cv"};
    public static final String A0E;
    public static final Map<String, C1J> A0F;
    public static final Map<String, C10317v> A0G;
    public long A00;
    public AF A01;
    public final C10307u A03;
    public final AnonymousClass85 A04;
    public final boolean A08;
    public final boolean A09;
    public final Map<String, Bitmap> A07 = Collections.synchronizedMap(new HashMap());
    public final Handler A02 = new Handler(Looper.getMainLooper());
    public final List<Callable<Boolean>> A05 = new ArrayList();
    public final List<Callable<Boolean>> A06 = new ArrayList();

    public static String A08(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 92);
        }
        return new String(copyOfRange);
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 8 out of bounds for length 7
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static AtomicBoolean A0D(ArrayList<Callable<Boolean>> arrayList) {
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator<Callable<Boolean>> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(D8.A02().submit(it.next()));
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        try {
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                Boolean bool = (Boolean) ((Future) it2.next()).get();
                atomicBoolean.set(atomicBoolean.get() && bool != null && bool.booleanValue());
            }
        } catch (InterruptedException | ExecutionException e) {
            Log.e(A0E, A08(85, 42, 126), e);
            atomicBoolean.set(false);
        }
        return atomicBoolean;
    }

    public static void A0F() {
        A0C = new byte[]{125, 46, 124, 123, 122, 124, 125, 41, 88, 8, 15, 13, 89, 90, 12, 32, 37, 32, 118, 118, 47, 46, 37, 11, 41, 43, 32, 45, 104, 59, 60, 41, 58, 60, 45, 44, 102, 100, 70, 68, 79, 78, 73, 64, 7, 68, 72, 74, 87, 75, 66, 83, 66, 63, 29, 31, 20, 21, 18, 27, 92, 26, 29, 21, 16, 25, 24, 69, 103, 101, 110, 111, 104, 97, 38, 117, 114, 103, 116, 114, 99, 98, 40, 40, 40, 103, 90, 65, 71, 82, 86, 75, 77, 76, 2, 85, 74, 75, 78, 71, 2, 71, 90, 71, 65, 87, 86, 75, 76, 69, 2, 65, 67, 65, 74, 71, 2, 70, 77, 85, 76, 78, 77, 67, 70, 81, 12, 66, 64, 66, 73, 68, 98, 78, 76, 81, 77, 68, 85, 72, 78, 79, 105, 78, 78, 74, 111, 109, 111, 100, 105, 74, 109, 101, 96, 121, 126, 105, 68, 99, 99, 103, 104, 117, 104, 110, 120, 121, 104, 101, 102, 104, 109, 119, 116, 122, Byte.MAX_VALUE, 68, 111, 114, 118, 126, 68, 118, 104, 89, 66, 69, 93};
    }

    static {
        A0F();
        A0E = C10297t.class.getSimpleName();
        A0F = Collections.synchronizedMap(new HashMap());
        A0G = Collections.synchronizedMap(new HashMap());
    }

    public C10297t(AnonymousClass85 anonymousClass85) {
        this.A04 = anonymousClass85;
        this.A03 = C10307u.A06(anonymousClass85.A02());
        this.A08 = C10729m.A2g(anonymousClass85);
        this.A09 = C10729m.A2p(anonymousClass85, J3.A03());
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.facebook.ads.redexgen.X.1K] */
    public static synchronized C1D A03(C2321k0 c2321k0) {
        C1D c1d;
        synchronized (C10297t.class) {
            if (A0A == null) {
                A0A = C1E.A00(c2321k0, new Object() { // from class: com.facebook.ads.redexgen.X.1K
                    public int A00;
                    public int A01;
                    public boolean A02;
                    public boolean A03;
                    public boolean A04;

                    public final C1K A00(int i) {
                        this.A00 = i;
                        return this;
                    }

                    public final C1K A01(int i) {
                        this.A01 = i;
                        return this;
                    }

                    public final C1K A02(boolean z) {
                        this.A02 = z;
                        return this;
                    }

                    public final C1K A03(boolean z) {
                        this.A03 = z;
                        return this;
                    }

                    public final C1K A04(boolean z) {
                        this.A04 = z;
                        return this;
                    }

                    public final C1L A05() {
                        return new C1L(this.A00, this.A02, this.A01, this.A03, this.A04);
                    }
                }.A00(C10729m.A06(c2321k0)).A02(c2321k0.A05().AAD()).A01(-1).A03(C10729m.A0o(c2321k0)).A04(C10729m.A2o(c2321k0)).A05(), A05(c2321k0));
            }
            c1d = A0A;
        }
        return c1d;
    }

    public static C1J A04(AnonymousClass85 anonymousClass85, String str) {
        C1J c1j = A0F.get(str);
        if (C10327w.A06(anonymousClass85) && c1j != null) {
            C1J storedCacheData = new C1J(c1j);
            return storedCacheData;
        }
        C1J storedCacheData2 = new C1J(str);
        return storedCacheData2;
    }

    public static C2326k5 A05(C2321k0 c2321k0) {
        return new C2326k5(c2321k0);
    }

    public static synchronized List<String> A09(AnonymousClass85 anonymousClass85) {
        List<String> list;
        synchronized (C10297t.class) {
            if (A0B == null) {
                A0B = new ArrayList();
                A0J(A0B, anonymousClass85);
            }
            list = A0B;
        }
        return list;
    }

    public static /* synthetic */ Map A0A() {
        Map<String, C10317v> map = A0G;
        if (A0D[7].length() == 16) {
            throw new RuntimeException();
        }
        A0D[6] = "WjQPXn0MHZbTNsTxKlY7B5aUAaJR9kiv";
        return map;
    }

    public static void A0H(AnonymousClass85 anonymousClass85, String str) {
        if (C10327w.A06(anonymousClass85) && !TextUtils.isEmpty(str)) {
            C10317v c10317v = A0G.get(str);
            if (A0D[7].length() == 16) {
                throw new RuntimeException();
            }
            A0D[6] = "a10tGuQmEwUEP0sxRmqxEmZkNnUikCvX";
            if (c10317v != null) {
                c10317v.A00 = A08(185, 4, 118);
                C2321k0 A02 = anonymousClass85.A02();
                J7 A01 = J7.A01(A02);
                String A09 = J7.A09(A02, C5.A00(str));
                if (A09 == null) {
                    A09 = str;
                }
                C10327w.A04(anonymousClass85, c10317v, A01.A0J(A09));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0I(AE ae) {
        if (this.A01 == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(A08(173, 12, 71), C1140Cu.A05(this.A00));
        this.A01.A04(ae, hashMap);
    }

    public static void A0J(List<String> cacheDirs, AnonymousClass85 anonymousClass85) {
        A0K(cacheDirs, C2539nd.A01(anonymousClass85));
        A0K(cacheDirs, C10307u.A07(anonymousClass85));
    }

    public static void A0K(List<String> list, File file) {
        String path;
        if (file == null || (path = file.getPath()) == null) {
            return;
        }
        String path2 = A08(0, 0, FacebookMediationAdapter.ERROR_REQUIRES_ACTIVITY_CONTEXT);
        if (path != path2) {
            Locale locale = Locale.getDefault();
            String path3 = A0D[4];
            if (path3.length() == 2) {
                throw new RuntimeException();
            }
            A0D[4] = "BAOa9xP";
            String path4 = path.toLowerCase(locale);
            list.add(path4);
        }
    }

    public final Bitmap A0M(String str) {
        return this.A07.get(str);
    }

    public final Bitmap A0N(String str, int i, int i2) {
        if (this.A08) {
            C1J A04 = A04(this.A04, str);
            A04.A03 = A08(185, 4, 118);
            A04.A01 = i2;
            A04.A00 = i;
            return A03(this.A04.A02()).AHk(A04, true).A00();
        }
        return this.A03.A0E(this.A04, str, i, i2, A08(169, 4, 85));
    }

    public final File A0O(String str) {
        C1J A04 = A04(this.A04, str);
        A04.A03 = A08(185, 4, 118);
        return A03(this.A04.A02()).AHl(A04);
    }

    public final File A0P(String str) {
        if (this.A08) {
            return A0O(str);
        }
        return this.A03.A0F(str);
    }

    public final String A0Q(String str) {
        if (this.A08) {
            return A0R(str);
        }
        return this.A03.A0G(str);
    }

    public final String A0R(String str) {
        C1J A04 = A04(this.A04, str);
        A04.A03 = A08(185, 4, 118);
        String AHn = A03(this.A04.A02()).AHn(A04);
        return AHn != null ? AHn : str;
    }

    public final String A0S(String str) {
        if (this.A09) {
            A0H(this.A04, str);
            return str;
        }
        return A0R(str);
    }

    public final void A0T() {
        AbstractC1100Au.A05(A08(ModuleDescriptor.MODULE_VERSION, 19, 125), A08(37, 16, 123), A08(0, 8, 20));
    }

    public final void A0U() {
        AbstractC1100Au.A05(A08(146, 16, 80), A08(53, 14, 32), A08(8, 7, 50));
    }

    public final void A0V() {
        this.A07.clear();
    }

    public final void A0W(InterfaceC10217l interfaceC10217l, C10227m c10227m) {
        AbstractC1100Au.A05(A08(162, 7, 81), A08(67, 18, 90), A08(15, 8, 75));
        this.A00 = System.currentTimeMillis();
        C10327w.A02(this.A04, c10227m, C10327w.A07, A08(23, 14, 20), -1L);
        D8.A03().execute(new C2327k6(this, new ArrayList(this.A05), c10227m, interfaceC10217l, new ArrayList(this.A06)));
        this.A05.clear();
        this.A06.clear();
    }

    public final void A0X(C10257p c10257p) {
        this.A05.add(new CallableC10267q(this, c10257p));
    }

    public final void A0Y(C10257p c10257p) {
        c10257p.A05 = true;
        this.A06.add(new CallableC10267q(this, c10257p));
    }

    public final void A0Z(C10257p c10257p) {
        c10257p.A05 = true;
        if (this.A09) {
            this.A06.add(new CallableC10247o(this, c10257p));
        } else {
            this.A06.add(new CallableC10267q(this, c10257p));
        }
    }

    public final void A0a(C10257p c10257p) {
        if (this.A09) {
            this.A05.add(new CallableC10247o(this, c10257p));
        } else {
            this.A05.add(new CallableC10267q(this, c10257p));
        }
    }

    public final void A0b(final C10277r c10277r) {
        Callable<Boolean> callable = new Callable<Boolean>(c10277r) { // from class: com.facebook.ads.redexgen.X.7s
            public static byte[] A02;
            public final C10277r A00;

            static {
                A02();
            }

            public static String A01(int i, int i2, int i3) {
                byte[] copyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < copyOfRange.length; i4++) {
                    copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 2);
                }
                return new String(copyOfRange);
            }

            public static void A02() {
                A02 = new byte[]{-35, -31, -43, -37, -39};
            }

            {
                this.A00 = c10277r;
            }

            private final Boolean A00() {
                AnonymousClass85 anonymousClass85;
                boolean z;
                C10307u c10307u;
                boolean z2;
                boolean z3;
                AnonymousClass85 anonymousClass852;
                C1D A03;
                Map map;
                if (BQ.A02(this)) {
                    return null;
                }
                try {
                    TrafficStats.setThreadStatsTag(61453);
                    C1J c1j = new C1J(this.A00.A07, this.A00.A06, this.A00.A05, A01(0, 5, 114), this.A00.A01, this.A00.A02);
                    c1j.A01 = this.A00.A04;
                    c1j.A00 = this.A00.A03;
                    anonymousClass85 = C10297t.this.A04;
                    if (C10327w.A06(anonymousClass85)) {
                        map = C10297t.A0F;
                        map.put(this.A00.A07, c1j);
                    }
                    z = C10297t.this.A08;
                    boolean precacheResult = false;
                    if (!z) {
                        c10307u = C10297t.this.A03;
                        if (c10307u.A0D(this.A00) != null) {
                            precacheResult = true;
                        }
                    } else {
                        anonymousClass852 = C10297t.this.A04;
                        A03 = C10297t.A03(anonymousClass852.A02());
                        precacheResult = A03.AHk(c1j, false).A01();
                    }
                    C7z c7z = this.A00.A00;
                    if (c7z != null && c7z.A02()) {
                        int A00 = c7z.A00();
                        int A01 = c7z.A01();
                        if (A00 <= 0 || A01 <= 0) {
                            z2 = C10297t.this.A08;
                            if (z2) {
                                A04(this.A00.A07, c1j);
                            } else {
                                A03(this.A00.A03, this.A00.A04);
                            }
                        } else {
                            z3 = C10297t.this.A08;
                            if (z3) {
                                c1j.A00 = A00;
                                c1j.A01 = A01;
                                A04(this.A00.A07, c1j);
                            } else {
                                A03(A00, A01);
                            }
                        }
                    }
                    return Boolean.valueOf(precacheResult);
                } catch (Throwable th) {
                    BQ.A00(th, this);
                    return null;
                }
            }

            private void A03(int i, int i2) {
                C10307u c10307u;
                AnonymousClass85 anonymousClass85;
                Map map;
                c10307u = C10297t.this.A03;
                anonymousClass85 = C10297t.this.A04;
                Bitmap A0E2 = c10307u.A0E(anonymousClass85, this.A00.A07, i, i2, this.A00.A01);
                if (A0E2 == null) {
                    return;
                }
                map = C10297t.this.A07;
                map.put(this.A00.A07, A0E2);
            }

            private void A04(String str, C1J c1j) {
                AnonymousClass85 anonymousClass85;
                C1D A03;
                Map map;
                anonymousClass85 = C10297t.this.A04;
                A03 = C10297t.A03(anonymousClass85.A02());
                Bitmap A00 = A03.AHk(c1j, true).A00();
                if (A00 == null) {
                    return;
                }
                map = C10297t.this.A07;
                map.put(str, A00);
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
        };
        if (!c10277r.A02) {
            this.A05.add(callable);
        } else {
            this.A06.add(callable);
        }
    }

    public final void A0c(C10277r c10277r) {
        c10277r.A02 = true;
        A0b(c10277r);
    }

    public final void A0d(AF af) {
        this.A01 = af;
    }
}
