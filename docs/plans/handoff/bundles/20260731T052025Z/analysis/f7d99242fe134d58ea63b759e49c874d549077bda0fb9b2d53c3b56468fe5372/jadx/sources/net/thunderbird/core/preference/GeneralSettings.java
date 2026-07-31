package net.thunderbird.core.preference;

import kotlin.jvm.internal.Intrinsics;
import net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider;
import net.thunderbird.core.preference.debugging.DebuggingSettings;
import net.thunderbird.core.preference.display.DisplaySettings;
import net.thunderbird.core.preference.interaction.InteractionSettings;
import net.thunderbird.core.preference.network.NetworkSettings;
import net.thunderbird.core.preference.notification.NotificationPreference;
import net.thunderbird.core.preference.privacy.PrivacySettings;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GeneralSettings {
    public final DebuggingSettings debugging;
    public final DisplaySettings display;
    public final InteractionSettings interaction;
    public final NetworkSettings network;
    public final NotificationPreference notification;
    public final AndroidPlatformConfigProvider platformConfigProvider;
    public final PrivacySettings privacy;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GeneralSettings(net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider r20, net.thunderbird.core.preference.privacy.PrivacySettings r21, int r22) {
        /*
            r19 = this;
            net.thunderbird.core.preference.network.NetworkSettings r2 = new net.thunderbird.core.preference.network.NetworkSettings
            net.thunderbird.core.preference.BackgroundOps r0 = net.thunderbird.core.preference.network.NetworkSettingsKt.NETWORK_SETTINGS_DEFAULT_BACKGROUND_OPS
            r2.<init>(r0)
            net.thunderbird.core.preference.notification.NotificationPreference r3 = new net.thunderbird.core.preference.notification.NotificationPreference
            java.util.List r8 = net.thunderbird.core.preference.notification.NotificationPreferenceKt.NOTIFICATION_PREFERENCE_DEFAULT_MESSAGE_ACTIONS_ORDER
            net.thunderbird.core.preference.NotificationQuickDelete r12 = net.thunderbird.core.preference.notification.NotificationPreferenceKt.NOTIFICATION_PREFERENCE_DEFAULT_QUICK_DELETE_BEHAVIOUR
            net.thunderbird.core.preference.LockScreenNotificationVisibility r13 = net.thunderbird.core.preference.notification.NotificationPreferenceKt.NOTIFICATION_PREFERENCE_DEFAULT_LOCK_SCREEN_NOTIFICATION_VISIBILITY
            r4 = 0
            java.lang.String r5 = "21:00"
            java.lang.String r6 = "7:00"
            r7 = 1
            r9 = 3
            r10 = 1
            r11 = 1
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13)
            net.thunderbird.core.preference.display.DisplaySettings r4 = new net.thunderbird.core.preference.display.DisplaySettings
            net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings r5 = new net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettings
            net.thunderbird.core.preference.AppTheme r7 = net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_APP_THEME
            net.thunderbird.core.preference.SubTheme r8 = net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_MESSAGE_VIEW_THEME
            net.thunderbird.core.preference.SubTheme r9 = net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_MESSAGE_COMPOSE_THEME
            java.lang.String r10 = ""
            net.thunderbird.core.preference.SplitViewMode r11 = net.thunderbird.core.preference.display.coreSettings.DisplayCoreSettingsKt.DISPLAY_SETTINGS_DEFAULT_SPLIT_VIEW_MODE
            r6 = 1
            r5.<init>(r6, r7, r8, r9, r10, r11)
            net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings r6 = new net.thunderbird.core.preference.display.inboxSettings.DisplayInboxSettings
            r11 = 1
            r12 = 1
            r7 = 0
            r8 = 0
            r9 = 1
            r10 = 0
            r6.<init>(r7, r8, r9, r10, r11, r12)
            net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings r7 = new net.thunderbird.core.preference.display.visualSettings.DisplayVisualSettings
            r17 = 0
            r18 = 2047(0x7ff, float:2.868E-42)
            r8 = 0
            r9 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18)
            net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings r0 = new net.thunderbird.core.preference.display.miscSettings.DisplayMiscSettings
            r1 = 1
            r0.<init>(r1, r1)
            r4.<init>(r5, r6, r7, r0)
            r0 = r22 & 16
            r1 = 0
            if (r0 == 0) goto L5f
            net.thunderbird.core.preference.privacy.PrivacySettings r0 = new net.thunderbird.core.preference.privacy.PrivacySettings
            r0.<init>(r1, r1)
            r5 = r0
            goto L61
        L5f:
            r5 = r21
        L61:
            net.thunderbird.core.preference.debugging.DebuggingSettings r6 = new net.thunderbird.core.preference.debugging.DebuggingSettings
            r20.getClass()
            r6.<init>(r1, r1, r1)
            net.thunderbird.core.preference.interaction.InteractionSettings r7 = new net.thunderbird.core.preference.interaction.InteractionSettings
            net.thunderbird.core.preference.interaction.PostMarkAsUnreadNavigation r10 = net.thunderbird.core.preference.interaction.InteractionSettingsKt.INTERACTION_SETTINGS_DEFAULT_MESSAGE_VIEW_POST_MARK_AS_UNREAD_NAVIGATION
            net.thunderbird.core.common.action.SwipeActions r11 = net.thunderbird.core.preference.interaction.InteractionSettingsKt.INTERACTION_SETTINGS_DEFAULT_SWIPE_ACTION
            r16 = 1
            r17 = 1
            r8 = 0
            java.lang.String r9 = "ReturnToMessageList"
            r12 = 0
            r13 = 0
            r14 = 1
            r15 = 0
            r7.<init>(r8, r9, r10, r11, r12, r13, r14, r15, r16, r17)
            r0 = r19
            r1 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.core.preference.GeneralSettings.<init>(net.thunderbird.app.common.appConfig.AndroidPlatformConfigProvider, net.thunderbird.core.preference.privacy.PrivacySettings, int):void");
    }

    public static GeneralSettings copy$default(GeneralSettings generalSettings, NetworkSettings networkSettings, NotificationPreference notificationPreference, DisplaySettings displaySettings, PrivacySettings privacySettings, DebuggingSettings debuggingSettings, InteractionSettings interactionSettings, int i) {
        NetworkSettings networkSettings2 = networkSettings;
        AndroidPlatformConfigProvider androidPlatformConfigProvider = generalSettings.platformConfigProvider;
        if ((i & 2) != 0) {
            networkSettings2 = generalSettings.network;
        }
        if ((i & 4) != 0) {
            notificationPreference = generalSettings.notification;
        }
        if ((i & 8) != 0) {
            displaySettings = generalSettings.display;
        }
        if ((i & 16) != 0) {
            privacySettings = generalSettings.privacy;
        }
        if ((i & 32) != 0) {
            debuggingSettings = generalSettings.debugging;
        }
        if ((i & 64) != 0) {
            interactionSettings = generalSettings.interaction;
        }
        InteractionSettings interactionSettings2 = interactionSettings;
        generalSettings.getClass();
        androidPlatformConfigProvider.getClass();
        networkSettings2.getClass();
        notificationPreference.getClass();
        displaySettings.getClass();
        privacySettings.getClass();
        debuggingSettings.getClass();
        interactionSettings2.getClass();
        DebuggingSettings debuggingSettings2 = debuggingSettings;
        PrivacySettings privacySettings2 = privacySettings;
        DisplaySettings displaySettings2 = displaySettings;
        return new GeneralSettings(androidPlatformConfigProvider, networkSettings2, notificationPreference, displaySettings2, privacySettings2, debuggingSettings2, interactionSettings2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GeneralSettings)) {
            return false;
        }
        GeneralSettings generalSettings = (GeneralSettings) obj;
        return Intrinsics.areEqual(this.platformConfigProvider, generalSettings.platformConfigProvider) && Intrinsics.areEqual(this.network, generalSettings.network) && Intrinsics.areEqual(this.notification, generalSettings.notification) && Intrinsics.areEqual(this.display, generalSettings.display) && Intrinsics.areEqual(this.privacy, generalSettings.privacy) && Intrinsics.areEqual(this.debugging, generalSettings.debugging) && Intrinsics.areEqual(this.interaction, generalSettings.interaction);
    }

    public final int hashCode() {
        return this.interaction.hashCode() + ((this.debugging.hashCode() + ((this.privacy.hashCode() + ((this.display.hashCode() + ((this.notification.hashCode() + ((this.network.backgroundOps.hashCode() + (this.platformConfigProvider.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "GeneralSettings(platformConfigProvider=" + this.platformConfigProvider + ", network=" + this.network + ", notification=" + this.notification + ", display=" + this.display + ", privacy=" + this.privacy + ", debugging=" + this.debugging + ", interaction=" + this.interaction + ")";
    }

    public GeneralSettings(AndroidPlatformConfigProvider androidPlatformConfigProvider, NetworkSettings networkSettings, NotificationPreference notificationPreference, DisplaySettings displaySettings, PrivacySettings privacySettings, DebuggingSettings debuggingSettings, InteractionSettings interactionSettings) {
        androidPlatformConfigProvider.getClass();
        privacySettings.getClass();
        this.platformConfigProvider = androidPlatformConfigProvider;
        this.network = networkSettings;
        this.notification = notificationPreference;
        this.display = displaySettings;
        this.privacy = privacySettings;
        this.debugging = debuggingSettings;
        this.interaction = interactionSettings;
    }
}
