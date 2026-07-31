package androidx.compose.material3;

import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda1;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.State;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.DelegatingSoftwareKeyboardController;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.internal.NavControllerImpl;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class MenuKt$$ExternalSyntheticLambda0 implements Function1 {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(LegacyTextFieldState legacyTextFieldState, FocusRequester focusRequester, boolean z, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping) {
        this.f$1 = legacyTextFieldState;
        this.f$2 = focusRequester;
        this.f$0 = z;
        this.f$3 = textFieldSelectionManager;
        this.f$4 = offsetMapping;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj2 = this.f$4;
        boolean z = this.f$0;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        switch (i) {
            case 0:
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = ((MutableTransitionState) obj5).targetState$delegate;
                MutableState mutableState = (MutableState) obj4;
                State state = (State) obj3;
                State state2 = (State) obj2;
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) obj;
                float f = 0.8f;
                float f2 = 1.0f;
                reusableGraphicsLayerScope.setScaleX(!z ? ((Number) state.getValue()).floatValue() : ((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue() ? 1.0f : 0.8f);
                if (!z) {
                    f = ((Number) state.getValue()).floatValue();
                } else if (((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                    f = 1.0f;
                }
                reusableGraphicsLayerScope.setScaleY(f);
                if (!z) {
                    f2 = ((Number) state2.getValue()).floatValue();
                } else if (!((Boolean) parcelableSnapshotMutableState.getValue()).booleanValue()) {
                    f2 = RecyclerView.DECELERATION_RATE;
                }
                reusableGraphicsLayerScope.setAlpha(f2);
                reusableGraphicsLayerScope.m454setTransformOrigin__ExYCQ(((TransformOrigin) mutableState.getValue()).packedValue);
                break;
            case 1:
                LegacyTextFieldState legacyTextFieldState = (LegacyTextFieldState) obj5;
                FocusRequester focusRequester = (FocusRequester) obj4;
                TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) obj3;
                OffsetMapping offsetMapping = (OffsetMapping) obj2;
                Offset offset = (Offset) obj;
                if (legacyTextFieldState.getHasFocus()) {
                    SoftwareKeyboardController softwareKeyboardController = legacyTextFieldState.keyboardController;
                    if (softwareKeyboardController != null) {
                        ((DelegatingSoftwareKeyboardController) softwareKeyboardController).show();
                    }
                } else {
                    FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
                }
                if (legacyTextFieldState.getHasFocus() && z) {
                    if (legacyTextFieldState.getHandleState() == HandleState.Selection) {
                        textFieldSelectionManager.m240deselect_kEHs6E$foundation(offset);
                        break;
                    } else {
                        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                        if (layoutResult != null) {
                            long j = offset.packedValue;
                            CardView.AnonymousClass1 anonymousClass1 = legacyTextFieldState.processor;
                            CoreTextFieldKt$$ExternalSyntheticLambda1 coreTextFieldKt$$ExternalSyntheticLambda1 = legacyTextFieldState.onValueChange;
                            int transformedToOriginal = offsetMapping.transformedToOriginal(layoutResult.m197getOffsetForPosition3MmeM6k(j, true));
                            coreTextFieldKt$$ExternalSyntheticLambda1.invoke(TextFieldValue.m659copy3r_uNRQ$default((TextFieldValue) anonymousClass1.mCardBackground, null, ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal), 5));
                            if (((AnnotatedString) legacyTextFieldState.textDelegate.text).text.length() > 0) {
                                legacyTextFieldState.handleState$delegate.setValue(HandleState.Cursor);
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj;
                navBackStackEntry.getClass();
                ((Ref$BooleanRef) obj5).element = true;
                ((Ref$BooleanRef) obj4).element = true;
                ((NavControllerImpl) obj3).popEntryFromBackStack$navigation_runtime_release(navBackStackEntry, z, (ArrayDeque) obj2);
                break;
        }
        return unit;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(Ref$BooleanRef ref$BooleanRef, Ref$BooleanRef ref$BooleanRef2, NavControllerImpl navControllerImpl, boolean z, ArrayDeque arrayDeque) {
        this.f$1 = ref$BooleanRef;
        this.f$2 = ref$BooleanRef2;
        this.f$3 = navControllerImpl;
        this.f$0 = z;
        this.f$4 = arrayDeque;
    }

    public /* synthetic */ MenuKt$$ExternalSyntheticLambda0(boolean z, MutableTransitionState mutableTransitionState, MutableState mutableState, Transition.TransitionAnimationState transitionAnimationState, Transition.TransitionAnimationState transitionAnimationState2) {
        this.f$0 = z;
        this.f$1 = mutableTransitionState;
        this.f$2 = mutableState;
        this.f$3 = transitionAnimationState;
        this.f$4 = transitionAnimationState2;
    }
}
