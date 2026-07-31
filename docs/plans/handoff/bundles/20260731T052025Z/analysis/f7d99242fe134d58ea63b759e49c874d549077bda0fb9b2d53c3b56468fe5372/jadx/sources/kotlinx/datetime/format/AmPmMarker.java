package kotlinx.datetime.format;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AmPmMarker {
    public static final /* synthetic */ AmPmMarker[] $VALUES;
    public static final AmPmMarker AM;
    public static final AmPmMarker PM;

    static {
        AmPmMarker amPmMarker = new AmPmMarker("AM", 0);
        AM = amPmMarker;
        AmPmMarker amPmMarker2 = new AmPmMarker("PM", 1);
        PM = amPmMarker2;
        $VALUES = new AmPmMarker[]{amPmMarker, amPmMarker2};
    }

    public static AmPmMarker valueOf(String str) {
        return (AmPmMarker) Enum.valueOf(AmPmMarker.class, str);
    }

    public static AmPmMarker[] values() {
        return (AmPmMarker[]) $VALUES.clone();
    }
}
