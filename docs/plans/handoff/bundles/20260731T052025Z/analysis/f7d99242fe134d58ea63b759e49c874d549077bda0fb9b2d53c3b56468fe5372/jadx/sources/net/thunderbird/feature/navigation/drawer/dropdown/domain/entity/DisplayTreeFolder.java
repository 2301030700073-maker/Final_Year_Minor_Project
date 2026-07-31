package net.thunderbird.feature.navigation.drawer.dropdown.domain.entity;

import androidx.compose.ui.Modifier;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayTreeFolder {
    public final ImmutableList children;
    public final DisplayFolder displayFolder;
    public final String displayName;
    public final int totalStarredCount;
    public final int totalUnreadCount;

    public DisplayTreeFolder(DisplayFolder displayFolder, String str, int i, int i2, ImmutableList immutableList) {
        immutableList.getClass();
        this.displayFolder = displayFolder;
        this.displayName = str;
        this.totalUnreadCount = i;
        this.totalStarredCount = i2;
        this.children = immutableList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayTreeFolder)) {
            return false;
        }
        DisplayTreeFolder displayTreeFolder = (DisplayTreeFolder) obj;
        return Intrinsics.areEqual(this.displayFolder, displayTreeFolder.displayFolder) && Intrinsics.areEqual(this.displayName, displayTreeFolder.displayName) && this.totalUnreadCount == displayTreeFolder.totalUnreadCount && this.totalStarredCount == displayTreeFolder.totalStarredCount && Intrinsics.areEqual(this.children, displayTreeFolder.children);
    }

    public final int hashCode() {
        DisplayFolder displayFolder = this.displayFolder;
        int hashCode = (displayFolder == null ? 0 : displayFolder.hashCode()) * 31;
        String str = this.displayName;
        return this.children.hashCode() + ((((((hashCode + (str != null ? str.hashCode() : 0)) * 31) + this.totalUnreadCount) * 31) + this.totalStarredCount) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DisplayTreeFolder(displayFolder=");
        sb.append(this.displayFolder);
        sb.append(", displayName=");
        sb.append(this.displayName);
        sb.append(", totalUnreadCount=");
        Modifier.CC.m(sb, this.totalUnreadCount, ", totalStarredCount=", this.totalStarredCount, ", children=");
        sb.append(this.children);
        sb.append(")");
        return sb.toString();
    }
}
