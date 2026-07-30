package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextInclusionStrategy;

/* compiled from: TextInclusionStrategy.kt */
/* loaded from: classes.dex */
public interface TextInclusionStrategy {
    public static final Companion Companion = Companion.$$INSTANCE;

    boolean isIncluded(Rect rect, Rect rect2);

    /* compiled from: TextInclusionStrategy.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final TextInclusionStrategy AnyOverlap = new TextInclusionStrategy() { // from class: androidx.compose.ui.text.TextInclusionStrategy$Companion$$ExternalSyntheticLambda0
            @Override // androidx.compose.ui.text.TextInclusionStrategy
            public final boolean isIncluded(Rect rect, Rect rect2) {
                boolean overlaps;
                overlaps = rect.overlaps(rect2);
                return overlaps;
            }
        };
        private static final TextInclusionStrategy ContainsAll = new TextInclusionStrategy() { // from class: androidx.compose.ui.text.TextInclusionStrategy$Companion$$ExternalSyntheticLambda1
            @Override // androidx.compose.ui.text.TextInclusionStrategy
            public final boolean isIncluded(Rect rect, Rect rect2) {
                boolean ContainsAll$lambda$1;
                ContainsAll$lambda$1 = TextInclusionStrategy.Companion.ContainsAll$lambda$1(rect, rect2);
                return ContainsAll$lambda$1;
            }
        };
        private static final TextInclusionStrategy ContainsCenter = new TextInclusionStrategy() { // from class: androidx.compose.ui.text.TextInclusionStrategy$Companion$$ExternalSyntheticLambda2
            @Override // androidx.compose.ui.text.TextInclusionStrategy
            public final boolean isIncluded(Rect rect, Rect rect2) {
                boolean ContainsCenter$lambda$2;
                ContainsCenter$lambda$2 = TextInclusionStrategy.Companion.ContainsCenter$lambda$2(rect, rect2);
                return ContainsCenter$lambda$2;
            }
        };

        private Companion() {
        }

        public final TextInclusionStrategy getAnyOverlap() {
            return AnyOverlap;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean ContainsAll$lambda$1(Rect rect, Rect rect2) {
            return !rect2.isEmpty() && rect.getLeft() >= rect2.getLeft() && rect.getRight() <= rect2.getRight() && rect.getTop() >= rect2.getTop() && rect.getBottom() <= rect2.getBottom();
        }

        public final TextInclusionStrategy getContainsCenter() {
            return ContainsCenter;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean ContainsCenter$lambda$2(Rect rect, Rect rect2) {
            return rect2.m1184containsk4lQ0M(rect.m1186getCenterF1C5BW0());
        }
    }
}
