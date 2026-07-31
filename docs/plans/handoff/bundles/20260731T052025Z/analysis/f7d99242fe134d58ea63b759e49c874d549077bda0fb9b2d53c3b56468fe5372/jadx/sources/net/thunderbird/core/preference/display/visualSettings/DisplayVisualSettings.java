package net.thunderbird.core.preference.display.visualSettings;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.core.preference.AnimationPreference;
import net.thunderbird.core.preference.BodyContentType;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayVisualSettings {
    public final AnimationPreference animationPreference;
    public final BodyContentType bodyContentType;
    public final boolean drawerExpandAllFolder;
    public final boolean isAutoFitWidth;
    public final boolean isMessageViewArchiveActionVisible;
    public final boolean isMessageViewCopyActionVisible;
    public final boolean isMessageViewDeleteActionVisible;
    public final boolean isMessageViewMoveActionVisible;
    public final boolean isMessageViewSpamActionVisible;
    public final boolean isUseMessageViewFixedWidthFont;
    public final DisplayMessageListSettings messageListSettings;

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public DisplayVisualSettings(net.thunderbird.core.preference.AnimationPreference r20, boolean r21, boolean r22, net.thunderbird.core.preference.BodyContentType r23, boolean r24, boolean r25, boolean r26, boolean r27, boolean r28, boolean r29, int r30) {
        /*
            r19 = this;
            r0 = r30
            r1 = r0 & 1
            if (r1 == 0) goto La
            net.thunderbird.core.preference.AnimationPreference r1 = net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsKt.DISPLAY_SETTINGS_DEFAULT_ANIMATION_PREFERENCE
            r3 = r1
            goto Lc
        La:
            r3 = r20
        Lc:
            r1 = r0 & 2
            r2 = 0
            if (r1 == 0) goto L13
            r4 = r2
            goto L15
        L13:
            r4 = r21
        L15:
            r1 = r0 & 4
            r5 = 1
            if (r1 == 0) goto L1c
            r1 = r5
            goto L1e
        L1c:
            r1 = r22
        L1e:
            r6 = r0 & 8
            if (r6 == 0) goto L25
            net.thunderbird.core.preference.BodyContentType r6 = net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettingsKt.DISPLAY_SETTINGS_DEFAULT_BODY_CONTENT_TYPE
            goto L27
        L25:
            r6 = r23
        L27:
            r7 = r0 & 16
            if (r7 == 0) goto L2d
            r7 = r2
            goto L2f
        L2d:
            r7 = r24
        L2f:
            net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings r8 = new net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings
            net.thunderbird.core.preference.display.visualSettings.message.list.UiDensity r16 = net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettingsKt.MESSAGE_LIST_SETTINGS_DEFAULT_UI_DENSITY
            r17 = -15690763(0xffffffffff1093f5, float:-1.9217707E38)
            net.thunderbird.core.preference.display.visualSettings.message.list.MessageListDateTimeFormat r18 = net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettingsKt.MESSAGE_LIST_SETTINGS_DEFAULT_DATE_TIME_FORMAT
            r9 = 1
            r10 = 0
            r11 = 1
            r12 = 1
            r13 = 1
            r14 = 0
            r15 = 2
            r8.<init>(r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            r9 = r0 & 64
            if (r9 == 0) goto L48
            r9 = r2
            goto L4a
        L48:
            r9 = r25
        L4a:
            r10 = r0 & 128(0x80, float:1.8E-43)
            if (r10 == 0) goto L50
            r10 = r5
            goto L52
        L50:
            r10 = r26
        L52:
            r5 = r0 & 256(0x100, float:3.59E-43)
            if (r5 == 0) goto L58
            r11 = r2
            goto L5a
        L58:
            r11 = r27
        L5a:
            r5 = r0 & 512(0x200, float:7.17E-43)
            if (r5 == 0) goto L60
            r12 = r2
            goto L62
        L60:
            r12 = r28
        L62:
            r0 = r0 & 1024(0x400, float:1.435E-42)
            if (r0 == 0) goto L6b
            r13 = r2
            r5 = r1
            r2 = r19
            goto L70
        L6b:
            r13 = r29
            r2 = r19
            r5 = r1
        L70:
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings.<init>(net.thunderbird.core.preference.AnimationPreference, boolean, boolean, net.thunderbird.core.preference.BodyContentType, boolean, boolean, boolean, boolean, boolean, boolean, int):void");
    }

    public static DisplayVisualSettings copy$default(DisplayVisualSettings displayVisualSettings, AnimationPreference animationPreference, boolean z, boolean z2, BodyContentType bodyContentType, boolean z3, DisplayMessageListSettings displayMessageListSettings, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i) {
        if ((i & 1) != 0) {
            animationPreference = displayVisualSettings.animationPreference;
        }
        AnimationPreference animationPreference2 = animationPreference;
        if ((i & 2) != 0) {
            z = displayVisualSettings.isUseMessageViewFixedWidthFont;
        }
        boolean z9 = z;
        if ((i & 4) != 0) {
            z2 = displayVisualSettings.isAutoFitWidth;
        }
        boolean z10 = z2;
        BodyContentType bodyContentType2 = (i & 8) != 0 ? displayVisualSettings.bodyContentType : bodyContentType;
        boolean z11 = (i & 16) != 0 ? displayVisualSettings.drawerExpandAllFolder : z3;
        DisplayMessageListSettings displayMessageListSettings2 = (i & 32) != 0 ? displayVisualSettings.messageListSettings : displayMessageListSettings;
        boolean z12 = (i & 64) != 0 ? displayVisualSettings.isMessageViewArchiveActionVisible : z4;
        boolean z13 = (i & 128) != 0 ? displayVisualSettings.isMessageViewDeleteActionVisible : z5;
        boolean z14 = (i & 256) != 0 ? displayVisualSettings.isMessageViewMoveActionVisible : z6;
        boolean z15 = (i & 512) != 0 ? displayVisualSettings.isMessageViewCopyActionVisible : z7;
        boolean z16 = (i & 1024) != 0 ? displayVisualSettings.isMessageViewSpamActionVisible : z8;
        displayVisualSettings.getClass();
        animationPreference2.getClass();
        bodyContentType2.getClass();
        displayMessageListSettings2.getClass();
        return new DisplayVisualSettings(animationPreference2, z9, z10, bodyContentType2, z11, displayMessageListSettings2, z12, z13, z14, z15, z16);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisplayVisualSettings)) {
            return false;
        }
        DisplayVisualSettings displayVisualSettings = (DisplayVisualSettings) obj;
        return this.animationPreference == displayVisualSettings.animationPreference && this.isUseMessageViewFixedWidthFont == displayVisualSettings.isUseMessageViewFixedWidthFont && this.isAutoFitWidth == displayVisualSettings.isAutoFitWidth && this.bodyContentType == displayVisualSettings.bodyContentType && this.drawerExpandAllFolder == displayVisualSettings.drawerExpandAllFolder && Intrinsics.areEqual(this.messageListSettings, displayVisualSettings.messageListSettings) && this.isMessageViewArchiveActionVisible == displayVisualSettings.isMessageViewArchiveActionVisible && this.isMessageViewDeleteActionVisible == displayVisualSettings.isMessageViewDeleteActionVisible && this.isMessageViewMoveActionVisible == displayVisualSettings.isMessageViewMoveActionVisible && this.isMessageViewCopyActionVisible == displayVisualSettings.isMessageViewCopyActionVisible && this.isMessageViewSpamActionVisible == displayVisualSettings.isMessageViewSpamActionVisible;
    }

    public final int hashCode() {
        return ((((((((((this.messageListSettings.hashCode() + ((((this.bodyContentType.hashCode() + (((((this.animationPreference.hashCode() * 31) + (this.isUseMessageViewFixedWidthFont ? 1231 : 1237)) * 31) + (this.isAutoFitWidth ? 1231 : 1237)) * 31)) * 31) + (this.drawerExpandAllFolder ? 1231 : 1237)) * 31)) * 31) + (this.isMessageViewArchiveActionVisible ? 1231 : 1237)) * 31) + (this.isMessageViewDeleteActionVisible ? 1231 : 1237)) * 31) + (this.isMessageViewMoveActionVisible ? 1231 : 1237)) * 31) + (this.isMessageViewCopyActionVisible ? 1231 : 1237)) * 31) + (this.isMessageViewSpamActionVisible ? 1231 : 1237);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DisplayVisualSettings(animationPreference=");
        sb.append(this.animationPreference);
        sb.append(", isUseMessageViewFixedWidthFont=");
        sb.append(this.isUseMessageViewFixedWidthFont);
        sb.append(", isAutoFitWidth=");
        sb.append(this.isAutoFitWidth);
        sb.append(", bodyContentType=");
        sb.append(this.bodyContentType);
        sb.append(", drawerExpandAllFolder=");
        sb.append(this.drawerExpandAllFolder);
        sb.append(", messageListSettings=");
        sb.append(this.messageListSettings);
        sb.append(", isMessageViewArchiveActionVisible=");
        ViewSizeResolver.CC.m(sb, this.isMessageViewArchiveActionVisible, ", isMessageViewDeleteActionVisible=", this.isMessageViewDeleteActionVisible, ", isMessageViewMoveActionVisible=");
        ViewSizeResolver.CC.m(sb, this.isMessageViewMoveActionVisible, ", isMessageViewCopyActionVisible=", this.isMessageViewCopyActionVisible, ", isMessageViewSpamActionVisible=");
        return CameraDevices$CC.m(")", sb, this.isMessageViewSpamActionVisible);
    }

    public DisplayVisualSettings(AnimationPreference animationPreference, boolean z, boolean z2, BodyContentType bodyContentType, boolean z3, DisplayMessageListSettings displayMessageListSettings, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
        animationPreference.getClass();
        bodyContentType.getClass();
        this.animationPreference = animationPreference;
        this.isUseMessageViewFixedWidthFont = z;
        this.isAutoFitWidth = z2;
        this.bodyContentType = bodyContentType;
        this.drawerExpandAllFolder = z3;
        this.messageListSettings = displayMessageListSettings;
        this.isMessageViewArchiveActionVisible = z4;
        this.isMessageViewDeleteActionVisible = z5;
        this.isMessageViewMoveActionVisible = z6;
        this.isMessageViewCopyActionVisible = z7;
        this.isMessageViewSpamActionVisible = z8;
    }
}
