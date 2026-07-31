package net.thunderbird.core.common.mail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class BaseParser {
    public int currentIndex;
    public final int endIndex;
    public final String input;

    public BaseParser(String str, int i, int i2) {
        str.getClass();
        this.input = str;
        this.endIndex = i2;
        this.currentIndex = i;
    }

    public final boolean endReached() {
        return this.currentIndex >= this.endIndex;
    }

    public final void expect(char c) {
        if (!endReached() && peek() == c) {
            this.currentIndex++;
            return;
        }
        throw new EmailAddressParserException("Expected '" + c + "' (" + ((int) c) + ")", EmailAddressParserError.UnexpectedCharacter, this.input);
    }

    public final char peek() {
        int i = this.currentIndex;
        int i2 = this.endIndex;
        String str = this.input;
        if (i < i2) {
            return str.charAt(i);
        }
        throw new EmailAddressParserException("End of input reached unexpectedly", EmailAddressParserError.UnexpectedEndOfInput, str);
    }

    public final char read() {
        int i = this.currentIndex;
        int i2 = this.endIndex;
        String str = this.input;
        if (i >= i2) {
            throw new EmailAddressParserException("End of input reached unexpectedly", EmailAddressParserError.UnexpectedEndOfInput, str);
        }
        char charAt = str.charAt(i);
        this.currentIndex++;
        return charAt;
    }
}
