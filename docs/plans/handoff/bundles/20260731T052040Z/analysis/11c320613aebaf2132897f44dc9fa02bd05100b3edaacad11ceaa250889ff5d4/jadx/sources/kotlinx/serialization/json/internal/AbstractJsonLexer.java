package kotlinx.serialization.json.internal;

import androidx.compose.foundation.layout.Arrangement$$ExternalSyntheticLambda0;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.Owner;
import androidx.core.app.NotificationCompatBuilder;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecodingException;
import org.mozilla.javascript.Node$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractJsonLexer {
    public final /* synthetic */ int $r8$classId;
    public final Object configuration;
    public int currentPosition;
    public Object escapedString;
    public final Object path;
    public Object peekedString;

    public AbstractJsonLexer(JsonConfiguration jsonConfiguration) {
        this.$r8$classId = 0;
        this.configuration = jsonConfiguration;
        this.path = new NotificationCompatBuilder(jsonConfiguration);
        this.escapedString = new StringBuilder();
    }

    public static /* synthetic */ void fail$default(AbstractJsonLexer abstractJsonLexer, String str, int i, String str2, int i2) {
        if ((i2 & 2) != 0) {
            i = abstractJsonLexer.currentPosition;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        abstractJsonLexer.fail(str, i, str2);
        throw null;
    }

    public static boolean isValidValueStart(char c) {
        return (c == ',' || c == ':' || c == ']' || c == '}') ? false : true;
    }

    public void advance() {
        this.peekedString = (Map.Entry) this.escapedString;
        Iterator it = (Iterator) this.path;
        this.escapedString = it.hasNext() ? (Map.Entry) it.next() : null;
    }

    public int appendHex(int i, CharSequence charSequence) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            ((StringBuilder) this.escapedString).append((char) (fromHexChar(i + 3, charSequence) + (fromHexChar(i, charSequence) << 12) + (fromHexChar(i + 1, charSequence) << 8) + (fromHexChar(i + 2, charSequence) << 4)));
            return i2;
        }
        this.currentPosition = i;
        ensureHaveChars();
        if (this.currentPosition + 4 < charSequence.length()) {
            return appendHex(this.currentPosition, charSequence);
        }
        fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
    }

    public void appendRange(int i, int i2) {
        ((StringBuilder) this.escapedString).append(getSource(), i, i2);
    }

    public abstract boolean canConsumeValue();

    public void consumeBooleanLiteral(int i, String str) {
        if (getSource().length() - i < str.length()) {
            fail$default(this, "Unexpected end of boolean literal", 0, null, 6);
            throw null;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (getSource().charAt(i + i2) | ' ')) {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6);
                throw null;
            }
        }
        this.currentPosition = str.length() + i;
    }

    public abstract String consumeKeyString();

    public abstract byte consumeNextToken();

    public byte consumeNextToken(byte b) {
        byte consumeNextToken = consumeNextToken();
        if (consumeNextToken == b) {
            return consumeNextToken;
        }
        String str = WriteModeKt.tokenDescription(b);
        int i = this.currentPosition;
        int i2 = i > 0 ? i - 1 : i;
        fail$default(this, Owner.CC.m("Expected ", str, ", but had '", (i == getSource().length() || i2 < 0) ? "EOF" : String.valueOf(getSource().charAt(i2)), "' instead"), i2, null, 4);
        throw null;
    }

    public abstract void consumeNextToken(char c);

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01d6, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x013b, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0137, code lost:
    
        if (r11 == r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0139, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013c, code lost:
    
        if (r1 == r11) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013e, code lost:
    
        if (r21 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0142, code lost:
    
        if (r1 == (r11 - 1)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0148, code lost:
    
        if (r19 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x014a, code lost:
    
        if (r2 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0156, code lost:
    
        if (getSource().charAt(r11) != '\"') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0158, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x015b, code lost:
    
        fail$default(r22, "Expected closing quotation mark", r11, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0162, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0163, code lost:
    
        fail$default(r22, "EOF", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0169, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x016a, code lost:
    
        r22.currentPosition = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016c, code lost:
    
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x016e, code lost:
    
        r1 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0171, code lost:
    
        if (r8 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0173, code lost:
    
        r5 = java.lang.Math.pow(10.0d, -r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0182, code lost:
    
        r1 = r1 * r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0187, code lost:
    
        if (r1 > 9.223372036854776E18d) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x018d, code lost:
    
        if (r1 < (-9.223372036854776E18d)) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0195, code lost:
    
        if (java.lang.Math.floor(r1) != r1) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0197, code lost:
    
        r14 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x019a, code lost:
    
        fail$default(r22, "Can't convert " + r1 + " to Long", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01b3, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01b4, code lost:
    
        fail$default(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01ba, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x017b, code lost:
    
        if (r8 != true) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x017d, code lost:
    
        r5 = java.lang.Math.pow(10.0d, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01bb, code lost:
    
        coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01be, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01bf, code lost:
    
        if (r21 == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01c1, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01c6, code lost:
    
        if (r14 == Long.MIN_VALUE) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01c9, code lost:
    
        return -r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01ca, code lost:
    
        fail$default(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01cf, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01d0, code lost:
    
        fail$default(r22, "Expected numeric literal", r11, null, 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long consumeNumericLiteral() {
        /*
            Method dump skipped, instructions count: 478
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.AbstractJsonLexer.consumeNumericLiteral():long");
    }

    public String consumeString(CharSequence charSequence, int i, int i2) {
        String sb;
        StringBuilder sb2 = (StringBuilder) this.escapedString;
        charSequence.getClass();
        char charAt = charSequence.charAt(i2);
        boolean z = false;
        while (charAt != '\"') {
            if (charAt == '\\') {
                appendRange(i, i2);
                int prefetchOrEof = prefetchOrEof(i2 + 1);
                if (prefetchOrEof == -1) {
                    fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                    throw null;
                }
                int i3 = prefetchOrEof + 1;
                char charAt2 = getSource().charAt(prefetchOrEof);
                if (charAt2 == 'u') {
                    i3 = appendHex(i3, getSource());
                } else {
                    char c = charAt2 < 'u' ? CharMappings.ESCAPE_2_CHAR[charAt2] : (char) 0;
                    if (c == 0) {
                        fail$default(this, "Invalid escaped char '" + charAt2 + '\'', 0, null, 6);
                        throw null;
                    }
                    sb2.append(c);
                }
                i = prefetchOrEof(i3);
                if (i == -1) {
                    fail$default(this, "Unexpected EOF", i, null, 4);
                    throw null;
                }
            } else {
                i2++;
                if (i2 >= charSequence.length()) {
                    appendRange(i, i2);
                    i = prefetchOrEof(i2);
                    if (i == -1) {
                        fail$default(this, "Unexpected EOF", i, null, 4);
                        throw null;
                    }
                } else {
                    continue;
                    charAt = charSequence.charAt(i2);
                }
            }
            i2 = i;
            z = true;
            charAt = charSequence.charAt(i2);
        }
        if (z) {
            appendRange(i, i2);
            sb = sb2.toString();
            sb2.setLength(0);
        } else {
            sb = substring(i, i2);
        }
        this.currentPosition = i2 + 1;
        return sb;
    }

    public String consumeStringLenient() {
        String str;
        StringBuilder sb = (StringBuilder) this.escapedString;
        String str2 = (String) this.peekedString;
        if (str2 != null) {
            str2.getClass();
            this.peekedString = null;
            return str2;
        }
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces >= getSource().length() || skipWhitespaces == -1) {
            fail$default(this, "EOF", skipWhitespaces, null, 4);
            throw null;
        }
        byte charToTokenClass = WriteModeKt.charToTokenClass(getSource().charAt(skipWhitespaces));
        if (charToTokenClass == 1) {
            return consumeString();
        }
        if (charToTokenClass != 0) {
            fail$default(this, "Expected beginning of the string, but got " + getSource().charAt(skipWhitespaces), 0, null, 6);
            throw null;
        }
        boolean z = false;
        while (WriteModeKt.charToTokenClass(getSource().charAt(skipWhitespaces)) == 0) {
            skipWhitespaces++;
            if (skipWhitespaces >= getSource().length()) {
                appendRange(this.currentPosition, skipWhitespaces);
                int prefetchOrEof = prefetchOrEof(skipWhitespaces);
                if (prefetchOrEof == -1) {
                    this.currentPosition = skipWhitespaces;
                    appendRange(0, 0);
                    String sb2 = sb.toString();
                    sb.setLength(0);
                    return sb2;
                }
                skipWhitespaces = prefetchOrEof;
                z = true;
            }
        }
        int i = this.currentPosition;
        if (z) {
            appendRange(i, skipWhitespaces);
            String sb3 = sb.toString();
            sb.setLength(0);
            str = sb3;
        } else {
            str = substring(i, skipWhitespaces);
        }
        this.currentPosition = skipWhitespaces;
        return str;
    }

    public void expectEof() {
        if (consumeNextToken() == 10) {
            return;
        }
        fail$default(this, "Expected EOF after parsing, but had " + getSource().charAt(this.currentPosition - 1) + " instead", 0, null, 6);
        throw null;
    }

    public void fail(String str, int i, String str2) {
        String path = ((NotificationCompatBuilder) this.path).getPath();
        CharSequence source = getSource();
        source.getClass();
        String obj = ((JsonConfiguration) this.configuration).exceptionsWithDebugInfo ? WriteModeKt.minify(i, source).toString() : null;
        throw new JsonDecodingException(i, WriteModeKt.formatDecodingException(i, str, path, str2, obj), str, path, obj, str2);
    }

    public int fromHexChar(int i, CharSequence charSequence) {
        char charAt = charSequence.charAt(i);
        if ('0' <= charAt && charAt < ':') {
            return charAt - '0';
        }
        if ('a' <= charAt && charAt < 'g') {
            return charAt - 'W';
        }
        if ('A' <= charAt && charAt < 'G') {
            return charAt - '7';
        }
        fail$default(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    public abstract CharSequence getSource();

    public boolean hasNext() {
        return ((Map.Entry) this.escapedString) != null;
    }

    public abstract String peekLeadingMatchingValue(String str);

    public byte peekNextToken() {
        CharSequence source = getSource();
        int i = this.currentPosition;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof == -1) {
                this.currentPosition = prefetchOrEof;
                return (byte) 10;
            }
            char charAt = source.charAt(prefetchOrEof);
            if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                this.currentPosition = prefetchOrEof;
                return WriteModeKt.charToTokenClass(charAt);
            }
            i = prefetchOrEof + 1;
        }
    }

    public String peekString() {
        if (peekNextToken() != 1) {
            return null;
        }
        String consumeString = consumeString();
        this.peekedString = consumeString;
        return consumeString;
    }

    public abstract int prefetchOrEof(int i);

    public void remove() {
        SnapshotStateMap snapshotStateMap = (SnapshotStateMap) this.configuration;
        if (snapshotStateMap.getReadable$runtime().modification != this.currentPosition) {
            Arrangement$$ExternalSyntheticLambda0.m();
            return;
        }
        Map.Entry entry = (Map.Entry) this.peekedString;
        if (entry == null) {
            Node$$ExternalSyntheticBUOutline0.m();
            return;
        }
        snapshotStateMap.remove(entry.getKey());
        this.peekedString = null;
        this.currentPosition = snapshotStateMap.getReadable$runtime().modification;
    }

    public abstract int skipWhitespaces();

    public String substring(int i, int i2) {
        return getSource().subSequence(i, i2).toString();
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                StringBuilder sb = new StringBuilder("JsonReader(source='");
                sb.append((Object) getSource());
                sb.append("', currentPosition=");
                return Modifier.CC.m(sb, this.currentPosition, ')');
            default:
                return super.toString();
        }
    }

    public boolean tryConsumeComma() {
        int skipWhitespaces = skipWhitespaces();
        CharSequence source = getSource();
        if (skipWhitespaces >= source.length() || skipWhitespaces == -1 || source.charAt(skipWhitespaces) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    public boolean tryConsumeNull(boolean z) {
        int prefetchOrEof = prefetchOrEof(skipWhitespaces());
        int length = getSource().length() - prefetchOrEof;
        if (length >= 4 && prefetchOrEof != -1) {
            int i = 0;
            while (true) {
                if (i < 4) {
                    if ("null".charAt(i) != getSource().charAt(prefetchOrEof + i)) {
                        break;
                    }
                    i++;
                } else if (length <= 4 || WriteModeKt.charToTokenClass(getSource().charAt(prefetchOrEof + 4)) != 0) {
                    if (z) {
                        this.currentPosition = prefetchOrEof + 4;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public void unexpectedToken(char c) {
        int i = this.currentPosition;
        if (i > 0 && c == '\"') {
            try {
                this.currentPosition = i - 1;
                String consumeStringLenient = consumeStringLenient();
                this.currentPosition = i;
                if (Intrinsics.areEqual(consumeStringLenient, "null")) {
                    fail("Expected string literal but 'null' literal was found", this.currentPosition - 1, "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.currentPosition = i;
                throw th;
            }
        }
        String str = WriteModeKt.tokenDescription(WriteModeKt.charToTokenClass(c));
        int i2 = this.currentPosition;
        int i3 = i2 > 0 ? i2 - 1 : i2;
        fail$default(this, Owner.CC.m("Expected ", str, ", but had '", (i2 == getSource().length() || i3 < 0) ? "EOF" : String.valueOf(getSource().charAt(i3)), "' instead"), i3, null, 4);
        throw null;
    }

    public void ensureHaveChars() {
    }

    public AbstractJsonLexer(SnapshotStateMap snapshotStateMap, Iterator it) {
        this.$r8$classId = 1;
        this.configuration = snapshotStateMap;
        this.path = it;
        this.currentPosition = snapshotStateMap.getReadable$runtime().modification;
        advance();
    }

    public String consumeString() {
        String str = (String) this.peekedString;
        if (str != null) {
            str.getClass();
            this.peekedString = null;
            return str;
        }
        return consumeKeyString();
    }
}
