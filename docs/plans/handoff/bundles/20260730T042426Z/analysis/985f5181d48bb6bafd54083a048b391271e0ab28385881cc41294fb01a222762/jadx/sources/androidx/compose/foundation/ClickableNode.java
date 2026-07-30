package androidx.compose.foundation;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.semantics.Role;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Clickable.kt */
/* loaded from: classes.dex */
public class ClickableNode extends AbstractClickableNode {
    public /* synthetic */ ClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str, Role role, Function0 function0, DefaultConstructorMarker defaultConstructorMarker) {
        this(mutableInteractionSource, indicationNodeFactory, z, str, role, function0);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public Object clickPointerInput(PointerInputScope pointerInputScope, Continuation continuation) {
        return clickPointerInput$suspendImpl(this, pointerInputScope, continuation);
    }

    private ClickableNode(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str, Role role, Function0 function0) {
        super(mutableInteractionSource, indicationNodeFactory, z, str, role, function0, null);
    }

    static /* synthetic */ Object clickPointerInput$suspendImpl(final ClickableNode clickableNode, PointerInputScope pointerInputScope, Continuation continuation) {
        Object detectTapAndPress = TapGestureDetectorKt.detectTapAndPress(pointerInputScope, new ClickableNode$clickPointerInput$2(clickableNode, null), new Function1() { // from class: androidx.compose.foundation.ClickableNode$clickPointerInput$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m124invokek4lQ0M(((Offset) obj).m1176unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
            public final void m124invokek4lQ0M(long j) {
                if (ClickableNode.this.getEnabled()) {
                    ClickableNode.this.getOnClick().invoke();
                }
            }
        }, continuation);
        return detectTapAndPress == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? detectTapAndPress : Unit.INSTANCE;
    }

    /* renamed from: update-QzZPfjk, reason: not valid java name */
    public final void m122updateQzZPfjk(MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str, Role role, Function0 function0) {
        m89updateCommonQzZPfjk(mutableInteractionSource, indicationNodeFactory, z, str, role, function0);
    }
}
