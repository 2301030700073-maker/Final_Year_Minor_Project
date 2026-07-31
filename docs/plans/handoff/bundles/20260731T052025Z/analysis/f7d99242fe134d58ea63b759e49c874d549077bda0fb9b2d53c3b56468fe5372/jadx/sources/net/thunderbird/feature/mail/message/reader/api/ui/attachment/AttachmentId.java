package net.thunderbird.feature.mail.message.reader.api.ui.attachment;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AttachmentId {
    public final String uri;

    public /* synthetic */ AttachmentId(String str) {
        this.uri = str;
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1038toStringimpl(String str) {
        return CameraDevices$CC.m("AttachmentId(uri=", str, ")");
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AttachmentId) {
            return Intrinsics.areEqual(this.uri, ((AttachmentId) obj).uri);
        }
        return false;
    }

    public final int hashCode() {
        return this.uri.hashCode();
    }

    public final String toString() {
        return m1038toStringimpl(this.uri);
    }
}
