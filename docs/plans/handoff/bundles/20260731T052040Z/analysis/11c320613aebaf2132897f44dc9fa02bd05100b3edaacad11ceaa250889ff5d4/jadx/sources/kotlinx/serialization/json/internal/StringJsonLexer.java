package kotlinx.serialization.json.internal;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.JsonConfiguration;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class StringJsonLexer extends AbstractJsonLexer {
    public final String source;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringJsonLexer(String str, JsonConfiguration jsonConfiguration) {
        super(jsonConfiguration);
        str.getClass();
        this.source = str;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        int i = this.currentPosition;
        if (i == -1) {
            return false;
        }
        while (true) {
            String str = this.source;
            if (i >= str.length()) {
                this.currentPosition = i;
                return false;
            }
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.currentPosition = i;
                return AbstractJsonLexer.isValidValueStart(charAt);
            }
            i++;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String consumeKeyString() {
        consumeNextToken('\"');
        int i = this.currentPosition;
        String str = this.source;
        int indexOf$default = StringsKt.indexOf$default('\"', i, 4, (CharSequence) str);
        if (indexOf$default == -1) {
            consumeStringLenient();
            int i2 = this.currentPosition;
            AbstractJsonLexer.fail$default(this, Modifier.CC.m("Expected quotation mark '\"', but had '", (i2 == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, null, 4);
            throw null;
        }
        for (int i3 = i; i3 < indexOf$default; i3++) {
            if (str.charAt(i3) == '\\') {
                return consumeString(str, this.currentPosition, i3);
            }
        }
        this.currentPosition = indexOf$default + 1;
        return str.substring(i, indexOf$default);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c) {
        int i = this.currentPosition;
        if (i == -1) {
            unexpectedToken(c);
            throw null;
        }
        while (true) {
            String str = this.source;
            if (i >= str.length()) {
                this.currentPosition = -1;
                unexpectedToken(c);
                throw null;
            }
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.currentPosition = i2;
                if (charAt == c) {
                    return;
                }
                unexpectedToken(c);
                throw null;
            }
            i = i2;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final CharSequence getSource() {
        return this.source;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final String peekLeadingMatchingValue(String str) {
        str.getClass();
        int i = this.currentPosition;
        try {
            if (consumeNextToken() == 6 && Intrinsics.areEqual(peekString(), str)) {
                this.peekedString = null;
                if (consumeNextToken() == 5) {
                    return peekString();
                }
            }
            return null;
        } finally {
            this.currentPosition = i;
            this.peekedString = null;
        }
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public final int prefetchOrEof(int i) {
        if (i < this.source.length()) {
            return i;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        char charAt;
        int i = this.currentPosition;
        if (i == -1) {
            return i;
        }
        while (true) {
            String str = this.source;
            if (i >= str.length() || !((charAt = str.charAt(i)) == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t')) {
                break;
            }
            i++;
        }
        this.currentPosition = i;
        return i;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        String str;
        int i = this.currentPosition;
        while (true) {
            str = this.source;
            if (i == -1 || i >= str.length()) {
                break;
            }
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.currentPosition = i2;
                return WriteModeKt.charToTokenClass(charAt);
            }
            i = i2;
        }
        this.currentPosition = str.length();
        return (byte) 10;
    }
}
