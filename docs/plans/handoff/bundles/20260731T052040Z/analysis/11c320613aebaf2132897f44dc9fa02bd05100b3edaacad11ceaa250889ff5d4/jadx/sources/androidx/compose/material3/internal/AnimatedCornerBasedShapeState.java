package androidx.compose.material3.internal;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityImpl;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AnimatedCornerBasedShapeState {
    public Animatable bottomEnd;
    public Animatable bottomStart;
    public final CornerBasedShape shape;
    public final FiniteAnimationSpec spec;
    public Animatable topEnd;
    public Animatable topStart;
    public long size = 0;
    public Density density = new DensityImpl(0.0f, 0.0f);

    public AnimatedCornerBasedShapeState(CornerBasedShape cornerBasedShape, FiniteAnimationSpec finiteAnimationSpec) {
        this.shape = cornerBasedShape;
        this.spec = finiteAnimationSpec;
    }
}
