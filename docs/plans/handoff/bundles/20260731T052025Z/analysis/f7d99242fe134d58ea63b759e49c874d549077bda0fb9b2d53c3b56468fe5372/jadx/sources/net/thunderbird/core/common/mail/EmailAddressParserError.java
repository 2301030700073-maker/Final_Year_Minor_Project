package net.thunderbird.core.common.mail;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class EmailAddressParserError {
    public static final /* synthetic */ EmailAddressParserError[] $VALUES;
    public static final EmailAddressParserError AddressLiteralsNotSupported;
    public static final EmailAddressParserError DnsLabelLengthExceeded;
    public static final EmailAddressParserError DomainLengthExceeded;
    public static final EmailAddressParserError EmptyLocalPart;
    public static final EmailAddressParserError ExpectedEndOfInput;
    public static final EmailAddressParserError InvalidDomainPart;
    public static final EmailAddressParserError InvalidDotString;
    public static final EmailAddressParserError InvalidLocalPart;
    public static final EmailAddressParserError InvalidQuotedString;
    public static final EmailAddressParserError LocalPartLengthExceeded;
    public static final EmailAddressParserError LocalPartRequiresQuotedString;
    public static final EmailAddressParserError QuotedStringInLocalPart;
    public static final EmailAddressParserError TotalLengthExceeded;
    public static final EmailAddressParserError UnexpectedCharacter;
    public static final EmailAddressParserError UnexpectedEndOfInput;

    static {
        EmailAddressParserError emailAddressParserError = new EmailAddressParserError("UnexpectedEndOfInput", 0);
        UnexpectedEndOfInput = emailAddressParserError;
        EmailAddressParserError emailAddressParserError2 = new EmailAddressParserError("ExpectedEndOfInput", 1);
        ExpectedEndOfInput = emailAddressParserError2;
        EmailAddressParserError emailAddressParserError3 = new EmailAddressParserError("InvalidLocalPart", 2);
        InvalidLocalPart = emailAddressParserError3;
        EmailAddressParserError emailAddressParserError4 = new EmailAddressParserError("InvalidDotString", 3);
        InvalidDotString = emailAddressParserError4;
        EmailAddressParserError emailAddressParserError5 = new EmailAddressParserError("InvalidQuotedString", 4);
        InvalidQuotedString = emailAddressParserError5;
        EmailAddressParserError emailAddressParserError6 = new EmailAddressParserError("InvalidDomainPart", 5);
        InvalidDomainPart = emailAddressParserError6;
        EmailAddressParserError emailAddressParserError7 = new EmailAddressParserError("AddressLiteralsNotSupported", 6);
        AddressLiteralsNotSupported = emailAddressParserError7;
        EmailAddressParserError emailAddressParserError8 = new EmailAddressParserError("LocalPartLengthExceeded", 7);
        LocalPartLengthExceeded = emailAddressParserError8;
        EmailAddressParserError emailAddressParserError9 = new EmailAddressParserError("DnsLabelLengthExceeded", 8);
        DnsLabelLengthExceeded = emailAddressParserError9;
        EmailAddressParserError emailAddressParserError10 = new EmailAddressParserError("DomainLengthExceeded", 9);
        DomainLengthExceeded = emailAddressParserError10;
        EmailAddressParserError emailAddressParserError11 = new EmailAddressParserError("TotalLengthExceeded", 10);
        TotalLengthExceeded = emailAddressParserError11;
        EmailAddressParserError emailAddressParserError12 = new EmailAddressParserError("QuotedStringInLocalPart", 11);
        QuotedStringInLocalPart = emailAddressParserError12;
        EmailAddressParserError emailAddressParserError13 = new EmailAddressParserError("LocalPartRequiresQuotedString", 12);
        LocalPartRequiresQuotedString = emailAddressParserError13;
        EmailAddressParserError emailAddressParserError14 = new EmailAddressParserError("EmptyLocalPart", 13);
        EmptyLocalPart = emailAddressParserError14;
        EmailAddressParserError emailAddressParserError15 = new EmailAddressParserError("UnexpectedCharacter", 14);
        UnexpectedCharacter = emailAddressParserError15;
        $VALUES = new EmailAddressParserError[]{emailAddressParserError, emailAddressParserError2, emailAddressParserError3, emailAddressParserError4, emailAddressParserError5, emailAddressParserError6, emailAddressParserError7, emailAddressParserError8, emailAddressParserError9, emailAddressParserError10, emailAddressParserError11, emailAddressParserError12, emailAddressParserError13, emailAddressParserError14, emailAddressParserError15};
    }

    public static EmailAddressParserError valueOf(String str) {
        return (EmailAddressParserError) Enum.valueOf(EmailAddressParserError.class, str);
    }

    public static EmailAddressParserError[] values() {
        return (EmailAddressParserError[]) $VALUES.clone();
    }
}
