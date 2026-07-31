package androidx.compose.animation;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.TwoWayConverterImpl;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SingleValueAnimationKt {
    static {
        ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, null, 7);
    }

    /* renamed from: animateColorAsState-euL9pac, reason: not valid java name */
    public static final State m18animateColorAsStateeuL9pac(long j, FiniteAnimationSpec finiteAnimationSpec, GapComposer gapComposer) {
        boolean changed = gapComposer.changed(Color.m431getColorSpaceimpl(j));
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            TwoWayConverterImpl twoWayConverterImpl = new TwoWayConverterImpl(CrossfadeKt$Crossfade$3$1.INSTANCE$5, new NodeChainKt$fillVector$1(2, Color.m431getColorSpaceimpl(j)));
            gapComposer.updateRememberedValue(twoWayConverterImpl);
            rememberedValue = twoWayConverterImpl;
        }
        return AnimateAsStateKt.animateValueAsState(new Color(j), (TwoWayConverterImpl) rememberedValue, finiteAnimationSpec, null, "ColorAnimation", gapComposer, 0, 8);
    }
}
