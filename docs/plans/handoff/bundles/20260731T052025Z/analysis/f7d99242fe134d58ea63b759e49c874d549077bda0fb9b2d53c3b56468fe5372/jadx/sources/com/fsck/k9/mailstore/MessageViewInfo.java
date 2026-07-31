package com.fsck.k9.mailstore;

import coil3.network.internal.UtilsKt;
import com.fsck.k9.helper.UnsubscribeUri;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.TextBody;
import java.util.List;
import net.thunderbird.core.common.exception.MessagingException;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewInfo {
    public final AttachmentResolver attachmentResolver;
    public final List attachments;
    public final CryptoResultAnnotation cryptoResultAnnotation;
    public final List extraAttachments;
    public final String extraText;
    public final boolean isMessageIncomplete;
    public final boolean isSubjectEncrypted;
    public final MimeMessage message;
    public final UnsubscribeUri preferredUnsubscribeUri;
    public final Part rootPart;
    public final String subject;
    public final String text;
    public final String textPlainFormatted;

    public MessageViewInfo(MimeMessage mimeMessage, boolean z, Part part, String str, boolean z2, String str2, String str3, List list, CryptoResultAnnotation cryptoResultAnnotation, AttachmentResolver attachmentResolver, String str4, List list2, UnsubscribeUri unsubscribeUri) {
        this.message = mimeMessage;
        this.isMessageIncomplete = z;
        this.rootPart = part;
        this.subject = str;
        this.isSubjectEncrypted = z2;
        this.text = str2;
        this.textPlainFormatted = str3;
        this.cryptoResultAnnotation = cryptoResultAnnotation;
        this.attachmentResolver = attachmentResolver;
        this.attachments = list;
        this.extraText = str4;
        this.extraAttachments = list2;
        this.preferredUnsubscribeUri = unsubscribeUri;
    }

    public static MessageViewInfo createWithErrorState(MimeMessage mimeMessage, boolean z) {
        try {
            return new MessageViewInfo(mimeMessage, z, new MimeBodyPart(new TextBody(""), UtilsKt.MIME_TYPE_TEXT_PLAIN, false), mimeMessage.getSubject(), false, null, null, null, null, null, null, null, null);
        } catch (MessagingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(e);
            return null;
        }
    }

    public final MessageViewInfo withSubject(String str, boolean z) {
        return new MessageViewInfo(this.message, this.isMessageIncomplete, this.rootPart, str, z, this.text, this.textPlainFormatted, this.attachments, this.cryptoResultAnnotation, this.attachmentResolver, this.extraText, this.extraAttachments, this.preferredUnsubscribeUri);
    }
}
