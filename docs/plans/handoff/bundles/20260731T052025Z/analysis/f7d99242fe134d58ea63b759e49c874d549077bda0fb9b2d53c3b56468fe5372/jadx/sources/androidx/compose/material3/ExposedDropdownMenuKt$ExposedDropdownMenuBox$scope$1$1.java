package androidx.compose.material3;

import androidx.compose.runtime.Latch$await$2$2;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.SuspendPointerInputElement;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.navigation.Navigator$$ExternalSyntheticLambda1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 {
    public final /* synthetic */ MutableState $alwaysFocusable;
    public final /* synthetic */ MutableState $anchorTypeState;
    public final /* synthetic */ ParcelableSnapshotMutableIntState $anchorWidth$delegate;
    public final /* synthetic */ String $collapsedDescription;
    public final /* synthetic */ boolean $expanded;
    public final /* synthetic */ String $expandedDescription;
    public final /* synthetic */ FocusRequester $focusRequester;
    public final /* synthetic */ SoftwareKeyboardController $keyboardController;
    public final /* synthetic */ ParcelableSnapshotMutableIntState $menuMaxHeight$delegate;
    public final /* synthetic */ Function1 $onExpandedChange;
    public final /* synthetic */ String $toggleDescription;

    public ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1(FocusRequester focusRequester, boolean z, MutableState mutableState, String str, String str2, String str3, SoftwareKeyboardController softwareKeyboardController, MutableState mutableState2, Function1 function1, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState, ParcelableSnapshotMutableIntState parcelableSnapshotMutableIntState2) {
        this.$focusRequester = focusRequester;
        this.$expanded = z;
        this.$alwaysFocusable = mutableState;
        this.$expandedDescription = str;
        this.$collapsedDescription = str2;
        this.$toggleDescription = str3;
        this.$keyboardController = softwareKeyboardController;
        this.$anchorTypeState = mutableState2;
        this.$onExpandedChange = function1;
        this.$anchorWidth$delegate = parcelableSnapshotMutableIntState;
        this.$menuMaxHeight$delegate = parcelableSnapshotMutableIntState2;
    }

    /* renamed from: menuAnchor-2Hz36ac$default, reason: not valid java name */
    public static Modifier m342menuAnchor2Hz36ac$default(ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1, Modifier modifier) {
        Modifier focusRequester = FocusTraversalKt.focusRequester(modifier, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$focusRequester);
        MutableState mutableState = exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$anchorTypeState;
        Modifier then = focusRequester.then(new ExposedDropdownMenuAnchorElement(new TooltipKt$$ExternalSyntheticLambda1(mutableState, 9)));
        boolean z = exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$expanded;
        ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2 = new ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2(mutableState, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$onExpandedChange, z);
        return then.then(SemanticsModifierKt.semantics(Key_androidKt.onPreviewKeyEvent(new SuspendPointerInputElement(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2, null, new ExposedDropdownMenuKt$expandable$1(0, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2), 6), new Latch$await$2$2(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2, z, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$alwaysFocusable)), false, new Navigator$$ExternalSyntheticLambda1(z, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$expandedDescription, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$collapsedDescription, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$toggleDescription, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$$ExternalSyntheticLambda2, exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1.$keyboardController)));
    }
}
