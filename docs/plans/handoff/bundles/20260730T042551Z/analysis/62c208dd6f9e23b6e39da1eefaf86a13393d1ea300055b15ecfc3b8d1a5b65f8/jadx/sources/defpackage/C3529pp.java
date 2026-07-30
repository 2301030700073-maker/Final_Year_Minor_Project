package defpackage;

import java.io.Closeable;
import java.io.EOFException;
import java.io.Reader;

/* renamed from: pp, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3529pp implements Closeable {

    /* renamed from: do, reason: not valid java name */
    public long f14984do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Reader f14985do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public int[] f14987do;

    /* renamed from: goto, reason: not valid java name */
    public int f14990goto;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final char[] f14986do = new char[1024];

    /* renamed from: for, reason: not valid java name */
    public int f14989for = 0;

    /* renamed from: new, reason: not valid java name */
    public int f14991new = 0;

    /* renamed from: try, reason: not valid java name */
    public int f14993try = 0;

    /* renamed from: case, reason: not valid java name */
    public int f14983case = 0;

    /* renamed from: else, reason: not valid java name */
    public int f14988else = 0;

    /* renamed from: this, reason: not valid java name */
    public int f14992this = 1;

    static {
        ")]}'\n".toCharArray();
    }

    public C3529pp(Reader reader) {
        int[] iArr = new int[32];
        this.f14987do = iArr;
        iArr[0] = 6;
        this.f14985do = reader;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x004b, code lost:
    
        m7806do();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x004e, code lost:
    
        throw null;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007f  */
    /* renamed from: break, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7802break() {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            r3 = r0
        L3:
            r2 = 0
        L4:
            int r4 = r8.f14989for
            int r5 = r4 + r2
            int r6 = r8.f14991new
            char[] r7 = r8.f14986do
            if (r5 >= r6) goto L4f
            int r4 = r4 + r2
            char r4 = r7[r4]
            r5 = 9
            if (r4 == r5) goto L5b
            r5 = 10
            if (r4 == r5) goto L5b
            r5 = 12
            if (r4 == r5) goto L5b
            r5 = 13
            if (r4 == r5) goto L5b
            r5 = 32
            if (r4 == r5) goto L5b
            r5 = 35
            if (r4 == r5) goto L4b
            r5 = 44
            if (r4 == r5) goto L5b
            r5 = 47
            if (r4 == r5) goto L4b
            r5 = 61
            if (r4 == r5) goto L4b
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 == r5) goto L5b
            r5 = 125(0x7d, float:1.75E-43)
            if (r4 == r5) goto L5b
            r5 = 58
            if (r4 == r5) goto L5b
            r5 = 59
            if (r4 == r5) goto L4b
            switch(r4) {
                case 91: goto L5b;
                case 92: goto L4b;
                case 93: goto L5b;
                default: goto L48;
            }
        L48:
            int r2 = r2 + 1
            goto L4
        L4b:
            r8.m7806do()
            throw r0
        L4f:
            int r4 = r7.length
            if (r2 >= r4) goto L5d
            int r4 = r2 + 1
            boolean r4 = r8.m7807for(r4)
            if (r4 == 0) goto L5b
            goto L4
        L5b:
            r1 = r2
            goto L75
        L5d:
            if (r3 != 0) goto L64
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
        L64:
            int r4 = r8.f14989for
            r3.append(r7, r4, r2)
            int r4 = r8.f14989for
            int r4 = r4 + r2
            r8.f14989for = r4
            r2 = 1
            boolean r2 = r8.m7807for(r2)
            if (r2 != 0) goto L3
        L75:
            if (r3 != 0) goto L7f
            java.lang.String r0 = new java.lang.String
            int r2 = r8.f14989for
            r0.<init>(r7, r2, r1)
            goto L88
        L7f:
            int r0 = r8.f14989for
            r3.append(r7, r0, r1)
            java.lang.String r0 = r3.toString()
        L88:
            int r2 = r8.f14989for
            int r2 = r2 + r1
            r8.f14989for = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3529pp.m7802break():java.lang.String");
    }

    /* renamed from: case, reason: not valid java name */
    public final boolean m7803case(char c) {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        m7806do();
        throw null;
    }

    /* renamed from: class, reason: not valid java name */
    public final int m7804class() {
        int i = this.f14988else;
        if (i == 0) {
            i = m7809if();
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

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f14988else = 0;
        this.f14987do[0] = 8;
        this.f14992this = 1;
        this.f14985do.close();
    }

    /* renamed from: const, reason: not valid java name */
    public final void m7805const(int i) {
        int i2 = this.f14992this;
        int[] iArr = this.f14987do;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[i2 * 2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f14987do = iArr2;
        }
        int[] iArr3 = this.f14987do;
        int i3 = this.f14992this;
        this.f14992this = i3 + 1;
        iArr3[i3] = i;
    }

    /* renamed from: do, reason: not valid java name */
    public final void m7806do() {
        m7814throws("Use JsonReader.setLenient(true) to accept malformed JSON");
        throw null;
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m7807for(int i) {
        int i2;
        int i3;
        int i4 = this.f14983case;
        int i5 = this.f14989for;
        this.f14983case = i4 - i5;
        int i6 = this.f14991new;
        char[] cArr = this.f14986do;
        if (i6 != i5) {
            int i7 = i6 - i5;
            this.f14991new = i7;
            System.arraycopy(cArr, i5, cArr, 0, i7);
        } else {
            this.f14991new = 0;
        }
        this.f14989for = 0;
        do {
            int i8 = this.f14991new;
            int read = this.f14985do.read(cArr, i8, cArr.length - i8);
            if (read == -1) {
                return false;
            }
            i2 = this.f14991new + read;
            this.f14991new = i2;
            if (this.f14993try == 0 && (i3 = this.f14983case) == 0 && i2 > 0 && cArr[0] == 65279) {
                this.f14989for++;
                this.f14983case = i3 + 1;
                i++;
            }
        } while (i2 < i);
        return true;
    }

    /* renamed from: goto, reason: not valid java name */
    public final int m7808goto(boolean z) {
        int i = this.f14989for;
        int i2 = this.f14991new;
        while (true) {
            if (i == i2) {
                this.f14989for = i;
                if (!m7807for(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input at line " + (this.f14993try + 1) + " column " + m7810new());
                }
                i = this.f14989for;
                i2 = this.f14991new;
            }
            int i3 = i + 1;
            char c = this.f14986do[i];
            if (c == '\n') {
                this.f14993try++;
                this.f14983case = i3;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c != '/') {
                    if (c != '#') {
                        this.f14989for = i3;
                        return c;
                    }
                    this.f14989for = i3;
                    m7806do();
                    throw null;
                }
                this.f14989for = i3;
                if (i3 == i2) {
                    this.f14989for = i3 - 1;
                    boolean m7807for = m7807for(2);
                    this.f14989for++;
                    if (!m7807for) {
                        return c;
                    }
                }
                m7806do();
                throw null;
            }
            i = i3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x019b, code lost:
    
        if (r8 != 6) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01b1, code lost:
    
        if (m7803case(r10) != false) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x01b3, code lost:
    
        if (r8 != 2) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x01b5, code lost:
    
        if (r16 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x01bb, code lost:
    
        if (r12 != Long.MIN_VALUE) goto L151;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x01bd, code lost:
    
        if (r9 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x01bf, code lost:
    
        if (r9 == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x01c2, code lost:
    
        r12 = -r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x01c3, code lost:
    
        r19.f14984do = r12;
        r19.f14989for += r7;
        r4 = 15;
        r19.f14988else = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01cf, code lost:
    
        if (r8 == 2) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d2, code lost:
    
        if (r8 == 4) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01d5, code lost:
    
        if (r8 != 7) goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01d7, code lost:
    
        r19.f14990goto = r7;
        r4 = 16;
        r19.f14988else = 16;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x011a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0209 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x020a  */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m7809if() {
        /*
            Method dump skipped, instructions count: 681
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3529pp.m7809if():int");
    }

    /* renamed from: new, reason: not valid java name */
    public final int m7810new() {
        return (this.f14989for - this.f14983case) + 1;
    }

    /* renamed from: public, reason: not valid java name */
    public final char m7811public() {
        int i;
        int i2;
        if (this.f14989for == this.f14991new && !m7807for(1)) {
            m7814throws("Unterminated escape sequence");
            throw null;
        }
        int i3 = this.f14989for;
        int i4 = i3 + 1;
        this.f14989for = i4;
        char[] cArr = this.f14986do;
        char c = cArr[i3];
        if (c == '\n') {
            this.f14993try++;
            this.f14983case = i4;
        } else {
            if (c == 'b') {
                return '\b';
            }
            if (c == 'f') {
                return '\f';
            }
            if (c == 'n') {
                return '\n';
            }
            if (c == 'r') {
                return '\r';
            }
            if (c == 't') {
                return '\t';
            }
            if (c == 'u') {
                if (i4 + 4 > this.f14991new && !m7807for(4)) {
                    m7814throws("Unterminated escape sequence");
                    throw null;
                }
                int i5 = this.f14989for;
                int i6 = i5 + 4;
                char c2 = 0;
                while (i5 < i6) {
                    char c3 = cArr[i5];
                    char c4 = (char) (c2 << 4);
                    if (c3 < '0' || c3 > '9') {
                        if (c3 >= 'a' && c3 <= 'f') {
                            i = c3 - 'a';
                        } else {
                            if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u".concat(new String(cArr, this.f14989for, 4)));
                            }
                            i = c3 - 'A';
                        }
                        i2 = i + 10;
                    } else {
                        i2 = c3 - '0';
                    }
                    c2 = (char) (i2 + c4);
                    i5++;
                }
                this.f14989for += 4;
                return c2;
            }
        }
        return c;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m7812return(char c) {
        do {
            int i = this.f14989for;
            int i2 = this.f14991new;
            while (i < i2) {
                int i3 = i + 1;
                char c2 = this.f14986do[i];
                if (c2 == c) {
                    this.f14989for = i3;
                    return;
                }
                if (c2 == '\\') {
                    this.f14989for = i3;
                    m7811public();
                    i = this.f14989for;
                    i2 = this.f14991new;
                } else {
                    if (c2 == '\n') {
                        this.f14993try++;
                        this.f14983case = i3;
                    }
                    i = i3;
                }
            }
            this.f14989for = i;
        } while (m7807for(1));
        m7814throws("Unterminated string");
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0045, code lost:
    
        r0.append(r5, r1, r3 - r1);
        r8.f14989for = r3;
     */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m7813this(char r9) {
        /*
            r8 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L5:
            int r1 = r8.f14989for
            int r2 = r8.f14991new
        L9:
            r3 = r1
        La:
            r4 = 1
            char[] r5 = r8.f14986do
            if (r3 >= r2) goto L45
            int r6 = r3 + 1
            char r3 = r5[r3]
            if (r3 != r9) goto L21
            r8.f14989for = r6
            int r6 = r6 - r1
            int r6 = r6 - r4
            r0.append(r5, r1, r6)
            java.lang.String r9 = r0.toString()
            return r9
        L21:
            r7 = 92
            if (r3 != r7) goto L38
            r8.f14989for = r6
            int r6 = r6 - r1
            int r6 = r6 - r4
            r0.append(r5, r1, r6)
            char r1 = r8.m7811public()
            r0.append(r1)
            int r1 = r8.f14989for
            int r2 = r8.f14991new
            goto L9
        L38:
            r5 = 10
            if (r3 != r5) goto L43
            int r3 = r8.f14993try
            int r3 = r3 + r4
            r8.f14993try = r3
            r8.f14983case = r6
        L43:
            r3 = r6
            goto La
        L45:
            int r2 = r3 - r1
            r0.append(r5, r1, r2)
            r8.f14989for = r3
            boolean r1 = r8.m7807for(r4)
            if (r1 == 0) goto L53
            goto L5
        L53:
            java.lang.String r9 = "Unterminated string"
            r8.m7814throws(r9)
            r9 = 0
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.C3529pp.m7813this(char):java.lang.String");
    }

    /* renamed from: throws, reason: not valid java name */
    public final void m7814throws(String str) {
        StringBuilder m6916goto = Cif.m6916goto(str, " at line ");
        m6916goto.append(this.f14993try + 1);
        m6916goto.append(" column ");
        m6916goto.append(m7810new());
        throw new C3707sr(m6916goto.toString());
    }

    public final String toString() {
        return C3529pp.class.getSimpleName() + " at line " + (this.f14993try + 1) + " column " + m7810new();
    }
}
