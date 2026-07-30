package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;

/* renamed from: op, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3470op implements Closeable {

    /* renamed from: break, reason: not valid java name */
    public String f14855break;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public long f14856do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final U5 f14857do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final InterfaceC0671a6 f14858do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f14859do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public String[] f14860do;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public int[] f14862if;

    /* renamed from: new, reason: not valid java name */
    public int f14863new;

    /* renamed from: do, reason: not valid java name */
    public static final C3488p6 f14852do = C3488p6.m7786this("'\\");

    /* renamed from: if, reason: not valid java name */
    public static final C3488p6 f14854if = C3488p6.m7786this("\"\\");

    /* renamed from: for, reason: not valid java name */
    public static final C3488p6 f14853for = C3488p6.m7786this("{}[]:, \n\t\r\f/\\;#=");

    /* renamed from: for, reason: not valid java name and collision with other field name */
    public int f14861for = 0;

    /* renamed from: try, reason: not valid java name */
    public int f14864try = 1;

    static {
        C3488p6.m7786this("\n\r");
    }

    public C3470op(U5 u5) {
        int[] iArr = new int[32];
        this.f14859do = iArr;
        iArr[0] = 6;
        this.f14860do = new String[32];
        this.f14862if = new int[32];
        this.f14858do = u5;
        this.f14857do = u5;
    }

    public final int a() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        switch (i) {
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 1;
            case 4:
                return 2;
            case 5:
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
            case 9:
            case 10:
            case 11:
                return 6;
            case 12:
            case 13:
            case 14:
                return 5;
            case 15:
            case 16:
                return 7;
            case 17:
                return 10;
            default:
                throw new AssertionError();
        }
    }

    public final void b(int i) {
        int i2 = this.f14864try;
        int[] iArr = this.f14859do;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            int[] iArr3 = new int[i2 * 2];
            String[] strArr = new String[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            System.arraycopy(this.f14862if, 0, iArr3, 0, this.f14864try);
            System.arraycopy(this.f14860do, 0, strArr, 0, this.f14864try);
            this.f14859do = iArr2;
            this.f14862if = iArr3;
            this.f14860do = strArr;
        }
        int[] iArr4 = this.f14859do;
        int i3 = this.f14864try;
        this.f14864try = i3 + 1;
        iArr4[i3] = i;
    }

    /* renamed from: break, reason: not valid java name */
    public final String m7723break() {
        int i = this.f14864try;
        int[] iArr = this.f14859do;
        String[] strArr = this.f14860do;
        int[] iArr2 = this.f14862if;
        StringBuilder sb = new StringBuilder("$");
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 == 1 || i3 == 2) {
                sb.append('[');
                sb.append(iArr2[i2]);
                sb.append(']');
            } else if (i3 == 3 || i3 == 4 || i3 == 5) {
                sb.append('.');
                String str = strArr[i2];
                if (str != null) {
                    sb.append(str);
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: case, reason: not valid java name */
    public final void m7724case() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i != 4) {
            throw new C0623Yd("Expected END_ARRAY but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
        int i2 = this.f14864try - 1;
        this.f14864try = i2;
        int[] iArr = this.f14862if;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f14861for = 0;
    }

    /* renamed from: class, reason: not valid java name */
    public final boolean m7725class() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        return (i == 2 || i == 4) ? false : true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14861for = 0;
        this.f14859do[0] = 8;
        this.f14864try = 1;
        this.f14857do.m2330do();
        this.f14858do.close();
    }

    /* renamed from: const, reason: not valid java name */
    public final boolean m7726const(int i) {
        if (i == 9 || i == 10 || i == 12 || i == 13 || i == 32) {
            return false;
        }
        if (i != 35) {
            if (i == 44) {
                return false;
            }
            if (i != 47 && i != 61) {
                if (i == 123 || i == 125 || i == 58) {
                    return false;
                }
                if (i != 59) {
                    switch (i) {
                        case 91:
                        case 93:
                            return false;
                        case 92:
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m7729for();
        throw null;
    }

    /* renamed from: continue, reason: not valid java name */
    public final int m7727continue(boolean z) {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!m7739this(i2)) {
                if (z) {
                    throw new EOFException("End of input");
                }
                return -1;
            }
            long j = i;
            U5 u5 = this.f14857do;
            byte m2331for = u5.m2331for(j);
            if (m2331for != 10 && m2331for != 32 && m2331for != 13 && m2331for != 9) {
                u5.mo2334implements(i2 - 1);
                if (m2331for == 47) {
                    if (!m7739this(2)) {
                        return m2331for;
                    }
                    m7729for();
                    throw null;
                }
                if (m2331for != 35) {
                    return m2331for;
                }
                m7729for();
                throw null;
            }
            i = i2;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7728do() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 3) {
            b(1);
            this.f14862if[this.f14864try - 1] = 0;
            this.f14861for = 0;
        } else {
            throw new C0623Yd("Expected BEGIN_ARRAY but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
    }

    public final char f() {
        int i;
        int i2;
        if (!m7739this(1)) {
            l("Unterminated escape sequence");
            throw null;
        }
        U5 u5 = this.f14857do;
        byte readByte = u5.readByte();
        if (readByte == 98) {
            return '\b';
        }
        if (readByte == 102) {
            return '\f';
        }
        if (readByte == 110) {
            return '\n';
        }
        if (readByte == 114) {
            return '\r';
        }
        if (readByte == 116) {
            return '\t';
        }
        if (readByte != 117) {
            return (char) readByte;
        }
        if (!m7739this(4)) {
            throw new EOFException("Unterminated escape sequence at path " + m7723break());
        }
        char c = 0;
        for (int i3 = 0; i3 < 4; i3++) {
            byte m2331for = u5.m2331for(i3);
            char c2 = (char) (c << 4);
            if (m2331for < 48 || m2331for > 57) {
                if (m2331for >= 97 && m2331for <= 102) {
                    i = m2331for - 97;
                } else {
                    if (m2331for < 65 || m2331for > 70) {
                        l("\\u".concat(u5.m2327class(4L)));
                        throw null;
                    }
                    i = m2331for - 65;
                }
                i2 = i + 10;
            } else {
                i2 = m2331for - 48;
            }
            c = (char) (i2 + c2);
        }
        u5.mo2334implements(4L);
        return c;
    }

    /* renamed from: for, reason: not valid java name */
    public final void m7729for() {
        l("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* renamed from: goto, reason: not valid java name */
    public final void m7730goto() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i != 2) {
            throw new C0623Yd("Expected END_OBJECT but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
        int i2 = this.f14864try - 1;
        this.f14864try = i2;
        this.f14860do[i2] = null;
        int[] iArr = this.f14862if;
        int i3 = i2 - 1;
        iArr[i3] = iArr[i3] + 1;
        this.f14861for = 0;
    }

    /* renamed from: if, reason: not valid java name */
    public final void m7731if() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 1) {
            b(3);
            this.f14861for = 0;
        } else {
            throw new C0623Yd("Expected BEGIN_OBJECT but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
    }

    /* renamed from: instanceof, reason: not valid java name */
    public final String m7732instanceof() {
        long mo2339static = this.f14858do.mo2339static(f14853for);
        U5 u5 = this.f14857do;
        return mo2339static != -1 ? u5.m2327class(mo2339static) : u5.m2324break();
    }

    /* renamed from: interface, reason: not valid java name */
    public final String m7733interface() {
        String m2327class;
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 10) {
            m2327class = m7732instanceof();
        } else if (i == 9) {
            m2327class = m7741volatile(f14854if);
        } else if (i == 8) {
            m2327class = m7741volatile(f14852do);
        } else if (i == 11) {
            m2327class = this.f14855break;
            this.f14855break = null;
        } else if (i == 15) {
            m2327class = Long.toString(this.f14856do);
        } else {
            if (i != 16) {
                throw new C0623Yd("Expected a string but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
            }
            m2327class = this.f14857do.m2327class(this.f14863new);
        }
        this.f14861for = 0;
        int[] iArr = this.f14862if;
        int i2 = this.f14864try - 1;
        iArr[i2] = iArr[i2] + 1;
        return m2327class;
    }

    public final void j(C3488p6 c3488p6) {
        while (true) {
            long mo2339static = this.f14858do.mo2339static(c3488p6);
            if (mo2339static == -1) {
                l("Unterminated string");
                throw null;
            }
            U5 u5 = this.f14857do;
            if (u5.m2331for(mo2339static) != 92) {
                u5.mo2334implements(mo2339static + 1);
                return;
            } else {
                u5.mo2334implements(mo2339static + 1);
                f();
            }
        }
    }

    public final void k() {
        int i = 0;
        do {
            int i2 = this.f14861for;
            if (i2 == 0) {
                i2 = m7734new();
            }
            if (i2 == 3) {
                b(1);
            } else if (i2 == 1) {
                b(3);
            } else {
                if (i2 == 4) {
                    this.f14864try--;
                } else if (i2 == 2) {
                    this.f14864try--;
                } else {
                    U5 u5 = this.f14857do;
                    if (i2 == 14 || i2 == 10) {
                        long mo2339static = this.f14858do.mo2339static(f14853for);
                        if (mo2339static == -1) {
                            mo2339static = u5.f3826do;
                        }
                        u5.mo2334implements(mo2339static);
                    } else if (i2 == 9 || i2 == 13) {
                        j(f14854if);
                    } else if (i2 == 8 || i2 == 12) {
                        j(f14852do);
                    } else if (i2 == 16) {
                        u5.mo2334implements(this.f14863new);
                    }
                    this.f14861for = 0;
                }
                i--;
                this.f14861for = 0;
            }
            i++;
            this.f14861for = 0;
        } while (i != 0);
        int[] iArr = this.f14862if;
        int i3 = this.f14864try;
        int i4 = i3 - 1;
        iArr[i4] = iArr[i4] + 1;
        this.f14860do[i3 - 1] = "null";
    }

    public final void l(String str) {
        StringBuilder m6916goto = Cif.m6916goto(str, " at path ");
        m6916goto.append(m7723break());
        throw new IOException(m6916goto.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01ad, code lost:
    
        if (r6 != 7) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01af, code lost:
    
        r19.f14863new = r3;
        r13 = 16;
        r19.f14861for = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x018a, code lost:
    
        if (m7726const(r10) != false) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x018c, code lost:
    
        if (r6 != 2) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x018e, code lost:
    
        if (r7 == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0194, code lost:
    
        if (r14 != Long.MIN_VALUE) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0196, code lost:
    
        if (r8 == false) goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0198, code lost:
    
        if (r8 == false) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x019b, code lost:
    
        r14 = -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x019c, code lost:
    
        r19.f14856do = r14;
        r5.mo2334implements(r3);
        r13 = 15;
        r19.f14861for = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01a7, code lost:
    
        if (r6 == 2) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01aa, code lost:
    
        if (r6 == 4) goto L148;
     */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x010e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0087  */
    /* renamed from: new, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7734new() {
        /*
            Method dump skipped, instructions count: 650
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3470op.m7734new():int");
    }

    /* renamed from: package, reason: not valid java name */
    public final String m7735package() {
        String m7741volatile;
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 14) {
            m7741volatile = m7732instanceof();
        } else if (i == 13) {
            m7741volatile = m7741volatile(f14854if);
        } else {
            if (i != 12) {
                throw new C0623Yd("Expected a name but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
            }
            m7741volatile = m7741volatile(f14852do);
        }
        this.f14861for = 0;
        this.f14860do[this.f14864try - 1] = m7741volatile;
        return m7741volatile;
    }

    /* renamed from: public, reason: not valid java name */
    public final boolean m7736public() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 5) {
            this.f14861for = 0;
            int[] iArr = this.f14862if;
            int i2 = this.f14864try - 1;
            iArr[i2] = iArr[i2] + 1;
            return true;
        }
        if (i == 6) {
            this.f14861for = 0;
            int[] iArr2 = this.f14862if;
            int i3 = this.f14864try - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return false;
        }
        throw new C0623Yd("Expected a boolean but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
    }

    /* renamed from: return, reason: not valid java name */
    public final double m7737return() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 15) {
            this.f14861for = 0;
            int[] iArr = this.f14862if;
            int i2 = this.f14864try - 1;
            iArr[i2] = iArr[i2] + 1;
            return this.f14856do;
        }
        if (i == 16) {
            this.f14855break = this.f14857do.m2327class(this.f14863new);
        } else if (i == 9) {
            this.f14855break = m7741volatile(f14854if);
        } else if (i == 8) {
            this.f14855break = m7741volatile(f14852do);
        } else if (i == 10) {
            this.f14855break = m7732instanceof();
        } else if (i != 11) {
            throw new C0623Yd("Expected a double but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
        this.f14861for = 11;
        try {
            double parseDouble = Double.parseDouble(this.f14855break);
            if (Double.isNaN(parseDouble) || Double.isInfinite(parseDouble)) {
                throw new IOException("JSON forbids NaN and infinities: " + parseDouble + " at path " + m7723break());
            }
            this.f14855break = null;
            this.f14861for = 0;
            int[] iArr2 = this.f14862if;
            int i3 = this.f14864try - 1;
            iArr2[i3] = iArr2[i3] + 1;
            return parseDouble;
        } catch (NumberFormatException unused) {
            throw new C0623Yd("Expected a double but was " + this.f14855break + " at path " + m7723break());
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final void m7738strictfp() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 7) {
            this.f14861for = 0;
            int[] iArr = this.f14862if;
            int i2 = this.f14864try - 1;
            iArr[i2] = iArr[i2] + 1;
            return;
        }
        throw new C0623Yd("Expected null but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m7739this(int i) {
        return this.f14858do.mo2345while(i);
    }

    /* renamed from: throws, reason: not valid java name */
    public final int m7740throws() {
        int i = this.f14861for;
        if (i == 0) {
            i = m7734new();
        }
        if (i == 15) {
            long j = this.f14856do;
            int i2 = (int) j;
            if (j == i2) {
                this.f14861for = 0;
                int[] iArr = this.f14862if;
                int i3 = this.f14864try - 1;
                iArr[i3] = iArr[i3] + 1;
                return i2;
            }
            throw new C0623Yd("Expected an int but was " + this.f14856do + " at path " + m7723break());
        }
        if (i == 16) {
            this.f14855break = this.f14857do.m2327class(this.f14863new);
        } else if (i == 9 || i == 8) {
            String m7741volatile = i == 9 ? m7741volatile(f14854if) : m7741volatile(f14852do);
            this.f14855break = m7741volatile;
            try {
                int parseInt = Integer.parseInt(m7741volatile);
                this.f14861for = 0;
                int[] iArr2 = this.f14862if;
                int i4 = this.f14864try - 1;
                iArr2[i4] = iArr2[i4] + 1;
                return parseInt;
            } catch (NumberFormatException unused) {
            }
        } else if (i != 11) {
            throw new C0623Yd("Expected an int but was " + Cpublic.m7819const(a()) + " at path " + m7723break());
        }
        this.f14861for = 11;
        try {
            double parseDouble = Double.parseDouble(this.f14855break);
            int i5 = (int) parseDouble;
            if (i5 != parseDouble) {
                throw new C0623Yd("Expected an int but was " + this.f14855break + " at path " + m7723break());
            }
            this.f14855break = null;
            this.f14861for = 0;
            int[] iArr3 = this.f14862if;
            int i6 = this.f14864try - 1;
            iArr3[i6] = iArr3[i6] + 1;
            return i5;
        } catch (NumberFormatException unused2) {
            throw new C0623Yd("Expected an int but was " + this.f14855break + " at path " + m7723break());
        }
    }

    public final String toString() {
        return C3470op.class.getSimpleName();
    }

    /* renamed from: volatile, reason: not valid java name */
    public final String m7741volatile(C3488p6 c3488p6) {
        StringBuilder sb = null;
        while (true) {
            long mo2339static = this.f14858do.mo2339static(c3488p6);
            if (mo2339static == -1) {
                l("Unterminated string");
                throw null;
            }
            U5 u5 = this.f14857do;
            if (u5.m2331for(mo2339static) != 92) {
                if (sb == null) {
                    String m2327class = u5.m2327class(mo2339static);
                    u5.readByte();
                    return m2327class;
                }
                sb.append(u5.m2327class(mo2339static));
                u5.readByte();
                return sb.toString();
            }
            if (sb == null) {
                sb = new StringBuilder();
            }
            sb.append(u5.m2327class(mo2339static));
            u5.readByte();
            sb.append(f());
        }
    }
}
