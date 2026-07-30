package com.facebook.ads.redexgen.core;

import android.os.ConditionVariable;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableSet;
import java.util.Random;
import java.util.TreeSet;

/* loaded from: assets/audience_network.dex */
public final class PM implements InterfaceC1984eR {
    public static byte[] A0B;
    public static String[] A0C = {"NeG", "ZqLGR0II", "VhFF6A41EB9yMgBx7OOJg2s6vj05dBgU", "OUd", "TlQxLF6czJHpQgPh0ASs4MsenlOz7WyM", "Y9r4lpPydj3ardGD0TB3VIqTqNBHHFXp", "LEOkX0ErtuFRc94XfWhkHm9nJ5sSPp0y", "xJXNeDWsR2XKIfULMtfSdi2pfNk8Ydql"};
    public static final HashSet<File> A0D;
    public long A00;
    public long A01;
    public C1981eO A02;
    public boolean A03;
    public final PW A04;
    public final C1990eX A05;
    public final C2003ek A06;
    public final File A07;
    public final HashMap<String, ArrayList<InterfaceC1983eQ>> A08;
    public final Random A09;
    public final boolean A0A;

    public static String A04(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(copyOfRange);
    }

    public static void A07() {
        A0B = new byte[]{22, 77, 81, 92, 109, 66, 67, 88, 68, 73, 94, 12, Byte.MAX_VALUE, 69, 65, 92, 64, 73, 111, 77, 79, 68, 73, 12, 69, 66, 95, 88, 77, 66, 79, 73, 12, 89, 95, 73, 95, 12, 88, 68, 73, 12, 74, 67, 64, 72, 73, 94, 22, 12, 40, 21, 2, 61, 1, 12, 20, 8, 31, 87, 62, 4, 0, 29, 1, 8, 46, 12, 14, 5, 8, 36, 3, 4, 25, 67, 100, 108, 105, 96, 97, 37, 113, 106, 37, 102, 119, 96, 100, 113, 96, 37, 80, 76, 65, 37, 99, 108, 105, 96, 63, 37, 90, 125, 117, 112, 121, 120, 60, 104, 115, 60, Byte.MAX_VALUE, 110, 121, 125, 104, 121, 60, Byte.MAX_VALUE, 125, Byte.MAX_VALUE, 116, 121, 60, 73, 85, 88, 38, 60, 57, 30, 22, 19, 26, 27, 95, 11, 16, 95, 28, 13, 26, 30, 11, 26, 95, 28, 30, 28, 23, 26, 95, 27, 22, 13, 26, 28, 11, 16, 13, 6, 69, 95, 40, 15, 7, 2, 11, 10, 78, 26, 1, 78, 7, 0, 7, 26, 7, 15, 2, 7, 20, 11, 78, 13, 15, 13, 6, 11, 78, 7, 0, 10, 7, 13, 11, 29, 84, 78, 88, Byte.MAX_VALUE, 119, 114, 123, 122, 62, 106, 113, 62, 114, 119, 109, 106, 62, 125, Byte.MAX_VALUE, 125, 118, 123, 62, 122, 119, 108, 123, 125, 106, 113, 108, 103, 62, 120, 119, 114, 123, 109, 36, 62, 32, 7, 15, 10, 3, 2, 70, 18, 9, 70, 20, 3, 11, 9, 16, 3, 70, 0, 15, 10, 3, 70, 15, 8, 2, 3, 30, 70, 3, 8, 18, 20, 31, 70, 0, 9, 20, 92, 70, 5, 41, 36, 46, 39, 58, 37, 45, 44, 104, 29, 1, 12, 104, 46, 33, 36, 45, 114, 104, 86, 108, 104, 117, 105, 96, 70, 100, 102, 109, 96, 70, 97, 122, 103, 124, 123, 114, 53, 124, 123, 113, 112, 109, 53, 115, 124, 121, 112, 53, 115, 116, 124, 121, 112, 113};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 23 out of bounds for length 21
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    private void A0G(File file, boolean z, File[] fileArr, Map<String, C1989eW> map) {
        if (fileArr != null) {
            int length = fileArr.length;
            String[] strArr = A0C;
            if (strArr[3].length() != strArr[0].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0C;
            strArr2[5] = "JvdtWKMo7eQcxg1pXqeetZZ0pN5yBCYZ";
            strArr2[7] = "AmYndUCprjwVoxFacnTWPGUeuN4MhvHz";
            if (length != 0) {
                for (File file2 : fileArr) {
                    String name = file2.getName();
                    if (z && name.indexOf(46) == -1) {
                        A0G(file2, false, file2.listFiles(), map);
                    } else if (!z || (!C2003ek.A0A(name) && !name.endsWith(A04(0, 4, 11)))) {
                        long j = -1;
                        long j2 = -9223372036854775807L;
                        C1989eW remove = map != null ? map.remove(name) : null;
                        if (remove != null) {
                            j = remove.A01;
                            j2 = remove.A00;
                        }
                        PJ A00 = PJ.A00(file2, j, j2, this.A06);
                        if (A00 != null) {
                            A0C(A00);
                        } else {
                            file2.delete();
                        }
                    }
                }
                return;
            }
        }
        if (z) {
            return;
        }
        file.delete();
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public final synchronized NavigableSet<C1994eb> A0I(String str) {
        C2001ei A0C2;
        AbstractC2011es.A08(!this.A03);
        A0C2 = this.A06.A0C(str);
        return (A0C2 == null || A0C2.A09()) ? new TreeSet() : new TreeSet((Collection) A0C2.A06());
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized long A71(String str, long j, long j2) {
        long j3;
        long j4 = j;
        synchronized (this) {
            long j5 = j2 == -1 ? Long.MAX_VALUE : j4 + j2;
            if (j5 < 0) {
                j5 = Long.MAX_VALUE;
            }
            j3 = 0;
            while (j4 < j5) {
                long A72 = A72(str, j4, j5 - j4);
                if (A72 > 0) {
                    j3 += A72;
                } else {
                    A72 = -A72;
                }
                j4 += A72;
            }
        }
        return j3;
    }

    static {
        A07();
        A0D = new HashSet<>();
    }

    @Deprecated
    public PM(File file, PW pw) {
        this(file, pw, (byte[]) null, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PM(java.io.File r8, com.facebook.ads.redexgen.core.PW r9, com.facebook.ads.redexgen.core.InterfaceC1521Sb r10, byte[] r11, boolean r12, boolean r13) {
        /*
            r7 = this;
            com.facebook.ads.redexgen.X.ek r1 = new com.facebook.ads.redexgen.X.ek
            r5 = r12
            r4 = r11
            r2 = r10
            r6 = r13
            r3 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            if (r2 == 0) goto L17
            if (r6 != 0) goto L17
            com.facebook.ads.redexgen.X.eX r0 = new com.facebook.ads.redexgen.X.eX
            r0.<init>(r2)
        L13:
            r7.<init>(r3, r9, r1, r0)
            return
        L17:
            r0 = 0
            goto L13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.PM.<init>(java.io.File, com.facebook.ads.redexgen.X.PW, com.facebook.ads.redexgen.X.Sb, byte[], boolean, boolean):void");
    }

    public PM(File file, PW pw, C2003ek c2003ek, C1990eX c1990eX) {
        if (A0H(file)) {
            this.A07 = file;
            this.A04 = pw;
            this.A06 = c2003ek;
            this.A05 = c1990eX;
            this.A08 = new HashMap<>();
            this.A09 = new Random();
            this.A0A = pw.AHp();
            this.A01 = -1L;
            ConditionVariable conditionVariable = new ConditionVariable();
            new C2010er(this, A04(50, 25, 94), conditionVariable).start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException(A04(4, 46, 31) + file);
    }

    @Deprecated
    public PM(File file, PW pw, byte[] bArr, boolean z) {
        this(file, pw, null, bArr, z, true);
    }

    public static long A00(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
        File file2 = new File(file, Long.toString(abs, 16) + A04(0, 4, 11));
        if (file2.createNewFile()) {
            return abs;
        }
        throw new IOException(A04(75, 27, 54) + file2);
    }

    public static long A01(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    public static long A02(File[] fileArr) {
        for (File file : fileArr) {
            String fileName = file.getName();
            if (fileName.endsWith(A04(0, 4, 11))) {
                try {
                    return A01(fileName);
                } catch (NumberFormatException unused) {
                    AbstractC2055fb.A05(A04(297, 11, 54), A04(277, 20, 123) + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    private PJ A03(String str, long j, long j2) {
        PJ A04;
        C2001ei A0C2 = this.A06.A0C(str);
        if (A0C2 == null) {
            return PJ.A03(str, j, j2);
        }
        while (true) {
            A04 = A0C2.A04(j, j2);
            if (!A04.A05 || A04.A03.length() == A04.A01) {
                break;
            }
            A06();
        }
        return A04;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A05() {
        if (!this.A07.exists()) {
            try {
                A0F(this.A07);
            } catch (C1981eO e) {
                this.A02 = e;
                return;
            }
        }
        File[] listFiles = this.A07.listFiles();
        String A04 = A04(297, 11, 54);
        if (listFiles == null) {
            String str = A04(200, 38, 45) + this.A07;
            AbstractC2055fb.A05(A04, str);
            this.A02 = new C1981eO(str);
            return;
        }
        this.A01 = A02(listFiles);
        if (this.A01 == -1) {
            try {
                this.A01 = A00(this.A07);
            } catch (IOException e2) {
                String str2 = A04(102, 28, 47) + this.A07;
                AbstractC2055fb.A08(A04, str2, e2);
                this.A02 = new C1981eO(str2, e2);
                return;
            }
        }
        try {
            this.A06.A0J(this.A01);
            if (this.A05 != null) {
                this.A05.A06(this.A01);
                Map<String, C1989eW> A05 = this.A05.A05();
                A0G(this.A07, true, listFiles, A05);
                this.A05.A09(A05.keySet());
            } else {
                A0G(this.A07, true, listFiles, null);
            }
            this.A06.A0H();
            try {
                this.A06.A0I();
            } catch (IOException e3) {
                AbstractC2055fb.A08(A04, A04(308, 25, 38), e3);
            }
        } catch (IOException e4) {
            String str3 = A04(164, 36, 93) + this.A07;
            AbstractC2055fb.A08(A04, str3, e4);
            this.A02 = new C1981eO(str3, e4);
        }
    }

    private void A06() {
        ArrayList arrayList = new ArrayList();
        Iterator<C2001ei> it = this.A06.A0G().iterator();
        while (it.hasNext()) {
            Iterator<PJ> it2 = it.next().A06().iterator();
            while (it2.hasNext()) {
                PJ next = it2.next();
                if (next.A03.length() != next.A01) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            A0A((C1994eb) arrayList.get(i));
        }
    }

    private final synchronized void A08() throws C1981eO {
        if (this.A02 != null) {
            throw this.A02;
        }
    }

    private void A09(C1994eb c1994eb) {
        ArrayList<InterfaceC1983eQ> arrayList = this.A08.get(c1994eb.A04);
        if (arrayList != null) {
            for (int i = arrayList.size() - 1; i >= 0; i--) {
                arrayList.get(i).AFC(this, c1994eb);
            }
        }
        this.A04.AFC(this, c1994eb);
    }

    private void A0A(C1994eb c1994eb) {
        C2001ei A0C2 = this.A06.A0C(c1994eb.A04);
        if (A0C2 == null || !A0C2.A0D(c1994eb)) {
            return;
        }
        this.A00 -= c1994eb.A01;
        if (this.A05 != null) {
            String name = c1994eb.A03.getName();
            try {
                this.A05.A07(name);
            } catch (IOException unused) {
                AbstractC2055fb.A07(A04(297, 11, 54), A04(238, 39, 85) + name);
            }
        }
        this.A06.A0K(A0C2.A02);
        A09(c1994eb);
    }

    private void A0C(PJ pj) {
        this.A06.A0D(pj.A04).A08(pj);
        this.A00 += pj.A01;
        A0D(pj);
    }

    private void A0D(PJ pj) {
        ArrayList<InterfaceC1983eQ> arrayList = this.A08.get(pj.A04);
        if (arrayList != null) {
            for (int i = arrayList.size() - 1; i >= 0; i--) {
                arrayList.get(i).AFB(this, pj);
            }
        }
        this.A04.AFB(this, pj);
    }

    private void A0E(PJ pj, C1994eb c1994eb) {
        ArrayList<InterfaceC1983eQ> arrayList = this.A08.get(pj.A04);
        if (arrayList != null) {
            for (int i = arrayList.size() - 1; i >= 0; i--) {
                arrayList.get(i).AFD(this, pj, c1994eb);
            }
        }
        this.A04.AFD(this, pj, c1994eb);
    }

    public static void A0F(File file) throws C1981eO {
        if (file.mkdirs() || file.isDirectory()) {
            return;
        }
        String str = A04(130, 34, 76) + file;
        String message = A04(297, 11, 54);
        AbstractC2055fb.A05(message, str);
        throw new C1981eO(str);
    }

    public static synchronized boolean A0H(File file) {
        boolean add;
        synchronized (PM.class) {
            add = A0D.add(file.getAbsoluteFile());
        }
        return add;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized void A44(String str, C2006en c2006en) throws C1981eO {
        AbstractC2011es.A08(!this.A03);
        A08();
        this.A06.A0L(str, c2006en);
        try {
            this.A06.A0I();
        } catch (IOException e) {
            throw new C1981eO(e);
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized void A4v(File file, long j) throws C1981eO {
        AbstractC2011es.A08(!this.A03);
        if (file.exists()) {
            if (j == 0) {
                file.delete();
                return;
            }
            PJ pj = (PJ) AbstractC2011es.A01(PJ.A01(file, j, this.A06));
            C2001ei c2001ei = (C2001ei) AbstractC2011es.A01(this.A06.A0C(pj.A04));
            AbstractC2011es.A08(c2001ei.A0B(pj.A02, pj.A01));
            long A00 = AbstractC2004el.A00(c2001ei.A03());
            if (A00 != -1) {
                AbstractC2011es.A08(pj.A02 + pj.A01 <= A00);
            }
            if (this.A05 != null) {
                try {
                    this.A05.A08(file.getName(), pj.A01, pj.A00);
                } catch (IOException e) {
                    throw new C1981eO(e);
                }
            }
            A0C(pj);
            try {
                this.A06.A0I();
                notifyAll();
            } catch (IOException e2) {
                throw new C1981eO(e2);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized long A70() {
        AbstractC2011es.A08(!this.A03);
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    @MetaExoPlayerCustomization
    public final synchronized long A72(String str, long j, long j2) {
        C2001ei cachedContent;
        AbstractC2011es.A08(!this.A03);
        if (j2 == -1) {
            j2 = Long.MAX_VALUE;
        }
        cachedContent = this.A06.A0C(str);
        return cachedContent != null ? cachedContent.A02(j, j2) : -j2;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized InterfaceC2005em A7I(String str) {
        AbstractC2011es.A08(!this.A03);
        return this.A06.A0E(str);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized void AGo(C1994eb c1994eb) {
        AbstractC2011es.A08(!this.A03);
        C2001ei c2001ei = (C2001ei) AbstractC2011es.A01(this.A06.A0C(c1994eb.A04));
        c2001ei.A07(c1994eb.A02);
        this.A06.A0K(c2001ei.A02);
        notifyAll();
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized void AHa(String str) {
        AbstractC2011es.A08(!this.A03);
        Iterator<C1994eb> it = A0I(str).iterator();
        while (it.hasNext()) {
            A0A(it.next());
        }
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized void AHb(C1994eb c1994eb) {
        AbstractC2011es.A08(!this.A03);
        A0A(c1994eb);
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized File AJD(String str, long lastTouchTimestamp, long j) throws C1981eO {
        C2001ei A0C2;
        File file;
        AbstractC2011es.A08(!this.A03);
        A08();
        A0C2 = this.A06.A0C(str);
        AbstractC2011es.A01(A0C2);
        AbstractC2011es.A08(A0C2.A0B(lastTouchTimestamp, j));
        if (!this.A07.exists()) {
            A0F(this.A07);
            A06();
        }
        this.A04.AFE(this, str, lastTouchTimestamp, j);
        file = new File(this.A07, Integer.toString(this.A09.nextInt(10)));
        if (!file.exists()) {
            A0F(file);
        }
        return PJ.A04(file, A0C2.A01, lastTouchTimestamp, System.currentTimeMillis());
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized C1994eb AJF(String str, long j, long j2, EnumC1982eP enumC1982eP) throws InterruptedException, C1981eO {
        C1994eb span;
        AbstractC2011es.A08(!this.A03);
        A08();
        while (true) {
            span = AJG(str, j, j2, enumC1982eP);
            if (span == null) {
                wait();
            }
        }
        return span;
    }

    @Override // com.facebook.ads.redexgen.core.InterfaceC1984eR
    public final synchronized PJ AJG(String str, long j, long j2, EnumC1982eP enumC1982eP) throws C1981eO {
        AbstractC2011es.A08(!this.A03);
        A08();
        PJ A03 = A03(str, j, j2);
        if (A03.A05) {
            PJ span = this.A06.A0C(str).A05(A03, A03.A00, false);
            A0E(A03, span);
            return span;
        }
        if (this.A06.A0D(str).A0C(j, A03.A01)) {
            return A03;
        }
        return null;
    }
}
