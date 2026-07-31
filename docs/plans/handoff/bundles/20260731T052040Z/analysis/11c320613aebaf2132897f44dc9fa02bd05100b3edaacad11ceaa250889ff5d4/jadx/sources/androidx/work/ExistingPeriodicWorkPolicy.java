package androidx.work;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ExistingPeriodicWorkPolicy {
    public static final /* synthetic */ ExistingPeriodicWorkPolicy[] $VALUES;
    public static final ExistingPeriodicWorkPolicy CANCEL_AND_REENQUEUE;
    public static final ExistingPeriodicWorkPolicy KEEP;
    public static final ExistingPeriodicWorkPolicy UPDATE;

    /* JADX INFO: Fake field, exist only in values array */
    ExistingPeriodicWorkPolicy EF0;

    static {
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy = new ExistingPeriodicWorkPolicy("REPLACE", 0);
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy2 = new ExistingPeriodicWorkPolicy("KEEP", 1);
        KEEP = existingPeriodicWorkPolicy2;
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy3 = new ExistingPeriodicWorkPolicy("UPDATE", 2);
        UPDATE = existingPeriodicWorkPolicy3;
        ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy4 = new ExistingPeriodicWorkPolicy("CANCEL_AND_REENQUEUE", 3);
        CANCEL_AND_REENQUEUE = existingPeriodicWorkPolicy4;
        $VALUES = new ExistingPeriodicWorkPolicy[]{existingPeriodicWorkPolicy, existingPeriodicWorkPolicy2, existingPeriodicWorkPolicy3, existingPeriodicWorkPolicy4};
    }

    public static ExistingPeriodicWorkPolicy valueOf(String str) {
        return (ExistingPeriodicWorkPolicy) Enum.valueOf(ExistingPeriodicWorkPolicy.class, str);
    }

    public static ExistingPeriodicWorkPolicy[] values() {
        return (ExistingPeriodicWorkPolicy[]) $VALUES.clone();
    }
}
