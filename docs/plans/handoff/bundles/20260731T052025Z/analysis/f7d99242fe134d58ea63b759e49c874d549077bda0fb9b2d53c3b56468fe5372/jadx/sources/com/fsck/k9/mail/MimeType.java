package com.fsck.k9.mail;

import androidx.camera.core.impl.Config;
import kotlin.text.Regex;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MimeType {
    public static final Regex MIME_TYPE = new Regex("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    public final String subtype;
    public final String type;

    public MimeType(String str, String str2) {
        this.type = str;
        this.subtype = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MimeType)) {
            return false;
        }
        MimeType mimeType = (MimeType) obj;
        return this.type.equals(mimeType.type) && this.subtype.equals(mimeType.subtype);
    }

    public final int hashCode() {
        return toString().hashCode();
    }

    public final String toString() {
        return Config.CC.m(this.type, "/", this.subtype);
    }
}
