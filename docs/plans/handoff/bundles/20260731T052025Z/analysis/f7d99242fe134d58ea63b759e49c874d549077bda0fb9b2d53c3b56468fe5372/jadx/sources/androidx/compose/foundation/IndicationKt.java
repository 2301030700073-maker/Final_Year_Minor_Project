package androidx.compose.foundation;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class IndicationKt {
    public static final DynamicProvidableCompositionLocal LocalIndication = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(10));

    public static final Modifier indication(Modifier modifier, MutableInteractionSourceImpl mutableInteractionSourceImpl, IndicationNodeFactory indicationNodeFactory) {
        return indicationNodeFactory == null ? modifier : modifier.then(new IndicationModifierElement(mutableInteractionSourceImpl, indicationNodeFactory));
    }
}
