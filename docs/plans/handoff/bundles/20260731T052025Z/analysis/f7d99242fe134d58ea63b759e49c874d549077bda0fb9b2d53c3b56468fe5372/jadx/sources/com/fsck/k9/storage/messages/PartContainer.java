package com.fsck.k9.storage.messages;

import com.fsck.k9.mail.Part;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PartContainer {
    public final Long parentId;
    public final Part part;

    public PartContainer(Long l, Part part) {
        part.getClass();
        this.parentId = l;
        this.part = part;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PartContainer)) {
            return false;
        }
        PartContainer partContainer = (PartContainer) obj;
        return Intrinsics.areEqual(this.parentId, partContainer.parentId) && Intrinsics.areEqual(this.part, partContainer.part);
    }

    public final int hashCode() {
        Long l = this.parentId;
        return this.part.hashCode() + ((l == null ? 0 : l.hashCode()) * 31);
    }

    public final String toString() {
        return "PartContainer(parentId=" + this.parentId + ", part=" + this.part + ")";
    }
}
