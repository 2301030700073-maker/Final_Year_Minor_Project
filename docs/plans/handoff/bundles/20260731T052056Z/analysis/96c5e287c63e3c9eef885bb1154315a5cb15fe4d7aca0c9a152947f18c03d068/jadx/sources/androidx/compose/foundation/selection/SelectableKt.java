package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.MinimumInteractiveModifier;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SelectableKt {
    /* renamed from: selectable-O2vRcR0, reason: not valid java name */
    public static final Modifier m174selectableO2vRcR0(Modifier modifier, final boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, final RippleNodeFactory rippleNodeFactory, final boolean z2, final Role role, final Function0 function0) {
        Modifier then;
        if (rippleNodeFactory != null) {
            then = new SelectableElement(z, mutableInteractionSourceImpl, rippleNodeFactory, z2, role, function0);
        } else if (rippleNodeFactory == null) {
            then = new SelectableElement(z, mutableInteractionSourceImpl, null, z2, role, function0);
        } else {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = mutableInteractionSourceImpl != null ? IndicationKt.indication(companion, mutableInteractionSourceImpl, rippleNodeFactory).then(new SelectableElement(z, mutableInteractionSourceImpl, null, z2, role, function0)) : companion.then(new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    GapComposer gapComposer = (GapComposer) obj2;
                    ((Number) obj3).intValue();
                    gapComposer.startReplaceGroup(-1525724089);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new MutableInteractionSourceImpl();
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
                    Modifier then2 = IndicationKt.indication(Modifier.Companion.$$INSTANCE, mutableInteractionSourceImpl2, IndicationNodeFactory.this).then(new SelectableElement(z, mutableInteractionSourceImpl2, null, z2, role, function0));
                    gapComposer.end(false);
                    return then2;
                }
            }));
        }
        return modifier.then(then);
    }

    /* renamed from: toggleable-O2vRcR0, reason: not valid java name */
    public static final Modifier m175toggleableO2vRcR0(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z2, Role role, Function1 function1) {
        return Modifier.CC.$default$then(MinimumInteractiveModifier.INSTANCE, new ToggleableElement(z, mutableInteractionSourceImpl, z2, role, function1));
    }
}
