package net.thunderbird.core.preference.interaction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PostRemoveNavigation {
    public static final /* synthetic */ PostRemoveNavigation[] $VALUES;
    public static final PostRemoveNavigation ReturnToMessageList;

    static {
        PostRemoveNavigation postRemoveNavigation = new PostRemoveNavigation("ReturnToMessageList", 0);
        ReturnToMessageList = postRemoveNavigation;
        $VALUES = new PostRemoveNavigation[]{postRemoveNavigation, new PostRemoveNavigation("ShowPreviousMessage", 1), new PostRemoveNavigation("ShowNextMessage", 2)};
    }

    public static PostRemoveNavigation valueOf(String str) {
        return (PostRemoveNavigation) Enum.valueOf(PostRemoveNavigation.class, str);
    }

    public static PostRemoveNavigation[] values() {
        return (PostRemoveNavigation[]) $VALUES.clone();
    }
}
