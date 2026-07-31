package androidx.compose.foundation;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class IndicationKt {
    public static final DynamicProvidableCompositionLocal LocalIndication = new DynamicProvidableCompositionLocal(new ImmLeaksCleaner$$ExternalSyntheticLambda0(2));

    public static final Modifier indication(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory) {
        return indicationNodeFactory == null ? Modifier.Companion.$$INSTANCE : indicationNodeFactory instanceof IndicationNodeFactory ? new IndicationModifierElement(mutableInteractionSource, indicationNodeFactory) : new ComposedModifier(new IndicationKt$$ExternalSyntheticLambda0(indicationNodeFactory, mutableInteractionSource, 0));
    }
}
