package com.fsck.k9.helper;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class HttpsUnsubscribeUri implements UnsubscribeUri {
    public final Uri uri;

    public HttpsUnsubscribeUri(Uri uri) {
        uri.getClass();
        this.uri = uri;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof HttpsUnsubscribeUri) && Intrinsics.areEqual(this.uri, ((HttpsUnsubscribeUri) obj).uri);
    }

    public final int hashCode() {
        return this.uri.hashCode();
    }

    public final String toString() {
        return "HttpsUnsubscribeUri(uri=" + this.uri + ")";
    }
}
