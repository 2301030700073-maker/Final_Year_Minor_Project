package androidx.compose.foundation;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Clickable.kt */
/* loaded from: classes.dex */
final class CombinedClickableNodeImpl extends AbstractClickableNode implements PointerInputModifierNode {
    private Function0 onDoubleClick;
    private Function0 onLongClick;
    private String onLongClickLabel;

    public /* synthetic */ CombinedClickableNodeImpl(Function0 function0, String str, Function0 function02, Function0 function03, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str2, Role role, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, str, function02, function03, mutableInteractionSource, indicationNodeFactory, z, str2, role);
    }

    private CombinedClickableNodeImpl(Function0 function0, String str, Function0 function02, Function0 function03, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str2, Role role) {
        super(mutableInteractionSource, indicationNodeFactory, z, str2, role, function0, null);
        this.onLongClickLabel = str;
        this.onLongClick = function02;
        this.onDoubleClick = function03;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public Object clickPointerInput(PointerInputScope pointerInputScope, Continuation continuation) {
        Object detectTapGestures = TapGestureDetectorKt.detectTapGestures(pointerInputScope, (!getEnabled() || this.onDoubleClick == null) ? null : new Function1() { // from class: androidx.compose.foundation.CombinedClickableNodeImpl$clickPointerInput$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m130invokek4lQ0M(((Offset) obj).m1176unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
            public final void m130invokek4lQ0M(long j) {
                Function0 function0;
                function0 = CombinedClickableNodeImpl.this.onDoubleClick;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }, (!getEnabled() || this.onLongClick == null) ? null : new Function1() { // from class: androidx.compose.foundation.CombinedClickableNodeImpl$clickPointerInput$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m131invokek4lQ0M(((Offset) obj).m1176unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
            public final void m131invokek4lQ0M(long j) {
                Function0 function0;
                function0 = CombinedClickableNodeImpl.this.onLongClick;
                if (function0 != null) {
                    function0.invoke();
                }
            }
        }, new CombinedClickableNodeImpl$clickPointerInput$4(this, null), new Function1() { // from class: androidx.compose.foundation.CombinedClickableNodeImpl$clickPointerInput$5
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m133invokek4lQ0M(((Offset) obj).m1176unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-k-4lQ0M, reason: not valid java name */
            public final void m133invokek4lQ0M(long j) {
                if (CombinedClickableNodeImpl.this.getEnabled()) {
                    CombinedClickableNodeImpl.this.getOnClick().invoke();
                }
            }
        }, continuation);
        return detectTapGestures == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? detectTapGestures : Unit.INSTANCE;
    }

    /* renamed from: update-nSzSaCc, reason: not valid java name */
    public void m129updatenSzSaCc(Function0 function0, String str, Function0 function02, Function0 function03, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z, String str2, Role role) {
        boolean z2;
        if (!Intrinsics.areEqual(this.onLongClickLabel, str)) {
            this.onLongClickLabel = str;
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        if ((this.onLongClick == null) != (function02 == null)) {
            disposeInteractions();
            SemanticsModifierNodeKt.invalidateSemantics(this);
            z2 = true;
        } else {
            z2 = false;
        }
        this.onLongClick = function02;
        if ((this.onDoubleClick == null) != (function03 == null)) {
            z2 = true;
        }
        this.onDoubleClick = function03;
        boolean z3 = getEnabled() != z ? true : z2;
        m89updateCommonQzZPfjk(mutableInteractionSource, indicationNodeFactory, z, str2, role, function0);
        if (z3) {
            resetPointerInputHandler();
        }
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.onLongClick != null) {
            SemanticsPropertiesKt.onLongClick(semanticsPropertyReceiver, this.onLongClickLabel, new Function0() { // from class: androidx.compose.foundation.CombinedClickableNodeImpl$applyAdditionalSemantics$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    Function0 function0;
                    function0 = CombinedClickableNodeImpl.this.onLongClick;
                    if (function0 != null) {
                        function0.invoke();
                    }
                    return Boolean.TRUE;
                }
            });
        }
    }
}
