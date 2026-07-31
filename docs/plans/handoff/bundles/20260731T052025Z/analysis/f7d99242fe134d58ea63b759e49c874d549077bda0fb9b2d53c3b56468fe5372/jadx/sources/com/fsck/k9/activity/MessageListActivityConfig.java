package com.fsck.k9.activity;

import androidx.compose.ui.Modifier;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.SplitViewMode;
import net.thunderbird.core.preference.SubTheme;
import net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListActivityConfig {
    public final AppTheme appTheme;
    public final int contactNameColor;
    public final int fontSizeMessageListDate;
    public final int fontSizeMessageListPreview;
    public final int fontSizeMessageListSender;
    public final int fontSizeMessageListSubject;
    public final int fontSizeMessageViewContentAsPercent;
    public final int fontSizeMessageViewDate;
    public final int fontSizeMessageViewRecipients;
    public final int fontSizeMessageViewSender;
    public final int fontSizeMessageViewSubject;
    public final GeneralSettingsManager generalSettingsManager;
    public final boolean isChangeContactNameColor;
    public final boolean isColorizeMissingContactPictures;
    public final boolean isMessageListSenderAboveSubject;
    public final boolean isShowComposeButton;
    public final boolean isShowContactName;
    public final boolean isShowContactPicture;
    public final boolean isShowCorrespondentNames;
    public final boolean isShowMessageListStars;
    public final boolean isShowUnifiedInbox;
    public final boolean isUseBackgroundAsUnreadIndicator;
    public final UiDensity messageListDensity;
    public final int messageListPreviewLines;
    public final SubTheme messageViewTheme;
    public final SplitViewMode splitViewMode;
    public final SwipeAction swipeLeftAction;
    public final SwipeAction swipeRightAction;

    public MessageListActivityConfig(AppTheme appTheme, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, int i, SubTheme subTheme, int i2, UiDensity uiDensity, SplitViewMode splitViewMode, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, SwipeAction swipeAction, SwipeAction swipeAction2, GeneralSettingsManager generalSettingsManager) {
        appTheme.getClass();
        subTheme.getClass();
        uiDensity.getClass();
        splitViewMode.getClass();
        swipeAction.getClass();
        swipeAction2.getClass();
        generalSettingsManager.getClass();
        this.appTheme = appTheme;
        this.isShowUnifiedInbox = z;
        this.isShowMessageListStars = z2;
        this.isShowCorrespondentNames = z3;
        this.isMessageListSenderAboveSubject = z4;
        this.isShowContactName = z5;
        this.isChangeContactNameColor = z6;
        this.isShowContactPicture = z7;
        this.isColorizeMissingContactPictures = z8;
        this.isUseBackgroundAsUnreadIndicator = z9;
        this.isShowComposeButton = z10;
        this.contactNameColor = i;
        this.messageViewTheme = subTheme;
        this.messageListPreviewLines = i2;
        this.messageListDensity = uiDensity;
        this.splitViewMode = splitViewMode;
        this.fontSizeMessageListSubject = i3;
        this.fontSizeMessageListSender = i4;
        this.fontSizeMessageListDate = i5;
        this.fontSizeMessageListPreview = i6;
        this.fontSizeMessageViewSender = i7;
        this.fontSizeMessageViewRecipients = i8;
        this.fontSizeMessageViewSubject = i9;
        this.fontSizeMessageViewDate = i10;
        this.fontSizeMessageViewContentAsPercent = i11;
        this.swipeRightAction = swipeAction;
        this.swipeLeftAction = swipeAction2;
        this.generalSettingsManager = generalSettingsManager;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MessageListActivityConfig)) {
            return false;
        }
        MessageListActivityConfig messageListActivityConfig = (MessageListActivityConfig) obj;
        return this.appTheme == messageListActivityConfig.appTheme && this.isShowUnifiedInbox == messageListActivityConfig.isShowUnifiedInbox && this.isShowMessageListStars == messageListActivityConfig.isShowMessageListStars && this.isShowCorrespondentNames == messageListActivityConfig.isShowCorrespondentNames && this.isMessageListSenderAboveSubject == messageListActivityConfig.isMessageListSenderAboveSubject && this.isShowContactName == messageListActivityConfig.isShowContactName && this.isChangeContactNameColor == messageListActivityConfig.isChangeContactNameColor && this.isShowContactPicture == messageListActivityConfig.isShowContactPicture && this.isColorizeMissingContactPictures == messageListActivityConfig.isColorizeMissingContactPictures && this.isUseBackgroundAsUnreadIndicator == messageListActivityConfig.isUseBackgroundAsUnreadIndicator && this.isShowComposeButton == messageListActivityConfig.isShowComposeButton && this.contactNameColor == messageListActivityConfig.contactNameColor && this.messageViewTheme == messageListActivityConfig.messageViewTheme && this.messageListPreviewLines == messageListActivityConfig.messageListPreviewLines && this.messageListDensity == messageListActivityConfig.messageListDensity && this.splitViewMode == messageListActivityConfig.splitViewMode && this.fontSizeMessageListSubject == messageListActivityConfig.fontSizeMessageListSubject && this.fontSizeMessageListSender == messageListActivityConfig.fontSizeMessageListSender && this.fontSizeMessageListDate == messageListActivityConfig.fontSizeMessageListDate && this.fontSizeMessageListPreview == messageListActivityConfig.fontSizeMessageListPreview && this.fontSizeMessageViewSender == messageListActivityConfig.fontSizeMessageViewSender && this.fontSizeMessageViewRecipients == messageListActivityConfig.fontSizeMessageViewRecipients && this.fontSizeMessageViewSubject == messageListActivityConfig.fontSizeMessageViewSubject && this.fontSizeMessageViewDate == messageListActivityConfig.fontSizeMessageViewDate && this.fontSizeMessageViewContentAsPercent == messageListActivityConfig.fontSizeMessageViewContentAsPercent && this.swipeRightAction == messageListActivityConfig.swipeRightAction && this.swipeLeftAction == messageListActivityConfig.swipeLeftAction && Intrinsics.areEqual(this.generalSettingsManager, messageListActivityConfig.generalSettingsManager);
    }

    public final int hashCode() {
        return this.generalSettingsManager.hashCode() + ((this.swipeLeftAction.hashCode() + ((this.swipeRightAction.hashCode() + ((((((((((((((((((((this.splitViewMode.hashCode() + ((this.messageListDensity.hashCode() + ((((this.messageViewTheme.hashCode() + (((((((((((((((((((((((this.appTheme.hashCode() * 31) + (this.isShowUnifiedInbox ? 1231 : 1237)) * 31) + (this.isShowMessageListStars ? 1231 : 1237)) * 31) + (this.isShowCorrespondentNames ? 1231 : 1237)) * 31) + (this.isMessageListSenderAboveSubject ? 1231 : 1237)) * 31) + (this.isShowContactName ? 1231 : 1237)) * 31) + (this.isChangeContactNameColor ? 1231 : 1237)) * 31) + (this.isShowContactPicture ? 1231 : 1237)) * 31) + (this.isColorizeMissingContactPictures ? 1231 : 1237)) * 31) + (this.isUseBackgroundAsUnreadIndicator ? 1231 : 1237)) * 31) + (this.isShowComposeButton ? 1231 : 1237)) * 31) + this.contactNameColor) * 31)) * 31) + this.messageListPreviewLines) * 31)) * 31)) * 31) + this.fontSizeMessageListSubject) * 31) + this.fontSizeMessageListSender) * 31) + this.fontSizeMessageListDate) * 31) + this.fontSizeMessageListPreview) * 31) + this.fontSizeMessageViewSender) * 31) + this.fontSizeMessageViewRecipients) * 31) + this.fontSizeMessageViewSubject) * 31) + this.fontSizeMessageViewDate) * 31) + this.fontSizeMessageViewContentAsPercent) * 31)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MessageListActivityConfig(appTheme=");
        sb.append(this.appTheme);
        sb.append(", isShowUnifiedInbox=");
        sb.append(this.isShowUnifiedInbox);
        sb.append(", isShowMessageListStars=");
        ViewSizeResolver.CC.m(sb, this.isShowMessageListStars, ", isShowCorrespondentNames=", this.isShowCorrespondentNames, ", isMessageListSenderAboveSubject=");
        ViewSizeResolver.CC.m(sb, this.isMessageListSenderAboveSubject, ", isShowContactName=", this.isShowContactName, ", isChangeContactNameColor=");
        ViewSizeResolver.CC.m(sb, this.isChangeContactNameColor, ", isShowContactPicture=", this.isShowContactPicture, ", isColorizeMissingContactPictures=");
        ViewSizeResolver.CC.m(sb, this.isColorizeMissingContactPictures, ", isUseBackgroundAsUnreadIndicator=", this.isUseBackgroundAsUnreadIndicator, ", isShowComposeButton=");
        sb.append(this.isShowComposeButton);
        sb.append(", contactNameColor=");
        sb.append(this.contactNameColor);
        sb.append(", messageViewTheme=");
        sb.append(this.messageViewTheme);
        sb.append(", messageListPreviewLines=");
        sb.append(this.messageListPreviewLines);
        sb.append(", messageListDensity=");
        sb.append(this.messageListDensity);
        sb.append(", splitViewMode=");
        sb.append(this.splitViewMode);
        sb.append(", fontSizeMessageListSubject=");
        Modifier.CC.m(sb, this.fontSizeMessageListSubject, ", fontSizeMessageListSender=", this.fontSizeMessageListSender, ", fontSizeMessageListDate=");
        Modifier.CC.m(sb, this.fontSizeMessageListDate, ", fontSizeMessageListPreview=", this.fontSizeMessageListPreview, ", fontSizeMessageViewSender=");
        Modifier.CC.m(sb, this.fontSizeMessageViewSender, ", fontSizeMessageViewRecipients=", this.fontSizeMessageViewRecipients, ", fontSizeMessageViewSubject=");
        Modifier.CC.m(sb, this.fontSizeMessageViewSubject, ", fontSizeMessageViewDate=", this.fontSizeMessageViewDate, ", fontSizeMessageViewContentAsPercent=");
        sb.append(this.fontSizeMessageViewContentAsPercent);
        sb.append(", swipeRightAction=");
        sb.append(this.swipeRightAction);
        sb.append(", swipeLeftAction=");
        sb.append(this.swipeLeftAction);
        sb.append(", generalSettingsManager=");
        sb.append(this.generalSettingsManager);
        sb.append(")");
        return sb.toString();
    }
}
