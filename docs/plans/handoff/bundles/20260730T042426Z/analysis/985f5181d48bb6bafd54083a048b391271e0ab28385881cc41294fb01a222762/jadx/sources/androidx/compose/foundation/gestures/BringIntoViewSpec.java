package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;

/* compiled from: BringIntoViewSpec.kt */
/* loaded from: classes.dex */
public interface BringIntoViewSpec {
    public static final Companion Companion = Companion.$$INSTANCE;

    float calculateScrollDistance(float f, float f2, float f3);

    AnimationSpec getScrollAnimationSpec();

    /* compiled from: BringIntoViewSpec.kt */
    /* renamed from: androidx.compose.foundation.gestures.BringIntoViewSpec$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
    }

    /* compiled from: BringIntoViewSpec.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final AnimationSpec DefaultScrollAnimationSpec = AnimationSpecKt.spring$default(0.0f, 0.0f, null, 7, null);
        private static final BringIntoViewSpec DefaultBringIntoViewSpec = new BringIntoViewSpec() { // from class: androidx.compose.foundation.gestures.BringIntoViewSpec$Companion$DefaultBringIntoViewSpec$1
            @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
            public /* synthetic */ float calculateScrollDistance(float f, float f2, float f3) {
                float defaultCalculateScrollDistance$foundation_release;
                defaultCalculateScrollDistance$foundation_release = BringIntoViewSpec.Companion.defaultCalculateScrollDistance$foundation_release(f, f2, f3);
                return defaultCalculateScrollDistance$foundation_release;
            }

            @Override // androidx.compose.foundation.gestures.BringIntoViewSpec
            public /* synthetic */ AnimationSpec getScrollAnimationSpec() {
                AnimationSpec defaultScrollAnimationSpec;
                defaultScrollAnimationSpec = BringIntoViewSpec.Companion.getDefaultScrollAnimationSpec();
                return defaultScrollAnimationSpec;
            }
        };

        private Companion() {
        }

        public final AnimationSpec getDefaultScrollAnimationSpec() {
            return DefaultScrollAnimationSpec;
        }

        public final BringIntoViewSpec getDefaultBringIntoViewSpec$foundation_release() {
            return DefaultBringIntoViewSpec;
        }

        public final float defaultCalculateScrollDistance$foundation_release(float f, float f2, float f3) {
            float f4 = f2 + f;
            if ((f >= 0.0f && f4 <= f3) || (f < 0.0f && f4 > f3)) {
                return 0.0f;
            }
            float f5 = f4 - f3;
            return Math.abs(f) < Math.abs(f5) ? f : f5;
        }
    }
}
