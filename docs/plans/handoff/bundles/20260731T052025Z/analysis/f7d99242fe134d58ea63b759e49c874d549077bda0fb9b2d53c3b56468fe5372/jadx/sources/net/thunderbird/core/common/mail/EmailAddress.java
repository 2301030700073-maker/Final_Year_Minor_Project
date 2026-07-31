package net.thunderbird.core.common.mail;

import kotlin.collections.builders.SetBuilder;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddress {
    public final EmailDomain domain;
    public final String encodedLocalPart;
    public final String localPart;
    public final SetBuilder warnings;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Warning {
        public static final /* synthetic */ Warning[] $VALUES;
        public static final Warning EmailAddressExceedsLengthLimit;
        public static final Warning EmptyLocalPart;
        public static final Warning LocalPartExceedsLengthLimit;
        public static final Warning QuotedStringInLocalPart;

        static {
            Warning warning = new Warning("LocalPartExceedsLengthLimit", 0);
            LocalPartExceedsLengthLimit = warning;
            Warning warning2 = new Warning("EmailAddressExceedsLengthLimit", 1);
            EmailAddressExceedsLengthLimit = warning2;
            Warning warning3 = new Warning("QuotedStringInLocalPart", 2);
            QuotedStringInLocalPart = warning3;
            Warning warning4 = new Warning("EmptyLocalPart", 3);
            EmptyLocalPart = warning4;
            $VALUES = new Warning[]{warning, warning2, warning3, warning4};
        }

        public static Warning valueOf(String str) {
            return (Warning) Enum.valueOf(Warning.class, str);
        }

        public static Warning[] values() {
            return (Warning[]) $VALUES.clone();
        }
    }

    public EmailAddress(String str, EmailDomain emailDomain) {
        this.localPart = str;
        this.domain = emailDomain;
        if (!TokensKt.isDotString(str)) {
            StringBuilder sb = new StringBuilder("\"");
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if (!TokensKt.isQtext(charAt)) {
                    sb.append('\\');
                }
                sb.append(charAt);
            }
            sb.append('\"');
            str = sb.toString();
        }
        this.encodedLocalPart = str;
        SetBuilder setBuilder = new SetBuilder();
        if (this.localPart.length() > 64) {
            setBuilder.add(Warning.LocalPartExceedsLengthLimit);
        }
        if (getAddress().length() > 254) {
            setBuilder.add(Warning.EmailAddressExceedsLengthLimit);
        }
        if (this.localPart.length() == 0) {
            setBuilder.add(Warning.EmptyLocalPart);
        }
        if (!TokensKt.isDotString(this.localPart)) {
            setBuilder.add(Warning.QuotedStringInLocalPart);
        }
        this.warnings = Validate.build(setBuilder);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || EmailAddress.class != obj.getClass()) {
            return false;
        }
        EmailAddress emailAddress = (EmailAddress) obj;
        if (this.localPart.equals(emailAddress.localPart)) {
            return this.domain.equals(emailAddress.domain);
        }
        return false;
    }

    public final String getAddress() {
        return this.encodedLocalPart + "@" + this.domain;
    }

    public final int hashCode() {
        return this.domain.normalized.hashCode() + (this.localPart.hashCode() * 31);
    }

    public final String toString() {
        return getAddress();
    }
}
