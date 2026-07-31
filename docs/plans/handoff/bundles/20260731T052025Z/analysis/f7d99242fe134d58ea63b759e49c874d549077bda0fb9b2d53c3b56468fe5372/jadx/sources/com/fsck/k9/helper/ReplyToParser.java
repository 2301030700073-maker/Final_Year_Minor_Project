package com.fsck.k9.helper;

import android.net.Uri;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.Message$RecipientType;
import com.fsck.k9.mail.internet.MimeMessage;
import com.google.zxing.BinaryBitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReplyToParser {
    public static BinaryBitmap getRecipientsToReplyAllTo(MimeMessage mimeMessage, LegacyAccountDto legacyAccountDto) {
        List asList = Arrays.asList((Address[]) getRecipientsToReplyTo(mimeMessage, legacyAccountDto).binarizer);
        HashSet hashSet = new HashSet(asList);
        ArrayList arrayList = new ArrayList(asList);
        ArrayList arrayList2 = new ArrayList();
        for (Address address : mimeMessage.getFrom()) {
            if (!hashSet.contains(address) && !legacyAccountDto.isAnIdentity(address)) {
                arrayList.add(address);
                hashSet.add(address);
            }
        }
        for (Address address2 : mimeMessage.getRecipients(Message$RecipientType.TO)) {
            if (!hashSet.contains(address2) && !legacyAccountDto.isAnIdentity(address2)) {
                arrayList.add(address2);
                hashSet.add(address2);
            }
        }
        for (Address address3 : mimeMessage.getRecipients(Message$RecipientType.CC)) {
            if (!hashSet.contains(address3) && !legacyAccountDto.isAnIdentity(address3)) {
                arrayList2.add(address3);
                hashSet.add(address3);
            }
        }
        return new BinaryBitmap(arrayList, arrayList2);
    }

    public static BinaryBitmap getRecipientsToReplyTo(MimeMessage mimeMessage, LegacyAccountDto legacyAccountDto) {
        Address[] addressArr;
        Address[] replyTo = mimeMessage.getReplyTo();
        Pattern pattern = ListHeaders.MAILTO_CONTAINER_PATTERN;
        String[] header = mimeMessage.mHeader.getHeader("List-Post");
        if (header.length < 1) {
            addressArr = new Address[0];
        } else {
            ArrayList arrayList = new ArrayList();
            for (String str : header) {
                Address address = null;
                if (str != null && !str.isEmpty()) {
                    Matcher matcher = ListHeaders.MAILTO_CONTAINER_PATTERN.matcher(str);
                    if (matcher.find()) {
                        Address[] addressArr2 = MailTo.parse(Uri.parse(matcher.group(1))).toAddresses;
                        if (addressArr2.length >= 1) {
                            address = addressArr2[0];
                        }
                    }
                }
                if (address != null) {
                    arrayList.add(address);
                }
            }
            addressArr = (Address[]) arrayList.toArray(new Address[arrayList.size()]);
        }
        Address[] from = mimeMessage.getFrom();
        if (replyTo.length <= 0) {
            replyTo = addressArr.length > 0 ? addressArr : from;
        }
        if (legacyAccountDto.isAnIdentity(replyTo)) {
            replyTo = mimeMessage.getRecipients(Message$RecipientType.TO);
        }
        return new BinaryBitmap(replyTo);
    }
}
