package androidx.compose.foundation.selection;

import androidx.compose.foundation.ClickableNode;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType$Companion;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.datastore.core.Api26Impl;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TriStateToggleableNode extends ClickableNode {
    public ToggleableState state;

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setToggleableState(semanticsPropertyReceiver, this.state);
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.ContentDataType;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        KProperty kProperty = kPropertyArr[9];
        semanticsPropertyReceiver.set(semanticsPropertyKey, ContentDataType$Companion.Toggle);
        AndroidFillableData createFromBoolean = Api26Impl.createFromBoolean(this.state != ToggleableState.Indeterminate);
        if (createFromBoolean != null) {
            SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.FillableData;
            KProperty kProperty2 = kPropertyArr[10];
            semanticsPropertyReceiver.set(semanticsPropertyKey2, createFromBoolean);
        }
        semanticsPropertyReceiver.set(SemanticsActions.OnFillData, new AccessibilityAction(null, new ToggleableNode$$ExternalSyntheticLambda0(semanticsPropertyReceiver, 1)));
    }
}
