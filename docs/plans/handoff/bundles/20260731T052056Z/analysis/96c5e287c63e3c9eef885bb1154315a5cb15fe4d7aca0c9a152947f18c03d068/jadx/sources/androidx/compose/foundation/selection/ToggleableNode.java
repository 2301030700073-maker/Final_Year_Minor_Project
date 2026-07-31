package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType$Companion;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.navigation.NavBackStackEntry$$ExternalSyntheticLambda0;
import androidx.room.coroutines.ConnectionPoolImpl$$ExternalSyntheticLambda2;
import coil3.util.BitmapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ToggleableNode extends ClickableNode {
    public final NavBackStackEntry$$ExternalSyntheticLambda0 _onClick;
    public Function1 onValueChange;
    public boolean value;

    public ToggleableNode(boolean z, MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z2, Role role, Function1 function1) {
        super(mutableInteractionSourceImpl, null, false, z2, null, role, new ConnectionPoolImpl$$ExternalSyntheticLambda2(function1, z, 2));
        this.value = z;
        this.onValueChange = function1;
        this._onClick = new NavBackStackEntry$$ExternalSyntheticLambda0(8, this);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        ToggleableState toggleableState = this.value ? ToggleableState.On : ToggleableState.Off;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ToggleableState;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
        KProperty kProperty = kPropertyArr2[26];
        semanticsPropertyReceiver.set(semanticsPropertyKey, toggleableState);
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.ContentDataType;
        KProperty kProperty2 = kPropertyArr2[9];
        semanticsPropertyReceiver.set(semanticsPropertyKey2, ContentDataType$Companion.Toggle);
        AndroidFillableData createFromBoolean = BitmapsKt.createFromBoolean(this.value);
        if (createFromBoolean != null) {
            SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.FillableData;
            KProperty kProperty3 = kPropertyArr2[10];
            semanticsPropertyReceiver.set(semanticsPropertyKey3, createFromBoolean);
        }
        semanticsPropertyReceiver.set(SemanticsActions.OnFillData, new AccessibilityAction(null, new ToggleableNode$$ExternalSyntheticLambda0(semanticsPropertyReceiver, 0)));
    }
}
