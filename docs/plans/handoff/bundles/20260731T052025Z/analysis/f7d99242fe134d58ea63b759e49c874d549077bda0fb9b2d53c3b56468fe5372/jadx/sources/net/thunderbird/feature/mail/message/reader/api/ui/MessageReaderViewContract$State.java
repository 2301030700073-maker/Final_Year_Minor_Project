package net.thunderbird.feature.mail.message.reader.api.ui;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageReaderViewContract$State {
    public final ImmutableList attachments;

    public MessageReaderViewContract$State(ImmutableList immutableList) {
        immutableList.getClass();
        this.attachments = immutableList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageReaderViewContract$State) && Intrinsics.areEqual(this.attachments, ((MessageReaderViewContract$State) obj).attachments);
    }

    public final int hashCode() {
        return this.attachments.hashCode();
    }

    public final String toString() {
        return "State(attachments=" + this.attachments + ")";
    }
}
