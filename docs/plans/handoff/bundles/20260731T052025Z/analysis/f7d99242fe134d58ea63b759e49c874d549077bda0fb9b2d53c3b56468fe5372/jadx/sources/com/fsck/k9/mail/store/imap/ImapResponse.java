package com.fsck.k9.mail.store.imap;

import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import java.io.Serializable;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ImapResponse extends ImapList implements Serializable {
    public final ImapResponseCallback callback;
    public final boolean isContinuationRequested;
    public final String tag;

    public ImapResponse(ImapResponseCallback imapResponseCallback, boolean z, String str) {
        this.callback = imapResponseCallback;
        this.isContinuationRequested = z;
        this.tag = str;
    }

    public final boolean isTagged() {
        return this.tag != null;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return ImageAnalysis$$ExternalSyntheticLambda3.m("#", this.isContinuationRequested ? "+" : this.tag, "# ", super.toString());
    }
}
