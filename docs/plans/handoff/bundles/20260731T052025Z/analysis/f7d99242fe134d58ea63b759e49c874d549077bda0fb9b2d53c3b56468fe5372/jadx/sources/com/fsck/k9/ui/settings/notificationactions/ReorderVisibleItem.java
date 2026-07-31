package com.fsck.k9.ui.settings.notificationactions;

import androidx.camera.camera2.pipe.CameraDevices$CC;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ReorderVisibleItem {
    public final String key;
    public final int offset;
    public final int size;

    public ReorderVisibleItem(String str, int i, int i2) {
        this.key = str;
        this.offset = i;
        this.size = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReorderVisibleItem)) {
            return false;
        }
        ReorderVisibleItem reorderVisibleItem = (ReorderVisibleItem) obj;
        return this.key.equals(reorderVisibleItem.key) && this.offset == reorderVisibleItem.offset && this.size == reorderVisibleItem.size;
    }

    public final int hashCode() {
        return (((this.key.hashCode() * 31) + this.offset) * 31) + this.size;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ReorderVisibleItem(key=");
        sb.append(this.key);
        sb.append(", offset=");
        sb.append(this.offset);
        sb.append(", size=");
        return CameraDevices$CC.m(sb, this.size, ")");
    }
}
