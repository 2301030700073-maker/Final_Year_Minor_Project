package j$.nio.file;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class StandardCopyOption implements CopyOption {
    public static final StandardCopyOption ATOMIC_MOVE;
    public static final StandardCopyOption COPY_ATTRIBUTES;
    public static final StandardCopyOption REPLACE_EXISTING;
    public static final /* synthetic */ StandardCopyOption[] a;

    static {
        StandardCopyOption standardCopyOption = new StandardCopyOption("REPLACE_EXISTING", 0);
        REPLACE_EXISTING = standardCopyOption;
        StandardCopyOption standardCopyOption2 = new StandardCopyOption("COPY_ATTRIBUTES", 1);
        COPY_ATTRIBUTES = standardCopyOption2;
        StandardCopyOption standardCopyOption3 = new StandardCopyOption("ATOMIC_MOVE", 2);
        ATOMIC_MOVE = standardCopyOption3;
        a = new StandardCopyOption[]{standardCopyOption, standardCopyOption2, standardCopyOption3};
    }

    public static StandardCopyOption valueOf(String str) {
        return (StandardCopyOption) Enum.valueOf(StandardCopyOption.class, str);
    }

    public static StandardCopyOption[] values() {
        return (StandardCopyOption[]) a.clone();
    }
}
