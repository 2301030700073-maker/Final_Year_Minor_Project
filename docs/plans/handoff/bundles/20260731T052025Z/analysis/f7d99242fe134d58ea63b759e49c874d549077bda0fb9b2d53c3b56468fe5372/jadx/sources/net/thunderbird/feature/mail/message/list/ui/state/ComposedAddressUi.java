package net.thunderbird.feature.mail.message.list.ui.state;

import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ComposedAddressUi {
    public final Avatar avatar;
    public final Color color;
    public final String displayName;
    public final ImmutableList displayNameStyles;

    public ComposedAddressUi(String str, ImmutableList immutableList, Avatar avatar, Color color) {
        immutableList.getClass();
        this.displayName = str;
        this.displayNameStyles = immutableList;
        this.avatar = avatar;
        this.color = color;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ComposedAddressUi)) {
            return false;
        }
        ComposedAddressUi composedAddressUi = (ComposedAddressUi) obj;
        return this.displayName.equals(composedAddressUi.displayName) && Intrinsics.areEqual(this.displayNameStyles, composedAddressUi.displayNameStyles) && Intrinsics.areEqual(this.avatar, composedAddressUi.avatar) && Intrinsics.areEqual(this.color, composedAddressUi.color);
    }

    public final int hashCode() {
        int hashCode = (this.displayNameStyles.hashCode() + (this.displayName.hashCode() * 31)) * 31;
        Avatar avatar = this.avatar;
        int hashCode2 = (hashCode + (avatar == null ? 0 : avatar.hashCode())) * 31;
        Color color = this.color;
        return hashCode2 + (color != null ? ULong.m980hashCodeimpl(color.value) : 0);
    }

    public final String toString() {
        return "ComposedAddressUi(displayName=" + this.displayName + ", displayNameStyles=" + this.displayNameStyles + ", avatar=" + this.avatar + ", color=" + this.color + ")";
    }
}
