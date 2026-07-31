package com.fsck.k9.ui.messageview;

import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayRecipients {
    public final int numberOfRecipients;
    public final List recipientNames;

    public DisplayRecipients(int i, List list) {
        this.recipientNames = list;
        this.numberOfRecipients = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayRecipients)) {
            return false;
        }
        DisplayRecipients displayRecipients = (DisplayRecipients) obj;
        return this.recipientNames.equals(displayRecipients.recipientNames) && this.numberOfRecipients == displayRecipients.numberOfRecipients;
    }

    public final int hashCode() {
        return (this.recipientNames.hashCode() * 31) + this.numberOfRecipients;
    }

    public final String toString() {
        return "DisplayRecipients(recipientNames=" + this.recipientNames + ", numberOfRecipients=" + this.numberOfRecipients + ")";
    }
}
