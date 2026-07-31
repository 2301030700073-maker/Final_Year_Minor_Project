package net.thunderbird.core.preference.interaction;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PostMarkAsUnreadNavigation {
    public static final /* synthetic */ PostMarkAsUnreadNavigation[] $VALUES;
    public static final PostMarkAsUnreadNavigation ReturnToMessageList;

    /* JADX INFO: Fake field, exist only in values array */
    PostMarkAsUnreadNavigation EF0;

    static {
        PostMarkAsUnreadNavigation postMarkAsUnreadNavigation = new PostMarkAsUnreadNavigation("StayOnCurrentMessage", 0);
        PostMarkAsUnreadNavigation postMarkAsUnreadNavigation2 = new PostMarkAsUnreadNavigation("ReturnToMessageList", 1);
        ReturnToMessageList = postMarkAsUnreadNavigation2;
        $VALUES = new PostMarkAsUnreadNavigation[]{postMarkAsUnreadNavigation, postMarkAsUnreadNavigation2};
    }

    public static PostMarkAsUnreadNavigation valueOf(String str) {
        return (PostMarkAsUnreadNavigation) Enum.valueOf(PostMarkAsUnreadNavigation.class, str);
    }

    public static PostMarkAsUnreadNavigation[] values() {
        return (PostMarkAsUnreadNavigation[]) $VALUES.clone();
    }
}
