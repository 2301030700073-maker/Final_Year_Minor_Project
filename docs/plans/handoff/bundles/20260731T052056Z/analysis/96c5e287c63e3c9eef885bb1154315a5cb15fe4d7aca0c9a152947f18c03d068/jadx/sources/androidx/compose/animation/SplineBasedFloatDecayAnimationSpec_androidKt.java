package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.compose.animation.core.DecayAnimationSpecImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SplineBasedFloatDecayAnimationSpec_androidKt {
    public static final float platformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    public static final DecayAnimationSpecImpl rememberSplineBasedDecay(GapComposer gapComposer) {
        Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
        boolean changed = gapComposer.changed(density.getDensity());
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            rememberedValue = new DecayAnimationSpecImpl(new PopupMenu$1(density));
            gapComposer.updateRememberedValue(rememberedValue);
        }
        return (DecayAnimationSpecImpl) rememberedValue;
    }
}
