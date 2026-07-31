package app.k9mail.feature.account.common.domain.entity;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InteractionMode {
    public static final /* synthetic */ InteractionMode[] $VALUES;
    public static final InteractionMode Create;
    public static final InteractionMode Edit;

    static {
        InteractionMode interactionMode = new InteractionMode("Create", 0);
        Create = interactionMode;
        InteractionMode interactionMode2 = new InteractionMode("Edit", 1);
        Edit = interactionMode2;
        $VALUES = new InteractionMode[]{interactionMode, interactionMode2};
    }

    public static InteractionMode valueOf(String str) {
        return (InteractionMode) Enum.valueOf(InteractionMode.class, str);
    }

    public static InteractionMode[] values() {
        return (InteractionMode[]) $VALUES.clone();
    }
}
