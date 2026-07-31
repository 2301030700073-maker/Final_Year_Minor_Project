package org.koin.core.definition;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Kind {
    public static final /* synthetic */ Kind[] $VALUES;
    public static final Kind Factory;
    public static final Kind Singleton;

    static {
        Kind kind = new Kind("Singleton", 0);
        Singleton = kind;
        Kind kind2 = new Kind("Factory", 1);
        Factory = kind2;
        $VALUES = new Kind[]{kind, kind2, new Kind("Scoped", 2)};
    }

    public static Kind valueOf(String str) {
        return (Kind) Enum.valueOf(Kind.class, str);
    }

    public static Kind[] values() {
        return (Kind[]) $VALUES.clone();
    }
}
