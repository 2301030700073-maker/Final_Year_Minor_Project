package com.fsck.k9.message.html;

import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class UriMatch {
    public final int endIndex;
    public final int startIndex;
    public final CharSequence uri;

    public UriMatch(int i, int i2, CharSequence charSequence) {
        charSequence.getClass();
        this.startIndex = i;
        this.endIndex = i2;
        this.uri = charSequence;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UriMatch)) {
            return false;
        }
        UriMatch uriMatch = (UriMatch) obj;
        return this.startIndex == uriMatch.startIndex && this.endIndex == uriMatch.endIndex && Intrinsics.areEqual(this.uri, uriMatch.uri);
    }

    public final int hashCode() {
        return this.uri.hashCode() + (((this.startIndex * 31) + this.endIndex) * 31);
    }

    public final String toString() {
        StringBuilder m91m = Config.CC.m91m("UriMatch(startIndex=", this.startIndex, ", endIndex=", this.endIndex, ", uri=");
        m91m.append((Object) this.uri);
        m91m.append(")");
        return m91m.toString();
    }
}
