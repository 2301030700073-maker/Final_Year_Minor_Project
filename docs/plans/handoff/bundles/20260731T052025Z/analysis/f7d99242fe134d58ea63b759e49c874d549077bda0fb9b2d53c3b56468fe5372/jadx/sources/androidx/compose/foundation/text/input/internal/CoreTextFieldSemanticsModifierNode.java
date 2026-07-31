package androidx.compose.foundation.text.input.internal;

import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MovableContentKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.ContentDataType$Companion;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteAllCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.core.Api26Impl;
import kotlin.Unit;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CoreTextFieldSemanticsModifierNode extends DelegatingNode implements SemanticsModifierNode {
    public boolean enabled;
    public FocusRequester focusRequester;
    public ImeOptions imeOptions;
    public boolean isPassword;
    public TextFieldSelectionManager manager;
    public OffsetMapping offsetMapping;
    public boolean readOnly;
    public LegacyTextFieldState state;
    public TransformedText transformedText;
    public TextFieldValue value;

    public static void handleTextUpdateFromSemantics(LegacyTextFieldState legacyTextFieldState, String str, boolean z, boolean z2) {
        if (z || !z2) {
            return;
        }
        TextInputSession textInputSession = legacyTextFieldState.inputSession;
        CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
        if (textInputSession == null) {
            int length = str.length();
            coreTextFieldKt$$ExternalSyntheticLambda1.invoke(new TextFieldValue(4, ParagraphKt.TextRange(length, length), str));
        } else {
            TextFieldValue apply = legacyTextFieldState.processor.apply(IntOffsetKt.listOf((Object[]) new EditCommand[]{new DeleteAllCommand(), new CommitTextCommand(str, 1)}));
            textInputSession.updateState(null, apply);
            coreTextFieldKt$$ExternalSyntheticLambda1.invoke(apply);
        }
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        boolean z = this.isPassword;
        AnnotatedString annotatedString = this.value.annotatedString;
        KProperty[] kPropertyArr = SemanticsPropertiesKt.$$delegatedProperties;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.InputText;
        KProperty[] kPropertyArr2 = SemanticsPropertiesKt.$$delegatedProperties;
        KProperty kProperty = kPropertyArr2[18];
        semanticsPropertyReceiver.set(semanticsPropertyKey, annotatedString);
        AnnotatedString annotatedString2 = this.transformedText.text;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsProperties.EditableText;
        KProperty kProperty2 = kPropertyArr2[19];
        semanticsPropertyReceiver.set(semanticsPropertyKey2, annotatedString2);
        long j = this.value.selection;
        SemanticsPropertyKey semanticsPropertyKey3 = SemanticsProperties.TextSelectionRange;
        KProperty kProperty3 = kPropertyArr2[20];
        semanticsPropertyReceiver.set(semanticsPropertyKey3, new TextRange(j));
        SemanticsPropertyKey semanticsPropertyKey4 = SemanticsProperties.ContentDataType;
        KProperty kProperty4 = kPropertyArr2[9];
        semanticsPropertyReceiver.set(semanticsPropertyKey4, ContentDataType$Companion.Text);
        AndroidFillableData createFromText = Api26Impl.createFromText(this.value.annotatedString);
        if (createFromText != null) {
            SemanticsPropertyKey semanticsPropertyKey5 = SemanticsProperties.FillableData;
            KProperty kProperty5 = kPropertyArr2[10];
            semanticsPropertyReceiver.set(semanticsPropertyKey5, createFromText);
        }
        boolean z2 = false;
        z2 = false;
        semanticsPropertyReceiver.set(SemanticsActions.OnFillData, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(this, z2 ? 1 : 0)));
        int i = this.imeOptions.keyboardType;
        if (i == 6) {
            ContentType.Companion.getClass();
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.EmailAddress);
        } else if (i == 7 || i == 8) {
            ContentType.Companion.getClass();
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.Password);
        } else if (i == 4) {
            ContentType.Companion.getClass();
            SemanticsPropertiesKt.setContentType(semanticsPropertyReceiver, ContentType.Companion.PhoneNumber);
        }
        boolean z3 = this.enabled;
        Unit unit = Unit.INSTANCE;
        if (!z3) {
            semanticsPropertyReceiver.set(SemanticsProperties.Disabled, unit);
        }
        if (z) {
            semanticsPropertyReceiver.set(SemanticsProperties.Password, unit);
        }
        int i2 = 1;
        if (this.enabled && !this.readOnly) {
            z2 = true;
        }
        SemanticsPropertyKey semanticsPropertyKey6 = SemanticsProperties.IsEditable;
        KProperty kProperty6 = kPropertyArr2[28];
        semanticsPropertyReceiver.set(semanticsPropertyKey6, Boolean.valueOf(z2));
        semanticsPropertyReceiver.set(SemanticsActions.GetTextLayoutResult, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(this, i2)));
        int i3 = 2;
        if (z2) {
            semanticsPropertyReceiver.set(SemanticsActions.SetText, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(this, i3)));
            semanticsPropertyReceiver.set(SemanticsActions.InsertTextAtCursor, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(this, semanticsPropertyReceiver)));
        }
        semanticsPropertyReceiver.set(SemanticsActions.SetSelection, new AccessibilityAction(null, new MovableContentKt$$ExternalSyntheticLambda0(1, this)));
        int i4 = this.imeOptions.imeAction;
        CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0 coreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0 = new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 6);
        semanticsPropertyReceiver.set(SemanticsProperties.ImeAction, new ImeAction(i4));
        semanticsPropertyReceiver.set(SemanticsActions.OnImeAction, new AccessibilityAction(null, coreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0));
        semanticsPropertyReceiver.set(SemanticsActions.OnClick, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 7)));
        semanticsPropertyReceiver.set(SemanticsActions.OnLongClick, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 1)));
        if (!TextRange.m699getCollapsedimpl(this.value.selection) && !z) {
            semanticsPropertyReceiver.set(SemanticsActions.CopyText, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 2)));
            if (this.enabled && !this.readOnly) {
                semanticsPropertyReceiver.set(SemanticsActions.CutText, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 3)));
            }
        }
        if (!this.enabled || this.readOnly) {
            return;
        }
        semanticsPropertyReceiver.set(SemanticsActions.PasteText, new AccessibilityAction(null, new CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda0(this, 5)));
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean getShouldMergeDescendantSemantics() {
        return true;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean isImportantForBounds() {
        return true;
    }
}
