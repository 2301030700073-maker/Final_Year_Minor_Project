package androidx.compose.foundation;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class OverscrollKt {
    public static final ComputedProvidableCompositionLocal LocalOverscrollFactory = new ComputedProvidableCompositionLocal(new BorderKt$$ExternalSyntheticLambda1(25));

    public static final AndroidEdgeEffectOverscrollEffect rememberOverscrollEffect(GapComposer gapComposer) {
        gapComposer.startReplaceGroup(282942128);
        AndroidEdgeEffectOverscrollFactory androidEdgeEffectOverscrollFactory = (AndroidEdgeEffectOverscrollFactory) gapComposer.consume(LocalOverscrollFactory);
        if (androidEdgeEffectOverscrollFactory == null) {
            gapComposer.end(false);
            return null;
        }
        boolean changed = gapComposer.changed(androidEdgeEffectOverscrollFactory);
        Object rememberedValue = gapComposer.rememberedValue();
        if (changed || rememberedValue == Composer$Companion.Empty) {
            Object androidEdgeEffectOverscrollEffect = new AndroidEdgeEffectOverscrollEffect(androidEdgeEffectOverscrollFactory.context, androidEdgeEffectOverscrollFactory.density, androidEdgeEffectOverscrollFactory.glowColor, androidEdgeEffectOverscrollFactory.glowDrawPadding);
            gapComposer.updateRememberedValue(androidEdgeEffectOverscrollEffect);
            rememberedValue = androidEdgeEffectOverscrollEffect;
        }
        AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect2 = (AndroidEdgeEffectOverscrollEffect) rememberedValue;
        gapComposer.end(false);
        return androidEdgeEffectOverscrollEffect2;
    }
}
