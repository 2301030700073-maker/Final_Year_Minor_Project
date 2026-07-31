package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.Transition;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.text.TextStyle;
import kotlin.Function;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ModalBottomSheetKt$ModalBottomSheetContent$7 implements Function2 {
    public final /* synthetic */ Function $animateToDismiss;
    public final /* synthetic */ Object $content;
    public final /* synthetic */ Object $contentWindowInsets;
    public final /* synthetic */ Object $dragHandle;
    public final /* synthetic */ Object $predictiveBackProgress;
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object $scope;
    public final /* synthetic */ boolean $sheetGesturesEnabled;
    public final /* synthetic */ Object $sheetState;

    public ModalBottomSheetKt$ModalBottomSheetContent$7(SheetState sheetState, Function0 function0, CoroutineScope coroutineScope, boolean z, String str, String str2, String str3, Function2 function2) {
        this.$sheetState = sheetState;
        this.$animateToDismiss = function0;
        this.$scope = coroutineScope;
        this.$sheetGesturesEnabled = z;
        this.$dragHandle = str;
        this.$predictiveBackProgress = str2;
        this.$content = str3;
        this.$contentWindowInsets = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01be  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x013e  */
    @Override // kotlin.jvm.functions.Function2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r55, java.lang.Object r56) {
        /*
            Method dump skipped, instructions count: 1446
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public ModalBottomSheetKt$ModalBottomSheetContent$7(TextStyle textStyle, TextStyle textStyle2, Transition.TransitionAnimationState transitionAnimationState, Transition.TransitionAnimationState transitionAnimationState2, boolean z, Transition.TransitionAnimationState transitionAnimationState3, Function3 function3, TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$1) {
        this.$contentWindowInsets = textStyle;
        this.$dragHandle = textStyle2;
        this.$predictiveBackProgress = transitionAnimationState;
        this.$sheetState = transitionAnimationState2;
        this.$sheetGesturesEnabled = z;
        this.$content = transitionAnimationState3;
        this.$animateToDismiss = function3;
        this.$scope = textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
    }

    public ModalBottomSheetKt$ModalBottomSheetContent$7(Function2 function2, Animatable animatable, SheetState sheetState, Function2 function22, ComposableLambdaImpl composableLambdaImpl, Function0 function0, CoroutineScope coroutineScope, boolean z) {
        this.$contentWindowInsets = function2;
        this.$predictiveBackProgress = animatable;
        this.$sheetState = sheetState;
        this.$dragHandle = function22;
        this.$content = composableLambdaImpl;
        this.$animateToDismiss = function0;
        this.$scope = coroutineScope;
        this.$sheetGesturesEnabled = z;
    }
}
