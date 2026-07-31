package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class SelectableKt {
    /* renamed from: selectable-O2vRcR0, reason: not valid java name */
    public static final Modifier m114selectableO2vRcR0(Modifier modifier, final boolean z, final IndicationNodeFactory indicationNodeFactory, final boolean z2, final Role role, final Function0 function0) {
        return modifier.then(indicationNodeFactory instanceof IndicationNodeFactory ? new SelectableElement(indicationNodeFactory, null, role, function0, z, z2) : indicationNodeFactory == null ? new SelectableElement(null, null, role, function0, z, z2) : new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
            @Override // kotlin.jvm.functions.Function3
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                ((Number) obj3).intValue();
                GapComposer gapComposer = (GapComposer) ((Composer) obj2);
                gapComposer.startReplaceGroup(-1525724089);
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer.Companion.Empty) {
                    rememberedValue = new MutableInteractionSourceImpl();
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) rememberedValue;
                Modifier then = IndicationKt.indication(mutableInteractionSource, IndicationNodeFactory.this).then(new SelectableElement(null, mutableInteractionSource, role, function0, z, z2));
                gapComposer.end(false);
                return then;
            }
        }));
    }
}
