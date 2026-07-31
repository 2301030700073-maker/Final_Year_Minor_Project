package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CoreTextFieldSemanticsModifierNode f$0;

    public /* synthetic */ CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i) {
        this.$r8$classId = i;
        this.f$0 = coreTextFieldSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f$0;
        switch (i) {
            case 0:
                HitTestResultKt.requestAutofill(coreTextFieldSemanticsModifierNode);
                return unit;
            case 1:
                coreTextFieldSemanticsModifierNode.manager.enterSelectionMode$foundation(true);
                break;
            case 2:
                coreTextFieldSemanticsModifierNode.manager.copy$foundation(true);
                break;
            case 3:
                coreTextFieldSemanticsModifierNode.manager.cut$foundation();
                break;
            case 4:
                HitTestResultKt.requestAutofill(coreTextFieldSemanticsModifierNode);
                return unit;
            case 5:
                coreTextFieldSemanticsModifierNode.manager.paste$foundation();
                break;
            case 6:
                CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = coreTextFieldSemanticsModifierNode.state.onImeActionPerformed;
                coreTextFieldKt$$ExternalSyntheticLambda1.f$0.keyboardActionRunner.m188runActionKlQnJC8(coreTextFieldSemanticsModifierNode.imeOptions.imeAction);
                break;
            default:
                LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.state;
                FocusRequester focusRequester = coreTextFieldSemanticsModifierNode.focusRequester;
                if (legacyTextFieldState.getHasFocus()) {
                    SoftwareKeyboardController softwareKeyboardController = legacyTextFieldState.keyboardController;
                    if (softwareKeyboardController != null) {
                        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
                    }
                } else {
                    FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
                }
                return Boolean.TRUE;
        }
        return Boolean.TRUE;
    }
}
