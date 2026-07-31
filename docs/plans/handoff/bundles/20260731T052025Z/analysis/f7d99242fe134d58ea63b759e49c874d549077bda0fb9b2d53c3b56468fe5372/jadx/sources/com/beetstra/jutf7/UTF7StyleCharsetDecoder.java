package com.beetstra.jutf7;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UTF7StyleCharsetDecoder extends CharsetDecoder {
    public final Base64Util base64;
    public boolean base64mode;
    public int bitsRead;
    public boolean justShifted;
    public boolean justUnshifted;
    public final byte shift;
    public final boolean strict;
    public int tempChar;
    public final byte unshift;

    public UTF7StyleCharsetDecoder(UTF7StyleCharset uTF7StyleCharset, Base64Util base64Util, boolean z) {
        super(uTF7StyleCharset, 0.6f, 1.0f);
        this.base64 = base64Util;
        this.strict = z;
        this.shift = uTF7StyleCharset.shift();
        this.unshift = (byte) 45;
    }

    public static CoderResult malformed(ByteBuffer byteBuffer) {
        byteBuffer.position(byteBuffer.position() - 1);
        return CoderResult.malformedForLength(1);
    }

    @Override // java.nio.charset.CharsetDecoder
    public final CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        int i;
        while (byteBuffer.hasRemaining()) {
            byte b = byteBuffer.get();
            boolean z = this.base64mode;
            boolean z2 = this.strict;
            byte b2 = this.shift;
            if (z) {
                if (b == this.unshift) {
                    if (this.tempChar != 0 || this.bitsRead >= 6) {
                        return malformed(byteBuffer);
                    }
                    if (!this.justShifted) {
                        this.justUnshifted = true;
                    } else {
                        if (!charBuffer.hasRemaining()) {
                            byteBuffer.position(byteBuffer.position() - 1);
                            return CoderResult.OVERFLOW;
                        }
                        charBuffer.put((char) b2);
                    }
                    this.base64mode = false;
                    this.bitsRead = 0;
                    this.tempChar = 0;
                } else {
                    if (!charBuffer.hasRemaining()) {
                        byteBuffer.position(byteBuffer.position() - 1);
                        return CoderResult.OVERFLOW;
                    }
                    Base64Util base64Util = this.base64;
                    if (b >= 128) {
                        base64Util.getClass();
                        i = -1;
                    } else {
                        i = ((int[]) base64Util.inverseAlphabet)[b];
                    }
                    if (i >= 0) {
                        int i2 = this.bitsRead;
                        int i3 = i2 + 6;
                        this.bitsRead = i3;
                        if (i3 < 16) {
                            this.tempChar += i << (16 - i3);
                        } else {
                            int i4 = i2 - 10;
                            this.bitsRead = i4;
                            int i5 = this.tempChar + (i >> i4);
                            this.tempChar = i5;
                            charBuffer.put((char) i5);
                            this.tempChar = (i << (16 - this.bitsRead)) & 65535;
                        }
                    } else if (z2) {
                        r4 = malformed(byteBuffer);
                    } else {
                        charBuffer.put((char) b);
                        r4 = (this.tempChar != 0 || this.bitsRead >= 6) ? malformed(byteBuffer) : null;
                        this.base64mode = false;
                        this.bitsRead = 0;
                        this.tempChar = 0;
                    }
                    if (r4 != null) {
                        return r4;
                    }
                }
                this.justShifted = false;
            } else if (b == b2) {
                this.base64mode = true;
                if (this.justUnshifted && z2) {
                    return malformed(byteBuffer);
                }
                this.justShifted = true;
            } else {
                if (!charBuffer.hasRemaining()) {
                    byteBuffer.position(byteBuffer.position() - 1);
                    return CoderResult.OVERFLOW;
                }
                charBuffer.put((char) b);
                this.justUnshifted = false;
            }
        }
        return CoderResult.UNDERFLOW;
    }

    @Override // java.nio.charset.CharsetDecoder
    public final CoderResult implFlush(CharBuffer charBuffer) {
        return (!(this.base64mode && this.strict) && this.tempChar == 0 && this.bitsRead < 6) ? CoderResult.UNDERFLOW : CoderResult.malformedForLength(1);
    }

    @Override // java.nio.charset.CharsetDecoder
    public final void implReset() {
        this.base64mode = false;
        this.bitsRead = 0;
        this.tempChar = 0;
        this.justUnshifted = false;
    }
}
