package net.thunderbird.feature.notification.api.ui.host;

import com.mikepenz.fastadapter.VerboseLogger;
import kotlin.enums.EnumEntriesList;
import kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DisplayInAppNotificationFlag {
    public static final /* synthetic */ DisplayInAppNotificationFlag[] $VALUES;
    public static final PersistentOrderedSet AllNotifications;
    public static final DisplayInAppNotificationFlag BannerGlobalNotifications;
    public static final DisplayInAppNotificationFlag BannerInlineNotifications;
    public static final VerboseLogger Companion;
    public static final DisplayInAppNotificationFlag SnackbarNotifications;

    static {
        DisplayInAppNotificationFlag displayInAppNotificationFlag = new DisplayInAppNotificationFlag("BannerGlobalNotifications", 0);
        BannerGlobalNotifications = displayInAppNotificationFlag;
        DisplayInAppNotificationFlag displayInAppNotificationFlag2 = new DisplayInAppNotificationFlag("BannerInlineNotifications", 1);
        BannerInlineNotifications = displayInAppNotificationFlag2;
        DisplayInAppNotificationFlag displayInAppNotificationFlag3 = new DisplayInAppNotificationFlag("SnackbarNotifications", 2);
        SnackbarNotifications = displayInAppNotificationFlag3;
        DisplayInAppNotificationFlag[] displayInAppNotificationFlagArr = {displayInAppNotificationFlag, displayInAppNotificationFlag2, displayInAppNotificationFlag3};
        $VALUES = displayInAppNotificationFlagArr;
        EnumEntriesList enumEntriesList = new EnumEntriesList(displayInAppNotificationFlagArr);
        Companion = new VerboseLogger();
        AllNotifications = Okio.toPersistentSet(enumEntriesList);
    }

    public static DisplayInAppNotificationFlag valueOf(String str) {
        return (DisplayInAppNotificationFlag) Enum.valueOf(DisplayInAppNotificationFlag.class, str);
    }

    public static DisplayInAppNotificationFlag[] values() {
        return (DisplayInAppNotificationFlag[]) $VALUES.clone();
    }
}
