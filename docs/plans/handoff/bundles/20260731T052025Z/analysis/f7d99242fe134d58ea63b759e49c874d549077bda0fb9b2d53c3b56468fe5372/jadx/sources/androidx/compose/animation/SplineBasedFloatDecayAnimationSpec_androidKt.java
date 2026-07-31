package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.camera.view.PreviewView;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SplineBasedFloatDecayAnimationSpec_androidKt {
    public static final float platformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    public static final DecayAnimationSpecImpl rememberSplineBasedDecay(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        boolean changed = gapComposer.changed(density.getDensity());
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            rememberedValue = new DecayAnimationSpecImpl(new PreviewView.AnonymousClass1(density));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (DecayAnimationSpecImpl) rememberedValue;
    }
}
