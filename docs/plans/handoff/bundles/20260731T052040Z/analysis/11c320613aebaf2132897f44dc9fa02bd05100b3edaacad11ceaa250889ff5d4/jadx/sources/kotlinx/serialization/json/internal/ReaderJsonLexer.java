package kotlinx.serialization.json.internal;

import androidx.compose.ui.Modifier;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.JsonConfiguration;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ReaderJsonLexer extends AbstractJsonLexer {
    public final char[] buffer;
    public final ConnectionPool reader;
    public final ArrayAsSequence source;
    public int threshold;

    public ReaderJsonLexer(ConnectionPool connectionPool, char[] cArr, JsonConfiguration jsonConfiguration) {
        super(jsonConfiguration);
        this.reader = connectionPool;
        this.buffer = cArr;
        this.threshold = 128;
        this.source = new ArrayAsSequence(cArr);
        preload(0);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final void appendRange(int i, int i2) {
        ((StringBuilder) this.escapedString).append(this.source.buffer, i, i2 - i);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        ensureHaveChars();
        int i = this.currentPosition;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof == -1) {
                this.currentPosition = prefetchOrEof;
                return false;
            }
            char c = this.source.buffer[prefetchOrEof];
            if (c != ' ' && c != '\n' && c != '\r' && c != '\t') {
                this.currentPosition = prefetchOrEof;
                return AbstractJsonLexer.isValidValueStart(c);
            }
            i = prefetchOrEof + 1;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String consumeKeyString() {
        consumeNextToken('\"');
        int i = this.currentPosition;
        ArrayAsSequence arrayAsSequence = this.source;
        int i2 = arrayAsSequence.length;
        char[] cArr = arrayAsSequence.buffer;
        int i3 = i;
        while (true) {
            if (i3 >= i2) {
                i3 = -1;
                break;
            }
            if (cArr[i3] == '\"') {
                break;
            }
            i3++;
        }
        if (i3 == -1) {
            int prefetchOrEof = prefetchOrEof(i);
            int i4 = this.currentPosition;
            if (prefetchOrEof != -1) {
                return consumeString(arrayAsSequence, i4, prefetchOrEof);
            }
            int i5 = i4 > 0 ? i4 - 1 : i4;
            AbstractJsonLexer.fail$default(this, Modifier.CC.m("Expected quotation mark '\"', but had '", (i4 == arrayAsSequence.length || i5 < 0) ? "EOF" : String.valueOf(arrayAsSequence.buffer[i5]), "' instead"), i5, null, 4);
            throw null;
        }
        for (int i6 = i; i6 < i3; i6++) {
            if (cArr[i6] == '\\') {
                return consumeString(arrayAsSequence, this.currentPosition, i6);
            }
        }
        this.currentPosition = i3 + 1;
        return StringsKt__StringsJVMKt.concatToString(cArr, i, Math.min(i3, arrayAsSequence.length));
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c) {
        ensureHaveChars();
        int i = this.currentPosition;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof == -1) {
                this.currentPosition = prefetchOrEof;
                unexpectedToken(c);
                throw null;
            }
            int i2 = prefetchOrEof + 1;
            char c2 = this.source.buffer[prefetchOrEof];
            if (c2 != ' ' && c2 != '\n' && c2 != '\r' && c2 != '\t') {
                this.currentPosition = i2;
                if (c2 == c) {
                    return;
                }
                unexpectedToken(c);
                throw null;
            }
            i = i2;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final void ensureHaveChars() {
        int i = this.source.length - this.currentPosition;
        if (i > this.threshold) {
            return;
        }
        preload(i);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final CharSequence getSource() {
        return this.source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String peekLeadingMatchingValue(String str) {
        str.getClass();
        return null;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final int prefetchOrEof(int i) {
        ArrayAsSequence arrayAsSequence = this.source;
        if (i < arrayAsSequence.length) {
            return i;
        }
        this.currentPosition = i;
        ensureHaveChars();
        return (this.currentPosition != 0 || arrayAsSequence.length() == 0) ? -1 : 0;
    }

    public final void preload(int i) {
        ArrayAsSequence arrayAsSequence = this.source;
        char[] cArr = arrayAsSequence.buffer;
        if (i != 0) {
            int i2 = this.currentPosition;
            System.arraycopy(cArr, i2, cArr, 0, (i2 + i) - i2);
        }
        int i3 = arrayAsSequence.length;
        while (true) {
            if (i == i3) {
                break;
            }
            ConnectionPool connectionPool = this.reader;
            connectionPool.getClass();
            int read = ((CharsetReader) connectionPool.delegate).read(cArr, i, i3 - i);
            if (read == -1) {
                arrayAsSequence.length = Math.min(arrayAsSequence.buffer.length, i);
                this.threshold = -1;
                break;
            }
            i += read;
        }
        this.currentPosition = 0;
    }

    public final void release() {
        CharArrayPoolBatchSize charArrayPoolBatchSize = CharArrayPoolBatchSize.INSTANCE;
        charArrayPoolBatchSize.getClass();
        char[] cArr = this.buffer;
        cArr.getClass();
        if (cArr.length == 16384) {
            charArrayPoolBatchSize.releaseImpl(cArr);
            return;
        }
        throw new IllegalArgumentException(("Inconsistent internal invariant: unexpected array size " + cArr.length).toString());
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        int prefetchOrEof;
        char c;
        int i = this.currentPosition;
        while (true) {
            prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof == -1 || !((c = this.source.buffer[prefetchOrEof]) == ' ' || c == '\n' || c == '\r' || c == '\t')) {
                break;
            }
            i = prefetchOrEof + 1;
        }
        this.currentPosition = prefetchOrEof;
        return prefetchOrEof;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String substring(int i, int i2) {
        ArrayAsSequence arrayAsSequence = this.source;
        return StringsKt__StringsJVMKt.concatToString(arrayAsSequence.buffer, i, Math.min(i2, arrayAsSequence.length));
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        ensureHaveChars();
        int i = this.currentPosition;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof != -1) {
                int i2 = prefetchOrEof + 1;
                byte charToTokenClass = WriteModeKt.charToTokenClass(this.source.buffer[prefetchOrEof]);
                if (charToTokenClass != 3) {
                    this.currentPosition = i2;
                    return charToTokenClass;
                }
                i = i2;
            } else {
                this.currentPosition = prefetchOrEof;
                return (byte) 10;
            }
        }
    }
}
