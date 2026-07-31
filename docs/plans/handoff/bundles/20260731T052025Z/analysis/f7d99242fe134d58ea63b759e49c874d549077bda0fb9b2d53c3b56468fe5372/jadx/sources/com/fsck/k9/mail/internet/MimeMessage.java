package com.fsck.k9.mail.internet;

import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.network.internal.UtilsKt;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.MimeType;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.filter.CountingOutputStream;
import com.fsck.k9.mail.filter.EOLConvertingOutputStream;
import com.fsck.k9.mail.filter.FixedLengthInputStream;
import com.fsck.k9.mailstore.LocalFolder;
import j$.util.DesugarTimeZone;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.EnumSet;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import okio.AsyncTimeout;
import org.apache.james.mime4j.MimeException;
import org.apache.james.mime4j.field.DateTimeFieldImpl;
import org.apache.james.mime4j.field.DefaultFieldParser;
import org.apache.james.mime4j.stream.MimeConfig;
import org.apache.james.mime4j.stream.RawFieldParser;
import org.apache.james.mime4j.util.ByteArrayBuffer;
import org.apache.james.mime4j.util.ContentUtil;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MimeMessage implements Part, Body {
    public Address[] deliveredTo;
    public Address[] mBcc;
    public Body mBody;
    public Address[] mCc;
    public SimpleDateFormat mDateFormat;
    public final EnumSet mFlags = EnumSet.noneOf(Flag.class);
    public Address[] mFrom;
    public final LocalFolder.AnonymousClass8 mHeader;
    public Date mInternalDate;
    public String mMessageId;
    public String[] mReferences;
    public Address[] mReplyTo;
    public Date mSentDate;
    public int mSize;
    public Address[] mTo;
    public String mUid;
    public String serverExtra;
    public Address[] xEnvelopeTo;
    public Address[] xOriginalTo;

    public MimeMessage(boolean z) {
        LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(7);
        this.mHeader = anonymousClass8;
        anonymousClass8.val$includeDeleted = z;
    }

    @Override // com.fsck.k9.mail.Part
    public final void addRawHeader(String str, String str2) {
        this.mHeader.addRawHeader(str, str2);
    }

    public final void addSentDate(Date date, boolean z) {
        if (this.mDateFormat == null) {
            this.mDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);
        }
        if (z) {
            this.mDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("UTC"));
        }
        this.mHeader.addHeader("Date", this.mDateFormat.format(date));
        this.mSentDate = date;
    }

    public final long calculateSize() {
        try {
            CountingOutputStream countingOutputStream = new CountingOutputStream();
            try {
                EOLConvertingOutputStream eOLConvertingOutputStream = new EOLConvertingOutputStream(countingOutputStream);
                writeTo(eOLConvertingOutputStream);
                eOLConvertingOutputStream.flush();
                long j = countingOutputStream.mCount;
                countingOutputStream.close();
                return j;
            } catch (Throwable th) {
                try {
                    countingOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | MessagingException e) {
            Log.e(e, "Failed to calculate a message size", new Object[0]);
            return 0L;
        }
    }

    @Override // com.fsck.k9.mail.Part
    public final Body getBody() {
        return this.mBody;
    }

    @Override // com.fsck.k9.mail.Part
    public final String getContentId() {
        return null;
    }

    @Override // com.fsck.k9.mail.Part
    public final String getContentType() {
        String firstHeader = this.mHeader.getFirstHeader(UtilsKt.CONTENT_TYPE);
        return firstHeader == null ? UtilsKt.MIME_TYPE_TEXT_PLAIN : firstHeader;
    }

    @Override // com.fsck.k9.mail.Part
    public final String getDisposition() {
        return this.mHeader.getFirstHeader("Content-Disposition");
    }

    public final Address[] getFrom() {
        if (this.mFrom == null) {
            LocalFolder.AnonymousClass8 anonymousClass8 = this.mHeader;
            String unfold = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("From")));
            if (unfold == null || unfold.length() == 0) {
                unfold = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("Sender")));
            }
            Pattern pattern = Address.ATOM;
            this.mFrom = K9MailLib.m931parse(unfold);
        }
        return this.mFrom;
    }

    @Override // com.fsck.k9.mail.Part
    public final String[] getHeader(String str) {
        return this.mHeader.getHeader(str);
    }

    @Override // com.fsck.k9.mail.Body
    public final InputStream getInputStream() {
        throw new UnsupportedOperationException();
    }

    public final String getMessageId() {
        if (this.mMessageId == null) {
            this.mMessageId = this.mHeader.getFirstHeader("Message-ID");
        }
        return this.mMessageId;
    }

    @Override // com.fsck.k9.mail.Part
    public String getMimeType() {
        String headerParameter = JisSupport.getHeaderParameter(getContentType(), null);
        Regex regex = MimeType.MIME_TYPE;
        MimeType parseOrNull = K9MailLib.parseOrNull(headerParameter);
        return parseOrNull != null ? parseOrNull.toString() : UtilsKt.MIME_TYPE_TEXT_PLAIN;
    }

    public final Address[] getRecipients(Message$RecipientType message$RecipientType) {
        int ordinal = message$RecipientType.ordinal();
        LocalFolder.AnonymousClass8 anonymousClass8 = this.mHeader;
        if (ordinal == 0) {
            if (this.mTo == null) {
                String unfold = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("To")));
                Pattern pattern = Address.ATOM;
                this.mTo = K9MailLib.m931parse(unfold);
            }
            return this.mTo;
        }
        if (ordinal == 1) {
            if (this.mCc == null) {
                String unfold2 = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("CC")));
                Pattern pattern2 = Address.ATOM;
                this.mCc = K9MailLib.m931parse(unfold2);
            }
            return this.mCc;
        }
        if (ordinal == 2) {
            if (this.mBcc == null) {
                String unfold3 = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("BCC")));
                Pattern pattern3 = Address.ATOM;
                this.mBcc = K9MailLib.m931parse(unfold3);
            }
            return this.mBcc;
        }
        if (ordinal == 3) {
            if (this.xOriginalTo == null) {
                String unfold4 = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("X-Original-To")));
                Pattern pattern4 = Address.ATOM;
                this.xOriginalTo = K9MailLib.m931parse(unfold4);
            }
            return this.xOriginalTo;
        }
        if (ordinal == 4) {
            if (this.deliveredTo == null) {
                String unfold5 = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("Delivered-To")));
                Pattern pattern5 = Address.ATOM;
                this.deliveredTo = K9MailLib.m931parse(unfold5);
            }
            return this.deliveredTo;
        }
        if (ordinal != 5) {
            UriKt$$ExternalSyntheticBUOutline0.m("Unrecognized recipient type.");
            return null;
        }
        if (this.xEnvelopeTo == null) {
            String unfold6 = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(anonymousClass8.getHeader("X-Envelope-To")));
            Pattern pattern6 = Address.ATOM;
            this.xEnvelopeTo = K9MailLib.m931parse(unfold6);
        }
        return this.xEnvelopeTo;
    }

    public final Address[] getReplyTo() {
        if (this.mReplyTo == null) {
            String unfold = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(this.mHeader.getHeader("Reply-to")));
            Pattern pattern = Address.ATOM;
            this.mReplyTo = K9MailLib.m931parse(unfold);
        }
        return this.mReplyTo;
    }

    public final Date getSentDate() {
        if (this.mSentDate == null) {
            String str = (String) ArraysKt___ArraysKt.firstOrNull(this.mHeader.getHeader("Date"));
            if (str == null) {
                return null;
            }
            try {
                String concat = "Date: ".concat(str);
                DefaultFieldParser defaultFieldParser = DefaultFieldParser.PARSER;
                ByteArrayBuffer encode = ContentUtil.encode(concat);
                RawFieldParser.DEFAULT.getClass();
                this.mSentDate = ((DateTimeFieldImpl) DefaultFieldParser.PARSER.parse(RawFieldParser.parseField(encode))).getDate();
            } catch (Exception e) {
                Log.d(e, "Couldn't parse Date header field", new Object[0]);
            }
        }
        return this.mSentDate;
    }

    @Override // com.fsck.k9.mail.Part
    public final String getServerExtra() {
        return this.serverExtra;
    }

    public final long getSize() {
        return this.mSize;
    }

    public String getSubject() {
        String unfold = JisSupport.unfold((String) ArraysKt___ArraysKt.firstOrNull(this.mHeader.getHeader("Subject")));
        if (unfold == null) {
            return null;
        }
        return JisSupport.decodeEncodedWords(unfold, this);
    }

    public boolean hasAttachments() {
        return false;
    }

    @Override // com.fsck.k9.mail.Part
    public final boolean isMimeType(String str) {
        return getMimeType().equalsIgnoreCase(str);
    }

    public final boolean olderThan(Date date) {
        if (date == null) {
            return false;
        }
        Date sentDate = getSentDate();
        if (sentDate == null) {
            sentDate = this.mInternalDate;
        }
        return sentDate != null && sentDate.before(date);
    }

    public final void parse(InputStream inputStream) {
        ((ArrayList) this.mHeader.this$0).clear();
        this.mFrom = null;
        this.mTo = null;
        this.mCc = null;
        this.mBcc = null;
        this.mReplyTo = null;
        this.xOriginalTo = null;
        this.deliveredTo = null;
        this.xEnvelopeTo = null;
        this.mMessageId = null;
        this.mReferences = null;
        this.mSentDate = null;
        this.mBody = null;
        SoftPool softPool = new SoftPool(new MimeConfig(-1, -1, -1));
        softPool.threadLocalStack = new ImapSync(this, new AsyncTimeout.Companion(18));
        try {
            softPool.parse(new FixedLengthInputStream(inputStream));
        } catch (MimeException e) {
            throw new MessagingException(e.getMessage(), false, e);
        }
    }

    @Override // com.fsck.k9.mail.Part
    public final void setBody(Body body) {
        this.mBody = body;
    }

    @Override // com.fsck.k9.mail.Body
    public final void setEncoding(String str) {
        Body body = this.mBody;
        if (body != null) {
            body.setEncoding(str);
        }
        this.mHeader.setHeader("Content-Transfer-Encoding", str);
    }

    public void setFlag(Flag flag, boolean z) {
        EnumSet enumSet = this.mFlags;
        if (z) {
            enumSet.add(flag);
        } else {
            enumSet.remove(flag);
        }
    }

    public void setFrom(Address address) {
        if (address == null) {
            this.mFrom = null;
        } else {
            this.mHeader.setHeader("From", address.toEncodedString());
            this.mFrom = new Address[]{address};
        }
    }

    @Override // com.fsck.k9.mail.Part
    public final void setHeader(String str, String str2) {
        this.mHeader.setHeader(str, str2);
    }

    @Override // com.fsck.k9.mail.Part
    public final void setServerExtra(String str) {
        this.serverExtra = str;
    }

    public void setSubject(String str) {
        this.mHeader.setHeader("Subject", JisSupport.encode("Subject", str));
    }

    public void setUid(String str) {
        this.mUid = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004e, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean usesAnyUnicodeAddresses() {
        /*
            r12 = this;
            com.fsck.k9.mail.Address[] r0 = r12.getFrom()
            int r1 = r0.length
            r2 = 0
            r3 = r2
        L7:
            r4 = 128(0x80, float:1.8E-43)
            r5 = 1
            if (r3 >= r1) goto L26
            r6 = r0[r3]
            java.lang.String r6 = r6.address
            int r7 = r6.length()
            int r7 = r7 - r5
        L15:
            if (r7 < 0) goto L20
            char r8 = r6.charAt(r7)
            if (r8 >= r4) goto L20
            int r7 = r7 + (-1)
            goto L15
        L20:
            if (r7 < 0) goto L23
            goto L4e
        L23:
            int r3 = r3 + 1
            goto L7
        L26:
            com.fsck.k9.mail.Message$RecipientType[] r0 = com.fsck.k9.mail.Message$RecipientType.values()
            int r1 = r0.length
            r3 = r2
        L2c:
            if (r3 >= r1) goto L55
            r6 = r0[r3]
            com.fsck.k9.mail.Address[] r6 = r12.getRecipients(r6)
            int r7 = r6.length
            r8 = r2
        L36:
            if (r8 >= r7) goto L52
            r9 = r6[r8]
            java.lang.String r9 = r9.address
            int r10 = r9.length()
            int r10 = r10 - r5
        L41:
            if (r10 < 0) goto L4c
            char r11 = r9.charAt(r10)
            if (r11 >= r4) goto L4c
            int r10 = r10 + (-1)
            goto L41
        L4c:
            if (r10 < 0) goto L4f
        L4e:
            return r5
        L4f:
            int r8 = r8 + 1
            goto L36
        L52:
            int r3 = r3 + 1
            goto L2c
        L55:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mail.internet.MimeMessage.usesAnyUnicodeAddresses():boolean");
    }

    @Override // com.fsck.k9.mail.Part
    public final void writeHeaderTo(ByteArrayOutputStream byteArrayOutputStream) {
        this.mHeader.writeTo(byteArrayOutputStream);
    }

    @Override // com.fsck.k9.mail.Part
    public void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        this.mHeader.writeTo(outputStream);
        bufferedWriter.write("\r\n");
        bufferedWriter.flush();
        Body body = this.mBody;
        if (body != null) {
            body.writeTo(outputStream);
        }
    }
}
