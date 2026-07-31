package org.apache.james.mime4j.field;

import coil3.network.internal.UtilsKt;
import java.util.HashMap;
import org.apache.james.mime4j.dom.FieldParser;
import org.apache.james.mime4j.field.MailboxFieldImpl;
import org.apache.james.mime4j.stream.Field;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultFieldParser implements FieldParser {
    public static final DefaultFieldParser PARSER = new DefaultFieldParser();
    public final HashMap parsers;

    public DefaultFieldParser() {
        HashMap hashMap = new HashMap();
        this.parsers = hashMap;
        hashMap.put(UtilsKt.CONTENT_TYPE.toLowerCase(), MailboxFieldImpl.PARSER$9);
        hashMap.put("Content-Length".toLowerCase(), MailboxFieldImpl.PARSER$6);
        hashMap.put("Content-Transfer-Encoding".toLowerCase(), MailboxFieldImpl.PARSER$8);
        hashMap.put("Content-Disposition".toLowerCase(), MailboxFieldImpl.PARSER$3);
        hashMap.put("Content-ID".toLowerCase(), MailboxFieldImpl.PARSER$4);
        hashMap.put("Content-MD5".toLowerCase(), MailboxFieldImpl.PARSER$7);
        hashMap.put("Content-Description".toLowerCase(), MailboxFieldImpl.PARSER$2);
        hashMap.put("Content-Language".toLowerCase(), MailboxFieldImpl.PARSER$5);
        hashMap.put("Content-Location".toLowerCase(), ContentLocationFieldImpl.PARSER);
        hashMap.put("MIME-Version".toLowerCase(), MailboxFieldImpl.PARSER$11);
        String lowerCase = "Date".toLowerCase();
        MailboxFieldImpl.AnonymousClass1 anonymousClass1 = DateTimeFieldImpl.PARSER;
        hashMap.put(lowerCase, anonymousClass1);
        hashMap.put("Resent-Date".toLowerCase(), anonymousClass1);
        MailboxFieldImpl.AnonymousClass1 anonymousClass12 = MailboxFieldImpl.PARSER$10;
        hashMap.put("From".toLowerCase(), anonymousClass12);
        hashMap.put("Resent-From".toLowerCase(), anonymousClass12);
        MailboxFieldImpl.AnonymousClass1 anonymousClass13 = MailboxFieldImpl.PARSER;
        hashMap.put("Sender".toLowerCase(), anonymousClass13);
        hashMap.put("Resent-Sender".toLowerCase(), anonymousClass13);
        MailboxFieldImpl.AnonymousClass1 anonymousClass14 = MailboxFieldImpl.PARSER$1;
        hashMap.put("To".toLowerCase(), anonymousClass14);
        hashMap.put("Resent-To".toLowerCase(), anonymousClass14);
        hashMap.put("Cc".toLowerCase(), anonymousClass14);
        hashMap.put("Resent-Cc".toLowerCase(), anonymousClass14);
        hashMap.put("Bcc".toLowerCase(), anonymousClass14);
        hashMap.put("Resent-Bcc".toLowerCase(), anonymousClass14);
        hashMap.put("Reply-To".toLowerCase(), anonymousClass14);
    }

    @Override // org.apache.james.mime4j.dom.FieldParser
    public final DnsQueryResult parse(Field field) {
        FieldParser fieldParser = (FieldParser) this.parsers.get(field.getNameLowerCase());
        if (fieldParser == null) {
            fieldParser = MailboxFieldImpl.PARSER$12;
        }
        return fieldParser.parse(field);
    }
}
