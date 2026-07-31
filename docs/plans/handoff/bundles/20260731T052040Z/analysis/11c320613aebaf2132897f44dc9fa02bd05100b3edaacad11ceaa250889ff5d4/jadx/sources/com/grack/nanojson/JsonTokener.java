package com.grack.nanojson;

import androidx.constraintlayout.core.SolverVariable$Type$EnumUnboxingSharedUtility;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes.dex */
public final class JsonTokener {
    public final char[] buffer;
    public int bufferLength;
    public int charOffset;
    public boolean eof;
    public int index;
    public boolean isDouble;
    public int linePos;
    public final Reader reader;
    public final StringBuilder reusableBuffer;
    public int rowPos;
    public int tokenCharOffset;
    public int tokenCharPos;
    public final boolean utf8;
    public int utf8adjust;
    public static final char[] TRUE = {'r', 'u', 'e'};
    public static final char[] FALSE = {'a', 'l', 's', 'e'};
    public static final char[] NULL = {'u', 'l', 'l'};

    public JsonTokener(InputStream inputStream) {
        Charset charset;
        this.linePos = 1;
        this.buffer = new char[DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE];
        this.reusableBuffer = new StringBuilder();
        if (!(inputStream instanceof BufferedInputStream) && !(inputStream instanceof ByteArrayInputStream)) {
            inputStream = new BufferedInputStream(inputStream);
        }
        inputStream.mark(4);
        try {
            int[] iArr = {inputStream.read(), inputStream.read(), inputStream.read(), inputStream.read()};
            int i = iArr[0];
            if (i != 239 || iArr[1] != 187 || iArr[2] != 191) {
                if (i == 0 && iArr[1] == 0 && iArr[2] == 254 && iArr[3] == 255) {
                    charset = Charset.forName("UTF-32BE");
                } else if (i == 255 && iArr[1] == 254 && iArr[2] == 0 && iArr[3] == 0) {
                    charset = Charset.forName("UTF-32LE");
                } else {
                    if (i == 254 && iArr[1] == 255) {
                        charset = StandardCharsets.UTF_16BE;
                        inputStream.reset();
                    } else if (i == 255 && iArr[1] == 254) {
                        charset = StandardCharsets.UTF_16LE;
                        inputStream.reset();
                    } else {
                        if (i == 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] != 0) {
                            charset = Charset.forName("UTF-32BE");
                        } else if (i != 0 && iArr[1] == 0 && iArr[2] == 0 && iArr[3] == 0) {
                            charset = Charset.forName("UTF-32LE");
                        } else if (i == 0 && iArr[1] != 0 && iArr[2] == 0 && iArr[3] != 0) {
                            charset = StandardCharsets.UTF_16BE;
                        } else if (i == 0 || iArr[1] != 0 || iArr[2] == 0 || iArr[3] != 0) {
                            inputStream.reset();
                            this.reader = new PseudoUtf8Reader(inputStream);
                        } else {
                            charset = StandardCharsets.UTF_16LE;
                        }
                        inputStream.reset();
                    }
                    inputStream.read();
                    inputStream.read();
                }
                this.reader = new InputStreamReader(inputStream, charset);
                this.utf8 = false;
                init();
            }
            inputStream.reset();
            inputStream.read();
            inputStream.read();
            inputStream.read();
            this.reader = new PseudoUtf8Reader(inputStream);
            this.utf8 = true;
            init();
        } catch (IOException e) {
            throw new JsonParserException(e, "IOException while detecting charset", 1, 1, 0);
        }
    }

    public static boolean isWhitespace(int i) {
        return i == 32 || i == 10 || i == 13 || i == 9;
    }

    public final int advanceChar() {
        if (this.eof) {
            return -1;
        }
        int i = this.index;
        char c = this.buffer[i];
        if (c == '\n') {
            this.linePos++;
            this.rowPos = i + 1 + this.charOffset;
            this.utf8adjust = 0;
        }
        int i2 = i + 1;
        this.index = i2;
        if (i2 >= this.bufferLength) {
            this.eof = refillBuffer();
        }
        return c;
    }

    public final void consumeKeyword(char c, char[] cArr) {
        int i = 0;
        if (ensureBuffer(cArr.length) < cArr.length) {
            throw createHelpfulException(c, cArr, 0);
        }
        while (true) {
            int length = cArr.length;
            char[] cArr2 = this.buffer;
            if (i >= length) {
                fixupAfterRawBufferRead();
                char c2 = this.eof ? (char) 65535 : cArr2[this.index];
                if (c2 != '\t' && c2 != '\n' && c2 != '\r' && c2 != ' ' && c2 != ',' && c2 != ':' && c2 != '[' && c2 != ']' && c2 != '{' && c2 != '}') {
                    throw createHelpfulException(c, cArr, cArr.length);
                }
                return;
            }
            int i2 = this.index;
            this.index = i2 + 1;
            if (cArr2[i2] != cArr[i]) {
                throw createHelpfulException(c, cArr, i);
            }
            i++;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:113:0x018d, code lost:
    
        throw createParseException(null, "Invalid character in semi-string: " + r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0191, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0061, code lost:
    
        throw createParseException(null, "Invalid character in semi-string: " + r10, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x01aa, code lost:
    
        r1.append(r9, (r18.index - r8) - 1, r8);
        fixupAfterRawBufferRead();
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x01b4, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x012e, code lost:
    
        r1 = new java.lang.StringBuilder("Expected unicode hex escape character: ");
        r1.append(r11);
        r1.append(" (");
        r1.append((int) r11);
        r1.append(")");
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x014e, code lost:
    
        throw createParseException(null, r1.toString(), false);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void consumeTokenSemiString() {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonTokener.consumeTokenSemiString():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0196 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0197  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void consumeTokenStringUtf8Char(char r11) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.grack.nanojson.JsonTokener.consumeTokenStringUtf8Char(char):void");
    }

    public final JsonParserException createHelpfulException(char c, char[] cArr, int i) {
        StringBuilder sb = new StringBuilder();
        sb.append(c);
        String str = "";
        sb.append(cArr == null ? "" : new String(cArr, 0, i));
        StringBuilder sb2 = new StringBuilder(sb.toString());
        while (true) {
            char c2 = this.eof ? (char) 65535 : this.buffer[this.index];
            if (((c2 < 'A' || c2 > 'Z') && (c2 < 'a' || c2 > 'z')) || sb2.length() >= 15) {
                break;
            }
            sb2.append((char) advanceChar());
        }
        StringBuilder sb3 = new StringBuilder("Unexpected token '");
        sb3.append((Object) sb2);
        sb3.append("'");
        if (cArr != null) {
            str = ". Did you mean '" + c + new String(cArr) + "'?";
        }
        sb3.append(str);
        return createParseException(null, sb3.toString(), true);
    }

    public final JsonParserException createParseException(Exception exc, String str, boolean z) {
        if (z) {
            StringBuilder m = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, " on line ");
            m.append(this.linePos);
            m.append(", char ");
            m.append(this.tokenCharPos);
            return new JsonParserException(exc, m.toString(), this.linePos, this.tokenCharPos, this.tokenCharOffset);
        }
        int max = Math.max(1, ((this.index + this.charOffset) - this.rowPos) - this.utf8adjust);
        StringBuilder m2 = SolverVariable$Type$EnumUnboxingSharedUtility.m(str, " on line ");
        m2.append(this.linePos);
        m2.append(", char ");
        m2.append(max);
        return new JsonParserException(exc, m2.toString(), this.linePos, max, this.index + this.charOffset);
    }

    public final int ensureBuffer(int i) {
        int i2;
        int i3 = this.bufferLength;
        int i4 = i3 - i;
        int i5 = this.index;
        if (i4 >= i5) {
            return i;
        }
        char[] cArr = this.buffer;
        if (i5 > 0) {
            this.charOffset += i5;
            int i6 = i3 - i5;
            this.bufferLength = i6;
            System.arraycopy(cArr, i5, cArr, 0, i6);
            this.index = 0;
        }
        do {
            try {
                int length = cArr.length;
                int i7 = this.bufferLength;
                if (length <= i7) {
                    throw new IOException("Unexpected internal error");
                }
                int read = this.reader.read(cArr, i7, cArr.length - i7);
                int i8 = this.bufferLength;
                if (read <= 0) {
                    return i8 - this.index;
                }
                i2 = i8 + read;
                this.bufferLength = i2;
            } catch (IOException e) {
                throw createParseException(e, "IOException", true);
            }
        } while (i2 <= i);
        return i2 - this.index;
    }

    public final void fixupAfterRawBufferRead() {
        if (this.index >= this.bufferLength) {
            this.eof = refillBuffer();
        }
    }

    public final void init() {
        int ensureBuffer;
        this.eof = refillBuffer();
        do {
            ensureBuffer = ensureBuffer(256);
            for (int i = 0; i < ensureBuffer; i++) {
                char c = this.buffer[this.index];
                if (!isWhitespace(c)) {
                    fixupAfterRawBufferRead();
                    return;
                }
                if (c == '\n') {
                    this.linePos++;
                    this.rowPos = this.index + 1 + this.charOffset;
                    this.utf8adjust = 0;
                }
                this.index++;
            }
        } while (ensureBuffer > 0);
        this.eof = true;
    }

    public final boolean refillBuffer() {
        try {
            Reader reader = this.reader;
            char[] cArr = this.buffer;
            int read = reader.read(cArr, 0, cArr.length);
            if (read <= 0) {
                return true;
            }
            this.charOffset += this.bufferLength;
            this.index = 0;
            this.bufferLength = read;
            return false;
        } catch (IOException e) {
            throw createParseException(e, "IOException", true);
        }
    }

    public final char stringChar() {
        int i = this.index;
        this.index = i + 1;
        char c = this.buffer[i];
        if (c >= ' ') {
            return c;
        }
        if (c == '\n') {
            this.linePos++;
            this.rowPos = i + 2 + this.charOffset;
            this.utf8adjust = 0;
        }
        throw createParseException(null, "Strings may not contain control characters: 0x" + Integer.toString(c, 16), false);
    }

    public final class PseudoUtf8Reader extends Reader {
        public final byte[] buf = new byte[DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE];
        public final InputStream buffered;

        public PseudoUtf8Reader(InputStream inputStream) {
            this.buffered = inputStream;
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) {
            InputStream inputStream = this.buffered;
            byte[] bArr = this.buf;
            int read = inputStream.read(bArr, i, i2);
            for (int i3 = i; i3 < i + read; i3++) {
                cArr[i3] = (char) bArr[i3];
            }
            return read;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }
    }

    public JsonTokener(StringReader stringReader) {
        this.linePos = 1;
        this.buffer = new char[DecoderReuseEvaluation.DISCARD_REASON_AUDIO_BYPASS_POSSIBLE];
        this.reusableBuffer = new StringBuilder();
        this.reader = stringReader;
        this.utf8 = false;
        init();
    }
}
