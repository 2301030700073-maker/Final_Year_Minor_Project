package androidx.compose.ui.graphics;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: FilterQuality.kt */
/* loaded from: classes.dex */
public abstract class FilterQuality {
    public static final Companion Companion = new Companion(null);
    private static final int None = m1333constructorimpl(0);
    private static final int Low = m1333constructorimpl(1);
    private static final int Medium = m1333constructorimpl(2);
    private static final int High = m1333constructorimpl(3);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1333constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1334equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m1335hashCodeimpl(int i) {
        return i;
    }

    /* compiled from: FilterQuality.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getNone-f-v9h1I, reason: not valid java name */
        public final int m1338getNonefv9h1I() {
            return FilterQuality.None;
        }

        /* renamed from: getLow-f-v9h1I, reason: not valid java name */
        public final int m1337getLowfv9h1I() {
            return FilterQuality.Low;
        }
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m1336toStringimpl(int i) {
        return m1334equalsimpl0(i, None) ? "None" : m1334equalsimpl0(i, Low) ? "Low" : m1334equalsimpl0(i, Medium) ? "Medium" : m1334equalsimpl0(i, High) ? "High" : "Unknown";
    }
}
