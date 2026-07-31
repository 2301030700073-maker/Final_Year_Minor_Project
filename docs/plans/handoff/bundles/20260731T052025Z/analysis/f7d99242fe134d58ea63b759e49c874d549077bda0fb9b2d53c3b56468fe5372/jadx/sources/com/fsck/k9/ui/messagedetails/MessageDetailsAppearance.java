package com.fsck.k9.ui.messagedetails;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetailsAppearance {
    public final boolean alwaysHideAddToContactsButton;
    public final boolean showContactPicture;

    public MessageDetailsAppearance(boolean z, boolean z2) {
        this.showContactPicture = z;
        this.alwaysHideAddToContactsButton = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageDetailsAppearance)) {
            return false;
        }
        MessageDetailsAppearance messageDetailsAppearance = (MessageDetailsAppearance) obj;
        return this.showContactPicture == messageDetailsAppearance.showContactPicture && this.alwaysHideAddToContactsButton == messageDetailsAppearance.alwaysHideAddToContactsButton;
    }

    public final int hashCode() {
        return ((this.showContactPicture ? 1231 : 1237) * 31) + (this.alwaysHideAddToContactsButton ? 1231 : 1237);
    }

    public final String toString() {
        return "MessageDetailsAppearance(showContactPicture=" + this.showContactPicture + ", alwaysHideAddToContactsButton=" + this.alwaysHideAddToContactsButton + ")";
    }
}
