package androidx.compose.foundation.text;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.AndroidPaint_androidKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.ImeAction;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoreTextField.kt */
/* loaded from: classes.dex */
public final class LegacyTextFieldState {
    private LayoutCoordinates _layoutCoordinates;
    private final MutableState deletionPreviewHighlightRange$delegate;
    private final MutableState handleState$delegate;
    private final MutableState hasFocus$delegate;
    private final Paint highlightPaint;
    private TextInputSession inputSession;
    private final MutableState isInTouchMode$delegate;
    private boolean isLayoutResultStale;
    private final KeyboardActionRunner keyboardActionRunner;
    private final SoftwareKeyboardController keyboardController;
    private final MutableState layoutResultState;
    private final MutableState minHeightForSingleLineField$delegate;
    private final Function1 onImeActionPerformed;
    private final Function1 onValueChange;
    private Function1 onValueChangeOriginal;
    private final EditProcessor processor = new EditProcessor();
    private final RecomposeScope recomposeScope;
    private long selectionBackgroundColor;
    private final MutableState selectionPreviewHighlightRange$delegate;
    private final MutableState showCursorHandle$delegate;
    private final MutableState showFloatingToolbar$delegate;
    private final MutableState showSelectionHandleEnd$delegate;
    private final MutableState showSelectionHandleStart$delegate;
    private TextDelegate textDelegate;
    private AnnotatedString untransformedText;

