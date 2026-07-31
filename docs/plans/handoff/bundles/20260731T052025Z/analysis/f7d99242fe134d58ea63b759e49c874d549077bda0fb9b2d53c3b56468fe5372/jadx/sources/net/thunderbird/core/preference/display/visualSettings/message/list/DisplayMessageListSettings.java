package net.thunderbird.core.preference.display.visualSettings.message.list;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayMessageListSettings {
    public final int contactNameColor;
    public final MessageListDateTimeFormat dateTimeFormat;
    public final boolean isChangeContactNameColor;
    public final boolean isColorizeMissingContactPictures;
    public final boolean isShowContactName;
    public final boolean isShowContactPicture;
    public final boolean isShowCorrespondentNames;
    public final boolean isUseBackgroundAsUnreadIndicator;
    public final int previewLines;
    public final UiDensity uiDensity;

    public DisplayMessageListSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, UiDensity uiDensity, int i2, MessageListDateTimeFormat messageListDateTimeFormat) {
        uiDensity.getClass();
        messageListDateTimeFormat.getClass();
        this.isShowCorrespondentNames = z;
        this.isShowContactName = z2;
        this.isShowContactPicture = z3;
        this.isChangeContactNameColor = z4;
        this.isColorizeMissingContactPictures = z5;
        this.isUseBackgroundAsUnreadIndicator = z6;
        this.previewLines = i;
        this.uiDensity = uiDensity;
        this.contactNameColor = i2;
        this.dateTimeFormat = messageListDateTimeFormat;
    }

    public static DisplayMessageListSettings copy$default(DisplayMessageListSettings displayMessageListSettings, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i, UiDensity uiDensity, int i2, MessageListDateTimeFormat messageListDateTimeFormat, int i3) {
        if ((i3 & 1) != 0) {
            z = displayMessageListSettings.isShowCorrespondentNames;
        }
        boolean z7 = z;
        if ((i3 & 2) != 0) {
            z2 = displayMessageListSettings.isShowContactName;
        }
        boolean z8 = z2;
        if ((i3 & 4) != 0) {
            z3 = displayMessageListSettings.isShowContactPicture;
        }
        boolean z9 = z3;
        if ((i3 & 8) != 0) {
            z4 = displayMessageListSettings.isChangeContactNameColor;
        }
        boolean z10 = z4;
        boolean z11 = (i3 & 16) != 0 ? displayMessageListSettings.isColorizeMissingContactPictures : z5;
        boolean z12 = (i3 & 32) != 0 ? displayMessageListSettings.isUseBackgroundAsUnreadIndicator : z6;
        int i4 = (i3 & 64) != 0 ? displayMessageListSettings.previewLines : i;
        UiDensity uiDensity2 = (i3 & 128) != 0 ? displayMessageListSettings.uiDensity : uiDensity;
        int i5 = (i3 & 256) != 0 ? displayMessageListSettings.contactNameColor : i2;
        MessageListDateTimeFormat messageListDateTimeFormat2 = (i3 & 512) != 0 ? displayMessageListSettings.dateTimeFormat : messageListDateTimeFormat;
        displayMessageListSettings.getClass();
        uiDensity2.getClass();
        messageListDateTimeFormat2.getClass();
        return new DisplayMessageListSettings(z7, z8, z9, z10, z11, z12, i4, uiDensity2, i5, messageListDateTimeFormat2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayMessageListSettings)) {
            return false;
        }
        DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) obj;
        return this.isShowCorrespondentNames == displayMessageListSettings.isShowCorrespondentNames && this.isShowContactName == displayMessageListSettings.isShowContactName && this.isShowContactPicture == displayMessageListSettings.isShowContactPicture && this.isChangeContactNameColor == displayMessageListSettings.isChangeContactNameColor && this.isColorizeMissingContactPictures == displayMessageListSettings.isColorizeMissingContactPictures && this.isUseBackgroundAsUnreadIndicator == displayMessageListSettings.isUseBackgroundAsUnreadIndicator && this.previewLines == displayMessageListSettings.previewLines && this.uiDensity == displayMessageListSettings.uiDensity && this.contactNameColor == displayMessageListSettings.contactNameColor && this.dateTimeFormat == displayMessageListSettings.dateTimeFormat;
    }

    public final int hashCode() {
        return this.dateTimeFormat.hashCode() + ((((this.uiDensity.hashCode() + ((((((((((((((this.isShowCorrespondentNames ? 1231 : 1237) * 31) + (this.isShowContactName ? 1231 : 1237)) * 31) + (this.isShowContactPicture ? 1231 : 1237)) * 31) + (this.isChangeContactNameColor ? 1231 : 1237)) * 31) + (this.isColorizeMissingContactPictures ? 1231 : 1237)) * 31) + (this.isUseBackgroundAsUnreadIndicator ? 1231 : 1237)) * 31) + this.previewLines) * 31)) * 31) + this.contactNameColor) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DisplayMessageListSettings(isShowCorrespondentNames=");
        sb.append(this.isShowCorrespondentNames);
        sb.append(", isShowContactName=");
        sb.append(this.isShowContactName);
        sb.append(", isShowContactPicture=");
        ViewSizeResolver.CC.m(sb, this.isShowContactPicture, ", isChangeContactNameColor=", this.isChangeContactNameColor, ", isColorizeMissingContactPictures=");
        ViewSizeResolver.CC.m(sb, this.isColorizeMissingContactPictures, ", isUseBackgroundAsUnreadIndicator=", this.isUseBackgroundAsUnreadIndicator, ", previewLines=");
        sb.append(this.previewLines);
        sb.append(", uiDensity=");
        sb.append(this.uiDensity);
        sb.append(", contactNameColor=");
        sb.append(this.contactNameColor);
        sb.append(", dateTimeFormat=");
        sb.append(this.dateTimeFormat);
        sb.append(")");
        return sb.toString();
    }
}
