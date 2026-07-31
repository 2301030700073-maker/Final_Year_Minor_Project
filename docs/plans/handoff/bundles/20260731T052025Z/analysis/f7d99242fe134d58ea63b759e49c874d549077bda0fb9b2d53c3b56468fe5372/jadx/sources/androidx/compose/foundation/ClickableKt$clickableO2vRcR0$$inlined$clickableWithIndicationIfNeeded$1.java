package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* renamed from: androidx.compose.foundation.ClickableKt$clickable-O2vRcR0$$inlined$clickableWithIndicationIfNeeded$1, reason: invalid class name */
/* loaded from: classes.dex */
public final class ClickableKt$clickableO2vRcR0$$inlined$clickableWithIndicationIfNeeded$1 implements Function3 {
    public final /* synthetic */ boolean $enabled$inlined;
    public final /* synthetic */ IndicationNodeFactory $indication;
    public final /* synthetic */ Function0 $onClick$inlined;
    public final /* synthetic */ Role $role$inlined;

    public ClickableKt$clickableO2vRcR0$$inlined$clickableWithIndicationIfNeeded$1(IndicationNodeFactory indicationNodeFactory, boolean z, Role role, Function0 function0) {
        this.$indication = indicationNodeFactory;
        this.$enabled$inlined = z;
        this.$role$inlined = role;
        this.$onClick$inlined = function0;
    }

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
        Modifier then = IndicationKt.indication(Modifier.Companion.$$INSTANCE, mutableInteractionSourceImpl, this.$indication).then(new ClickableElement(mutableInteractionSourceImpl, null, false, this.$enabled$inlined, null, this.$role$inlined, this.$onClick$inlined));
        gapComposer.end(false);
        return then;
    }
}
