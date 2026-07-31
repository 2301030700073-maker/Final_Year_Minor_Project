package androidx.compose.foundation.selection;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.material3.MinimumInteractiveModifier;
import androidx.compose.material3.RippleNodeFactory;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.ComposedModifier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.state.ToggleableState;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class SelectableKt {
    /* renamed from: selectable-O2vRcR0, reason: not valid java name */
    public static final Modifier m258selectableO2vRcR0(Modifier modifier, final boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, final RippleNodeFactory rippleNodeFactory, final boolean z2, final Role role, final Function0 function0) {
        Modifier then;
        if (rippleNodeFactory != null) {
            then = new SelectableElement(z, mutableInteractionSourceImpl, rippleNodeFactory, false, z2, role, function0);
        } else if (rippleNodeFactory == null) {
            then = new SelectableElement(z, mutableInteractionSourceImpl, null, false, z2, role, function0);
        } else {
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            then = mutableInteractionSourceImpl != null ? IndicationKt.indication(companion, mutableInteractionSourceImpl, rippleNodeFactory).then(new SelectableElement(z, mutableInteractionSourceImpl, null, false, z2, role, function0)) : companion.then(new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.selection.SelectableKt$selectable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                    MutableInteractionSourceImpl mutableInteractionSourceImpl2 = (MutableInteractionSourceImpl) rememberedValue;
                    Modifier then2 = IndicationKt.indication(Modifier.Companion.$$INSTANCE, mutableInteractionSourceImpl2, IndicationNodeFactory.this).then(new SelectableElement(z, mutableInteractionSourceImpl2, null, false, z2, role, function0));
                    gapComposer.end(false);
                    return then2;
                }
            }));
        }
        return modifier.then(then);
    }

    /* renamed from: toggleable-O2vRcR0, reason: not valid java name */
    public static final Modifier m260toggleableO2vRcR0(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, Role role, Function1 function1) {
        return Modifier.CC.$default$then(MinimumInteractiveModifier.INSTANCE, new ToggleableElement(z, mutableInteractionSourceImpl, false, role, function1));
    }

    /* renamed from: triStateToggleable-O2vRcR0, reason: not valid java name */
    public static final Modifier m262triStateToggleableO2vRcR0(final ToggleableState toggleableState, final RippleNodeFactory rippleNodeFactory, final Role role, final Function0 function0) {
        return rippleNodeFactory != null ? new TriStateToggleableElement(toggleableState, null, rippleNodeFactory, role, function0) : rippleNodeFactory == null ? new TriStateToggleableElement(toggleableState, null, null, role, function0) : new ComposedModifier(new Function3() { // from class: androidx.compose.foundation.selection.ToggleableKt$triStateToggleable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1
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
                MutableInteractionSourceImpl mutableInteractionSourceImpl = (MutableInteractionSourceImpl) rememberedValue;
                Modifier then = IndicationKt.indication(Modifier.Companion.$$INSTANCE, mutableInteractionSourceImpl, IndicationNodeFactory.this).then(new TriStateToggleableElement(toggleableState, mutableInteractionSourceImpl, null, role, function0));
                gapComposer.end(false);
                return then;
            }
        });
    }
}
