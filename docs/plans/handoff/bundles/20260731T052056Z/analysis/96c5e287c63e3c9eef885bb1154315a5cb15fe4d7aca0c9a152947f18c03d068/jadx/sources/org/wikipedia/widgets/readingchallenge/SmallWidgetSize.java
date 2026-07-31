package org.wikipedia.widgets.readingchallenge;

import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpSize;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesList;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SmallWidgetSize {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ SmallWidgetSize[] $VALUES;
    public static final SmallWidgetSize COMPACT;
    public static final Companion Companion;
    public static final SmallWidgetSize EXTRA_COMPACT;
    public static final SmallWidgetSize FULL;
    public static final SmallWidgetSize TINY;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {
        /* renamed from: from-EaSLcWc, reason: not valid java name */
        public static SmallWidgetSize m924fromEaSLcWc(long j) {
            float f = ((Dp) Operation$State.minOf(new Dp(DpSize.m712getWidthD9Ej5fM(j)), new Dp(DpSize.m711getHeightD9Ej5fM(j)))).value;
            return Dp.m692compareTo0680j_4(f, 140.0f) <= 0 ? SmallWidgetSize.TINY : Dp.m692compareTo0680j_4(f, 176.0f) <= 0 ? SmallWidgetSize.EXTRA_COMPACT : Dp.m692compareTo0680j_4(f, 230.0f) <= 0 ? SmallWidgetSize.COMPACT : SmallWidgetSize.FULL;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SmallWidgetSize.values().length];
            try {
                iArr[SmallWidgetSize.TINY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SmallWidgetSize.EXTRA_COMPACT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SmallWidgetSize.COMPACT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[SmallWidgetSize.FULL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    static {
        SmallWidgetSize smallWidgetSize = new SmallWidgetSize("TINY", 0);
        TINY = smallWidgetSize;
        SmallWidgetSize smallWidgetSize2 = new SmallWidgetSize("EXTRA_COMPACT", 1);
        EXTRA_COMPACT = smallWidgetSize2;
        SmallWidgetSize smallWidgetSize3 = new SmallWidgetSize("COMPACT", 2);
        COMPACT = smallWidgetSize3;
        SmallWidgetSize smallWidgetSize4 = new SmallWidgetSize("FULL", 3);
        FULL = smallWidgetSize4;
        SmallWidgetSize[] smallWidgetSizeArr = {smallWidgetSize, smallWidgetSize2, smallWidgetSize3, smallWidgetSize4};
        $VALUES = smallWidgetSizeArr;
        $ENTRIES = new EnumEntriesList(smallWidgetSizeArr);
        Companion = new Companion();
    }

    public static SmallWidgetSize valueOf(String str) {
        return (SmallWidgetSize) Enum.valueOf(SmallWidgetSize.class, str);
    }

    public static SmallWidgetSize[] values() {
        return (SmallWidgetSize[]) $VALUES.clone();
    }

    /* renamed from: getBadgeIconSize-D9Ej5fM, reason: not valid java name */
    public final float m922getBadgeIconSizeD9Ej5fM() {
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

    /* renamed from: getBadgeTextSize-XSAIIZE, reason: not valid java name */
    public final long m923getBadgeTextSizeXSAIIZE() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return ContextsKt.getSp(18);
        }
        if (i == 2) {
            return ContextsKt.getSp(22);
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
}
