package net.thunderbird.feature.mail.message.list.preferences;

import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.collections.immutable.ImmutableSet;
import net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListPreferences {
    public final ImmutableSet actionRequiringUserConfirmation;
    public final boolean colorizeBackgroundWhenRead;
    public final MessageListDateTimeFormat dateTimeFormat;
    public final UiDensity density;
    public final int excerptLines;
    public final boolean groupConversations;
    public final boolean senderAboveSubject;
    public final boolean showCorrespondentNames;
    public final boolean showFavouriteButton;
    public final boolean showMessageAvatar;

    public MessageListPreferences(UiDensity uiDensity, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i, MessageListDateTimeFormat messageListDateTimeFormat, ImmutableSet immutableSet, boolean z6) {
        uiDensity.getClass();
        messageListDateTimeFormat.getClass();
        immutableSet.getClass();
        this.density = uiDensity;
        this.groupConversations = z;
        this.showCorrespondentNames = z2;
        this.showMessageAvatar = z3;
        this.showFavouriteButton = z4;
        this.senderAboveSubject = z5;
        this.excerptLines = i;
        this.dateTimeFormat = messageListDateTimeFormat;
        this.actionRequiringUserConfirmation = immutableSet;
        this.colorizeBackgroundWhenRead = z6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListPreferences)) {
            return false;
        }
        MessageListPreferences messageListPreferences = (MessageListPreferences) obj;
        return this.density == messageListPreferences.density && this.groupConversations == messageListPreferences.groupConversations && this.showCorrespondentNames == messageListPreferences.showCorrespondentNames && this.showMessageAvatar == messageListPreferences.showMessageAvatar && this.showFavouriteButton == messageListPreferences.showFavouriteButton && this.senderAboveSubject == messageListPreferences.senderAboveSubject && this.excerptLines == messageListPreferences.excerptLines && this.dateTimeFormat == messageListPreferences.dateTimeFormat && Intrinsics.areEqual(this.actionRequiringUserConfirmation, messageListPreferences.actionRequiringUserConfirmation) && this.colorizeBackgroundWhenRead == messageListPreferences.colorizeBackgroundWhenRead;
    }

    public final int hashCode() {
        return ((this.actionRequiringUserConfirmation.hashCode() + ((this.dateTimeFormat.hashCode() + (((((((((((((this.density.hashCode() * 31) + (this.groupConversations ? 1231 : 1237)) * 31) + (this.showCorrespondentNames ? 1231 : 1237)) * 31) + (this.showMessageAvatar ? 1231 : 1237)) * 31) + (this.showFavouriteButton ? 1231 : 1237)) * 31) + (this.senderAboveSubject ? 1231 : 1237)) * 31) + this.excerptLines) * 31)) * 31)) * 31) + (this.colorizeBackgroundWhenRead ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageListPreferences(density=");
        sb.append(this.density);
        sb.append(", groupConversations=");
        sb.append(this.groupConversations);
        sb.append(", showCorrespondentNames=");
        ViewSizeResolver.CC.m(sb, this.showCorrespondentNames, ", showMessageAvatar=", this.showMessageAvatar, ", showFavouriteButton=");
        ViewSizeResolver.CC.m(sb, this.showFavouriteButton, ", senderAboveSubject=", this.senderAboveSubject, ", excerptLines=");
        sb.append(this.excerptLines);
        sb.append(", dateTimeFormat=");
        sb.append(this.dateTimeFormat);
        sb.append(", actionRequiringUserConfirmation=");
        sb.append(this.actionRequiringUserConfirmation);
        sb.append(", colorizeBackgroundWhenRead=");
        sb.append(this.colorizeBackgroundWhenRead);
        sb.append(")");
        return sb.toString();
    }
}
