package app.k9mail.core.ui.compose.designsystem.organism.banner.inline;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineNotificationCardBehaviour {
    public static final /* synthetic */ BannerInlineNotificationCardBehaviour[] $VALUES;
    public static final BannerInlineNotificationCardBehaviour Clipped;
    public static final BannerInlineNotificationCardBehaviour Expanded;

    static {
        BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour = new BannerInlineNotificationCardBehaviour("Clipped", 0);
        Clipped = bannerInlineNotificationCardBehaviour;
        BannerInlineNotificationCardBehaviour bannerInlineNotificationCardBehaviour2 = new BannerInlineNotificationCardBehaviour("Expanded", 1);
        Expanded = bannerInlineNotificationCardBehaviour2;
        $VALUES = new BannerInlineNotificationCardBehaviour[]{bannerInlineNotificationCardBehaviour, bannerInlineNotificationCardBehaviour2};
    }

    public static BannerInlineNotificationCardBehaviour valueOf(String str) {
        return (BannerInlineNotificationCardBehaviour) Enum.valueOf(BannerInlineNotificationCardBehaviour.class, str);
    }

    public static BannerInlineNotificationCardBehaviour[] values() {
        return (BannerInlineNotificationCardBehaviour[]) $VALUES.clone();
    }
}
