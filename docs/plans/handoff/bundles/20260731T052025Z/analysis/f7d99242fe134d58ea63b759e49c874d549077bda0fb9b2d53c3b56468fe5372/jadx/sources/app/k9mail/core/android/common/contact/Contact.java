package app.k9mail.core.android.common.contact;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.mail.EmailAddress;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Contact {
    public final EmailAddress emailAddress;
    public final long id;
    public final String name;
    public final Uri photoUri;
    public final Uri uri;

    public Contact(long j, String str, EmailAddress emailAddress, Uri uri, Uri uri2) {
        this.id = j;
        this.name = str;
        this.emailAddress = emailAddress;
        this.uri = uri;
        this.photoUri = uri2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Contact)) {
            return false;
        }
        Contact contact = (Contact) obj;
        return this.id == contact.id && Intrinsics.areEqual(this.name, contact.name) && this.emailAddress.equals(contact.emailAddress) && this.uri.equals(contact.uri) && Intrinsics.areEqual(this.photoUri, contact.photoUri);
    }

    public final int hashCode() {
        long j = this.id;
        int i = ((int) (j ^ (j >>> 32))) * 31;
        String str = this.name;
        int hashCode = (this.uri.hashCode() + ((this.emailAddress.hashCode() + ((i + (str == null ? 0 : str.hashCode())) * 31)) * 31)) * 31;
        Uri uri = this.photoUri;
        return hashCode + (uri != null ? uri.hashCode() : 0);
    }

    public final String toString() {
        return "Contact(id=" + this.id + ", name=" + this.name + ", emailAddress=" + this.emailAddress + ", uri=" + this.uri + ", photoUri=" + this.photoUri + ")";
    }
}
