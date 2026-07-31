package com.fsck.k9.ui.messagelist.item;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageViewHolderColors {
    public final int active;
    public final int activeBackground;
    public final int previewActiveText;
    public final int previewSelectedText;
    public final int previewText;
    public final int read;
    public final int readBackground;
    public final int regular;
    public final int regularBackground;
    public final int selected;
    public final int selectedBackground;
    public final int unread;
    public final int unreadBackground;

    public MessageViewHolderColors(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13) {
        this.active = i;
        this.activeBackground = i2;
        this.selected = i3;
        this.selectedBackground = i4;
        this.regular = i5;
        this.regularBackground = i6;
        this.read = i7;
        this.readBackground = i8;
        this.unread = i9;
        this.unreadBackground = i10;
        this.previewText = i11;
        this.previewActiveText = i12;
        this.previewSelectedText = i13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageViewHolderColors)) {
            return false;
        }
        MessageViewHolderColors messageViewHolderColors = (MessageViewHolderColors) obj;
        return this.active == messageViewHolderColors.active && this.activeBackground == messageViewHolderColors.activeBackground && this.selected == messageViewHolderColors.selected && this.selectedBackground == messageViewHolderColors.selectedBackground && this.regular == messageViewHolderColors.regular && this.regularBackground == messageViewHolderColors.regularBackground && this.read == messageViewHolderColors.read && this.readBackground == messageViewHolderColors.readBackground && this.unread == messageViewHolderColors.unread && this.unreadBackground == messageViewHolderColors.unreadBackground && this.previewText == messageViewHolderColors.previewText && this.previewActiveText == messageViewHolderColors.previewActiveText && this.previewSelectedText == messageViewHolderColors.previewSelectedText;
    }

    public final int hashCode() {
        return (((((((((((((((((((((((this.active * 31) + this.activeBackground) * 31) + this.selected) * 31) + this.selectedBackground) * 31) + this.regular) * 31) + this.regularBackground) * 31) + this.read) * 31) + this.readBackground) * 31) + this.unread) * 31) + this.unreadBackground) * 31) + this.previewText) * 31) + this.previewActiveText) * 31) + this.previewSelectedText;
    }

    public final String toString() {
        StringBuilder m91m = Config.CC.m91m("MessageViewHolderColors(active=", this.active, ", activeBackground=", this.activeBackground, ", selected=");
        Modifier.CC.m(m91m, this.selected, ", selectedBackground=", this.selectedBackground, ", regular=");
        Modifier.CC.m(m91m, this.regular, ", regularBackground=", this.regularBackground, ", read=");
        Modifier.CC.m(m91m, this.read, ", readBackground=", this.readBackground, ", unread=");
        Modifier.CC.m(m91m, this.unread, ", unreadBackground=", this.unreadBackground, ", previewText=");
        Modifier.CC.m(m91m, this.previewText, ", previewActiveText=", this.previewActiveText, ", previewSelectedText=");
        return CameraDevices$CC.m(m91m, this.previewSelectedText, ")");
    }
}
