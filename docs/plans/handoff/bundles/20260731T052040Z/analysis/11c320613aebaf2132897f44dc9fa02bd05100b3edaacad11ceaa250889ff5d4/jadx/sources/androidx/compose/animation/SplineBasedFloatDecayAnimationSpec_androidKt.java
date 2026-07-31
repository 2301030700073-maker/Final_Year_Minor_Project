package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SplineBasedFloatDecayAnimationSpec_androidKt {
    public static final float platformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    public static final DecayAnimationSpecImpl rememberSplineBasedDecay(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        boolean changed = gapComposer.changed(density.getDensity());
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new DecayAnimationSpecImpl(new PopupMenu$1(density));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (DecayAnimationSpecImpl) rememberedValue;
    }
}
