package org.jsoup.parser;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.UncheckedIOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Entities$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CharacterReader implements AutoCloseable {
    public int bufLength;
    public int bufMark;
    public int bufPos;
    public char[] charBuf;
    public int consumed;
    public int fillPoint;
    public int lastIcIndex;
    public String lastIcSeq;
    public int lineNumberOffset;
    public ArrayList newlinePositions;
    public boolean readFully;
    public Reader reader;
    public String[] stringCache;
    public static final TokenData StringPool = new TokenData(new Entities$$ExternalSyntheticLambda0(4));
    public static final TokenData BufferPool = new TokenData(new Entities$$ExternalSyntheticLambda0(5));

    public CharacterReader(Reader reader) {
        this.fillPoint = 0;
        this.bufMark = -1;
        this.newlinePositions = null;
        this.lineNumberOffset = 1;
        this.reader = reader;
        this.charBuf = (char[]) BufferPool.borrow();
        this.stringCache = (String[]) StringPool.borrow();
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

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0036, code lost:
    
        r5.readFully = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void bufferUp() {
        /*
            r5 = this;
            boolean r0 = r5.readFully
            if (r0 != 0) goto L5a
            int r0 = r5.bufPos
            int r1 = r5.fillPoint
            if (r0 < r1) goto L5a
            int r1 = r5.bufMark
            r2 = -1
            if (r1 == r2) goto L10
            goto L5a
        L10:
            int r1 = r5.consumed
            int r1 = r1 + r0
            r5.consumed = r1
            int r1 = r5.bufLength
            int r1 = r1 - r0
            r5.bufLength = r1
            r3 = 0
            if (r1 <= 0) goto L22
            char[] r4 = r5.charBuf
            java.lang.System.arraycopy(r4, r0, r4, r3, r1)
        L22:
            r5.bufPos = r3
        L24:
            int r0 = r5.bufLength
            r1 = 2048(0x800, float:2.87E-42)
            if (r0 >= r1) goto L4a
            java.io.Reader r1 = r5.reader     // Catch: java.io.IOException -> L43
            char[] r3 = r5.charBuf     // Catch: java.io.IOException -> L43
            int r4 = r3.length     // Catch: java.io.IOException -> L43
            int r4 = r4 - r0
            int r0 = r1.read(r3, r0, r4)     // Catch: java.io.IOException -> L43
            if (r0 != r2) goto L3a
            r0 = 1
            r5.readFully = r0     // Catch: java.io.IOException -> L43
            goto L4a
        L3a:
            if (r0 != 0) goto L3d
            goto L4a
        L3d:
            int r1 = r5.bufLength     // Catch: java.io.IOException -> L43
            int r1 = r1 + r0
            r5.bufLength = r1     // Catch: java.io.IOException -> L43
            goto L24
        L43:
            r5 = move-exception
            java.io.UncheckedIOException r0 = new java.io.UncheckedIOException
            r0.<init>(r5)
            throw r0
        L4a:
            int r0 = r5.bufLength
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.min(r0, r1)
            r5.fillPoint = r0
            r5.scanBufferForNewlines()
            r0 = 0
            r5.lastIcSeq = r0
        L5a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jsoup.parser.CharacterReader.bufferUp():void");
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        TokenData tokenData = StringPool;
        TokenData tokenData2 = BufferPool;
        Reader reader = this.reader;
        if (reader == null) {
            return;
        }
        try {
            reader.close();
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            tokenData2.release(this.charBuf);
            this.charBuf = null;
            tokenData.release(this.stringCache);
        } catch (IOException unused) {
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            tokenData2.release(this.charBuf);
            this.charBuf = null;
            tokenData.release(this.stringCache);
        } catch (Throwable th) {
            this.reader = null;
            Arrays.fill(this.charBuf, (char) 0);
            tokenData2.release(this.charBuf);
            this.charBuf = null;
            tokenData.release(this.stringCache);
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

    public final String consumeData() {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (!((c == '&' || c == '<' || c == 0) ? false : true)) {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final String consumeLetterSequence() {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2 && Character.isLetter(cArr[i3])) {
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
    }

    public final String consumeMatching(_UtilJvmKt$$ExternalSyntheticLambda1 _utiljvmkt__externalsyntheticlambda1) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr = this.charBuf;
        int i3 = i;
        while (i3 < i2) {
            char c = cArr[i3];
            if (!((c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ' || c == '/' || c == '>') ? false : true)) {
                break;
            }
            i3++;
        }
        this.bufPos = i3;
        return i3 > i ? cacheString(this.charBuf, this.stringCache, i, i3 - i) : "";
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
        if (i == -1) {
            return consumeToEnd();
        }
        String cacheString = cacheString(this.charBuf, this.stringCache, this.bufPos, i);
        this.bufPos += i;
        return cacheString;
    }

    public final String consumeToAny(char... cArr) {
        bufferUp();
        int i = this.bufPos;
        int i2 = this.bufLength;
        char[] cArr2 = this.charBuf;
        int i3 = i;
        loop0: while (i3 < i2) {
            char c = cArr2[i3];
            for (char c2 : cArr) {
                if (c == c2) {
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

    public final String consumeToEnd() {
        bufferUp();
        char[] cArr = this.charBuf;
        String[] strArr = this.stringCache;
        int i = this.bufPos;
        String cacheString = cacheString(cArr, strArr, i, this.bufLength - i);
        this.bufPos = this.bufLength;
        return cacheString;
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
        if (!matchesIgnoreCase(str)) {
            return false;
        }
        this.bufPos = str.length() + this.bufPos;
        return true;
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
        return StringUtil.isAsciiLetter(this.charBuf[this.bufPos]);
    }

    public final boolean matchesIgnoreCase(String str) {
        bufferUp();
        int length = str.length();
        if (length > this.bufLength - this.bufPos) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            char c = this.charBuf[this.bufPos + i];
            if (charAt != c && Character.toUpperCase(charAt) != Character.toUpperCase(c)) {
                return false;
            }
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

    public final void scanBufferForNewlines() {
        ArrayList arrayList = this.newlinePositions;
        if (arrayList != null) {
            if (arrayList.size() > 0) {
                int lineNumIndex = lineNumIndex(this.consumed);
                if (lineNumIndex == -1) {
                    lineNumIndex = 0;
                }
                Integer num = (Integer) this.newlinePositions.get(lineNumIndex);
                num.getClass();
                this.lineNumberOffset += lineNumIndex;
                this.newlinePositions.clear();
                this.newlinePositions.add(num);
            }
            for (int i = this.bufPos; i < this.bufLength; i++) {
                if (this.charBuf[i] == '\n') {
                    this.newlinePositions.add(Integer.valueOf(this.consumed + 1 + i));
                }
            }
        }
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

    public CharacterReader(String str) {
        this(new StringReader(str));
    }
}
