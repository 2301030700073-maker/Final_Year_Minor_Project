package com.fsck.k9.ui.messageview;

import android.text.SpannedString;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class RecipientLayoutData {
    public final String additionalRecipients;
    public final CharSequence recipientList;

    public RecipientLayoutData(SpannedString spannedString, String str) {
        spannedString.getClass();
        this.recipientList = spannedString;
        this.additionalRecipients = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RecipientLayoutData)) {
            return false;
        }
        RecipientLayoutData recipientLayoutData = (RecipientLayoutData) obj;
        return Intrinsics.areEqual(this.recipientList, recipientLayoutData.recipientList) && Intrinsics.areEqual(this.additionalRecipients, recipientLayoutData.additionalRecipients);
    }

    public final int hashCode() {
        int hashCode = this.recipientList.hashCode() * 31;
        String str = this.additionalRecipients;
        return hashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "RecipientLayoutData(recipientList=" + ((Object) this.recipientList) + ", additionalRecipients=" + this.additionalRecipients + ")";
    }
}
