package org.apache.james.mime4j.field;

import java.util.HashMap;
import org.apache.james.mime4j.dom.FieldParser;
import org.apache.james.mime4j.stream.Field;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailboxFieldImpl extends DnsQueryResult {
    public static final AnonymousClass1 PARSER$1 = new AnonymousClass1(1);
    public static final AnonymousClass1 PARSER$2 = new AnonymousClass1(2);
    public static final AnonymousClass1 PARSER$3 = new AnonymousClass1(3);
    public static final AnonymousClass1 PARSER$4 = new AnonymousClass1(4);
    public static final AnonymousClass1 PARSER$5 = new AnonymousClass1(5);
    public static final AnonymousClass1 PARSER$6 = new AnonymousClass1(6);
    public static final AnonymousClass1 PARSER$7 = new AnonymousClass1(8);
    public static final AnonymousClass1 PARSER$8 = new AnonymousClass1(9);
    public static final AnonymousClass1 PARSER$9 = new AnonymousClass1(10);
    public static final AnonymousClass1 PARSER = new AnonymousClass1(0);
    public static final AnonymousClass1 PARSER$10 = new AnonymousClass1(12);
    public static final AnonymousClass1 PARSER$11 = new AnonymousClass1(13);
    public static final AnonymousClass1 PARSER$12 = new AnonymousClass1(14);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: org.apache.james.mime4j.field.MailboxFieldImpl$1, reason: invalid class name */
    public final class AnonymousClass1 implements FieldParser {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass1(int i) {
            this.$r8$classId = i;
        }

        @Override // org.apache.james.mime4j.dom.FieldParser
        public final DnsQueryResult parse(Field field) {
            switch (this.$r8$classId) {
                case 3:
                    MailboxFieldImpl mailboxFieldImpl = new MailboxFieldImpl(8, field);
                    new HashMap();
                    break;
                case 10:
                    MailboxFieldImpl mailboxFieldImpl2 = new MailboxFieldImpl(8, field);
                    new HashMap();
                    break;
                case 11:
                    DateTimeFieldImpl dateTimeFieldImpl = new DateTimeFieldImpl(8, field);
                    dateTimeFieldImpl.parsed = false;
                    break;
            }
            return new MailboxFieldImpl(8, field);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 10:
                    return "ContentTypeFieldImpl.PARSER";
                default:
                    return super.toString();
            }
        }
    }
}
