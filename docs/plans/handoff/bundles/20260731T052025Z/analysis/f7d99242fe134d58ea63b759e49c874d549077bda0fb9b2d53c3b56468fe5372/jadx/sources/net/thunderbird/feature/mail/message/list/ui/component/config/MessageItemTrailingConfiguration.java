package net.thunderbird.feature.mail.message.list.ui.component.config;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemTrailingConfiguration {
    public final ImmutableList elements;

    public MessageItemTrailingConfiguration(ImmutableList immutableList) {
        immutableList.getClass();
        this.elements = immutableList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof MessageItemTrailingConfiguration) && Intrinsics.areEqual(this.elements, ((MessageItemTrailingConfiguration) obj).elements);
    }

    public final int hashCode() {
        return this.elements.hashCode();
    }

    public final String toString() {
        return "MessageItemTrailingConfiguration(elements=" + this.elements + ")";
    }
}