    public LegacyTextFieldState(TextDelegate textDelegate, RecomposeScope recomposeScope, SoftwareKeyboardController softwareKeyboardController) {
        this.textDelegate = textDelegate;
        this.recomposeScope = recomposeScope;
        this.keyboardController = softwareKeyboardController;
        Boolean bool = Boolean.FALSE;
        this.hasFocus$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.minHeightForSingleLineField$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Dp.m2422boximpl(Dp.m2424constructorimpl(0)), null, 2, null);
        this.layoutResultState = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.handleState$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(HandleState.None, null, 2, null);
        this.showFloatingToolbar$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showSelectionHandleStart$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showSelectionHandleEnd$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.showCursorHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.isLayoutResultStale = true;
        this.isInTouchMode$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Boolean.TRUE, null, 2, null);
        this.keyboardActionRunner = new KeyboardActionRunner(softwareKeyboardController);
        this.onValueChangeOriginal = new Function1() { // from class: androidx.compose.foundation.text.LegacyTextFieldState$onValueChangeOriginal$1
            public final void invoke(TextFieldValue textFieldValue) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((TextFieldValue) obj);
                return Unit.INSTANCE;
            }
        };
        this.onValueChange = new Function1() { // from class: androidx.compose.foundation.text.LegacyTextFieldState$onValueChange$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((TextFieldValue) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(TextFieldValue textFieldValue) {
                Function1 function1;
                String text = textFieldValue.getText();
                AnnotatedString untransformedText = LegacyTextFieldState.this.getUntransformedText();
                if (!Intrinsics.areEqual(text, untransformedText != null ? untransformedText.getText() : null)) {
                    LegacyTextFieldState.this.setHandleState(HandleState.None);
                }
                LegacyTextFieldState legacyTextFieldState = LegacyTextFieldState.this;
                TextRange.Companion companion = TextRange.Companion;
                legacyTextFieldState.m405setSelectionPreviewHighlightRange5zctL8(companion.m2130getZerod9O1mEE());
                LegacyTextFieldState.this.m403setDeletionPreviewHighlightRange5zctL8(companion.m2130getZerod9O1mEE());
                function1 = LegacyTextFieldState.this.onValueChangeOriginal;
                function1.invoke(textFieldValue);
                LegacyTextFieldState.this.getRecomposeScope().invalidate();
            }
        };
        this.onImeActionPerformed = new Function1() { // from class: androidx.compose.foundation.text.LegacyTextFieldState$onImeActionPerformed$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                m407invokeKlQnJC8(((ImeAction) obj).m2201unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-KlQnJC8, reason: not valid java name */
            public final void m407invokeKlQnJC8(int i) {
                KeyboardActionRunner keyboardActionRunner;
                keyboardActionRunner = LegacyTextFieldState.this.keyboardActionRunner;
                keyboardActionRunner.m395runActionKlQnJC8(i);
            }
        };
        this.highlightPaint = AndroidPaint_androidKt.Paint();
        this.selectionBackgroundColor = Color.Companion.m1317getUnspecified0d7_KjU();
        TextRange.Companion companion = TextRange.Companion;
        this.selectionPreviewHighlightRange$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TextRange.m2113boximpl(companion.m2130getZerod9O1mEE()), null, 2, null);
        this.deletionPreviewHighlightRange$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(TextRange.m2113boximpl(companion.m2130getZerod9O1mEE()), null, 2, null);
    }

    public final TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    public final RecomposeScope getRecomposeScope() {
        return this.recomposeScope;
    }

    public final SoftwareKeyboardController getKeyboardController() {
        return this.keyboardController;
    }

    public final EditProcessor getProcessor() {
        return this.processor;
    }

    public final TextInputSession getInputSession() {
        return this.inputSession;
    }

    public final void setInputSession(TextInputSession textInputSession) {
        this.inputSession = textInputSession;
    }

    public final boolean getHasFocus() {
        return ((Boolean) this.hasFocus$delegate.getValue()).booleanValue();
    }

    public final void setHasFocus(boolean z) {
        this.hasFocus$delegate.setValue(Boolean.valueOf(z));
    }

    /* renamed from: getMinHeightForSingleLineField-D9Ej5fM, reason: not valid java name */
    public final float m400getMinHeightForSingleLineFieldD9Ej5fM() {
        return ((Dp) this.minHeightForSingleLineField$delegate.getValue()).m2430unboximpl();
    }

    /* renamed from: setMinHeightForSingleLineField-0680j_4, reason: not valid java name */
    public final void m404setMinHeightForSingleLineField0680j_4(float f) {
        this.minHeightForSingleLineField$delegate.setValue(Dp.m2422boximpl(f));
    }

    public final LayoutCoordinates getLayoutCoordinates() {
        LayoutCoordinates layoutCoordinates = this._layoutCoordinates;
        if (layoutCoordinates == null || !layoutCoordinates.isAttached()) {
            return null;
        }
        return layoutCoordinates;
    }

    public final void setLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this._layoutCoordinates = layoutCoordinates;
    }

    public final TextLayoutResultProxy getLayoutResult() {
        return (TextLayoutResultProxy) this.layoutResultState.getValue();
    }

    public final void setLayoutResult(TextLayoutResultProxy textLayoutResultProxy) {
        this.layoutResultState.setValue(textLayoutResultProxy);
        this.isLayoutResultStale = false;
    }

    public final AnnotatedString getUntransformedText() {
        return this.untransformedText;
    }

    public final HandleState getHandleState() {
        return (HandleState) this.handleState$delegate.getValue();
    }

    public final void setHandleState(HandleState handleState) {
        this.handleState$delegate.setValue(handleState);
    }

    public final boolean getShowFloatingToolbar() {
        return ((Boolean) this.showFloatingToolbar$delegate.getValue()).booleanValue();
    }

    public final void setShowFloatingToolbar(boolean z) {
        this.showFloatingToolbar$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean getShowSelectionHandleStart() {
        return ((Boolean) this.showSelectionHandleStart$delegate.getValue()).booleanValue();
    }

    public final void setShowSelectionHandleStart(boolean z) {
        this.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean getShowSelectionHandleEnd() {
        return ((Boolean) this.showSelectionHandleEnd$delegate.getValue()).booleanValue();
    }

    public final void setShowSelectionHandleEnd(boolean z) {
        this.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean getShowCursorHandle() {
        return ((Boolean) this.showCursorHandle$delegate.getValue()).booleanValue();
    }

    public final void setShowCursorHandle(boolean z) {
        this.showCursorHandle$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean isLayoutResultStale() {
        return this.isLayoutResultStale;
    }

    public final boolean isInTouchMode() {
        return ((Boolean) this.isInTouchMode$delegate.getValue()).booleanValue();
    }

    public final void setInTouchMode(boolean z) {
        this.isInTouchMode$delegate.setValue(Boolean.valueOf(z));
    }

    public final Function1 getOnValueChange() {
        return this.onValueChange;
    }

    public final Function1 getOnImeActionPerformed() {
        return this.onImeActionPerformed;
    }

    public final Paint getHighlightPaint() {
        return this.highlightPaint;
    }

    /* renamed from: getSelectionBackgroundColor-0d7_KjU, reason: not valid java name */
    public final long m401getSelectionBackgroundColor0d7_KjU() {
        return this.selectionBackgroundColor;
    }

    /* renamed from: getSelectionPreviewHighlightRange-d9O1mEE, reason: not valid java name */
    public final long m402getSelectionPreviewHighlightRanged9O1mEE() {
        return ((TextRange) this.selectionPreviewHighlightRange$delegate.getValue()).m2129unboximpl();
    }

    /* renamed from: setSelectionPreviewHighlightRange-5zc-tL8, reason: not valid java name */
    public final void m405setSelectionPreviewHighlightRange5zctL8(long j) {
        this.selectionPreviewHighlightRange$delegate.setValue(TextRange.m2113boximpl(j));
    }

    /* renamed from: getDeletionPreviewHighlightRange-d9O1mEE, reason: not valid java name */
    public final long m399getDeletionPreviewHighlightRanged9O1mEE() {
        return ((TextRange) this.deletionPreviewHighlightRange$delegate.getValue()).m2129unboximpl();
    }

    /* renamed from: setDeletionPreviewHighlightRange-5zc-tL8, reason: not valid java name */
    public final void m403setDeletionPreviewHighlightRange5zctL8(long j) {
        this.deletionPreviewHighlightRange$delegate.setValue(TextRange.m2113boximpl(j));
    }

    public final boolean hasHighlight() {
        return (TextRange.m2119getCollapsedimpl(m402getSelectionPreviewHighlightRanged9O1mEE()) && TextRange.m2119getCollapsedimpl(m399getDeletionPreviewHighlightRanged9O1mEE())) ? false : true;
    }

    /* renamed from: update-fnh65Uc, reason: not valid java name */
    public final void m406updatefnh65Uc(AnnotatedString annotatedString, AnnotatedString annotatedString2, TextStyle textStyle, boolean z, Density density, FontFamily.Resolver resolver, Function1 function1, KeyboardActions keyboardActions, FocusManager focusManager, long j) {
        TextDelegate m439updateTextDelegaterm0N8CA;
        this.onValueChangeOriginal = function1;
        this.selectionBackgroundColor = j;
        KeyboardActionRunner keyboardActionRunner = this.keyboardActionRunner;
        keyboardActionRunner.setKeyboardActions(keyboardActions);
        keyboardActionRunner.setFocusManager(focusManager);
        this.untransformedText = annotatedString;
        m439updateTextDelegaterm0N8CA = TextDelegateKt.m439updateTextDelegaterm0N8CA(this.textDelegate, annotatedString2, textStyle, density, resolver, (r23 & 32) != 0 ? true : z, (r23 & 64) != 0 ? TextOverflow.Companion.m2383getClipgIe3tQ8() : 0, (r23 & 128) != 0 ? Integer.MAX_VALUE : 0, (r23 & 256) != 0 ? 1 : 0, CollectionsKt.emptyList());
        if (this.textDelegate != m439updateTextDelegaterm0N8CA) {
            this.isLayoutResultStale = true;
        }
        this.textDelegate = m439updateTextDelegaterm0N8CA;
    }
}
