package net.thunderbird.core.common.mail;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddressParserConfig {
    public final boolean isEmailAddressLengthCheckEnabled;
    public final boolean isLocalPartLengthCheckEnabled;
    public final boolean isLocalPartRequiringQuotedStringAllowed;
    public final boolean isQuotedLocalPartAllowed;
    public static final EmailAddressParserConfig RELAXED = new EmailAddressParserConfig(false, false, true, true);
    public static final EmailAddressParserConfig LIMITED = new EmailAddressParserConfig(true, true, false, false);

    public EmailAddressParserConfig(boolean z, boolean z2, boolean z3, boolean z4) {
        this.isLocalPartLengthCheckEnabled = z;
        this.isEmailAddressLengthCheckEnabled = z2;
        this.isQuotedLocalPartAllowed = z3;
        this.isLocalPartRequiringQuotedStringAllowed = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EmailAddressParserConfig)) {
            return false;
        }
        EmailAddressParserConfig emailAddressParserConfig = (EmailAddressParserConfig) obj;
        return this.isLocalPartLengthCheckEnabled == emailAddressParserConfig.isLocalPartLengthCheckEnabled && this.isEmailAddressLengthCheckEnabled == emailAddressParserConfig.isEmailAddressLengthCheckEnabled && this.isQuotedLocalPartAllowed == emailAddressParserConfig.isQuotedLocalPartAllowed && this.isLocalPartRequiringQuotedStringAllowed == emailAddressParserConfig.isLocalPartRequiringQuotedStringAllowed;
    }

    public final int hashCode() {
        return ((((((((this.isLocalPartLengthCheckEnabled ? 1231 : 1237) * 31) + (this.isEmailAddressLengthCheckEnabled ? 1231 : 1237)) * 31) + (this.isQuotedLocalPartAllowed ? 1231 : 1237)) * 31) + (this.isLocalPartRequiringQuotedStringAllowed ? 1231 : 1237)) * 31) + 1237;
    }

    public final String toString() {
        return "EmailAddressParserConfig(isLocalPartLengthCheckEnabled=" + this.isLocalPartLengthCheckEnabled + ", isEmailAddressLengthCheckEnabled=" + this.isEmailAddressLengthCheckEnabled + ", isQuotedLocalPartAllowed=" + this.isQuotedLocalPartAllowed + ", isLocalPartRequiringQuotedStringAllowed=" + this.isLocalPartRequiringQuotedStringAllowed + ", isEmptyLocalPartAllowed=false)";
    }
}
