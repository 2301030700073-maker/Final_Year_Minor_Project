package net.thunderbird.feature.mail.message.list.ui.component.config;

import androidx.compose.ui.graphics.Color;
import kotlin.ULong;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.feature.mail.message.list.ui.state.Avatar;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageItemLeadingConfiguration {
    public final Avatar avatar;
    public final Color avatarColor;
    public final MessageBadgeStyle badgeStyle;

    public MessageItemLeadingConfiguration(MessageBadgeStyle messageBadgeStyle, Avatar avatar, Color color) {
        this.badgeStyle = messageBadgeStyle;
        this.avatar = avatar;
        this.avatarColor = color;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageItemLeadingConfiguration)) {
            return false;
        }
        MessageItemLeadingConfiguration messageItemLeadingConfiguration = (MessageItemLeadingConfiguration) obj;
        return this.badgeStyle == messageItemLeadingConfiguration.badgeStyle && Intrinsics.areEqual(this.avatar, messageItemLeadingConfiguration.avatar) && Intrinsics.areEqual(this.avatarColor, messageItemLeadingConfiguration.avatarColor);
    }

    public final int hashCode() {
        MessageBadgeStyle messageBadgeStyle = this.badgeStyle;
        int hashCode = (messageBadgeStyle == null ? 0 : messageBadgeStyle.hashCode()) * 31;
        Avatar avatar = this.avatar;
        int hashCode2 = (hashCode + (avatar == null ? 0 : avatar.hashCode())) * 31;
        Color color = this.avatarColor;
        return hashCode2 + (color != null ? ULong.m980hashCodeimpl(color.value) : 0);
    }

    public final String toString() {
        return "MessageItemLeadingConfiguration(badgeStyle=" + this.badgeStyle + ", avatar=" + this.avatar + ", avatarColor=" + this.avatarColor + ")";
    }
}
