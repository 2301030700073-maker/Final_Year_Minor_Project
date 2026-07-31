package com.fsck.k9.ui.messagedetails;

import com.fsck.k9.view.MessageCryptoDisplayStatus;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CryptoDetails {
    public final MessageCryptoDisplayStatus cryptoStatus;
    public final boolean isClickable;

    public CryptoDetails(MessageCryptoDisplayStatus messageCryptoDisplayStatus, boolean z) {
        this.cryptoStatus = messageCryptoDisplayStatus;
        this.isClickable = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CryptoDetails)) {
            return false;
        }
        CryptoDetails cryptoDetails = (CryptoDetails) obj;
        return this.cryptoStatus == cryptoDetails.cryptoStatus && this.isClickable == cryptoDetails.isClickable;
    }

    public final int hashCode() {
        return (this.cryptoStatus.hashCode() * 31) + (this.isClickable ? 1231 : 1237);
    }

    public final String toString() {
        return "CryptoDetails(cryptoStatus=" + this.cryptoStatus + ", isClickable=" + this.isClickable + ")";
    }
}
