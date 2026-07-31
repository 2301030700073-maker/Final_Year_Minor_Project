package com.fasterxml.jackson.core.util;

import java.util.ArrayList;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextBuffer {
    public static final char[] NO_CHARS = new char[0];
    public final BufferRecycler _allocator;
    public char[] _currentSegment;
    public int _currentSize;
    public boolean _hasSegments;
    public int _inputStart;
    public char[] _resultArray;
    public String _resultString;
    public int _segmentSize;
    public ArrayList _segments;

    public TextBuffer(char[] cArr) {
        this._allocator = null;
        this._currentSegment = cArr;
        this._currentSize = cArr.length;
        this._inputStart = -1;
    }

    public final void append(int i, int i2, String str) {
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr = this._currentSegment;
        int length = cArr.length;
        int i3 = this._currentSize;
        int i4 = length - i3;
        if (i4 >= i2) {
            str.getChars(i, i + i2, cArr, i3);
            this._currentSize += i2;
            return;
        }
        if (i4 > 0) {
            int i5 = i + i4;
            str.getChars(i, i5, cArr, i3);
            i2 -= i4;
            i = i5;
        }
        while (true) {
            expand();
            int min = Math.min(this._currentSegment.length, i2);
            int i6 = i + min;
            str.getChars(i, i6, this._currentSegment, 0);
            this._currentSize += min;
            i2 -= min;
            if (i2 <= 0) {
                return;
            } else {
                i = i6;
            }
        }
    }

    public final String contentsAsString() {
        String str = this._resultString;
        if (str != null) {
            return str;
        }
        char[] cArr = this._resultArray;
        if (cArr != null) {
            String str2 = new String(cArr);
            this._resultString = str2;
            return str2;
        }
        if (this._inputStart >= 0) {
            this._resultString = "";
            return "";
        }
        int i = this._segmentSize;
        int i2 = this._currentSize;
        if (i == 0) {
            String str3 = i2 != 0 ? new String(this._currentSegment, 0, i2) : "";
            this._resultString = str3;
            return str3;
        }
        StringBuilder sb = new StringBuilder(i + i2);
        ArrayList arrayList = this._segments;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                char[] cArr2 = (char[]) this._segments.get(i3);
                sb.append(cArr2, 0, cArr2.length);
            }
        }
        sb.append(this._currentSegment, 0, this._currentSize);
        String sb2 = sb.toString();
        this._resultString = sb2;
        return sb2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0028, code lost:
    
        if (r0 > 65536) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void expand() {
        /*
            r3 = this;
            java.util.ArrayList r0 = r3._segments
            if (r0 != 0) goto Lb
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r3._segments = r0
        Lb:
            char[] r1 = r3._currentSegment
            r2 = 1
            r3._hasSegments = r2
            r0.add(r1)
            int r0 = r3._segmentSize
            int r2 = r1.length
            int r0 = r0 + r2
            r3._segmentSize = r0
            r0 = 0
            r3._currentSize = r0
            int r0 = r1.length
            int r1 = r0 >> 1
            int r0 = r0 + r1
            r1 = 500(0x1f4, float:7.0E-43)
            if (r0 >= r1) goto L26
        L24:
            r0 = r1
            goto L2b
        L26:
            r1 = 65536(0x10000, float:9.1835E-41)
            if (r0 <= r1) goto L2b
            goto L24
        L2b:
            char[] r0 = new char[r0]
            r3._currentSegment = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.expand():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0029, code lost:
    
        if (r0 > 65536) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final char[] finishCurrentSegment() {
        /*
            r2 = this;
            java.util.ArrayList r0 = r2._segments
            if (r0 != 0) goto Lb
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r2._segments = r0
        Lb:
            r1 = 1
            r2._hasSegments = r1
            char[] r1 = r2._currentSegment
            r0.add(r1)
            char[] r0 = r2._currentSegment
            int r0 = r0.length
            int r1 = r2._segmentSize
            int r1 = r1 + r0
            r2._segmentSize = r1
            r1 = 0
            r2._currentSize = r1
            int r1 = r0 >> 1
            int r0 = r0 + r1
            r1 = 500(0x1f4, float:7.0E-43)
            if (r0 >= r1) goto L27
        L25:
            r0 = r1
            goto L2c
        L27:
            r1 = 65536(0x10000, float:9.1835E-41)
            if (r0 <= r1) goto L2c
            goto L25
        L2c:
            char[] r0 = new char[r0]
            r2._currentSegment = r0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.util.TextBuffer.finishCurrentSegment():char[]");
    }

    public final String toString() {
        return contentsAsString();
    }

    public final void unshare(int i) {
        char[] cArr;
        this._inputStart = -1;
        char[] cArr2 = this._currentSegment;
        if (cArr2 == null || i > cArr2.length) {
            BufferRecycler bufferRecycler = this._allocator;
            if (bufferRecycler != null) {
                int i2 = BufferRecycler.CHAR_BUFFER_LENGTHS[2];
                if (i < i2) {
                    i = i2;
                }
                cArr = (char[]) bufferRecycler._charBuffers.getAndSet(2, null);
                if (cArr == null || cArr.length < i) {
                    cArr = new char[i];
                }
            } else {
                cArr = new char[Math.max(i, 500)];
            }
            this._currentSegment = cArr;
        }
        this._segmentSize = 0;
        this._currentSize = 0;
    }

    public TextBuffer(BufferRecycler bufferRecycler) {
        this._allocator = bufferRecycler;
    }

    public final void append(char[] cArr, int i, int i2) {
        if (this._inputStart >= 0) {
            unshare(i2);
        }
        this._resultString = null;
        this._resultArray = null;
        char[] cArr2 = this._currentSegment;
        int length = cArr2.length;
        int i3 = this._currentSize;
        int i4 = length - i3;
        if (i4 >= i2) {
            System.arraycopy(cArr, i, cArr2, i3, i2);
            this._currentSize += i2;
            return;
        }
        if (i4 > 0) {
            System.arraycopy(cArr, i, cArr2, i3, i4);
            i += i4;
            i2 -= i4;
        }
        do {
            expand();
            int min = Math.min(this._currentSegment.length, i2);
            System.arraycopy(cArr, i, this._currentSegment, 0, min);
            this._currentSize += min;
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }
}
