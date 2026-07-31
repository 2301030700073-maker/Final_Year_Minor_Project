package androidx.compose.animation;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SingleValueAnimationKt {
    static {
        ArcSplineKt.spring$default(0.0f, 0.0f, null, 7);
    }

    /* renamed from: animateColorAsState-euL9pac, reason: not valid java name */
    public static final State m110animateColorAsStateeuL9pac(long j, SpringSpec springSpec, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        boolean changed = gapComposer.changed(Color.m485getColorSpaceimpl(j));
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer.Companion.Empty) {
            TwoWayConverterImpl twoWayConverterImpl = new TwoWayConverterImpl(CrossfadeKt$Crossfade$3$1.INSTANCE$5, new NodeChainKt$fillVector$1(2, Color.m485getColorSpaceimpl(j)));
            gapComposer.updateRememberedValue(twoWayConverterImpl);
            rememberedValue = twoWayConverterImpl;
        }
        return AnimateAsStateKt.animateValueAsState(new Color(j), (TwoWayConverterImpl) rememberedValue, springSpec, null, "ColorAnimation", gapComposer, 0, 8);
    }
}
