package net.thunderbird.core.android.account;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ShowPictures {
    public static final /* synthetic */ ShowPictures[] $VALUES;
    public static final ShowPictures ALWAYS;
    public static final ShowPictures NEVER;
    public static final ShowPictures ONLY_FROM_CONTACTS;

    static {
        ShowPictures showPictures = new ShowPictures("NEVER", 0);
        NEVER = showPictures;
        ShowPictures showPictures2 = new ShowPictures("ALWAYS", 1);
        ALWAYS = showPictures2;
        ShowPictures showPictures3 = new ShowPictures("ONLY_FROM_CONTACTS", 2);
        ONLY_FROM_CONTACTS = showPictures3;
        $VALUES = new ShowPictures[]{showPictures, showPictures2, showPictures3};
    }

    public static ShowPictures valueOf(String str) {
        return (ShowPictures) Enum.valueOf(ShowPictures.class, str);
    }

    public static ShowPictures[] values() {
        return (ShowPictures[]) $VALUES.clone();
    }
}
