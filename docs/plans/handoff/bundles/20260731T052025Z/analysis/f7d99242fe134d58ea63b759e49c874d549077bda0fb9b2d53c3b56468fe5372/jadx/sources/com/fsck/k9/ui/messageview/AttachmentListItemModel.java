package com.fsck.k9.ui.messageview;

import com.fsck.k9.mailstore.AttachmentViewInfo;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentListItemModel {
    public final AttachmentViewInfo attachment;
    public final boolean isLocked;

    public AttachmentListItemModel(AttachmentViewInfo attachmentViewInfo, boolean z) {
        this.attachment = attachmentViewInfo;
        this.isLocked = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AttachmentListItemModel) {
            AttachmentListItemModel attachmentListItemModel = (AttachmentListItemModel) obj;
            if (this.attachment == attachmentListItemModel.attachment && this.isLocked == attachmentListItemModel.isLocked) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.attachment.hashCode() * 31) + (this.isLocked ? 1231 : 1237);
    }

    public final String toString() {
        return "AttachmentListItemModel(attachment=" + this.attachment + ", isLocked=" + this.isLocked + ")";
    }
}
