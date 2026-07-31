package androidx.core.backported.fixes;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Status {
    public static final /* synthetic */ Status[] $VALUES;
    public static final Status Fixed;
    public static final Status NotApplicable;
    public static final Status NotFixed;

    /* JADX INFO: Fake field, exist only in values array */
    Status EF0;

    static {
        Status status = new Status("Unknown", 0);
        Status status2 = new Status("Fixed", 1);
        Fixed = status2;
        Status status3 = new Status("NotApplicable", 2);
        NotApplicable = status3;
        Status status4 = new Status("NotFixed", 3);
        NotFixed = status4;
        $VALUES = new Status[]{status, status2, status3, status4};
    }

    public static Status valueOf(String str) {
        return (Status) Enum.valueOf(Status.class, str);
    }

    public static Status[] values() {
        return (Status[]) $VALUES.clone();
    }
}
