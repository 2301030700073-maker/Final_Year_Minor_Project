package androidx.compose.ui.layout;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: BeyondBoundsLayout.kt */
/* loaded from: classes.dex */
public interface BeyondBoundsLayout {

    /* compiled from: BeyondBoundsLayout.kt */
    public interface BeyondBoundsScope {
        boolean getHasMoreContent();
    }

    /* renamed from: layout-o7g1Pn8 */
    Object mo334layouto7g1Pn8(int i, Function1 function1);

    /* compiled from: BeyondBoundsLayout.kt */
    public static final class LayoutDirection {
        public static final Companion Companion = new Companion(null);
        private static final int Before = m1733constructorimpl(1);
        private static final int After = m1733constructorimpl(2);
        private static final int Left = m1733constructorimpl(3);
        private static final int Right = m1733constructorimpl(4);
        private static final int Above = m1733constructorimpl(5);
        private static final int Below = m1733constructorimpl(6);

        /* renamed from: constructor-impl, reason: not valid java name */
        public static int m1733constructorimpl(int i) {
            return i;
        }

        /* renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1734equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* compiled from: BeyondBoundsLayout.kt */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* renamed from: getBefore-hoxUOeE, reason: not valid java name */
            public final int m1737getBeforehoxUOeE() {
                return LayoutDirection.Before;
            }

            /* renamed from: getAfter-hoxUOeE, reason: not valid java name */
            public final int m1736getAfterhoxUOeE() {
                return LayoutDirection.After;
            }

            /* renamed from: getLeft-hoxUOeE, reason: not valid java name */
            public final int m1739getLefthoxUOeE() {
                return LayoutDirection.Left;
            }

            /* renamed from: getRight-hoxUOeE, reason: not valid java name */
            public final int m1740getRighthoxUOeE() {
                return LayoutDirection.Right;
            }

            /* renamed from: getAbove-hoxUOeE, reason: not valid java name */
            public final int m1735getAbovehoxUOeE() {
                return LayoutDirection.Above;
            }

            /* renamed from: getBelow-hoxUOeE, reason: not valid java name */
            public final int m1738getBelowhoxUOeE() {
                return LayoutDirection.Below;
            }
        }
    }
}
