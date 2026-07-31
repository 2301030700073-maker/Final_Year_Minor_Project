package androidx.compose.foundation;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class IndicationKt {
    public static final StaticProvidableCompositionLocal LocalIndication = new StaticProvidableCompositionLocal(1, new ImmLeaksCleaner$$ExternalSyntheticLambda0(6));

    public static final Modifier indication(Modifier modifier, MutableInteractionSourceImpl mutableInteractionSourceImpl, IndicationNodeFactory indicationNodeFactory) {
        return indicationNodeFactory == null ? modifier : modifier.then(new IndicationModifierElement(mutableInteractionSourceImpl, indicationNodeFactory));
    }
}
