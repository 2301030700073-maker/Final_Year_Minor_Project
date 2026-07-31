package androidx.compose.material3;

import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MotionScheme$StandardMotionSchemeImpl {
    public static final MotionScheme$StandardMotionSchemeImpl INSTANCE = new MotionScheme$StandardMotionSchemeImpl();
    public static final SpringSpec defaultSpatialSpec = ArcSplineKt.spring$default(0.9f, 700.0f, null, 4);
    public static final SpringSpec fastSpatialSpec = ArcSplineKt.spring$default(0.9f, 1400.0f, null, 4);
    public static final SpringSpec slowSpatialSpec = ArcSplineKt.spring$default(0.9f, 300.0f, null, 4);
    public static final SpringSpec defaultEffectsSpec = ArcSplineKt.spring$default(1.0f, 1600.0f, null, 4);
    public static final SpringSpec fastEffectsSpec = ArcSplineKt.spring$default(1.0f, 3800.0f, null, 4);
    public static final SpringSpec slowEffectsSpec = ArcSplineKt.spring$default(1.0f, 800.0f, null, 4);
}
