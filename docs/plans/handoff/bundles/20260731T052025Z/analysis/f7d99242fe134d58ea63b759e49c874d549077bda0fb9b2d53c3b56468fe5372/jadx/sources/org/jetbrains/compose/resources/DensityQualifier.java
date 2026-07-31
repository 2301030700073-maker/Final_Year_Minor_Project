package org.jetbrains.compose.resources;

import com.bumptech.glide.load.Option;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DensityQualifier implements Qualifier {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DensityQualifier[] $VALUES;
    public static final Option.AnonymousClass1 Companion;
    public static final DensityQualifier HDPI;
    public static final DensityQualifier LDPI;
    public static final DensityQualifier MDPI;
    public static final DensityQualifier XHDPI;
    public static final DensityQualifier XXHDPI;
    public static final DensityQualifier XXXHDPI;
    public final int dpi;

    static {
        DensityQualifier densityQualifier = new DensityQualifier("LDPI", 0, 120);
        LDPI = densityQualifier;
        DensityQualifier densityQualifier2 = new DensityQualifier("MDPI", 1, 160);
        MDPI = densityQualifier2;
        DensityQualifier densityQualifier3 = new DensityQualifier("HDPI", 2, 240);
        HDPI = densityQualifier3;
        DensityQualifier densityQualifier4 = new DensityQualifier("XHDPI", 3, 320);
        XHDPI = densityQualifier4;
        DensityQualifier densityQualifier5 = new DensityQualifier("XXHDPI", 4, 480);
        XXHDPI = densityQualifier5;
        DensityQualifier densityQualifier6 = new DensityQualifier("XXXHDPI", 5, 640);
        XXXHDPI = densityQualifier6;
        DensityQualifier[] densityQualifierArr = {densityQualifier, densityQualifier2, densityQualifier3, densityQualifier4, densityQualifier5, densityQualifier6};
        $VALUES = densityQualifierArr;
        $ENTRIES = new EnumEntriesList(densityQualifierArr);
        Companion = new Option.AnonymousClass1();
    }

    public DensityQualifier(String str, int i, int i2) {
        this.dpi = i2;
    }

    public static DensityQualifier valueOf(String str) {
        return (DensityQualifier) Enum.valueOf(DensityQualifier.class, str);
    }

    public static DensityQualifier[] values() {
        return (DensityQualifier[]) $VALUES.clone();
    }
}
