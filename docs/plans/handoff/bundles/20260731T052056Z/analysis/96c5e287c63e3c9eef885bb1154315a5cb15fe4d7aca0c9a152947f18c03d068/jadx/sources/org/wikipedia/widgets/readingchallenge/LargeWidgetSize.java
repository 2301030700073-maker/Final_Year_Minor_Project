package org.wikipedia.widgets.readingchallenge;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LargeWidgetSize {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LargeWidgetSize[] $VALUES;
    public static final LargeWidgetSize COMPACT;
    public static final Companion Companion;
    public static final LargeWidgetSize EXTRA_COMPACT;
    public static final LargeWidgetSize FULL;
    public static final LargeWidgetSize TINY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        /* renamed from: from-EaSLcWc, reason: not valid java name */
        public static LargeWidgetSize m921fromEaSLcWc(long j) {
            return Dp.m692compareTo0680j_4(DpSize.m711getHeightD9Ej5fM(j), 140.0f) <= 0 ? LargeWidgetSize.TINY : Dp.m692compareTo0680j_4(DpSize.m711getHeightD9Ej5fM(j), 176.0f) <= 0 ? LargeWidgetSize.EXTRA_COMPACT : Dp.m692compareTo0680j_4(DpSize.m711getHeightD9Ej5fM(j), 230.0f) <= 0 ? LargeWidgetSize.COMPACT : LargeWidgetSize.FULL;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LargeWidgetSize.values().length];
            try {
                iArr[LargeWidgetSize.TINY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LargeWidgetSize.EXTRA_COMPACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LargeWidgetSize.COMPACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LargeWidgetSize.FULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        LargeWidgetSize largeWidgetSize = new LargeWidgetSize("TINY", 0);
        TINY = largeWidgetSize;
        LargeWidgetSize largeWidgetSize2 = new LargeWidgetSize("EXTRA_COMPACT", 1);
        EXTRA_COMPACT = largeWidgetSize2;
        LargeWidgetSize largeWidgetSize3 = new LargeWidgetSize("COMPACT", 2);
        COMPACT = largeWidgetSize3;
        LargeWidgetSize largeWidgetSize4 = new LargeWidgetSize("FULL", 3);
        FULL = largeWidgetSize4;
        LargeWidgetSize[] largeWidgetSizeArr = {largeWidgetSize, largeWidgetSize2, largeWidgetSize3, largeWidgetSize4};
        $VALUES = largeWidgetSizeArr;
        $ENTRIES = new EnumEntriesList(largeWidgetSizeArr);
        Companion = new Companion();
    }

    public static LargeWidgetSize valueOf(String str) {
        return (LargeWidgetSize) Enum.valueOf(LargeWidgetSize.class, str);
    }

    public static LargeWidgetSize[] values() {
        return (LargeWidgetSize[]) $VALUES.clone();
    }

    /* renamed from: getExpandedMascotSize-D9Ej5fM, reason: not valid java name */
    public final float m914getExpandedMascotSizeD9Ej5fM() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return 48.0f;
        }
        if (i == 2) {
            return 64.0f;
        }
        if (i == 3) {
            return 95.0f;
        }
        if (i == 4) {
            return 120.0f;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return RecyclerView.DECELERATION_RATE;
    }

    /* renamed from: getRightColumnExtraSpace-D9Ej5fM, reason: not valid java name */
    public final float m915getRightColumnExtraSpaceD9Ej5fM() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1 || i == 2) {
            return 8.0f;
        }
        if (i == 3 || i == 4) {
            return 18.0f;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return RecyclerView.DECELERATION_RATE;
    }

    /* renamed from: getSideMascotSize-D9Ej5fM, reason: not valid java name */
    public final float m916getSideMascotSizeD9Ej5fM() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return 40.0f;
        }
        if (i == 2) {
            return 60.0f;
        }
        if (i == 3) {
            return 80.0f;
        }
        if (i == 4) {
            return 100.0f;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return RecyclerView.DECELERATION_RATE;
    }

    /* renamed from: getStreakBadgeIconSize-D9Ej5fM, reason: not valid java name */
    public final float m917getStreakBadgeIconSizeD9Ej5fM() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return 22.0f;
        }
        if (i == 2) {
            return 28.0f;
        }
        if (i == 3) {
            return 36.0f;
        }
        if (i == 4) {
            return 40.0f;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return RecyclerView.DECELERATION_RATE;
    }

    /* renamed from: getStreakBadgeTextSize-XSAIIZE, reason: not valid java name */
    public final long m918getStreakBadgeTextSizeXSAIIZE() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return ContextsKt.getSp(18);
        }
        if (i == 2) {
            return ContextsKt.getSp(20);
        }
        if (i == 3) {
            return ContextsKt.getSp(26);
        }
        if (i == 4) {
            return ContextsKt.getSp(32);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return 0L;
    }

    /* renamed from: getSubtitleTextSize-XSAIIZE, reason: not valid java name */
    public final long m919getSubtitleTextSizeXSAIIZE() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return ContextsKt.getSp(12);
        }
        if (i == 2 || i == 3) {
            return ContextsKt.getSp(14);
        }
        if (i == 4) {
            return ContextsKt.getSp(16);
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return 0L;
    }

    /* renamed from: getTitleBarIconSize-D9Ej5fM, reason: not valid java name */
    public final float m920getTitleBarIconSizeD9Ej5fM() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return 22.0f;
        }
        if (i == 2) {
            return 24.0f;
        }
        if (i == 3) {
            return 32.0f;
        }
        if (i == 4) {
            return 36.0f;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m();
        return RecyclerView.DECELERATION_RATE;
    }
}
