package net.thunderbird.core.preference.display.inboxSettings;

import coil3.size.ViewSizeResolver;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayInboxSettings {
    public final boolean isMessageListSenderAboveSubject;
    public final boolean isShowComposeButtonOnMessageList;
    public final boolean isShowMessageListStars;
    public final boolean isShowStarredCount;
    public final boolean isShowUnifiedInbox;
    public final boolean isThreadedViewEnabled;

    public DisplayInboxSettings(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.isShowUnifiedInbox = z;
        this.isShowStarredCount = z2;
        this.isShowMessageListStars = z3;
        this.isMessageListSenderAboveSubject = z4;
        this.isShowComposeButtonOnMessageList = z5;
        this.isThreadedViewEnabled = z6;
    }

    public static DisplayInboxSettings copy$default(DisplayInboxSettings displayInboxSettings, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, int i) {
        if ((i & 1) != 0) {
            z = displayInboxSettings.isShowUnifiedInbox;
        }
        boolean z7 = z;
        if ((i & 2) != 0) {
            z2 = displayInboxSettings.isShowStarredCount;
        }
        boolean z8 = z2;
        if ((i & 4) != 0) {
            z3 = displayInboxSettings.isShowMessageListStars;
        }
        boolean z9 = z3;
        if ((i & 8) != 0) {
            z4 = displayInboxSettings.isMessageListSenderAboveSubject;
        }
        boolean z10 = z4;
        if ((i & 16) != 0) {
            z5 = displayInboxSettings.isShowComposeButtonOnMessageList;
        }
        boolean z11 = z5;
        if ((i & 32) != 0) {
            z6 = displayInboxSettings.isThreadedViewEnabled;
        }
        displayInboxSettings.getClass();
        return new DisplayInboxSettings(z7, z8, z9, z10, z11, z6);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayInboxSettings)) {
            return false;
        }
        DisplayInboxSettings displayInboxSettings = (DisplayInboxSettings) obj;
        return this.isShowUnifiedInbox == displayInboxSettings.isShowUnifiedInbox && this.isShowStarredCount == displayInboxSettings.isShowStarredCount && this.isShowMessageListStars == displayInboxSettings.isShowMessageListStars && this.isMessageListSenderAboveSubject == displayInboxSettings.isMessageListSenderAboveSubject && this.isShowComposeButtonOnMessageList == displayInboxSettings.isShowComposeButtonOnMessageList && this.isThreadedViewEnabled == displayInboxSettings.isThreadedViewEnabled;
    }

    public final int hashCode() {
        return ((((((((((this.isShowUnifiedInbox ? 1231 : 1237) * 31) + (this.isShowStarredCount ? 1231 : 1237)) * 31) + (this.isShowMessageListStars ? 1231 : 1237)) * 31) + (this.isMessageListSenderAboveSubject ? 1231 : 1237)) * 31) + (this.isShowComposeButtonOnMessageList ? 1231 : 1237)) * 31) + (this.isThreadedViewEnabled ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DisplayInboxSettings(isShowUnifiedInbox=");
        sb.append(this.isShowUnifiedInbox);
        sb.append(", isShowStarredCount=");
        sb.append(this.isShowStarredCount);
        sb.append(", isShowMessageListStars=");
        ViewSizeResolver.CC.m(sb, this.isShowMessageListStars, ", isMessageListSenderAboveSubject=", this.isMessageListSenderAboveSubject, ", isShowComposeButtonOnMessageList=");
        sb.append(this.isShowComposeButtonOnMessageList);
        sb.append(", isThreadedViewEnabled=");
        sb.append(this.isThreadedViewEnabled);
        sb.append(")");
        return sb.toString();
    }
}
