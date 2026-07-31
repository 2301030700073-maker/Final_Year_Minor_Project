package net.thunderbird.feature.mail.message.reader.api.ui;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageReaderViewContract$Event$UpdateAttachments {
    public final List extraNonInlineAttachments;
    public final List nonInlineAttachments;

    public MessageReaderViewContract$Event$UpdateAttachments(List list, List list2) {
        list.getClass();
        list2.getClass();
        this.nonInlineAttachments = list;
        this.extraNonInlineAttachments = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageReaderViewContract$Event$UpdateAttachments)) {
            return false;
        }
        MessageReaderViewContract$Event$UpdateAttachments messageReaderViewContract$Event$UpdateAttachments = (MessageReaderViewContract$Event$UpdateAttachments) obj;
        return Intrinsics.areEqual(this.nonInlineAttachments, messageReaderViewContract$Event$UpdateAttachments.nonInlineAttachments) && Intrinsics.areEqual(this.extraNonInlineAttachments, messageReaderViewContract$Event$UpdateAttachments.extraNonInlineAttachments);
    }

    public final int hashCode() {
        return this.extraNonInlineAttachments.hashCode() + (this.nonInlineAttachments.hashCode() * 31);
    }

    public final String toString() {
        return "UpdateAttachments(nonInlineAttachments=" + this.nonInlineAttachments + ", extraNonInlineAttachments=" + this.extraNonInlineAttachments + ")";
    }
}
