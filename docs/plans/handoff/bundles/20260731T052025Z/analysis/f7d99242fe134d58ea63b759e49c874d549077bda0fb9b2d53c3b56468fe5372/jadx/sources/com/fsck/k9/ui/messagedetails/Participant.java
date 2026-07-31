package com.fsck.k9.ui.messagedetails;

import android.net.Uri;
import androidx.compose.ui.Modifier;
import com.fsck.k9.mail.Address;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Participant {
    public final Uri contactLookupUri;
    public final CharSequence displayName;
    public final String emailAddress;

    public Participant(CharSequence charSequence, String str, Uri uri) {
        str.getClass();
        this.displayName = charSequence;
        this.emailAddress = str;
        this.contactLookupUri = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Participant)) {
            return false;
        }
        Participant participant = (Participant) obj;
        return Intrinsics.areEqual(this.displayName, participant.displayName) && Intrinsics.areEqual(this.emailAddress, participant.emailAddress) && Intrinsics.areEqual(this.contactLookupUri, participant.contactLookupUri);
    }

    public final Address getAddress() {
        CharSequence charSequence = this.displayName;
        return new Address(4, this.emailAddress, charSequence != null ? charSequence.toString() : null);
    }

    public final int hashCode() {
        CharSequence charSequence = this.displayName;
        int m = Modifier.CC.m((charSequence == null ? 0 : charSequence.hashCode()) * 31, this.emailAddress, 31);
        Uri uri = this.contactLookupUri;
        return m + (uri != null ? uri.hashCode() : 0);
    }

    public final String toString() {
        return "Participant(displayName=" + ((Object) this.displayName) + ", emailAddress=" + this.emailAddress + ", contactLookupUri=" + this.contactLookupUri + ")";
    }
}
