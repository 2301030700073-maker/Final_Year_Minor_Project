package androidx.compose.foundation.selection;

import androidx.compose.material3.internal.ParentSemanticsNode;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ToggleableNode$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SemanticsPropertyReceiver f$0;

    public /* synthetic */ ToggleableNode$$ExternalSyntheticLambda0(SemanticsPropertyReceiver semanticsPropertyReceiver, int i) {
        this.$r8$classId = i;
        this.f$0 = semanticsPropertyReceiver;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        boolean z = false;
        ToggleableState toggleableState = ToggleableState.Off;
        ToggleableState toggleableState2 = ToggleableState.On;
        SemanticsPropertyReceiver semanticsPropertyReceiver = this.f$0;
        switch (i) {
            case 0:
                Boolean booleanValue = ((AndroidFillableData) ((FillableData) obj)).getBooleanValue();
                if (booleanValue != null) {
                    if (booleanValue.booleanValue()) {
                        toggleableState = toggleableState2;
                    }
                    SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, toggleableState);
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                Boolean booleanValue2 = ((AndroidFillableData) ((FillableData) obj)).getBooleanValue();
                if (booleanValue2 != null) {
                    if (booleanValue2.booleanValue()) {
                        toggleableState = toggleableState2;
                    }
                    SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, toggleableState);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                TraversableNode traversableNode = (TraversableNode) obj;
                traversableNode.getClass();
                ParentSemanticsNode parentSemanticsNode = (ParentSemanticsNode) traversableNode;
                parentSemanticsNode.semanticsConsumed = true;
                parentSemanticsNode.properties.invoke(semanticsPropertyReceiver);
                HitTestResultKt.invalidateSemantics(parentSemanticsNode);
                return Boolean.FALSE;
        }
    }
}
