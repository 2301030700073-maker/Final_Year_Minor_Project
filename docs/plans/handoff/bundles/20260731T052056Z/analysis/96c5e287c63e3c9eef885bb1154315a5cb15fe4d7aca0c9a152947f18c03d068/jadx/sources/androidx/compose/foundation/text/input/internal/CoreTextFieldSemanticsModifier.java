package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TransformedText;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifier;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/text/input/internal/CoreTextFieldSemanticsModifierNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class CoreTextFieldSemanticsModifier extends ModifierNodeElement {
    public final boolean enabled;
    public final FocusRequester focusRequester;
    public final ImeOptions imeOptions;
    public final TextFieldSelectionManager manager;
    public final OffsetMapping offsetMapping;
    public final LegacyTextFieldState state;
    public final TransformedText transformedText;
    public final TextFieldValue value;

    public CoreTextFieldSemanticsModifier(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.transformedText = transformedText;
        this.value = textFieldValue;
        this.state = legacyTextFieldState;
        this.enabled = z;
        this.offsetMapping = offsetMapping;
        this.manager = textFieldSelectionManager;
        this.imeOptions = imeOptions;
        this.focusRequester = focusRequester;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = new CoreTextFieldSemanticsModifierNode();
        coreTextFieldSemanticsModifierNode.transformedText = this.transformedText;
        coreTextFieldSemanticsModifierNode.value = this.value;
        coreTextFieldSemanticsModifierNode.state = this.state;
        coreTextFieldSemanticsModifierNode.enabled = this.enabled;
        coreTextFieldSemanticsModifierNode.offsetMapping = this.offsetMapping;
        TextFieldSelectionManager textFieldSelectionManager = this.manager;
        coreTextFieldSemanticsModifierNode.manager = textFieldSelectionManager;
        coreTextFieldSemanticsModifierNode.imeOptions = this.imeOptions;
        coreTextFieldSemanticsModifierNode.focusRequester = this.focusRequester;
        textFieldSelectionManager.requestAutofillAction = new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(coreTextFieldSemanticsModifierNode, 4);
        return coreTextFieldSemanticsModifierNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CoreTextFieldSemanticsModifier) {
            CoreTextFieldSemanticsModifier coreTextFieldSemanticsModifier = (CoreTextFieldSemanticsModifier) obj;
            if (this.transformedText.equals(coreTextFieldSemanticsModifier.transformedText) && this.value.equals(coreTextFieldSemanticsModifier.value) && this.state == coreTextFieldSemanticsModifier.state && this.enabled == coreTextFieldSemanticsModifier.enabled && this.offsetMapping.equals(coreTextFieldSemanticsModifier.offsetMapping) && this.manager == coreTextFieldSemanticsModifier.manager && Intrinsics.areEqual(this.imeOptions, coreTextFieldSemanticsModifier.imeOptions) && Intrinsics.areEqual(this.focusRequester, coreTextFieldSemanticsModifier.focusRequester)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.focusRequester.hashCode() + ((this.imeOptions.hashCode() + ((this.manager.hashCode() + ((this.offsetMapping.hashCode() + ((((((((this.state.hashCode() + ((this.value.hashCode() + (this.transformedText.hashCode() * 31)) * 31)) * 31) + 1237) * 31) + (this.enabled ? 1231 : 1237)) * 31) + 1237) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CoreTextFieldSemanticsModifier(transformedText=" + this.transformedText + ", value=" + this.value + ", state=" + this.state + ", readOnly=false, enabled=" + this.enabled + ", isPassword=false, offsetMapping=" + this.offsetMapping + ", manager=" + this.manager + ", imeOptions=" + this.imeOptions + ", focusRequester=" + this.focusRequester + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) node;
        boolean z = coreTextFieldSemanticsModifierNode.enabled;
        ImeOptions imeOptions = coreTextFieldSemanticsModifierNode.imeOptions;
        TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.manager;
        coreTextFieldSemanticsModifierNode.transformedText = this.transformedText;
        TextFieldValue textFieldValue = this.value;
        coreTextFieldSemanticsModifierNode.value = textFieldValue;
        coreTextFieldSemanticsModifierNode.state = this.state;
        boolean z2 = this.enabled;
        coreTextFieldSemanticsModifierNode.enabled = z2;
        coreTextFieldSemanticsModifierNode.offsetMapping = this.offsetMapping;
        TextFieldSelectionManager textFieldSelectionManager2 = this.manager;
        coreTextFieldSemanticsModifierNode.manager = textFieldSelectionManager2;
        ImeOptions imeOptions2 = this.imeOptions;
        coreTextFieldSemanticsModifierNode.imeOptions = imeOptions2;
        coreTextFieldSemanticsModifierNode.focusRequester = this.focusRequester;
        if (z2 != z || z2 != z || !Intrinsics.areEqual(imeOptions2, imeOptions) || !TextRange.m641getCollapsedimpl(textFieldValue.selection)) {
            HitTestResultKt.invalidateSemantics(coreTextFieldSemanticsModifierNode);
        }
        if (textFieldSelectionManager2 != textFieldSelectionManager) {
            textFieldSelectionManager2.requestAutofillAction = new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(coreTextFieldSemanticsModifierNode, 0);
        }
    }
}
