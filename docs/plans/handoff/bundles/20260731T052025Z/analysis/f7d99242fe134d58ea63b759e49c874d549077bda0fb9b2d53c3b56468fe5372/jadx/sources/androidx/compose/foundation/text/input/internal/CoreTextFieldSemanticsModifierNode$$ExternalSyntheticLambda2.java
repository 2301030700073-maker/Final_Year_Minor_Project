package androidx.compose.foundation.text.input.internal;

import androidx.camera.core.impl.Config;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.FinishComposingTextCommand;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.List;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ CoreTextFieldSemanticsModifierNode f$0;

    public /* synthetic */ CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        this.$r8$classId = 3;
        this.f$0 = coreTextFieldSemanticsModifierNode;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        boolean z = true;
        CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode = this.f$0;
        switch (i) {
            case 0:
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = coreTextFieldSemanticsModifierNode.state.justAutofilled$delegate;
                Boolean bool = Boolean.TRUE;
                parcelableSnapshotMutableState.setValue(bool);
                coreTextFieldSemanticsModifierNode.state.autofillHighlightOn$delegate.setValue(bool);
                LegacyTextFieldState legacyTextFieldState = coreTextFieldSemanticsModifierNode.state;
                CharSequence textValue = ((AndroidFillableData) ((FillableData) obj)).getTextValue();
                textValue.getClass();
                CoreTextFieldSemanticsModifierNode.handleTextUpdateFromSemantics(legacyTextFieldState, (String) textValue, coreTextFieldSemanticsModifierNode.readOnly, coreTextFieldSemanticsModifierNode.enabled);
                return bool;
            case 1:
                List list = (List) obj;
                if (coreTextFieldSemanticsModifierNode.state.getLayoutResult() != null) {
                    TextLayoutResultProxy layoutResult = coreTextFieldSemanticsModifierNode.state.getLayoutResult();
                    layoutResult.getClass();
                    list.add(layoutResult.value);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 2:
                CoreTextFieldSemanticsModifierNode.handleTextUpdateFromSemantics(coreTextFieldSemanticsModifierNode.state, ((AnnotatedString) obj).text, coreTextFieldSemanticsModifierNode.readOnly, coreTextFieldSemanticsModifierNode.enabled);
                return Boolean.TRUE;
            default:
                AnnotatedString annotatedString = (AnnotatedString) obj;
                if (coreTextFieldSemanticsModifierNode.readOnly || !coreTextFieldSemanticsModifierNode.enabled) {
                    z = false;
                } else {
                    TextInputSession textInputSession = coreTextFieldSemanticsModifierNode.state.inputSession;
                    StringBuilder sb = null;
                    if (textInputSession != null) {
                        List listOf = IntOffsetKt.listOf((Object[]) new EditCommand[]{new FinishComposingTextCommand(), new CommitTextCommand(annotatedString, 1)});
                        LegacyTextFieldState legacyTextFieldState2 = coreTextFieldSemanticsModifierNode.state;
                        WeakCache weakCache = legacyTextFieldState2.processor;
                        CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState2.onValueChange;
                        TextFieldValue apply = weakCache.apply(listOf);
                        textInputSession.updateState(null, apply);
                        coreTextFieldKt$$ExternalSyntheticLambda1.invoke(apply);
                    } else {
                        TextFieldValue textFieldValue = coreTextFieldSemanticsModifierNode.value;
                        String str = textFieldValue.annotatedString.text;
                        long j = textFieldValue.selection;
                        int i2 = TextRange.$r8$clinit;
                        int i3 = (int) (j >> 32);
                        int i4 = (int) (j & 4294967295L);
                        str.getClass();
                        annotatedString.getClass();
                        if (i4 >= i3) {
                            sb = new StringBuilder();
                            sb.append((CharSequence) str, 0, i3);
                            sb.append((CharSequence) annotatedString);
                            sb.append((CharSequence) str, i4, str.length());
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1(Config.CC.m("End index (", i4, ") is less than start index (", i3, ")."));
                        }
                        String obj2 = sb.toString();
                        int length = annotatedString.text.length() + ((int) (coreTextFieldSemanticsModifierNode.value.selection >> 32));
                        coreTextFieldSemanticsModifierNode.state.onValueChange.invoke(new TextFieldValue(4, ParagraphKt.TextRange(length, length), obj2));
                    }
                }
                return Boolean.valueOf(z);
        }
    }

    public /* synthetic */ CoreTextFieldSemanticsModifierNode$$ExternalSyntheticLambda2(CoreTextFieldSemanticsModifierNode coreTextFieldSemanticsModifierNode, int i) {
        this.$r8$classId = i;
        this.f$0 = coreTextFieldSemanticsModifierNode;
    }
}
