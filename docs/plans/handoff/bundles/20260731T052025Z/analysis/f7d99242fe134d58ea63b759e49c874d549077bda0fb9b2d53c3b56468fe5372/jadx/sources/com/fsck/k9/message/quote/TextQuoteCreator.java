package com.fsck.k9.message.quote;

import android.content.Context;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.R;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.resources.K9CoreResourceProvider;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.text.Regex;
import net.thunderbird.core.android.account.QuoteStyle;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextQuoteCreator {
    public final Regex prefixInsertionRegex = new Regex("(?m)^");
    public final QuoteDateFormatter quoteDateFormatter;
    public final K9CoreResourceProvider resourceProvider;

    public TextQuoteCreator(QuoteDateFormatter quoteDateFormatter, K9CoreResourceProvider k9CoreResourceProvider) {
        this.quoteDateFormatter = quoteDateFormatter;
        this.resourceProvider = k9CoreResourceProvider;
    }

    public final String quoteOriginalTextMessage(MimeMessage mimeMessage, String str, QuoteStyle quoteStyle, String str2) {
        String string;
        Context context = this.resourceProvider.context;
        mimeMessage.getClass();
        quoteStyle.getClass();
        str2.getClass();
        if (str == null) {
            str = "";
        }
        int ordinal = quoteStyle.ordinal();
        QuoteDateFormatter quoteDateFormatter = this.quoteDateFormatter;
        if (ordinal == 0) {
            Date sentDate = mimeMessage.getSentDate();
            sentDate.getClass();
            String format = quoteDateFormatter.format(sentDate);
            Pattern pattern = Address.ATOM;
            Address[] from = mimeMessage.getFrom();
            from.getClass();
            String k9MailLib = K9MailLib.toString(from);
            StringBuilder sb = new StringBuilder();
            if (format.length() == 0) {
                string = context.getString(R.string.message_compose_reply_header_fmt, k9MailLib);
                string.getClass();
            } else {
                string = context.getString(R.string.message_compose_reply_header_fmt_with_date, format, k9MailLib);
                string.getClass();
            }
            sb.append(string);
            sb.append("\r\n");
            String quoteReplacement = Matcher.quoteReplacement(str2);
            quoteReplacement.getClass();
            sb.append(this.prefixInsertionRegex.replace(str, quoteReplacement));
            return sb.toString();
        }
        if (ordinal != 1) {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }
        Date sentDate2 = mimeMessage.getSentDate();
        sentDate2.getClass();
        String format2 = quoteDateFormatter.format(sentDate2);
        StringBuilder sb2 = new StringBuilder("\r\n");
        String string2 = context.getString(R.string.message_compose_quote_header_separator);
        string2.getClass();
        sb2.append(string2);
        sb2.append("\r\n");
        Address[] from2 = mimeMessage.getFrom();
        from2.getClass();
        Pattern pattern2 = Address.ATOM;
        String k9MailLib2 = K9MailLib.toString(from2);
        if (k9MailLib2.length() == 0) {
            k9MailLib2 = null;
        }
        if (k9MailLib2 != null) {
            String string3 = context.getString(R.string.message_compose_quote_header_from);
            string3.getClass();
            sb2.append(string3);
            sb2.append(" ");
            sb2.append(k9MailLib2);
            sb2.append("\r\n");
        }
        if (format2.length() > 0) {
            String string4 = context.getString(R.string.message_compose_quote_header_send_date);
            string4.getClass();
            sb2.append(string4);
            sb2.append(" ");
            sb2.append(format2);
            sb2.append("\r\n");
        }
        Address[] recipients = mimeMessage.getRecipients(Message$RecipientType.TO);
        recipients.getClass();
        String k9MailLib3 = K9MailLib.toString(recipients);
        if (k9MailLib3.length() == 0) {
            k9MailLib3 = null;
        }
        if (k9MailLib3 != null) {
            String string5 = context.getString(R.string.message_compose_quote_header_to);
            string5.getClass();
            sb2.append(string5);
            sb2.append(" ");
            sb2.append(k9MailLib3);
            sb2.append("\r\n");
        }
        Address[] recipients2 = mimeMessage.getRecipients(Message$RecipientType.CC);
        recipients2.getClass();
        String k9MailLib4 = K9MailLib.toString(recipients2);
        String str3 = k9MailLib4.length() != 0 ? k9MailLib4 : null;
        if (str3 != null) {
            String string6 = context.getString(R.string.message_compose_quote_header_cc);
            string6.getClass();
            sb2.append(string6);
            sb2.append(" ");
            sb2.append(str3);
            sb2.append("\r\n");
        }
        String subject = mimeMessage.getSubject();
        if (subject != null) {
            String string7 = context.getString(R.string.message_compose_quote_header_subject);
            string7.getClass();
            sb2.append(string7);
            sb2.append(" ");
            sb2.append(subject);
            sb2.append("\r\n");
        }
        return CameraDevices$CC.m(sb2, "\r\n", str);
    }
}
