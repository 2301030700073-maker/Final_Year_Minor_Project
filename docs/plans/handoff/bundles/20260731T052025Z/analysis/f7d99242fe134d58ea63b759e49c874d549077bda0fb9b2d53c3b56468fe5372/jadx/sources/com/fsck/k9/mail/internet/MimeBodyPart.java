package com.fsck.k9.mail.internet;

import coil3.network.internal.UtilsKt;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.MimeType;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mailstore.LocalFolder;
import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class MimeBodyPart implements Part {
    public Body mBody;
    public final LocalFolder.AnonymousClass8 mHeader;
    public Multipart parent;
    public String serverExtra;

    public MimeBodyPart(Body body, String str, boolean z) {
        LocalFolder.AnonymousClass8 anonymousClass8 = new LocalFolder.AnonymousClass8(7);
        this.mHeader = anonymousClass8;
        anonymousClass8.val$includeDeleted = z;
        if (str != null) {
            anonymousClass8.addHeader(UtilsKt.CONTENT_TYPE, str);
        }
        JisSupport.setBody(this, body);
    }

    public static MimeBodyPart create(Body body) {
        return new MimeBodyPart(body, null, true);
    }

    @Override // com.fsck.k9.mail.Part
    public final void addRawHeader(String str, String str2) {
        this.mHeader.addRawHeader(str, str2);
    }

    @Override // com.fsck.k9.mail.Part
    public final Body getBody() {
        return this.mBody;
    }

    @Override // com.fsck.k9.mail.Part
    public final String getContentId() {
        String firstHeader = this.mHeader.getFirstHeader("Content-ID");
        if (firstHeader == null) {
            return null;
        }
        int indexOf = firstHeader.indexOf(60);
        int lastIndexOf = firstHeader.lastIndexOf(62);
        return (indexOf == -1 || lastIndexOf == -1) ? firstHeader : firstHeader.substring(indexOf + 1, lastIndexOf);
    }

    @Override // com.fsck.k9.mail.Part
    public final String getContentType() {
        String str = (String) ArraysKt___ArraysKt.firstOrNull(this.mHeader.getHeader(UtilsKt.CONTENT_TYPE));
        if (str != null) {
            return str;
        }
        Multipart multipart = this.parent;
        return (multipart == null || !JisSupport.isSameMimeType(((MimeMultipart) multipart).mimeType, "multipart/digest")) ? UtilsKt.MIME_TYPE_TEXT_PLAIN : "message/rfc822";
    }

    @Override // com.fsck.k9.mail.Part
    public final String getDisposition() {
        return this.mHeader.getFirstHeader("Content-Disposition");
    }

    @Override // com.fsck.k9.mail.Part
    public final String[] getHeader(String str) {
        return this.mHeader.getHeader(str);
    }

    @Override // com.fsck.k9.mail.Part
    public final String getMimeType() {
        String headerParameter = JisSupport.getHeaderParameter(getContentType(), null);
        Regex regex = MimeType.MIME_TYPE;
        MimeType parseOrNull = K9MailLib.parseOrNull(headerParameter);
        if (parseOrNull != null) {
            return parseOrNull.toString();
        }
        Multipart multipart = this.parent;
        return (multipart == null || !JisSupport.isSameMimeType(((MimeMultipart) multipart).mimeType, "multipart/digest")) ? UtilsKt.MIME_TYPE_TEXT_PLAIN : "message/rfc822";
    }

    @Override // com.fsck.k9.mail.Part
    public final String getServerExtra() {
        return this.serverExtra;
    }

    @Override // com.fsck.k9.mail.Part
    public final boolean isMimeType(String str) {
        return getMimeType().equalsIgnoreCase(str);
    }

    @Override // com.fsck.k9.mail.Part
    public final void setBody(Body body) {
        this.mBody = body;
    }

    @Override // com.fsck.k9.mail.Part
    public final void setHeader(String str, String str2) {
        this.mHeader.setHeader(str, str2);
    }

    @Override // com.fsck.k9.mail.Part
    public final void setServerExtra(String str) {
        this.serverExtra = str;
    }

    @Override // com.fsck.k9.mail.Part
    public final void writeHeaderTo(ByteArrayOutputStream byteArrayOutputStream) {
        this.mHeader.writeTo(byteArrayOutputStream);
    }

    @Override // com.fsck.k9.mail.Part
    public final void writeTo(OutputStream outputStream) {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        this.mHeader.writeTo(outputStream);
        bufferedWriter.write("\r\n");
        bufferedWriter.flush();
        Body body = this.mBody;
        if (body != null) {
            body.writeTo(outputStream);
        }
    }

    public static MimeBodyPart create(Body body, String str) {
        return new MimeBodyPart(body, str, true);
    }

    public MimeBodyPart(LocalFolder.AnonymousClass8 anonymousClass8, Body body) {
        this.mHeader = anonymousClass8;
        JisSupport.setBody(this, body);
    }

    public MimeBodyPart(int i) {
        this(null, null, false);
    }
}
