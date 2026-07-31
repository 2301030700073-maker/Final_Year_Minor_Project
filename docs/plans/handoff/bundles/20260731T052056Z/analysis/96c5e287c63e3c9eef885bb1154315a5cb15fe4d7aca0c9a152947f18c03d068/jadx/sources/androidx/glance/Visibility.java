package androidx.glance;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Visibility {
    private static final /* synthetic */ Visibility[] $VALUES;
    public static final Visibility Gone;
    public static final Visibility Invisible;
    public static final Visibility Visible;

    static {
        Visibility visibility = new Visibility("Visible", 0);
        Visible = visibility;
        Visibility visibility2 = new Visibility("Invisible", 1);
        Invisible = visibility2;
        Visibility visibility3 = new Visibility("Gone", 2);
        Gone = visibility3;
        $VALUES = new Visibility[]{visibility, visibility2, visibility3};
    }

    public static Visibility valueOf(String str) {
        return (Visibility) Enum.valueOf(Visibility.class, str);
    }

    public static Visibility[] values() {
        return (Visibility[]) $VALUES.clone();
    }
}
