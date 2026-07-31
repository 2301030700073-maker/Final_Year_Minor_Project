package net.thunderbird.core.ui.compose.designsystem.molecule.swipe;

import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransitionImpl;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.InstantKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface SwipeBehaviour {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Action implements SwipeBehaviour {
        public final long autoCloseDelayMillis;
        public final boolean enableHapticFeedback;
        public final AnimationSpec settleAnimationSpec;
        public final float threshold;

        public Action() {
            Companion companion = SwipeBehaviour.Companion;
            companion.getClass();
            companion.getClass();
            SpringSpec springSpec = Companion.DefaultSettleAnimation;
            Duration.Companion companion2 = Duration.Companion;
            long duration = InstantKt.toDuration(500L, DurationUnit.MILLISECONDS);
            this.threshold = 150.0f;
            this.settleAnimationSpec = springSpec;
            this.enableHapticFeedback = true;
            this.autoCloseDelayMillis = duration;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Action)) {
                return false;
            }
            Action action = (Action) obj;
            return Dp.m745equalsimpl0(this.threshold, action.threshold) && Intrinsics.areEqual(this.settleAnimationSpec, action.settleAnimationSpec) && this.enableHapticFeedback == action.enableHapticFeedback && Duration.m995equalsimpl0(this.autoCloseDelayMillis, action.autoCloseDelayMillis);
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final boolean getEnableHapticFeedback() {
            return this.enableHapticFeedback;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final AnimationSpec getSettleAnimationSpec() {
            return this.settleAnimationSpec;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        /* renamed from: getThreshold-D9Ej5fM */
        public final float mo1031getThresholdD9Ej5fM() {
            return this.threshold;
        }

        public final int hashCode() {
            return Duration.m998hashCodeimpl(this.autoCloseDelayMillis) + ((((this.settleAnimationSpec.hashCode() + (Float.floatToIntBits(this.threshold) * 31)) * 31) + (this.enableHapticFeedback ? 1231 : 1237)) * 31);
        }

        public final String toString() {
            return "Action(threshold=" + Dp.m746toStringimpl(this.threshold) + ", settleAnimationSpec=" + this.settleAnimationSpec + ", enableHapticFeedback=" + this.enableHapticFeedback + ", autoCloseDelayMillis=" + Duration.m1002toStringimpl(this.autoCloseDelayMillis) + ")";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final SpringSpec DefaultSettleAnimation = new SpringSpec(0.75f, 600.0f, Float.valueOf(0.01f));
        public static final TweenSpec DefaultDismissAnimation = ArcSplineKt.tween$default(250, 0, EasingKt.FastOutSlowInEasing, 2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Disabled implements SwipeBehaviour {
        public static final Disabled INSTANCE = new Disabled();
        public static final SpringSpec settleAnimationSpec;

        static {
            SwipeBehaviour.Companion.getClass();
            settleAnimationSpec = Companion.DefaultSettleAnimation;
        }

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof Disabled);
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final boolean getEnableHapticFeedback() {
            return false;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final AnimationSpec getSettleAnimationSpec() {
            return settleAnimationSpec;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        /* renamed from: getThreshold-D9Ej5fM */
        public final float mo1031getThresholdD9Ej5fM() {
            return Float.NaN;
        }

        public final int hashCode() {
            return 1341460035;
        }

        public final String toString() {
            return "Disabled";
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Dismiss implements SwipeBehaviour {
        public final ExitTransitionImpl dismissTransition;
        public final boolean enableHapticFeedback;
        public final AnimationSpec settleAnimationSpec;
        public final float threshold;

        public Dismiss() {
            Companion companion = SwipeBehaviour.Companion;
            companion.getClass();
            companion.getClass();
            TweenSpec tweenSpec = Companion.DefaultDismissAnimation;
            ExitTransitionImpl plus = EnterExitTransitionKt.fadeOut$default(ArcSplineKt.tween$default(150, 0, null, 6), 2).plus(EnterExitTransitionKt.shrinkVertically$default(ArcSplineKt.tween$default(200, 50, null, 4), 14));
            tweenSpec.getClass();
            this.threshold = 150.0f;
            this.settleAnimationSpec = tweenSpec;
            this.enableHapticFeedback = true;
            this.dismissTransition = plus;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Dismiss)) {
                return false;
            }
            Dismiss dismiss = (Dismiss) obj;
            return Dp.m745equalsimpl0(this.threshold, dismiss.threshold) && Intrinsics.areEqual(this.settleAnimationSpec, dismiss.settleAnimationSpec) && this.enableHapticFeedback == dismiss.enableHapticFeedback && Intrinsics.areEqual(this.dismissTransition, dismiss.dismissTransition);
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final boolean getEnableHapticFeedback() {
            return this.enableHapticFeedback;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        public final AnimationSpec getSettleAnimationSpec() {
            return this.settleAnimationSpec;
        }

        @Override // net.thunderbird.core.ui.compose.designsystem.molecule.swipe.SwipeBehaviour
        /* renamed from: getThreshold-D9Ej5fM */
        public final float mo1031getThresholdD9Ej5fM() {
            return this.threshold;
        }

        public final int hashCode() {
            return this.dismissTransition.data.hashCode() + ((((this.settleAnimationSpec.hashCode() + (Float.floatToIntBits(this.threshold) * 31)) * 31) + (this.enableHapticFeedback ? 1231 : 1237)) * 31);
        }

        public final String toString() {
            return "Dismiss(threshold=" + Dp.m746toStringimpl(this.threshold) + ", settleAnimationSpec=" + this.settleAnimationSpec + ", enableHapticFeedback=" + this.enableHapticFeedback + ", dismissTransition=" + this.dismissTransition + ")";
        }
    }

    boolean getEnableHapticFeedback();

    AnimationSpec getSettleAnimationSpec();

    /* renamed from: getThreshold-D9Ej5fM, reason: not valid java name */
    float mo1031getThresholdD9Ej5fM();
}
