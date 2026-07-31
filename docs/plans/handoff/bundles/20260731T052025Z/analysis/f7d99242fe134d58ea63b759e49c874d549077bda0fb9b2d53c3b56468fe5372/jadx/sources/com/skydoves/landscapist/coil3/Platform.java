package com.skydoves.landscapist.coil3;

import kotlin.enums.EnumEntries;
import okio.Okio;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Platform {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Platform[] $VALUES;
    public static final Platform Android = new Platform("Android", 0);
    public static final Platform NonAndroid = new Platform("NonAndroid", 1);

    private static final /* synthetic */ Platform[] $values() {
        return new Platform[]{Android, NonAndroid};
    }

    static {
        Platform[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Okio.enumEntries($values);
    }

    private Platform(String str, int i) {
    }

    public static EnumEntries getEntries() {
        return $ENTRIES;
    }

    public static Platform valueOf(String str) {
        return (Platform) Enum.valueOf(Platform.class, str);
    }

    public static Platform[] values() {
        return (Platform[]) $VALUES.clone();
    }
}
