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
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoreTextFieldSemanticsModifier extends ModifierNodeElement {
    public final boolean enabled;
    public final FocusRequester focusRequester;
    public final ImeOptions imeOptions;
    public final boolean isPassword;
    public final TextFieldSelectionManager manager;
    public final OffsetMapping offsetMapping;
    public final boolean readOnly;
    public final LegacyTextFieldState state;
    public final TransformedText transformedText;
    public final TextFieldValue value;

    public CoreTextFieldSemanticsModifier(TransformedText transformedText, TextFieldValue textFieldValue, LegacyTextFieldState legacyTextFieldState, boolean z, boolean z2, boolean z3, OffsetMapping offsetMapping, TextFieldSelectionManager textFieldSelectionManager, ImeOptions imeOptions, FocusRequester focusRequester) {
        this.transformedText = transformedText;
        this.value = textFieldValue;
        this.state = legacyTextFieldState;
        this.readOnly = z;
        this.enabled = z2;
        this.isPassword = z3;
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
        coreTextFieldSemanticsModifierNode.readOnly = this.readOnly;
        coreTextFieldSemanticsModifierNode.enabled = this.enabled;
        coreTextFieldSemanticsModifierNode.isPassword = this.isPassword;
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
            if (this.transformedText.equals(coreTextFieldSemanticsModifier.transformedText) && Intrinsics.areEqual(this.value, coreTextFieldSemanticsModifier.value) && this.state == coreTextFieldSemanticsModifier.state && this.readOnly == coreTextFieldSemanticsModifier.readOnly && this.enabled == coreTextFieldSemanticsModifier.enabled && this.isPassword == coreTextFieldSemanticsModifier.isPassword && this.offsetMapping.equals(coreTextFieldSemanticsModifier.offsetMapping) && this.manager == coreTextFieldSemanticsModifier.manager && Intrinsics.areEqual(this.imeOptions, coreTextFieldSemanticsModifier.imeOptions) && Intrinsics.areEqual(this.focusRequester, coreTextFieldSemanticsModifier.focusRequester)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.focusRequester.hashCode() + ((this.imeOptions.hashCode() + ((this.manager.hashCode() + ((this.offsetMapping.hashCode() + ((((((((this.state.hashCode() + ((this.value.hashCode() + (this.transformedText.hashCode() * 31)) * 31)) * 31) + (this.readOnly ? 1231 : 1237)) * 31) + (this.enabled ? 1231 : 1237)) * 31) + (this.isPassword ? 1231 : 1237)) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "CoreTextFieldSemanticsModifier(transformedText=" + this.transformedText + ", value=" + this.value + ", state=" + this.state + ", readOnly=" + this.readOnly + ", enabled=" + this.enabled + ", isPassword=" + this.isPassword + ", offsetMapping=" + this.offsetMapping + ", manager=" + this.manager + ", imeOptions=" + this.imeOptions + ", focusRequester=" + this.focusRequester + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = (CoreTextFieldSemanticsModifierNode) node;
        boolean z = coreTextFieldSemanticsModifierNode.enabled;
        boolean z2 = z && !coreTextFieldSemanticsModifierNode.readOnly;
        boolean z3 = coreTextFieldSemanticsModifierNode.isPassword;
        ImeOptions imeOptions = coreTextFieldSemanticsModifierNode.imeOptions;
        TextFieldSelectionManager textFieldSelectionManager = coreTextFieldSemanticsModifierNode.manager;
        boolean z4 = this.readOnly;
        boolean z5 = this.enabled;
        boolean z6 = z5 && !z4;
        coreTextFieldSemanticsModifierNode.transformedText = this.transformedText;
        TextFieldValue textFieldValue = this.value;
        coreTextFieldSemanticsModifierNode.value = textFieldValue;
        coreTextFieldSemanticsModifierNode.state = this.state;
        coreTextFieldSemanticsModifierNode.readOnly = z4;
        coreTextFieldSemanticsModifierNode.enabled = z5;
        coreTextFieldSemanticsModifierNode.offsetMapping = this.offsetMapping;
        TextFieldSelectionManager textFieldSelectionManager2 = this.manager;
        coreTextFieldSemanticsModifierNode.manager = textFieldSelectionManager2;
        ImeOptions imeOptions2 = this.imeOptions;
        coreTextFieldSemanticsModifierNode.imeOptions = imeOptions2;
        coreTextFieldSemanticsModifierNode.focusRequester = this.focusRequester;
        if (z5 != z || z6 != z2 || !Intrinsics.areEqual(imeOptions2, imeOptions) || this.isPassword != z3 || !TextRange.m699getCollapsedimpl(textFieldValue.selection)) {
            HitTestResultKt.invalidateSemantics(coreTextFieldSemanticsModifierNode);
        }
        if (textFieldSelectionManager2 != textFieldSelectionManager) {
            textFieldSelectionManager2.requestAutofillAction = new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(coreTextFieldSemanticsModifierNode, 0);
        }
    }
}
