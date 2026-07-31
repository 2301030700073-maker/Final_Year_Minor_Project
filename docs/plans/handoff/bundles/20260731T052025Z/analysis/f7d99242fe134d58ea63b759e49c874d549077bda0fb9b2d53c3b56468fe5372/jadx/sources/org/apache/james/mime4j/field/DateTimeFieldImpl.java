package org.apache.james.mime4j.field;

import java.io.StringReader;
import java.util.Date;
import org.apache.james.mime4j.field.MailboxFieldImpl;
import org.apache.james.mime4j.field.datetime.parser.DateTimeParser;
import org.apache.james.mime4j.field.datetime.parser.ParseException;
import org.apache.james.mime4j.field.datetime.parser.TokenMgrError;
import org.apache.james.mime4j.stream.Field;
import org.minidns.dnsqueryresult.DnsQueryResult;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DateTimeFieldImpl extends DnsQueryResult {
    public static final MailboxFieldImpl.AnonymousClass1 PARSER = new MailboxFieldImpl.AnonymousClass1(11);
    public Date date;
    public boolean parsed;

    public final Date getDate() {
        if (!this.parsed) {
            try {
            } catch (TokenMgrError e) {
                new ParseException(e);
            }
            try {
                this.date = new DateTimeParser(new StringReader(((Field) this.response).getBody())).doParseAll().date;
                this.parsed = true;
            } catch (TokenMgrError e2) {
                throw new ParseException(e2);
            }
        }
        return this.date;
    }
}
