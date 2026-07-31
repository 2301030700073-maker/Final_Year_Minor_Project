package net.thunderbird.feature.changelog.internal;

import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeType {
    public static final /* synthetic */ ChangeType[] $VALUES;
    public static final ChangeType CHANGED;
    public static final ChangeType FIXED;
    public static final ChangeType NEW;

    static {
        ChangeType changeType = new ChangeType("NEW", 0);
        NEW = changeType;
        ChangeType changeType2 = new ChangeType("FIXED", 1);
        FIXED = changeType2;
        ChangeType changeType3 = new ChangeType("CHANGED", 2);
        CHANGED = changeType3;
        $VALUES = new ChangeType[]{changeType, changeType2, changeType3};
    }

    public static ChangeType valueOf(String str) {
        return (ChangeType) Enum.valueOf(ChangeType.class, str);
    }

    public static ChangeType[] values() {
        return (ChangeType[]) $VALUES.clone();
    }

    public final String asPrefix() {
        return this + ":";
    }

    @Override // java.lang.Enum
    public final String toString() {
        String name = name();
        Locale locale = Locale.ROOT;
        String lowerCase = name.toLowerCase(locale);
        lowerCase.getClass();
        if (lowerCase.length() <= 0) {
            return lowerCase;
        }
        StringBuilder sb = new StringBuilder();
        String valueOf = String.valueOf(lowerCase.charAt(0));
        valueOf.getClass();
        String upperCase = valueOf.toUpperCase(locale);
        upperCase.getClass();
        sb.append((Object) upperCase);
        sb.append(lowerCase.substring(1));
        return sb.toString();
    }
}
