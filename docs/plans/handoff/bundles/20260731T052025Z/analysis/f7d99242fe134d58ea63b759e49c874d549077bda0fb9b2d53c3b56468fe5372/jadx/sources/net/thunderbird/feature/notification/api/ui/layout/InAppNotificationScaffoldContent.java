package net.thunderbird.feature.notification.api.ui.layout;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InAppNotificationScaffoldContent {
    public static final /* synthetic */ InAppNotificationScaffoldContent[] $VALUES;
    public static final InAppNotificationScaffoldContent BannerGlobal;
    public static final InAppNotificationScaffoldContent BannerInlineList;
    public static final InAppNotificationScaffoldContent MainContent;

    static {
        InAppNotificationScaffoldContent inAppNotificationScaffoldContent = new InAppNotificationScaffoldContent("BannerGlobal", 0);
        BannerGlobal = inAppNotificationScaffoldContent;
        InAppNotificationScaffoldContent inAppNotificationScaffoldContent2 = new InAppNotificationScaffoldContent("BannerInlineList", 1);
        BannerInlineList = inAppNotificationScaffoldContent2;
        InAppNotificationScaffoldContent inAppNotificationScaffoldContent3 = new InAppNotificationScaffoldContent("MainContent", 2);
        MainContent = inAppNotificationScaffoldContent3;
        $VALUES = new InAppNotificationScaffoldContent[]{inAppNotificationScaffoldContent, inAppNotificationScaffoldContent2, inAppNotificationScaffoldContent3};
    }

    public static InAppNotificationScaffoldContent valueOf(String str) {
        return (InAppNotificationScaffoldContent) Enum.valueOf(InAppNotificationScaffoldContent.class, str);
    }

    public static InAppNotificationScaffoldContent[] values() {
        return (InAppNotificationScaffoldContent[]) $VALUES.clone();
    }
}
