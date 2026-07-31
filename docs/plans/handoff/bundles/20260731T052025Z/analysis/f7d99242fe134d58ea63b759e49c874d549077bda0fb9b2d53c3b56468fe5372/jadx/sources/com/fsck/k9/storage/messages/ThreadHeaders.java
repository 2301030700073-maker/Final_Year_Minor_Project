package com.fsck.k9.storage.messages;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.core.impl.Config;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThreadHeaders {
    public final String inReplyToHeader;
    public final String messageIdHeader;
    public final String referencesHeader;

    public ThreadHeaders(String str, String str2, String str3) {
        this.messageIdHeader = str;
        this.inReplyToHeader = str2;
        this.referencesHeader = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThreadHeaders)) {
            return false;
        }
        ThreadHeaders threadHeaders = (ThreadHeaders) obj;
        return Intrinsics.areEqual(this.messageIdHeader, threadHeaders.messageIdHeader) && Intrinsics.areEqual(this.inReplyToHeader, threadHeaders.inReplyToHeader) && Intrinsics.areEqual(this.referencesHeader, threadHeaders.referencesHeader);
    }

    public final int hashCode() {
        String str = this.messageIdHeader;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.inReplyToHeader;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.referencesHeader;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return CameraDevices$CC.m(Config.CC.m("ThreadHeaders(messageIdHeader=", this.messageIdHeader, ", inReplyToHeader=", this.inReplyToHeader, ", referencesHeader="), this.referencesHeader, ")");
    }
}
