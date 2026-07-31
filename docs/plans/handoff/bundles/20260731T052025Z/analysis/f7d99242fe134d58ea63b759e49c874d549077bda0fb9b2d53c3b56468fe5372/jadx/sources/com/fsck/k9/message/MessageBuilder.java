package com.fsck.k9.message;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.AsyncTask;
import android.widget.Toast;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.work.OperationKt;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.network.internal.UtilsKt;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Body;
import com.fsck.k9.mail.BoundaryGenerator;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeBodyPart;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.internet.TextBody;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.TempFileBody;
import com.fsck.k9.message.Attachment;
import com.fsck.k9.message.html.HTMLTag;
import com.fsck.k9.message.quote.InsertableHtmlContent;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.provider.AttachmentTempFileProvider;
import com.fsck.k9.provider.DecryptedFileProvider;
import com.fsck.k9.resources.K9CoreResourceProvider;
import com.mikepenz.fastadapter.VerboseLogger;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.MapsKt__MapsKt;
import net.thunderbird.core.android.account.Identity;
import net.thunderbird.core.android.account.QuoteStyle;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import org.apache.james.mime4j.util.MimeUtil;
import org.openintents.openpgp.util.OpenPgpIntentStarter;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class MessageBuilder {
    public MessageCompose asyncCallback;
    public ArrayList attachments;
    public Address[] bcc;
    public final BoundaryGenerator boundaryGenerator;
    public final Object callbackLock = new Object();
    public Address[] cc;
    public int cursorPosition;
    public boolean hideTimeZone;
    public Identity identity;
    public boolean identityChanged;
    public String inReplyTo;
    public LinkedHashMap inlineAttachments;
    public boolean isDraft;
    public boolean isPgpInlineEnabled;
    public boolean isReplyAfterQuote;
    public boolean isSignatureBeforeQuotedText;
    public SimpleMessageFormat messageFormat;
    public MessageReference messageReference;
    public MessagingException queuedException;
    public MimeMessage queuedMimeMessage;
    public PendingIntent queuedPendingIntent;
    public int queuedRequestCode;
    public QuoteStyle quoteStyle;
    public InsertableHtmlContent quotedHtmlContent;
    public String quotedText;
    public QuotedTextMode quotedTextMode;
    public String references;
    public Address[] replyTo;
    public boolean requestReadReceipt;
    public final K9CoreResourceProvider resourceProvider;
    public Date sentDate;
    public final GeneralSettingsManager settingsManager;
    public String signature;
    public boolean signatureChanged;
    public String subject;
    public String text;
    public Address[] to;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.message.MessageBuilder$1, reason: invalid class name */
    public final class AnonymousClass1 extends AsyncTask {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // android.os.AsyncTask
        public final Object doInBackground(Object[] objArr) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ((MessageBuilder) obj).buildMessageInternal();
                    break;
                case 1:
                    AttachmentTempFileProvider.deleteOldTemporaryFiles((Context) obj);
                    break;
                default:
                    DecryptedFileProvider.deleteOldTemporaryFiles((Context) obj);
                    break;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Object obj) {
            switch (this.$r8$classId) {
                case 0:
                    ((MessageBuilder) this.this$0).deliverResult();
                    break;
                default:
                    super.onPostExecute(obj);
                    break;
            }
        }
    }

    public MessageBuilder(VerboseLogger verboseLogger, BoundaryGenerator boundaryGenerator, K9CoreResourceProvider k9CoreResourceProvider, GeneralSettingsManager generalSettingsManager) {
        this.boundaryGenerator = boundaryGenerator;
        this.resourceProvider = k9CoreResourceProvider;
        this.settingsManager = generalSettingsManager;
    }

    public static void addContentDisposition(MimeBodyPart mimeBodyPart, String str, String str2, Long l) {
        Map mapOf;
        str2.getClass();
        if (l == null) {
            mapOf = Collections.singletonMap("filename", str2);
            mapOf.getClass();
        } else {
            mapOf = MapsKt__MapsKt.mapOf(new Pair("filename", str2), new Pair("size", String.valueOf(l.longValue())));
        }
        mimeBodyPart.mHeader.addHeader("Content-Disposition", JisSupport.encode(str, mapOf));
    }

    public static void addContentType(MimeBodyPart mimeBodyPart, String str, String str2) {
        str.getClass();
        str2.getClass();
        Map singletonMap = Collections.singletonMap("name", str2);
        singletonMap.getClass();
        String encode = JisSupport.encode(str, singletonMap);
        LocalFolder.AnonymousClass8 anonymousClass8 = mimeBodyPart.mHeader;
        anonymousClass8.addHeader(UtilsKt.CONTENT_TYPE, encode);
        if (MimeUtil.isMessage(str)) {
            return;
        }
        String str3 = "8bit";
        if (!MimeUtil.isMessage(str)) {
            if (JisSupport.isSameMimeType(str, "multipart/signed") || JisSupport.isSameMimeType(str, "message/rfc822")) {
                str3 = "7bit";
            } else if (!JisSupport.isMultipart(str)) {
                str3 = "base64";
            }
        }
        Body body = mimeBodyPart.mBody;
        if (body != null) {
            body.setEncoding(str3);
        }
        anonymousClass8.setHeader("Content-Transfer-Encoding", str3);
    }

    public final void addAttachmentsToMessage(MimeMultipart mimeMultipart) {
        Iterator it = this.attachments.iterator();
        while (it.hasNext()) {
            Attachment attachment = (Attachment) it.next();
            if (((com.fsck.k9.activity.misc.Attachment) attachment).state == Attachment.LoadingState.COMPLETE) {
                com.fsck.k9.activity.misc.Attachment attachment2 = (com.fsck.k9.activity.misc.Attachment) attachment;
                String str = attachment2.name;
                MimeBodyPart create = MimeBodyPart.create(new TempFileBody(attachment2.fileName));
                addContentType(create, attachment2.contentType, str);
                addContentDisposition(create, "attachment", str, attachment2.size);
                mimeMultipart.addBodyPart(create);
            }
        }
    }

    public final MimeMessage build() {
        Address address;
        Address address2;
        MimeMessage mimeMessage = new MimeMessage(true);
        mimeMessage.addSentDate(this.sentDate, this.hideTimeZone);
        Identity identity = this.identity;
        String str = identity.email;
        String str2 = identity.name;
        str.getClass();
        Address address3 = new Address(4, str, str2);
        mimeMessage.setFrom(address3);
        Address[] addressArr = this.to;
        LocalFolder.AnonymousClass8 anonymousClass8 = mimeMessage.mHeader;
        if (addressArr != null && addressArr.length > 0) {
            anonymousClass8.setHeader("To", JisSupport.createHeaderValue(addressArr));
        }
        Address[] addressArr2 = this.cc;
        if (addressArr2 != null && addressArr2.length > 0) {
            anonymousClass8.setHeader("CC", JisSupport.createHeaderValue(addressArr2));
        }
        Address[] addressArr3 = this.bcc;
        if (addressArr3 != null && addressArr3.length > 0) {
            anonymousClass8.setHeader("BCC", JisSupport.createHeaderValue(addressArr3));
        }
        mimeMessage.setSubject(this.subject);
        if (this.requestReadReceipt) {
            anonymousClass8.setHeader("Disposition-Notification-To", address3.toEncodedString());
            anonymousClass8.setHeader("X-Confirm-Reading-To", address3.toEncodedString());
            anonymousClass8.setHeader("Return-Receipt-To", address3.toEncodedString());
        }
        if (!((DefaultGeneralSettingsManager) this.settingsManager).getSettings().privacy.isHideUserAgent) {
            String string = this.resourceProvider.context.getString(R.string.message_header_mua);
            string.getClass();
            anonymousClass8.setHeader("User-Agent", JisSupport.encode("User-Agent", string));
        }
        Address[] addressArr4 = this.replyTo;
        TextBody textBody = null;
        if (addressArr4 == null || addressArr4.length == 0) {
            anonymousClass8.removeHeader("Reply-to");
            mimeMessage.mReplyTo = null;
        } else {
            anonymousClass8.setHeader("Reply-to", JisSupport.createHeaderValue(addressArr4));
            mimeMessage.mReplyTo = addressArr4;
        }
        String str3 = this.inReplyTo;
        if (str3 != null) {
            anonymousClass8.setHeader("In-Reply-To", str3);
        }
        String str4 = this.references;
        if (str4 != null) {
            String replaceAll = str4.replaceAll("\\s+", " ");
            int length = replaceAll.length();
            if (length >= 985) {
                int indexOf = replaceAll.indexOf(60);
                String substring = replaceAll.substring(indexOf, replaceAll.indexOf(60, indexOf + 1));
                replaceAll = substring.concat(replaceAll.substring(replaceAll.indexOf(60, (substring.length() + length) - 985)));
            }
            anonymousClass8.setHeader("References", replaceAll);
        }
        String uuid = UUID.randomUUID().toString();
        uuid.getClass();
        String upperCase = uuid.toUpperCase(Locale.ROOT);
        upperCase.getClass();
        Address[] from = mimeMessage.getFrom();
        String hostname = (from == null || (address2 = (Address) ArraysKt___ArraysKt.firstOrNull(from)) == null) ? null : address2.getHostname();
        if (hostname == null) {
            Address[] replyTo = mimeMessage.getReplyTo();
            hostname = (replyTo == null || (address = (Address) ArraysKt___ArraysKt.firstOrNull(replyTo)) == null) ? null : address.getHostname();
            if (hostname == null) {
                hostname = "fallback.k9mail.app";
            }
        }
        String m = ViewSizeResolver.CC.m("<", upperCase, "@", hostname, ">");
        anonymousClass8.setHeader("Message-ID", m);
        mimeMessage.mMessageId = m;
        if (this.isDraft && this.isPgpInlineEnabled) {
            mimeMessage.setFlag(Flag.X_DRAFT_OPENPGP_INLINE, true);
        }
        if (this.isDraft) {
            mimeMessage.setFlag(Flag.DRAFT, true);
        }
        TextBody buildText = buildText(this.isDraft, this.messageFormat);
        String str5 = buildText.text;
        boolean isEmpty = this.attachments.isEmpty();
        SimpleMessageFormat simpleMessageFormat = this.messageFormat;
        SimpleMessageFormat simpleMessageFormat2 = SimpleMessageFormat.HTML;
        SimpleMessageFormat simpleMessageFormat3 = SimpleMessageFormat.TEXT;
        if (simpleMessageFormat == simpleMessageFormat2) {
            MimeMultipart createMimeMultipart = createMimeMultipart();
            createMimeMultipart.setSubType("alternative");
            TextBody buildText2 = buildText(this.isDraft, simpleMessageFormat3);
            createMimeMultipart.addBodyPart(MimeBodyPart.create(buildText2, UtilsKt.MIME_TYPE_TEXT_PLAIN));
            MimeBodyPart create = MimeBodyPart.create(buildText, "text/html");
            LinkedHashMap linkedHashMap = this.inlineAttachments;
            if (linkedHashMap == null || linkedHashMap.size() <= 0) {
                createMimeMultipart.addBodyPart(create);
            } else {
                MimeMultipart mimeMultipart = new MimeMultipart("multipart/related", this.boundaryGenerator.generateBoundary());
                mimeMultipart.addBodyPart(create);
                for (String str6 : this.inlineAttachments.keySet()) {
                    Attachment attachment = (Attachment) this.inlineAttachments.get(str6);
                    if (((com.fsck.k9.activity.misc.Attachment) attachment).state == Attachment.LoadingState.COMPLETE) {
                        com.fsck.k9.activity.misc.Attachment attachment2 = (com.fsck.k9.activity.misc.Attachment) attachment;
                        String str7 = attachment2.name;
                        MimeBodyPart create2 = MimeBodyPart.create(new TempFileBody(attachment2.fileName));
                        addContentType(create2, attachment2.contentType, str7);
                        addContentDisposition(create2, "inline", str7, attachment2.size);
                        create2.mHeader.addHeader("Content-ID", str6);
                        mimeMultipart.addBodyPart(create2);
                    }
                }
                createMimeMultipart.addBodyPart(MimeBodyPart.create(mimeMultipart));
            }
            if (isEmpty) {
                JisSupport.setBody(mimeMessage, createMimeMultipart);
            } else {
                MimeMultipart createMimeMultipart2 = createMimeMultipart();
                createMimeMultipart2.addBodyPart(MimeBodyPart.create(createMimeMultipart));
                addAttachmentsToMessage(createMimeMultipart2);
                JisSupport.setBody(mimeMessage, createMimeMultipart2);
            }
            textBody = buildText2;
        } else if (simpleMessageFormat == simpleMessageFormat3) {
            if (isEmpty) {
                JisSupport.setBody(mimeMessage, buildText);
            } else {
                MimeMultipart createMimeMultipart3 = createMimeMultipart();
                createMimeMultipart3.addBodyPart(MimeBodyPart.create(buildText, UtilsKt.MIME_TYPE_TEXT_PLAIN));
                addAttachmentsToMessage(createMimeMultipart3);
                JisSupport.setBody(mimeMessage, createMimeMultipart3);
            }
        }
        if (!this.isDraft) {
            return mimeMessage;
        }
        int i = this.cursorPosition;
        Identity identity2 = this.identity;
        boolean z = this.identityChanged;
        SimpleMessageFormat simpleMessageFormat4 = this.messageFormat;
        MessageReference messageReference = this.messageReference;
        InsertableHtmlContent insertableHtmlContent = this.quotedHtmlContent;
        QuoteStyle quoteStyle = this.quoteStyle;
        QuotedTextMode quotedTextMode = this.quotedTextMode;
        String str8 = this.signature;
        boolean z2 = this.signatureChanged;
        Uri.Builder builder = new Uri.Builder();
        Integer num = buildText.composedMessageLength;
        if (num == null || buildText.composedMessageOffset == null) {
            builder.appendQueryParameter("l", Integer.toString(str5.length()));
            builder.appendQueryParameter("o", Integer.toString(0));
        } else {
            builder.appendQueryParameter("l", num.toString());
            builder.appendQueryParameter("o", buildText.composedMessageOffset.toString());
        }
        if (insertableHtmlContent != null) {
            builder.appendQueryParameter("fo", Integer.toString(insertableHtmlContent.footerInsertionPoint));
        }
        if (textBody != null) {
            Integer num2 = textBody.composedMessageLength;
            Integer num3 = textBody.composedMessageOffset;
            if (num2 == null || num3 == null) {
                builder.appendQueryParameter("pl", Integer.toString(str5.length()));
                builder.appendQueryParameter("po", Integer.toString(0));
            } else {
                builder.appendQueryParameter("pl", num2.toString());
                builder.appendQueryParameter("po", num3.toString());
            }
        }
        builder.appendQueryParameter("qs", quoteStyle.name());
        builder.appendQueryParameter("f", simpleMessageFormat4.name());
        if (identity2.signatureUse && z2) {
            builder.appendQueryParameter("s", str8);
        }
        if (z) {
            builder.appendQueryParameter("n", (String) Objects.requireNonNullElse(identity2.name, ""));
            builder.appendQueryParameter("e", identity2.email);
        }
        if (messageReference != null) {
            builder.appendQueryParameter("m", messageReference.toIdentityString());
        }
        builder.appendQueryParameter("p", Integer.toString(i));
        builder.appendQueryParameter("q", quotedTextMode.name());
        String str9 = "!" + builder.build().getEncodedQuery();
        int length2 = str9.length();
        int i2 = 53;
        if (length2 > 53) {
            StringBuilder sb = new StringBuilder(((((length2 - 54) / 71) + 1) * 3) + length2);
            sb.append((CharSequence) str9, 0, 53);
            while (i2 < length2) {
                sb.append("\r\n ");
                int min = Math.min(71, length2 - i2) + i2;
                sb.append((CharSequence) str9, i2, min);
                i2 = min;
            }
            str9 = sb.toString();
        }
        Log.d("Generated identity: %s", str9);
        anonymousClass8.addHeader("X-K9mail-Identity", str9);
        return mimeMessage;
    }

    public final void buildAsync(MessageCompose messageCompose) {
        synchronized (this.callbackLock) {
            this.asyncCallback = messageCompose;
            this.queuedMimeMessage = null;
            this.queuedException = null;
            this.queuedPendingIntent = null;
        }
        new AnonymousClass1(0, this).execute(new Void[0]);
    }

    public abstract void buildMessageInternal();

    public abstract void buildMessageOnActivityResult(Intent intent);

    public final TextBody buildText(boolean z, SimpleMessageFormat simpleMessageFormat) {
        String m;
        int length;
        String m2;
        int i;
        String str;
        InsertableHtmlContent insertableHtmlContent;
        String str2 = this.text;
        TextBodyBuilder textBodyBuilder = new TextBodyBuilder();
        textBodyBuilder.mIncludeQuotedText = true;
        int i2 = 0;
        textBodyBuilder.mReplyAfterQuote = false;
        textBodyBuilder.mSignatureBeforeQuotedText = false;
        textBodyBuilder.mInsertSeparator = false;
        textBodyBuilder.mAppendSignature = true;
        boolean z2 = z || this.quotedTextMode == QuotedTextMode.SHOW;
        boolean z3 = this.quoteStyle == QuoteStyle.PREFIX && this.isReplyAfterQuote;
        textBodyBuilder.mIncludeQuotedText = false;
        SimpleMessageFormat simpleMessageFormat2 = SimpleMessageFormat.HTML;
        if (z2) {
            if (simpleMessageFormat == simpleMessageFormat2 && (insertableHtmlContent = this.quotedHtmlContent) != null) {
                textBodyBuilder.mIncludeQuotedText = true;
                textBodyBuilder.mQuotedTextHtml = insertableHtmlContent;
                textBodyBuilder.mReplyAfterQuote = z3;
            }
            if (simpleMessageFormat == SimpleMessageFormat.TEXT && this.quotedText.length() > 0) {
                textBodyBuilder.mIncludeQuotedText = true;
                textBodyBuilder.mQuotedText = this.quotedText;
                textBodyBuilder.mReplyAfterQuote = z3;
            }
        }
        textBodyBuilder.mInsertSeparator = !z;
        if (z || !this.identity.signatureUse) {
            textBodyBuilder.mAppendSignature = false;
        } else {
            textBodyBuilder.mAppendSignature = true;
            textBodyBuilder.mSignature = this.signature;
            textBodyBuilder.mSignatureBeforeQuotedText = this.isSignatureBeforeQuotedText;
        }
        String str3 = "";
        if (simpleMessageFormat != simpleMessageFormat2) {
            int length2 = str2.length();
            if (textBodyBuilder.mIncludeQuotedText) {
                String str4 = textBodyBuilder.mQuotedText;
                if (str4 != null && str4.length() != 0) {
                    str3 = textBodyBuilder.mQuotedText;
                }
                if (textBodyBuilder.mAppendSignature && (textBodyBuilder.mReplyAfterQuote || textBodyBuilder.mSignatureBeforeQuotedText)) {
                    str2 = str2.concat(textBodyBuilder.getSignature());
                }
                if (textBodyBuilder.mReplyAfterQuote) {
                    i2 = str3.length() + 2;
                    m = Config.CC.m(str3, "\r\n", str2);
                } else {
                    m = Config.CC.m(str2, "\r\n\r\n", str3);
                }
                if (textBodyBuilder.mAppendSignature && !textBodyBuilder.mReplyAfterQuote && !textBodyBuilder.mSignatureBeforeQuotedText) {
                    m = m.concat(textBodyBuilder.getSignature());
                }
                str2 = m;
            } else if (textBodyBuilder.mAppendSignature) {
                str2 = str2.concat(textBodyBuilder.getSignature());
            }
            TextBody textBody = new TextBody(str2);
            textBody.composedMessageLength = Integer.valueOf(length2);
            textBody.composedMessageOffset = Integer.valueOf(i2);
            return textBody;
        }
        boolean z4 = textBodyBuilder.mIncludeQuotedText;
        HTMLTag hTMLTag = HTMLTag.DIV;
        if (z4) {
            InsertableHtmlContent insertableHtmlContent2 = textBodyBuilder.mQuotedTextHtml;
            if (((DefaultGeneralSettingsManager) this.settingsManager).getConfig().debugging.isDebugLoggingEnabled) {
                StringBuilder sb = new StringBuilder("InsertableHtmlContent{headerInsertionPoint=");
                sb.append(insertableHtmlContent2.headerInsertionPoint);
                sb.append(", footerInsertionPoint=");
                sb.append(insertableHtmlContent2.footerInsertionPoint);
                sb.append(", insertionLocation=");
                int i3 = insertableHtmlContent2.insertionLocation;
                sb.append(i3 != 1 ? i3 != 2 ? "null" : "AFTER_QUOTE" : "BEFORE_QUOTE");
                sb.append(", quotedContent=");
                sb.append((Object) insertableHtmlContent2.quotedContent);
                sb.append(", userContent=");
                sb.append((Object) insertableHtmlContent2.userContent);
                sb.append(", compiledResult=");
                sb.append(insertableHtmlContent2.toString());
                sb.append('}');
                Log.d("insertable: %s", sb.toString());
            }
            str2.getClass();
            String textToHtmlFragment = OperationKt.textToHtmlFragment(str2, hTMLTag);
            length = textToHtmlFragment.length();
            if (textBodyBuilder.mAppendSignature && (textBodyBuilder.mReplyAfterQuote || textBodyBuilder.mSignatureBeforeQuotedText)) {
                String str5 = textBodyBuilder.mSignature;
                if (str5 == null || str5.length() == 0) {
                    str = "";
                } else {
                    String str6 = textBodyBuilder.mSignature;
                    str6.getClass();
                    str = OperationKt.textToHtmlFragment(str6, hTMLTag);
                }
                textToHtmlFragment = textToHtmlFragment.concat(str);
            }
            if (textBodyBuilder.mReplyAfterQuote) {
                insertableHtmlContent2.insertionLocation = 2;
                if (textBodyBuilder.mInsertSeparator) {
                    textToHtmlFragment = "<br clear=\"all\">".concat(textToHtmlFragment);
                    i2 = 16;
                }
            } else {
                insertableHtmlContent2.insertionLocation = 1;
                if (textBodyBuilder.mInsertSeparator) {
                    textToHtmlFragment = textToHtmlFragment.concat("<br><br>");
                }
            }
            if (textBodyBuilder.mAppendSignature && !textBodyBuilder.mReplyAfterQuote && !textBodyBuilder.mSignatureBeforeQuotedText) {
                String str7 = textBodyBuilder.mSignature;
                if (str7 != null && str7.length() != 0) {
                    String str8 = textBodyBuilder.mSignature;
                    str8.getClass();
                    str3 = OperationKt.textToHtmlFragment(str8, hTMLTag);
                }
                insertableHtmlContent2.quotedContent.insert(insertableHtmlContent2.footerInsertionPoint, str3);
                insertableHtmlContent2.footerInsertionPoint = str3.length() + insertableHtmlContent2.footerInsertionPoint;
            }
            insertableHtmlContent2.getClass();
            insertableHtmlContent2.userContent = new StringBuilder(textToHtmlFragment);
            i = (insertableHtmlContent2.insertionLocation == 1 ? insertableHtmlContent2.headerInsertionPoint : insertableHtmlContent2.footerInsertionPoint) + i2;
            m2 = insertableHtmlContent2.toString();
        } else {
            str2.getClass();
            String textToHtmlFragment2 = OperationKt.textToHtmlFragment(str2, hTMLTag);
            length = textToHtmlFragment2.length();
            if (textBodyBuilder.mAppendSignature) {
                String str9 = textBodyBuilder.mSignature;
                if (str9 != null && str9.length() != 0) {
                    String str10 = textBodyBuilder.mSignature;
                    str10.getClass();
                    str3 = OperationKt.textToHtmlFragment(str10, hTMLTag);
                }
                textToHtmlFragment2 = textToHtmlFragment2.concat(str3);
            }
            m2 = CameraDevices$CC.m("<!DOCTYPE html><html><body>", textToHtmlFragment2, "</body></html>");
            i = 27;
        }
        TextBody textBody2 = new TextBody(m2);
        textBody2.composedMessageLength = Integer.valueOf(length);
        textBody2.composedMessageOffset = Integer.valueOf(i);
        return textBody2;
    }

    public final MimeMultipart createMimeMultipart() {
        return new MimeMultipart(this.boundaryGenerator.generateBoundary());
    }

    public final void deliverResult() {
        synchronized (this.callbackLock) {
            try {
                MessageCompose messageCompose = this.asyncCallback;
                if (messageCompose == null) {
                    Log.d("Keeping message builder result in queue for later delivery", new Object[0]);
                    return;
                }
                MimeMessage mimeMessage = this.queuedMimeMessage;
                if (mimeMessage != null) {
                    messageCompose.onMessageBuildSuccess(mimeMessage, this.isDraft);
                    this.queuedMimeMessage = null;
                } else {
                    MessagingException messagingException = this.queuedException;
                    if (messagingException != null) {
                        Log.e(messagingException, "Error sending message", new Object[0]);
                        Toast.makeText(messageCompose, messageCompose.getString(R.string.send_failed_reason, messagingException.getLocalizedMessage()), 1).show();
                        messageCompose.sendMessageHasBeenTriggered = false;
                        messageCompose.currentMessageBuilder = null;
                        messageCompose.setProgressBarIndeterminateVisibility(false);
                        this.queuedException = null;
                    } else {
                        PendingIntent pendingIntent = this.queuedPendingIntent;
                        if (pendingIntent != null) {
                            try {
                                OpenPgpIntentStarter.startIntentSenderForResult(messageCompose, pendingIntent.getIntentSender(), this.queuedRequestCode | 2048);
                            } catch (IntentSender.SendIntentException e) {
                                Log.e(e, "Error starting pending intent from builder!", new Object[0]);
                            }
                            this.queuedPendingIntent = null;
                        }
                    }
                }
                this.asyncCallback = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void queueMessageBuildException(MessagingException messagingException) {
        synchronized (this.callbackLock) {
            this.queuedException = messagingException;
        }
    }

    public final void queueMessageBuildSuccess(MimeMessage mimeMessage) {
        synchronized (this.callbackLock) {
            this.queuedMimeMessage = mimeMessage;
        }
    }
}
