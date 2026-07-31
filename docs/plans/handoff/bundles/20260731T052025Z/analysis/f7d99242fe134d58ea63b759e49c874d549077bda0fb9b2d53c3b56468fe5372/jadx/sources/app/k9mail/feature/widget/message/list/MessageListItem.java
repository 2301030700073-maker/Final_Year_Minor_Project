package app.k9mail.feature.widget.message.list;

import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListItem {
    public final int accountColor;
    public final String displayDate;
    public final String displayName;
    public final boolean hasAttachments;
    public final boolean isRead;
    public final MessageReference messageReference;
    public final String preview;
    public final long sortDatabaseId;
    public final long sortInternalDate;
    public final boolean sortIsStarred;
    public final long sortMessageDate;
    public final String sortSubject;
    public final String subject;
    public final int threadCount;
    public final long uniqueId;

    public MessageListItem(String str, String str2, String str3, String str4, boolean z, boolean z2, int i, int i2, MessageReference messageReference, long j, String str5, long j2, long j3, boolean z3, long j4) {
        str.getClass();
        this.displayName = str;
        this.displayDate = str2;
        this.subject = str3;
        this.preview = str4;
        this.isRead = z;
        this.hasAttachments = z2;
        this.threadCount = i;
        this.accountColor = i2;
        this.messageReference = messageReference;
        this.uniqueId = j;
        this.sortSubject = str5;
        this.sortMessageDate = j2;
        this.sortInternalDate = j3;
        this.sortIsStarred = z3;
        this.sortDatabaseId = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListItem)) {
            return false;
        }
        MessageListItem messageListItem = (MessageListItem) obj;
        return Intrinsics.areEqual(this.displayName, messageListItem.displayName) && this.displayDate.equals(messageListItem.displayDate) && this.subject.equals(messageListItem.subject) && this.preview.equals(messageListItem.preview) && this.isRead == messageListItem.isRead && this.hasAttachments == messageListItem.hasAttachments && this.threadCount == messageListItem.threadCount && this.accountColor == messageListItem.accountColor && this.messageReference.equals(messageListItem.messageReference) && this.uniqueId == messageListItem.uniqueId && Intrinsics.areEqual(this.sortSubject, messageListItem.sortSubject) && this.sortMessageDate == messageListItem.sortMessageDate && this.sortInternalDate == messageListItem.sortInternalDate && this.sortIsStarred == messageListItem.sortIsStarred && this.sortDatabaseId == messageListItem.sortDatabaseId;
    }

    public final int hashCode() {
        int hashCode = (this.messageReference.hashCode() + ((((((((Modifier.CC.m(Modifier.CC.m(Modifier.CC.m(this.displayName.hashCode() * 31, this.displayDate, 31), this.subject, 31), this.preview, 31) + (this.isRead ? 1231 : 1237)) * 31) + (this.hasAttachments ? 1231 : 1237)) * 31) + this.threadCount) * 31) + this.accountColor) * 31)) * 31;
        long j = this.uniqueId;
        int i = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        String str = this.sortSubject;
        int hashCode2 = (i + (str == null ? 0 : str.hashCode())) * 31;
        long j2 = this.sortMessageDate;
        int i2 = (hashCode2 + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.sortInternalDate;
        int i3 = (((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.sortIsStarred ? 1231 : 1237)) * 31;
        long j4 = this.sortDatabaseId;
        return i3 + ((int) ((j4 >>> 32) ^ j4));
    }

    public final String toString() {
        StringBuilder m = Config.CC.m("MessageListItem(displayName=", this.displayName, ", displayDate=", this.displayDate, ", subject=");
        Modifier.CC.m(m, this.subject, ", preview=", this.preview, ", isRead=");
        ViewSizeResolver.CC.m(m, this.isRead, ", hasAttachments=", this.hasAttachments, ", threadCount=");
        Modifier.CC.m(m, this.threadCount, ", accountColor=", this.accountColor, ", messageReference=");
        m.append(this.messageReference);
        m.append(", uniqueId=");
        m.append(this.uniqueId);
        m.append(", sortSubject=");
        m.append(this.sortSubject);
        m.append(", sortMessageDate=");
        m.append(this.sortMessageDate);
        m.append(", sortInternalDate=");
        m.append(this.sortInternalDate);
        m.append(", sortIsStarred=");
        m.append(this.sortIsStarred);
        m.append(", sortDatabaseId=");
        m.append(this.sortDatabaseId);
        m.append(")");
        return m.toString();
    }
}
