package net.thunderbird.core.common.mail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddressParser extends BaseParser {
    public final EmailAddressParserConfig config;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EmailAddressParser(String str, EmailAddressParserConfig emailAddressParserConfig) {
        super(str, 0, str.length());
        str.getClass();
        this.config = emailAddressParserConfig;
    }

    public final void appendAtom(StringBuilder sb) {
        String str;
        int i = this.currentIndex;
        while (true) {
            boolean endReached = endReached();
            str = this.input;
            if (endReached || !TokensKt.isAtext(str.charAt(this.currentIndex))) {
                break;
            } else {
                this.currentIndex++;
            }
        }
        int i2 = this.currentIndex;
        if (i == i2) {
            throw new EmailAddressParserException("Expected 'Dot-string'", EmailAddressParserError.InvalidDotString, str);
        }
        sb.append((CharSequence) str, i, i2);
    }
}
