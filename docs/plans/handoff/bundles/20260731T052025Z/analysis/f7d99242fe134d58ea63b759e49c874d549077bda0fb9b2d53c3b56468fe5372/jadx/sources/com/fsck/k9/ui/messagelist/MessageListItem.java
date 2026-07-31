package com.fsck.k9.ui.messagelist;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.Modifier;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.size.ViewSizeResolver;
import com.fsck.k9.mail.Address;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.android.account.LegacyAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListItem {
    public final LegacyAccount account;
    public final int contactColor;
    public final long databaseId;
    public final Address displayAddress;
    public final String displayMessageDateTime;
    public final CharSequence displayName;
    public final long folderId;
    public final boolean hasAttachments;
    public final long internalDate;
    public final boolean isAnswered;
    public final boolean isForwarded;
    public final boolean isMessageEncrypted;
    public final boolean isRead;
    public final boolean isStarred;
    public final long messageDate;
    public final String messageUid;
    public final String previewText;
    public final String subject;
    public final int threadCount;
    public final long threadRoot;
    public final long uniqueId;

    public MessageListItem(LegacyAccount legacyAccount, String str, int i, long j, long j2, CharSequence charSequence, Address address, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, long j3, long j4, String str4, long j5, long j6, int i2) {
        charSequence.getClass();
        str4.getClass();
        this.account = legacyAccount;
        this.subject = str;
        this.threadCount = i;
        this.messageDate = j;
        this.internalDate = j2;
        this.displayName = charSequence;
        this.displayAddress = address;
        this.displayMessageDateTime = str2;
        this.previewText = str3;
        this.isMessageEncrypted = z;
        this.isRead = z2;
        this.isStarred = z3;
        this.isAnswered = z4;
        this.isForwarded = z5;
        this.hasAttachments = z6;
        this.uniqueId = j3;
        this.folderId = j4;
        this.messageUid = str4;
        this.databaseId = j5;
        this.threadRoot = j6;
        this.contactColor = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListItem)) {
            return false;
        }
        MessageListItem messageListItem = (MessageListItem) obj;
        return this.account.equals(messageListItem.account) && Intrinsics.areEqual(this.subject, messageListItem.subject) && this.threadCount == messageListItem.threadCount && this.messageDate == messageListItem.messageDate && this.internalDate == messageListItem.internalDate && Intrinsics.areEqual(this.displayName, messageListItem.displayName) && Intrinsics.areEqual(this.displayAddress, messageListItem.displayAddress) && this.displayMessageDateTime.equals(messageListItem.displayMessageDateTime) && this.previewText.equals(messageListItem.previewText) && this.isMessageEncrypted == messageListItem.isMessageEncrypted && this.isRead == messageListItem.isRead && this.isStarred == messageListItem.isStarred && this.isAnswered == messageListItem.isAnswered && this.isForwarded == messageListItem.isForwarded && this.hasAttachments == messageListItem.hasAttachments && this.uniqueId == messageListItem.uniqueId && this.folderId == messageListItem.folderId && Intrinsics.areEqual(this.messageUid, messageListItem.messageUid) && this.databaseId == messageListItem.databaseId && this.threadRoot == messageListItem.threadRoot && this.contactColor == messageListItem.contactColor;
    }

    public final MessageReference getMessageReference() {
        return new MessageReference(this.folderId, this.account.uuid, this.messageUid);
    }

    public final int hashCode() {
        int hashCode = this.account.hashCode() * 31;
        String str = this.subject;
        int hashCode2 = (((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.threadCount) * 31;
        long j = this.messageDate;
        int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.internalDate;
        int hashCode3 = (this.displayName.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31;
        Address address = this.displayAddress;
        int m = (((((((((Modifier.CC.m(Modifier.CC.m((hashCode3 + (address != null ? address.hashCode() : 0)) * 31, this.displayMessageDateTime, 31), this.previewText, 31) + (this.isMessageEncrypted ? 1231 : 1237)) * 31) + (this.isRead ? 1231 : 1237)) * 31) + (this.isStarred ? 1231 : 1237)) * 31) + (this.isAnswered ? 1231 : 1237)) * 31) + (this.isForwarded ? 1231 : 1237)) * 31;
        int i2 = this.hasAttachments ? 1231 : 1237;
        long j3 = this.uniqueId;
        int i3 = (((m + i2) * 31) + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.folderId;
        int m2 = Modifier.CC.m((i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31, this.messageUid, 31);
        long j5 = this.databaseId;
        int i4 = (m2 + ((int) (j5 ^ (j5 >>> 32)))) * 31;
        long j6 = this.threadRoot;
        return ((i4 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + this.contactColor;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageListItem(account=");
        sb.append(this.account);
        sb.append(", subject=");
        sb.append(this.subject);
        sb.append(", threadCount=");
        sb.append(this.threadCount);
        sb.append(", messageDate=");
        sb.append(this.messageDate);
        sb.append(", internalDate=");
        sb.append(this.internalDate);
        sb.append(", displayName=");
        sb.append((Object) this.displayName);
        sb.append(", displayAddress=");
        sb.append(this.displayAddress);
        sb.append(", displayMessageDateTime=");
        Modifier.CC.m(sb, this.displayMessageDateTime, ", previewText=", this.previewText, ", isMessageEncrypted=");
        ViewSizeResolver.CC.m(sb, this.isMessageEncrypted, ", isRead=", this.isRead, ", isStarred=");
        ViewSizeResolver.CC.m(sb, this.isStarred, ", isAnswered=", this.isAnswered, ", isForwarded=");
        ViewSizeResolver.CC.m(sb, this.isForwarded, ", hasAttachments=", this.hasAttachments, ", uniqueId=");
        sb.append(this.uniqueId);
        sb.append(", folderId=");
        sb.append(this.folderId);
        sb.append(", messageUid=");
        sb.append(this.messageUid);
        sb.append(", databaseId=");
        sb.append(this.databaseId);
        sb.append(", threadRoot=");
        sb.append(this.threadRoot);
        sb.append(", contactColor=");
        return CameraDevices$CC.m(sb, this.contactColor, ")");
    }
}
