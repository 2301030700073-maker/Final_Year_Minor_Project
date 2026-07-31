package app.k9mail.legacy.mailstore;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.internet.MimeMessage;
import kotlin.jvm.internal.Intrinsics;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SaveMessageData {
    public final int attachmentCount;
    public final long date;
    public final MessageDownloadState downloadState;
    public final String encryptionType;
    public final long internalDate;
    public final MimeMessage message;
    public final PriorityQueue previewResult;
    public final String subject;
    public final String textForSearchIndex;

    public SaveMessageData(MimeMessage mimeMessage, String str, long j, long j2, MessageDownloadState messageDownloadState, int i, PriorityQueue priorityQueue, String str2, String str3) {
        mimeMessage.getClass();
        priorityQueue.getClass();
        this.message = mimeMessage;
        this.subject = str;
        this.date = j;
        this.internalDate = j2;
        this.downloadState = messageDownloadState;
        this.attachmentCount = i;
        this.previewResult = priorityQueue;
        this.textForSearchIndex = str2;
        this.encryptionType = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SaveMessageData)) {
            return false;
        }
        SaveMessageData saveMessageData = (SaveMessageData) obj;
        return Intrinsics.areEqual(this.message, saveMessageData.message) && Intrinsics.areEqual(this.subject, saveMessageData.subject) && this.date == saveMessageData.date && this.internalDate == saveMessageData.internalDate && this.downloadState == saveMessageData.downloadState && this.attachmentCount == saveMessageData.attachmentCount && Intrinsics.areEqual(this.previewResult, saveMessageData.previewResult) && Intrinsics.areEqual(this.textForSearchIndex, saveMessageData.textForSearchIndex) && Intrinsics.areEqual(this.encryptionType, saveMessageData.encryptionType);
    }

    public final int hashCode() {
        int hashCode = this.message.hashCode() * 31;
        String str = this.subject;
        int hashCode2 = (hashCode + (str == null ? 0 : str.hashCode())) * 31;
        long j = this.date;
        int i = (hashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.internalDate;
        int hashCode3 = (this.previewResult.hashCode() + ((((this.downloadState.hashCode() + ((i + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.attachmentCount) * 31)) * 31;
        String str2 = this.textForSearchIndex;
        int hashCode4 = (hashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.encryptionType;
        return hashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SaveMessageData(message=");
        sb.append(this.message);
        sb.append(", subject=");
        sb.append(this.subject);
        sb.append(", date=");
        sb.append(this.date);
        sb.append(", internalDate=");
        sb.append(this.internalDate);
        sb.append(", downloadState=");
        sb.append(this.downloadState);
        sb.append(", attachmentCount=");
        sb.append(this.attachmentCount);
        sb.append(", previewResult=");
        sb.append(this.previewResult);
        sb.append(", textForSearchIndex=");
        sb.append(this.textForSearchIndex);
        sb.append(", encryptionType=");
        return CameraDevices$CC.m(sb, this.encryptionType, ")");
    }
}
