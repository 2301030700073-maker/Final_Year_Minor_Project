package com.fsck.k9.mail.store.imap;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapClientInfo {
    public final String appName;
    public final String appVersion;

    public ImapClientInfo(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.appName = str;
        this.appVersion = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImapClientInfo)) {
            return false;
        }
        ImapClientInfo imapClientInfo = (ImapClientInfo) obj;
        return Intrinsics.areEqual(this.appName, imapClientInfo.appName) && Intrinsics.areEqual(this.appVersion, imapClientInfo.appVersion);
    }

    public final int hashCode() {
        return this.appVersion.hashCode() + (this.appName.hashCode() * 31);
    }

    public final String toString() {
        return ViewSizeResolver.CC.m("ImapClientInfo(appName=", this.appName, ", appVersion=", this.appVersion, ")");
    }
}
