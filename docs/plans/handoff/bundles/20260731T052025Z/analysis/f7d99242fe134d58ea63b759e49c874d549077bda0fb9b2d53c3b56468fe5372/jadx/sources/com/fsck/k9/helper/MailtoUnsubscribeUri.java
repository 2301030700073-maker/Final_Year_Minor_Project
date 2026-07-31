package com.fsck.k9.helper;

import android.net.Uri;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MailtoUnsubscribeUri implements UnsubscribeUri {
    public final Uri uri;

    public MailtoUnsubscribeUri(Uri uri) {
        this.uri = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MailtoUnsubscribeUri) && this.uri.equals(((MailtoUnsubscribeUri) obj).uri);
    }

    public final int hashCode() {
        return this.uri.hashCode();
    }

    public final String toString() {
        return "MailtoUnsubscribeUri(uri=" + this.uri + ")";
    }
}
