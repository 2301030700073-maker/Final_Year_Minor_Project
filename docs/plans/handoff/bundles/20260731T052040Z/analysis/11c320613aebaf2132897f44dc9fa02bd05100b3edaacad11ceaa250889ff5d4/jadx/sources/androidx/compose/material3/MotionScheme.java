package androidx.compose.material3;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface MotionScheme {

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class ExpressiveMotionSchemeImpl implements MotionScheme {
        public static final ExpressiveMotionSchemeImpl INSTANCE = new ExpressiveMotionSchemeImpl();
        public static final SpringSpec defaultSpatialSpec = ArcSplineKt.spring$default(0.8f, 380.0f, null, 4);
        public static final SpringSpec fastSpatialSpec = ArcSplineKt.spring$default(0.6f, 800.0f, null, 4);
        public static final SpringSpec slowSpatialSpec = ArcSplineKt.spring$default(0.8f, 200.0f, null, 4);
        public static final SpringSpec defaultEffectsSpec = ArcSplineKt.spring$default(1.0f, 1600.0f, null, 4);
        public static final SpringSpec fastEffectsSpec = ArcSplineKt.spring$default(1.0f, 3800.0f, null, 4);
        public static final SpringSpec slowEffectsSpec = ArcSplineKt.spring$default(1.0f, 800.0f, null, 4);

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec defaultEffectsSpec() {
            SpringSpec springSpec = defaultEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec defaultSpatialSpec() {
            SpringSpec springSpec = defaultSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec fastEffectsSpec() {
            SpringSpec springSpec = fastEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec fastSpatialSpec() {
            SpringSpec springSpec = fastSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec slowEffectsSpec() {
            SpringSpec springSpec = slowEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec slowSpatialSpec() {
            SpringSpec springSpec = slowSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class StandardMotionSchemeImpl implements MotionScheme {
        public static final StandardMotionSchemeImpl INSTANCE = new StandardMotionSchemeImpl();
        public static final SpringSpec defaultSpatialSpec = ArcSplineKt.spring$default(0.9f, 700.0f, null, 4);
        public static final SpringSpec fastSpatialSpec = ArcSplineKt.spring$default(0.9f, 1400.0f, null, 4);
        public static final SpringSpec slowSpatialSpec = ArcSplineKt.spring$default(0.9f, 300.0f, null, 4);
        public static final SpringSpec defaultEffectsSpec = ArcSplineKt.spring$default(1.0f, 1600.0f, null, 4);
        public static final SpringSpec fastEffectsSpec = ArcSplineKt.spring$default(1.0f, 3800.0f, null, 4);
        public static final SpringSpec slowEffectsSpec = ArcSplineKt.spring$default(1.0f, 800.0f, null, 4);

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec defaultEffectsSpec() {
            SpringSpec springSpec = defaultEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec defaultSpatialSpec() {
            SpringSpec springSpec = defaultSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec fastEffectsSpec() {
            SpringSpec springSpec = fastEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec fastSpatialSpec() {
            SpringSpec springSpec = fastSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec slowEffectsSpec() {
            SpringSpec springSpec = slowEffectsSpec;
            springSpec.getClass();
            return springSpec;
        }

        @Override // androidx.compose.material3.MotionScheme
        public final SpringSpec slowSpatialSpec() {
            SpringSpec springSpec = slowSpatialSpec;
            springSpec.getClass();
            return springSpec;
        }
    }

    SpringSpec defaultEffectsSpec();

    SpringSpec defaultSpatialSpec();

    SpringSpec fastEffectsSpec();

    SpringSpec fastSpatialSpec();

    SpringSpec slowEffectsSpec();

    SpringSpec slowSpatialSpec();
}
