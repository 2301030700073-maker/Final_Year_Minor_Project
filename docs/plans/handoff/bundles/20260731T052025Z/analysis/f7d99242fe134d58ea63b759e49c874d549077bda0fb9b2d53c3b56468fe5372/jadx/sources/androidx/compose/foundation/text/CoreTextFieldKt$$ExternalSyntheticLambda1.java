package androidx.compose.foundation.text;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeOwner;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CoreTextFieldKt$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ LegacyTextFieldState f$0;

    public /* synthetic */ CoreTextFieldKt$$ExternalSyntheticLambda1(LegacyTextFieldState legacyTextFieldState, int i) {
        this.$r8$classId = i;
        this.f$0 = legacyTextFieldState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        LegacyTextFieldState legacyTextFieldState = this.f$0;
        switch (i) {
            case 0:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                if (layoutResult != null) {
                    layoutResult.decorationBoxCoordinates = layoutCoordinates;
                }
                return unit;
            case 1:
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = legacyTextFieldState.justAutofilled$delegate;
                TextFieldValue textFieldValue = (TextFieldValue) obj;
                String str = textFieldValue.annotatedString.text;
                AnnotatedString annotatedString = legacyTextFieldState.untransformedText;
                if (!Intrinsics.areEqual(str, annotatedString != null ? annotatedString.text : null)) {
                    legacyTextFieldState.handleState$delegate.setValue(HandleState.None);
                    if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                        parcelableSnapshotMutableState.setValue(Boolean.FALSE);
                    } else {
                        legacyTextFieldState.autofillHighlightOn$delegate.setValue(Boolean.FALSE);
                    }
                }
                long j = TextRange.Zero;
                legacyTextFieldState.m276setSelectionPreviewHighlightRange5zctL8(j);
                legacyTextFieldState.m275setDeletionPreviewHighlightRange5zctL8(j);
                legacyTextFieldState.onValueChangeOriginal.invoke(textFieldValue);
                RecomposeScopeImpl recomposeScopeImpl = legacyTextFieldState.recomposeScope;
                RecomposeScopeOwner recomposeScopeOwner = recomposeScopeImpl.owner;
                if (recomposeScopeOwner != null) {
                    recomposeScopeOwner.invalidate(recomposeScopeImpl, null);
                }
                return unit;
            case 2:
                legacyTextFieldState.keyboardActionRunner.m796runActionKlQnJC8(((ImeAction) obj).value);
                return unit;
            case 3:
                return Boolean.valueOf(legacyTextFieldState.keyboardActionRunner.m796runActionKlQnJC8(((ImeAction) obj).value));
            default:
                Boolean bool = (Boolean) obj;
                bool.booleanValue();
                legacyTextFieldState.isInTouchMode$delegate.setValue(bool);
                return unit;
        }
    }
}
