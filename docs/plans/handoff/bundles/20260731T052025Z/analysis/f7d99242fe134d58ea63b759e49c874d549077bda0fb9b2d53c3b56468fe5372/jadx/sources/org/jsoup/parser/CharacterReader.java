package org.jsoup.parser;

import java.io.IOException;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import org.jsoup.internal.SoftPool;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CharacterReader {
    public int bufLength;
    public int bufPos;
    public int consumed;
    public int lastIcIndex;
    public String lastIcSeq;
    public boolean readFully;
    public StringReader reader;
    public static final SoftPool StringPool = new SoftPool(new Entities$$ExternalSyntheticLambda0(6));
    public static final SoftPool BufferPool = new SoftPool(new Entities$$ExternalSyntheticLambda0(7));
    public int fillPoint = 0;
    public int bufMark = -1;
    public ArrayList newlinePositions = null;
    public int lineNumberOffset = 1;
    public char[] charBuf = (char[]) BufferPool.borrow();
    public String[] stringCache = (String[]) StringPool.borrow();

    public CharacterReader(StringReader stringReader) {
        this.reader = stringReader;
        bufferUp();
    }

    public static String cacheString(char[] cArr, String[] strArr, int i, int i2) {
        if (i2 > 12) {
            return new String(cArr, i, i2);
        }
        if (i2 < 1) {
            return "";
        }
        int i3 = i2 + i;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < i3; i6++) {
            i5 = (i5 * 31) + cArr[i6];
        }
        int i7 = i5 & 511;
        String str = strArr[i7];
        if (str != null && i2 == str.length()) {
            int i8 = i;
            int i9 = i2;
            while (true) {
                int i10 = i9 - 1;
                if (i9 == 0) {
                    return str;
                }
                int i11 = i8 + 1;
                int i12 = i4 + 1;
                if (cArr[i8] != str.charAt(i4)) {
                    break;
                }
                i8 = i11;
                i9 = i10;
                i4 = i12;
            }
        }
        String str2 = new String(cArr, i, i2);
        strArr[i7] = str2;
        return str2;
    }

    public final void advance() {
        this.bufPos++;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0038, code lost:
    
        r7.readFully = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bufferUp() {
        /*
            r7 = this;
            boolean r0 = r7.readFully
            if (r0 != 0) goto La1
            int r0 = r7.bufPos
            int r1 = r7.fillPoint
            if (r0 < r1) goto La1
            int r1 = r7.bufMark
            r2 = -1
            if (r1 == r2) goto L11
            goto La1
        L11:
            int r1 = r7.consumed
            int r1 = r1 + r0
            r7.consumed = r1
            int r1 = r7.bufLength
            int r1 = r1 - r0
            r7.bufLength = r1
            r3 = 0
            if (r1 <= 0) goto L23
            char[] r4 = r7.charBuf
            java.lang.System.arraycopy(r4, r0, r4, r3, r1)
        L23:
            r7.bufPos = r3
        L25:
            int r0 = r7.bufLength
            r1 = 2048(0x800, float:2.87E-42)
            r4 = 1
            if (r0 >= r1) goto L48
            java.io.StringReader r1 = r7.reader     // Catch: java.io.IOException -> L41
            char[] r5 = r7.charBuf     // Catch: java.io.IOException -> L41
            int r6 = r5.length     // Catch: java.io.IOException -> L41
            int r6 = r6 - r0
            int r0 = r1.read(r5, r0, r6)     // Catch: java.io.IOException -> L41
            if (r0 != r2) goto L3b
            r7.readFully = r4     // Catch: java.io.IOException -> L41
            goto L48
        L3b:
            int r1 = r7.bufLength     // Catch: java.io.IOException -> L41
            int r1 = r1 + r0
            r7.bufLength = r1     // Catch: java.io.IOException -> L41
            goto L25
        L41:
            r7 = move-exception
            java.io.UncheckedIOException r0 = new java.io.UncheckedIOException
            r0.<init>(r7)
            throw r0
        L48:
            int r0 = r7.bufLength
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r7.fillPoint = r0
            java.util.ArrayList r0 = r7.newlinePositions
            if (r0 == 0) goto L9e
            int r0 = r0.size()
            if (r0 <= 0) goto L80
            int r0 = r7.consumed
            int r0 = r7.lineNumIndex(r0)
            if (r0 != r2) goto L65
            goto L66
        L65:
            r3 = r0
        L66:
            java.util.ArrayList r0 = r7.newlinePositions
            java.lang.Object r0 = r0.get(r3)
            java.lang.Integer r0 = (java.lang.Integer) r0
            r0.getClass()
            int r1 = r7.lineNumberOffset
            int r1 = r1 + r3
            r7.lineNumberOffset = r1
            java.util.ArrayList r1 = r7.newlinePositions
            r1.clear()
            java.util.ArrayList r1 = r7.newlinePositions
            r1.add(r0)
        L80:
            int r0 = r7.bufPos
        L82:
            int r1 = r7.bufLength
            if (r0 >= r1) goto L9e
            char[] r1 = r7.charBuf
            char r1 = r1[r0]
            r2 = 10
            if (r1 != r2) goto L9b
            java.util.ArrayList r1 = r7.newlinePositions
            int r2 = r7.consumed
            int r2 = r2 + r4
            int r2 = r2 + r0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r1.add(r2)
        L9b:
            int r0 = r0 + 1
            goto L82
        L9e:
            r0 = 0
            r7.lastIcSeq = r0
        La1:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.bufferUp():void");
    }

    public final void close() {
        SoftPool softPool = StringPool;
        SoftPool softPool2 = BufferPool;
        StringReader stringReader = this.reader;
        if (stringReader == null) {
            return;
        }
        try {
            stringReader.close();
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            softPool2.release(this.charBuf);
            this.charBuf = null;
            softPool.release(this.stringCache);
        } catch (IOException unused) {
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            softPool2.release(this.charBuf);
            this.charBuf = null;
            softPool.release(this.stringCache);
        } catch (Throwable th) {
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            softPool2.release(this.charBuf);
            this.charBuf = null;
            softPool.release(this.stringCache);
            this.stringCache = null;
            throw th;
        }
        this.stringCache = null;
    }

    public final char consume() {
        bufferUp();
        int i = this.bufPos;
        char c = i >= this.bufLength ? (char) 65535 : this.charBuf[i];
        this.bufPos = i + 1;
        return c;
    }

    public final String consumeAttributeQuoted(boolean z) {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0) {
                break;
            }
            if (c != '\"') {
                if (c == '&') {
                    break;
                }
                if (c == '\'' && z) {
                    break;
                }
                i3++;
            } else {
                if (!z) {
                    break;
                }
                i3++;
            }
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final String consumeData() {
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (c == 0 || c == '&' || c == '<') {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final String consumeLetterSequence() {
        char c;
        bufferUp();
        int i = this.bufPos;
        while (true) {
            int i2 = this.bufPos;
            if (i2 >= this.bufLength || (((c = this.charBuf[i2]) < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !Character.isLetter(c)))) {
                break;
            }
            this.bufPos++;
        }
        return cacheString(this.charBuf, this.stringCache, i, this.bufPos - i);
    }

    public final String consumeTo(char c) {
        int i;
        bufferUp();
        int i2 = this.bufPos;
        while (true) {
            if (i2 >= this.bufLength) {
                i = -1;
                break;
            }
            if (c == this.charBuf[i2]) {
                i = i2 - this.bufPos;
                break;
            }
            i2++;
        }
        if (i != -1) {
            String cacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, i);
            this.bufPos += i;
            return cacheString;
        }
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i3 = this.bufPos;
        String cacheString2 = cacheString(cArr, strArr, i3, this.bufLength - i3);
        this.bufPos = this.bufLength;
        return cacheString2;
    }

    public final String consumeToAny(char... cArr) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        loop0: while (i3 < i2) {
            for (char c : cArr) {
                if (cArr2[i3] == c) {
                    break loop0;
                }
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final String consumeToAnySorted(char... cArr) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        while (i3 < i2 && Arrays.binarySearch(cArr, cArr2[i3]) < 0) {
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final char current() {
        bufferUp();
        int i = this.bufPos;
        if (i >= this.bufLength) {
            return (char) 65535;
        }
        return this.charBuf[i];
    }

    public final boolean isEmpty() {
        bufferUp();
        return this.bufPos >= this.bufLength;
    }

    public final int lineNumIndex(int i) {
        ArrayList arrayList = this.newlinePositions;
        if (arrayList == null) {
            return 0;
        }
        int binarySearch = Collections.binarySearch(arrayList, Integer.valueOf(i));
        return binarySearch < -1 ? Math.abs(binarySearch) - 2 : binarySearch;
    }

    public final boolean matchConsume(String str) {
        bufferUp();
        bufferUp();
        int length = str.length();
        if (length <= this.bufLength - this.bufPos) {
            for (int i = 0; i < length; i++) {
                if (str.charAt(i) == this.charBuf[this.bufPos + i]) {
                }
            }
            this.bufPos = str.length() + this.bufPos;
            return true;
        }
        return false;
    }

    public final boolean matchConsumeIgnoreCase(String str) {
        bufferUp();
        int length = str.length();
        if (length <= this.bufLength - this.bufPos) {
            for (int i = 0; i < length; i++) {
                if (Character.toUpperCase(str.charAt(i)) == Character.toUpperCase(this.charBuf[this.bufPos + i])) {
                }
            }
            this.bufPos = str.length() + this.bufPos;
            return true;
        }
        return false;
    }

    public final boolean matches(char c) {
        return !isEmpty() && this.charBuf[this.bufPos] == c;
    }

    public final boolean matchesAny(char... cArr) {
        if (!isEmpty()) {
            bufferUp();
            char c = this.charBuf[this.bufPos];
            for (char c2 : cArr) {
                if (c2 == c) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean matchesAsciiAlpha() {
        if (isEmpty()) {
            return false;
        }
        char c = this.charBuf[this.bufPos];
        if (c < 'A' || c > 'Z') {
            return c >= 'a' && c <= 'z';
        }
        return true;
    }

    public final boolean matchesLetter() {
        if (isEmpty()) {
            return false;
        }
        char c = this.charBuf[this.bufPos];
        if (c < 'A' || c > 'Z') {
            return (c >= 'a' && c <= 'z') || Character.isLetter(c);
        }
        return true;
    }

    public final int nextIndexOf(String str) {
        bufferUp();
        char charAt = str.charAt(0);
        int i = this.bufPos;
        while (i < this.bufLength) {
            if (charAt != this.charBuf[i]) {
                do {
                    i++;
                    if (i >= this.bufLength) {
                        break;
                    }
                } while (charAt != this.charBuf[i]);
            }
            int i2 = i + 1;
            int length = (str.length() + i2) - 1;
            int i3 = this.bufLength;
            if (i < i3 && length <= i3) {
                int i4 = i2;
                for (int i5 = 1; i4 < length && str.charAt(i5) == this.charBuf[i4]; i5++) {
                    i4++;
                }
                if (i4 == length) {
                    return i - this.bufPos;
                }
            }
            i = i2;
        }
        return -1;
    }

    public final int pos() {
        return this.consumed + this.bufPos;
    }

    public final String posLineCol() {
        int i;
        int lineNumIndex;
        StringBuilder sb = new StringBuilder();
        int pos = pos();
        if (this.newlinePositions != null) {
            int lineNumIndex2 = lineNumIndex(pos);
            i = this.lineNumberOffset;
            if (lineNumIndex2 != -1) {
                i = lineNumIndex2 + i + 1;
            }
        } else {
            i = 1;
        }
        sb.append(i);
        sb.append(":");
        int pos2 = pos();
        if (this.newlinePositions != null && (lineNumIndex = lineNumIndex(pos2)) != -1) {
            pos2 -= ((Integer) this.newlinePositions.get(lineNumIndex)).intValue();
        }
        sb.append(pos2 + 1);
        return sb.toString();
    }

    public final void rewindToMark() {
        int i = this.bufMark;
        if (i == -1) {
            throw new UncheckedIOException(new IOException("Mark invalid"));
        }
        this.bufPos = i;
        this.bufMark = -1;
    }

    public final String toString() {
        int i = this.bufLength;
        int i2 = this.bufPos;
        return i - i2 < 0 ? "" : new String(this.charBuf, i2, i - i2);
    }

    public final void unconsume() {
        int i = this.bufPos;
        if (i < 1) {
            throw new UncheckedIOException(new IOException("WTF: No buffer left to unconsume."));
        }
        this.bufPos = i - 1;
    }
}
