package com.skydoves.balloon;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ArrowOrientation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ArrowOrientation[] $VALUES;
    public static final ArrowOrientation BOTTOM;
    public static final Companion Companion;
    public static final ArrowOrientation END;
    public static final ArrowOrientation START;
    public static final ArrowOrientation TOP;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ArrowOrientation.values().length];
                try {
                    iArr[ArrowOrientation.START.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ArrowOrientation.END.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }
    }

    static {
        ArrowOrientation arrowOrientation = new ArrowOrientation("BOTTOM", 0);
        BOTTOM = arrowOrientation;
        ArrowOrientation arrowOrientation2 = new ArrowOrientation("TOP", 1);
        TOP = arrowOrientation2;
        ArrowOrientation arrowOrientation3 = new ArrowOrientation("START", 2);
        START = arrowOrientation3;
        ArrowOrientation arrowOrientation4 = new ArrowOrientation("END", 3);
        END = arrowOrientation4;
        ArrowOrientation[] arrowOrientationArr = {arrowOrientation, arrowOrientation2, arrowOrientation3, arrowOrientation4};
        $VALUES = arrowOrientationArr;
        $ENTRIES = new EnumEntriesList(arrowOrientationArr);
        Companion = new Companion();
    }

    public static ArrowOrientation valueOf(String str) {
        return (ArrowOrientation) Enum.valueOf(ArrowOrientation.class, str);
    }

    public static ArrowOrientation[] values() {
        return (ArrowOrientation[]) $VALUES.clone();
    }
}
