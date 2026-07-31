package org.jetbrains.compose.resources;

import androidx.compose.ui.Modifier;
import java.util.Set;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ResourceItem {
    public final long offset;
    public final String path;
    public final Set qualifiers;
    public final long size;

    public ResourceItem(Set set, String str, long j, long j2) {
        this.qualifiers = set;
        this.path = str;
        this.offset = j;
        this.size = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResourceItem)) {
            return false;
        }
        ResourceItem resourceItem = (ResourceItem) obj;
        return this.qualifiers.equals(resourceItem.qualifiers) && this.path.equals(resourceItem.path) && this.offset == resourceItem.offset && this.size == resourceItem.size;
    }

    public final int hashCode() {
        int m = Modifier.CC.m(this.qualifiers.hashCode() * 31, 31, this.path);
        long j = this.offset;
        long j2 = this.size;
        return ((m + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "ResourceItem(qualifiers=" + this.qualifiers + ", path=" + this.path + ", offset=" + this.offset + ", size=" + this.size + ")";
    }
}
