package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.internal.InlineClassHelperKt;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function1;

/* compiled from: NodeKind.kt */
/* loaded from: classes.dex */
final class CanFocusChecker implements FocusProperties {
    public static final CanFocusChecker INSTANCE = new CanFocusChecker();
    private static Boolean canFocusValue;

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getDown() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getEnd() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ Function1 getEnter() {
        Function1 function1;
        function1 = new Function1() { // from class: androidx.compose.ui.focus.FocusProperties$enter$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m1125invoke3ESFkO8(((FocusDirection) obj).m1102unboximpl());
            }

            /* renamed from: invoke-3ESFkO8, reason: not valid java name */
            public final FocusRequester m1125invoke3ESFkO8(int i) {
                return FocusRequester.Companion.getDefault();
            }
        };
        return function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ Function1 getExit() {
        Function1 function1;
        function1 = new Function1() { // from class: androidx.compose.ui.focus.FocusProperties$exit$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return m1126invoke3ESFkO8(((FocusDirection) obj).m1102unboximpl());
            }

            /* renamed from: invoke-3ESFkO8, reason: not valid java name */
            public final FocusRequester m1126invoke3ESFkO8(int i) {
                return FocusRequester.Companion.getDefault();
            }
        };
        return function1;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getLeft() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getNext() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getPrevious() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getRight() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getStart() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public /* synthetic */ FocusRequester getUp() {
        FocusRequester focusRequester;
        focusRequester = FocusRequester.Companion.getDefault();
        return focusRequester;
    }

    private CanFocusChecker() {
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public boolean getCanFocus() {
        Boolean bool = canFocusValue;
        if (bool == null) {
            InlineClassHelperKt.throwIllegalStateExceptionForNullCheck("canFocus is read before it is written");
            throw new KotlinNothingValueException();
        }
        return bool.booleanValue();
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public void setCanFocus(boolean z) {
        canFocusValue = Boolean.valueOf(z);
    }

    public final boolean isCanFocusSet() {
        return canFocusValue != null;
    }

    public final void reset() {
        canFocusValue = null;
    }
}
