package androidx.compose.ui.hapticfeedback;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: HapticFeedbackType.kt */
/* loaded from: classes.dex */
public abstract class HapticFeedbackType {
    public static final Companion Companion = new Companion(null);

    /* renamed from: constructor-impl, reason: not valid java name */
    public static int m1587constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1588equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* compiled from: HapticFeedbackType.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getLongPress-5zf0vsI, reason: not valid java name */
        public final int m1589getLongPress5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m1591getLongPress5zf0vsI();
        }

        /* renamed from: getTextHandleMove-5zf0vsI, reason: not valid java name */
        public final int m1590getTextHandleMove5zf0vsI() {
            return PlatformHapticFeedbackType.INSTANCE.m1592getTextHandleMove5zf0vsI();
        }
    }
}
