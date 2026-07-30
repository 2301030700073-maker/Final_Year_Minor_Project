package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDelegate;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextFieldCursorKt;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.TextToolbarStatus;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextFieldValueKt;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: TextFieldSelectionManager.kt */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager {
    private ClipboardManager clipboardManager;
    private final MutableState currentDragPosition$delegate;
    private Integer dragBeginOffsetInText;
    private long dragBeginPosition;
    private long dragTotalDistance;
    private final MutableState draggingHandle$delegate;
    private final MutableState editable$delegate;
    private final MutableState enabled$delegate;
    private FocusRequester focusRequester;
    private HapticFeedback hapticFeedBack;
    private final MouseSelectionObserver mouseSelectionObserver;
    private TextFieldValue oldValue;
    private int previousRawDragOffset;
    private SelectionLayout previousSelectionLayout;
    private LegacyTextFieldState state;
    private TextToolbar textToolbar;
    private final TextDragObserver touchSelectionObserver;
    private final UndoManager undoManager;
    private OffsetMapping offsetMapping = ValidatingOffsetMappingKt.getValidatingEmptyOffsetMappingIdentity();
    private Function1 onValueChange = new Function1() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$onValueChange$1
        public final void invoke(TextFieldValue textFieldValue) {
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            invoke((TextFieldValue) obj);
            return Unit.INSTANCE;
        }
    };
    private final MutableState value$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(new TextFieldValue((String) null, 0, (TextRange) null, 7, (DefaultConstructorMarker) null), null, 2, null);
    private VisualTransformation visualTransformation = VisualTransformation.Companion.getNone();

    public TextFieldSelectionManager(UndoManager undoManager) {
        this.undoManager = undoManager;
        Boolean bool = Boolean.TRUE;
        this.editable$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        this.enabled$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(bool, null, 2, null);
        Offset.Companion companion = Offset.Companion;
        this.dragBeginPosition = companion.m1179getZeroF1C5BW0();
        this.dragTotalDistance = companion.m1179getZeroF1C5BW0();
        this.draggingHandle$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.currentDragPosition$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.previousRawDragOffset = -1;
        this.oldValue = new TextFieldValue((String) null, 0L, (TextRange) null, 7, (DefaultConstructorMarker) null);
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo441onDownk4lQ0M(long j) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo443onStartk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                TextFieldValue m559createTextFieldValueFDrldGo;
                long j2;
                TextLayoutResultProxy layoutResult2;
                long m562updateSelection8UEBfa8;
                if (TextFieldSelectionManager.this.getEnabled() && TextFieldSelectionManager.this.getDraggingHandle() == null) {
                    TextFieldSelectionManager.this.setDraggingHandle(Handle.SelectionEnd);
                    TextFieldSelectionManager.this.previousRawDragOffset = -1;
                    TextFieldSelectionManager.this.hideSelectionToolbar$foundation_release();
                    LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                    if (state$foundation_release == null || (layoutResult2 = state$foundation_release.getLayoutResult()) == null || !layoutResult2.m469isPositionOnTextk4lQ0M(j)) {
                        LegacyTextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                        if (state$foundation_release2 != null && (layoutResult = state$foundation_release2.getLayoutResult()) != null) {
                            TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                            int transformedToOriginal = textFieldSelectionManager.getOffsetMapping$foundation_release().transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(layoutResult, j, false, 2, null));
                            m559createTextFieldValueFDrldGo = textFieldSelectionManager.m559createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(transformedToOriginal, transformedToOriginal));
                            textFieldSelectionManager.enterSelectionMode$foundation_release(false);
                            HapticFeedback hapticFeedBack = textFieldSelectionManager.getHapticFeedBack();
                            if (hapticFeedBack != null) {
                                hapticFeedBack.mo1586performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m1590getTextHandleMove5zf0vsI());
                            }
                            textFieldSelectionManager.getOnValueChange$foundation_release().invoke(m559createTextFieldValueFDrldGo);
                        }
                    } else {
                        if (TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0) {
                            return;
                        }
                        TextFieldSelectionManager.this.enterSelectionMode$foundation_release(false);
                        TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                        m562updateSelection8UEBfa8 = textFieldSelectionManager2.m562updateSelection8UEBfa8(TextFieldValue.m2244copy3r_uNRQ$default(textFieldSelectionManager2.getValue$foundation_release(), null, TextRange.Companion.m2130getZerod9O1mEE(), null, 5, null), j, true, false, SelectionAdjustment.Companion.getWord(), true);
                        TextFieldSelectionManager.this.dragBeginOffsetInText = Integer.valueOf(TextRange.m2125getStartimpl(m562updateSelection8UEBfa8));
                    }
                    TextFieldSelectionManager.this.setHandleState(HandleState.None);
                    TextFieldSelectionManager.this.dragBeginPosition = j;
                    TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                    j2 = textFieldSelectionManager3.dragBeginPosition;
                    textFieldSelectionManager3.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(j2));
                    TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1179getZeroF1C5BW0();
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo442onDragk4lQ0M(long j) {
                long j2;
                TextLayoutResultProxy layoutResult;
                long j3;
                long j4;
                Integer num;
                Integer num2;
                long j5;
                int m468getOffsetForPosition3MmeM6k;
                Integer num3;
                long m562updateSelection8UEBfa8;
                long j6;
                SelectionAdjustment word;
                if (!TextFieldSelectionManager.this.getEnabled() || TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j2 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1172plusMKHz9U(j2, j);
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null && (layoutResult = state$foundation_release.getLayoutResult()) != null) {
                    TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                    j3 = textFieldSelectionManager2.dragBeginPosition;
                    j4 = textFieldSelectionManager2.dragTotalDistance;
                    textFieldSelectionManager2.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(Offset.m1172plusMKHz9U(j3, j4)));
                    num = textFieldSelectionManager2.dragBeginOffsetInText;
                    if (num == null) {
                        Offset m564getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                        Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E);
                        if (!layoutResult.m469isPositionOnTextk4lQ0M(m564getCurrentDragPosition_m7T9E.m1176unboximpl())) {
                            OffsetMapping offsetMapping$foundation_release = textFieldSelectionManager2.getOffsetMapping$foundation_release();
                            j6 = textFieldSelectionManager2.dragBeginPosition;
                            int transformedToOriginal = offsetMapping$foundation_release.transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(layoutResult, j6, false, 2, null));
                            OffsetMapping offsetMapping$foundation_release2 = textFieldSelectionManager2.getOffsetMapping$foundation_release();
                            Offset m564getCurrentDragPosition_m7T9E2 = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                            Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E2);
                            if (transformedToOriginal == offsetMapping$foundation_release2.transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(layoutResult, m564getCurrentDragPosition_m7T9E2.m1176unboximpl(), false, 2, null))) {
                                word = SelectionAdjustment.Companion.getNone();
                            } else {
                                word = SelectionAdjustment.Companion.getWord();
                            }
                            TextFieldValue value$foundation_release = textFieldSelectionManager2.getValue$foundation_release();
                            Offset m564getCurrentDragPosition_m7T9E3 = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                            Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E3);
                            m562updateSelection8UEBfa8 = textFieldSelectionManager2.m562updateSelection8UEBfa8(value$foundation_release, m564getCurrentDragPosition_m7T9E3.m1176unboximpl(), false, false, word, true);
                            TextRange.m2113boximpl(m562updateSelection8UEBfa8);
                        }
                    }
                    num2 = textFieldSelectionManager2.dragBeginOffsetInText;
                    if (num2 != null) {
                        m468getOffsetForPosition3MmeM6k = num2.intValue();
                    } else {
                        j5 = textFieldSelectionManager2.dragBeginPosition;
                        m468getOffsetForPosition3MmeM6k = layoutResult.m468getOffsetForPosition3MmeM6k(j5, false);
                    }
                    Offset m564getCurrentDragPosition_m7T9E4 = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                    Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E4);
                    int m468getOffsetForPosition3MmeM6k2 = layoutResult.m468getOffsetForPosition3MmeM6k(m564getCurrentDragPosition_m7T9E4.m1176unboximpl(), false);
                    num3 = textFieldSelectionManager2.dragBeginOffsetInText;
                    if (num3 == null && m468getOffsetForPosition3MmeM6k == m468getOffsetForPosition3MmeM6k2) {
                        return;
                    }
                    TextFieldValue value$foundation_release2 = textFieldSelectionManager2.getValue$foundation_release();
                    Offset m564getCurrentDragPosition_m7T9E5 = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                    Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E5);
                    m562updateSelection8UEBfa8 = textFieldSelectionManager2.m562updateSelection8UEBfa8(value$foundation_release2, m564getCurrentDragPosition_m7T9E5.m1176unboximpl(), false, false, SelectionAdjustment.Companion.getWord(), true);
                    TextRange.m2113boximpl(m562updateSelection8UEBfa8);
                }
                TextFieldSelectionManager.this.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                onEnd();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
                onEnd();
            }

            private final void onEnd() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(null);
                TextFieldSelectionManager.this.updateFloatingToolbar(true);
                TextFieldSelectionManager.this.dragBeginOffsetInText = null;
                boolean m2119getCollapsedimpl = TextRange.m2119getCollapsedimpl(TextFieldSelectionManager.this.getValue$foundation_release().m2247getSelectiond9O1mEE());
                TextFieldSelectionManager.this.setHandleState(m2119getCollapsedimpl ? HandleState.Cursor : HandleState.Selection);
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release != null) {
                    state$foundation_release.setShowSelectionHandleStart(!m2119getCollapsedimpl && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(TextFieldSelectionManager.this, true));
                }
                LegacyTextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release2 != null) {
                    state$foundation_release2.setShowSelectionHandleEnd(!m2119getCollapsedimpl && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(TextFieldSelectionManager.this, false));
                }
                LegacyTextFieldState state$foundation_release3 = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release3 == null) {
                    return;
                }
                state$foundation_release3.setShowCursorHandle(m2119getCollapsedimpl && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(TextFieldSelectionManager.this, true));
            }
        };
        this.mouseSelectionObserver = new MouseSelectionObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$mouseSelectionObserver$1
            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            public void onDragDone() {
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtend-k-4lQ0M */
            public boolean mo544onExtendk4lQ0M(long j) {
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release == null || state$foundation_release.getLayoutResult() == null || !TextFieldSelectionManager.this.getEnabled()) {
                    return false;
                }
                TextFieldSelectionManager.this.previousRawDragOffset = -1;
                updateMouseSelection(TextFieldSelectionManager.this.getValue$foundation_release(), j, false, SelectionAdjustment.Companion.getNone());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onExtendDrag-k-4lQ0M */
            public boolean mo545onExtendDragk4lQ0M(long j) {
                LegacyTextFieldState state$foundation_release;
                if (!TextFieldSelectionManager.this.getEnabled() || TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0 || (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) == null || state$foundation_release.getLayoutResult() == null) {
                    return false;
                }
                updateMouseSelection(TextFieldSelectionManager.this.getValue$foundation_release(), j, false, SelectionAdjustment.Companion.getNone());
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onStart-3MmeM6k */
            public boolean mo546onStart3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                LegacyTextFieldState state$foundation_release;
                long j2;
                if (!TextFieldSelectionManager.this.getEnabled() || TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0 || (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) == null || state$foundation_release.getLayoutResult() == null) {
                    return false;
                }
                FocusRequester focusRequester = TextFieldSelectionManager.this.getFocusRequester();
                if (focusRequester != null) {
                    focusRequester.requestFocus();
                }
                TextFieldSelectionManager.this.dragBeginPosition = j;
                TextFieldSelectionManager.this.previousRawDragOffset = -1;
                TextFieldSelectionManager.enterSelectionMode$foundation_release$default(TextFieldSelectionManager.this, false, 1, null);
                TextFieldValue value$foundation_release = TextFieldSelectionManager.this.getValue$foundation_release();
                j2 = TextFieldSelectionManager.this.dragBeginPosition;
                updateMouseSelection(value$foundation_release, j2, true, selectionAdjustment);
                return true;
            }

            @Override // androidx.compose.foundation.text.selection.MouseSelectionObserver
            /* renamed from: onDrag-3MmeM6k */
            public boolean mo543onDrag3MmeM6k(long j, SelectionAdjustment selectionAdjustment) {
                LegacyTextFieldState state$foundation_release;
                if (!TextFieldSelectionManager.this.getEnabled() || TextFieldSelectionManager.this.getValue$foundation_release().getText().length() == 0 || (state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release()) == null || state$foundation_release.getLayoutResult() == null) {
                    return false;
                }
                updateMouseSelection(TextFieldSelectionManager.this.getValue$foundation_release(), j, false, selectionAdjustment);
                return true;
            }

            public final void updateMouseSelection(TextFieldValue textFieldValue, long j, boolean z, SelectionAdjustment selectionAdjustment) {
                long m562updateSelection8UEBfa8;
                m562updateSelection8UEBfa8 = TextFieldSelectionManager.this.m562updateSelection8UEBfa8(textFieldValue, j, z, false, selectionAdjustment, false);
                TextFieldSelectionManager.this.setHandleState(TextRange.m2119getCollapsedimpl(m562updateSelection8UEBfa8) ? HandleState.Cursor : HandleState.Selection);
            }
        };
    }

    public final OffsetMapping getOffsetMapping$foundation_release() {
        return this.offsetMapping;
    }

    public final void setOffsetMapping$foundation_release(OffsetMapping offsetMapping) {
        this.offsetMapping = offsetMapping;
    }

    public final Function1 getOnValueChange$foundation_release() {
        return this.onValueChange;
    }

    public final void setOnValueChange$foundation_release(Function1 function1) {
        this.onValueChange = function1;
    }

    public final LegacyTextFieldState getState$foundation_release() {
        return this.state;
    }

    public final void setState$foundation_release(LegacyTextFieldState legacyTextFieldState) {
        this.state = legacyTextFieldState;
    }

    public final TextFieldValue getValue$foundation_release() {
        return (TextFieldValue) this.value$delegate.getValue();
    }

    public final void setValue$foundation_release(TextFieldValue textFieldValue) {
        this.value$delegate.setValue(textFieldValue);
    }

    public final AnnotatedString getTransformedText$foundation_release() {
        TextDelegate textDelegate;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (textDelegate = legacyTextFieldState.getTextDelegate()) == null) {
            return null;
        }
        return textDelegate.getText();
    }

    public final VisualTransformation getVisualTransformation$foundation_release() {
        return this.visualTransformation;
    }

    public final void setVisualTransformation$foundation_release(VisualTransformation visualTransformation) {
        this.visualTransformation = visualTransformation;
    }

    public final ClipboardManager getClipboardManager$foundation_release() {
        return this.clipboardManager;
    }

    public final void setClipboardManager$foundation_release(ClipboardManager clipboardManager) {
        this.clipboardManager = clipboardManager;
    }

    public final void setTextToolbar(TextToolbar textToolbar) {
        this.textToolbar = textToolbar;
    }

    public final HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    public final void setHapticFeedBack(HapticFeedback hapticFeedback) {
        this.hapticFeedBack = hapticFeedback;
    }

    public final FocusRequester getFocusRequester() {
        return this.focusRequester;
    }

    public final void setFocusRequester(FocusRequester focusRequester) {
        this.focusRequester = focusRequester;
    }

    public final boolean getEditable() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    public final void setEditable(boolean z) {
        this.editable$delegate.setValue(Boolean.valueOf(z));
    }

    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue()).booleanValue();
    }

    public final void setEnabled(boolean z) {
        this.enabled$delegate.setValue(Boolean.valueOf(z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    public final Handle getDraggingHandle() {
        return (Handle) this.draggingHandle$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setCurrentDragPosition-_kEHs6E, reason: not valid java name */
    public final void m561setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    /* renamed from: getCurrentDragPosition-_m7T9-E, reason: not valid java name */
    public final Offset m564getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    public final TextDragObserver getTouchSelectionObserver$foundation_release() {
        return this.touchSelectionObserver;
    }

    public final MouseSelectionObserver getMouseSelectionObserver$foundation_release() {
        return this.mouseSelectionObserver;
    }

    public final TextDragObserver handleDragObserver$foundation_release(final boolean z) {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$handleDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo443onStartk4lQ0M(long j) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo441onDownk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                TextFieldSelectionManager.this.setDraggingHandle(z ? Handle.SelectionStart : Handle.SelectionEnd);
                long m548getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m548getAdjustedCoordinatesk4lQ0M(TextFieldSelectionManager.this.m566getHandlePositiontuRUvjQ$foundation_release(z));
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
                    return;
                }
                long m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release = layoutResult.m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release(m548getAdjustedCoordinatesk4lQ0M);
                TextFieldSelectionManager.this.dragBeginPosition = m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release;
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release));
                TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1179getZeroF1C5BW0();
                TextFieldSelectionManager.this.previousRawDragOffset = -1;
                LegacyTextFieldState state$foundation_release2 = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release2 != null) {
                    state$foundation_release2.setInTouchMode(true);
                }
                TextFieldSelectionManager.this.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(null);
                TextFieldSelectionManager.this.updateFloatingToolbar(true);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo442onDragk4lQ0M(long j) {
                long j2;
                long j3;
                long j4;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j2 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1172plusMKHz9U(j2, j);
                TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                j3 = textFieldSelectionManager2.dragBeginPosition;
                j4 = TextFieldSelectionManager.this.dragTotalDistance;
                textFieldSelectionManager2.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(Offset.m1172plusMKHz9U(j3, j4)));
                TextFieldSelectionManager textFieldSelectionManager3 = TextFieldSelectionManager.this;
                TextFieldValue value$foundation_release = textFieldSelectionManager3.getValue$foundation_release();
                Offset m564getCurrentDragPosition_m7T9E = TextFieldSelectionManager.this.m564getCurrentDragPosition_m7T9E();
                Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E);
                textFieldSelectionManager3.m562updateSelection8UEBfa8(value$foundation_release, m564getCurrentDragPosition_m7T9E.m1176unboximpl(), false, z, SelectionAdjustment.Companion.getCharacterWithWordAccelerate(), true);
                TextFieldSelectionManager.this.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(null);
                TextFieldSelectionManager.this.updateFloatingToolbar(true);
            }
        };
    }

    public final TextDragObserver cursorDragObserver$foundation_release() {
        return new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$cursorDragObserver$1
            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onCancel() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public void mo441onDownk4lQ0M(long j) {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onUp() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(null);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-k-4lQ0M */
            public void mo443onStartk4lQ0M(long j) {
                TextLayoutResultProxy layoutResult;
                long m548getAdjustedCoordinatesk4lQ0M = SelectionHandlesKt.m548getAdjustedCoordinatesk4lQ0M(TextFieldSelectionManager.this.m566getHandlePositiontuRUvjQ$foundation_release(true));
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
                    return;
                }
                long m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release = layoutResult.m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release(m548getAdjustedCoordinatesk4lQ0M);
                TextFieldSelectionManager.this.dragBeginPosition = m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release;
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(m471translateInnerToDecorationCoordinatesMKHz9U$foundation_release));
                TextFieldSelectionManager.this.dragTotalDistance = Offset.Companion.m1179getZeroF1C5BW0();
                TextFieldSelectionManager.this.setDraggingHandle(Handle.Cursor);
                TextFieldSelectionManager.this.updateFloatingToolbar(false);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            public void mo442onDragk4lQ0M(long j) {
                long j2;
                TextLayoutResultProxy layoutResult;
                long j3;
                long j4;
                HapticFeedback hapticFeedBack;
                TextFieldValue m559createTextFieldValueFDrldGo;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                j2 = textFieldSelectionManager.dragTotalDistance;
                textFieldSelectionManager.dragTotalDistance = Offset.m1172plusMKHz9U(j2, j);
                LegacyTextFieldState state$foundation_release = TextFieldSelectionManager.this.getState$foundation_release();
                if (state$foundation_release == null || (layoutResult = state$foundation_release.getLayoutResult()) == null) {
                    return;
                }
                TextFieldSelectionManager textFieldSelectionManager2 = TextFieldSelectionManager.this;
                j3 = textFieldSelectionManager2.dragBeginPosition;
                j4 = textFieldSelectionManager2.dragTotalDistance;
                textFieldSelectionManager2.m561setCurrentDragPosition_kEHs6E(Offset.m1158boximpl(Offset.m1172plusMKHz9U(j3, j4)));
                OffsetMapping offsetMapping$foundation_release = textFieldSelectionManager2.getOffsetMapping$foundation_release();
                Offset m564getCurrentDragPosition_m7T9E = textFieldSelectionManager2.m564getCurrentDragPosition_m7T9E();
                Intrinsics.checkNotNull(m564getCurrentDragPosition_m7T9E);
                int transformedToOriginal = offsetMapping$foundation_release.transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(layoutResult, m564getCurrentDragPosition_m7T9E.m1176unboximpl(), false, 2, null));
                long TextRange = TextRangeKt.TextRange(transformedToOriginal, transformedToOriginal);
                if (TextRange.m2118equalsimpl0(TextRange, textFieldSelectionManager2.getValue$foundation_release().m2247getSelectiond9O1mEE())) {
                    return;
                }
                LegacyTextFieldState state$foundation_release2 = textFieldSelectionManager2.getState$foundation_release();
                if ((state$foundation_release2 == null || state$foundation_release2.isInTouchMode()) && (hapticFeedBack = textFieldSelectionManager2.getHapticFeedBack()) != null) {
                    hapticFeedBack.mo1586performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m1590getTextHandleMove5zf0vsI());
                }
                Function1 onValueChange$foundation_release = textFieldSelectionManager2.getOnValueChange$foundation_release();
                m559createTextFieldValueFDrldGo = textFieldSelectionManager2.m559createTextFieldValueFDrldGo(textFieldSelectionManager2.getValue$foundation_release().getAnnotatedString(), TextRange);
                onValueChange$foundation_release.invoke(m559createTextFieldValueFDrldGo);
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public void onStop() {
                TextFieldSelectionManager.this.setDraggingHandle(null);
                TextFieldSelectionManager.this.m561setCurrentDragPosition_kEHs6E(null);
            }
        };
    }

    public static /* synthetic */ void enterSelectionMode$foundation_release$default(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        textFieldSelectionManager.enterSelectionMode$foundation_release(z);
    }

    public final void enterSelectionMode$foundation_release(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null && !legacyTextFieldState.getHasFocus() && (focusRequester = this.focusRequester) != null) {
            focusRequester.requestFocus();
        }
        this.oldValue = getValue$foundation_release();
        updateFloatingToolbar(z);
        setHandleState(HandleState.Selection);
    }

    public final void exitSelectionMode$foundation_release() {
        updateFloatingToolbar(false);
        setHandleState(HandleState.None);
    }

    /* renamed from: deselect-_kEHs6E$foundation_release$default, reason: not valid java name */
    public static /* synthetic */ void m560deselect_kEHs6E$foundation_release$default(TextFieldSelectionManager textFieldSelectionManager, Offset offset, int i, Object obj) {
        if ((i & 1) != 0) {
            offset = null;
        }
        textFieldSelectionManager.m563deselect_kEHs6E$foundation_release(offset);
    }

    /* renamed from: deselect-_kEHs6E$foundation_release, reason: not valid java name */
    public final void m563deselect_kEHs6E$foundation_release(Offset offset) {
        int m2122getMaximpl;
        if (!TextRange.m2119getCollapsedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE())) {
            LegacyTextFieldState legacyTextFieldState = this.state;
            TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
            if (offset != null && layoutResult != null) {
                m2122getMaximpl = this.offsetMapping.transformedToOriginal(TextLayoutResultProxy.m467getOffsetForPosition3MmeM6k$default(layoutResult, offset.m1176unboximpl(), false, 2, null));
            } else {
                m2122getMaximpl = TextRange.m2122getMaximpl(getValue$foundation_release().m2247getSelectiond9O1mEE());
            }
            this.onValueChange.invoke(TextFieldValue.m2244copy3r_uNRQ$default(getValue$foundation_release(), null, TextRangeKt.TextRange(m2122getMaximpl), null, 5, null));
        }
        setHandleState((offset == null || getValue$foundation_release().getText().length() <= 0) ? HandleState.None : HandleState.Cursor);
        updateFloatingToolbar(false);
    }

    /* renamed from: setSelectionPreviewHighlight-5zc-tL8$foundation_release, reason: not valid java name */
    public final void m568setSelectionPreviewHighlight5zctL8$foundation_release(long j) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m405setSelectionPreviewHighlightRange5zctL8(j);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.m403setDeletionPreviewHighlightRange5zctL8(TextRange.Companion.m2130getZerod9O1mEE());
        }
        if (TextRange.m2119getCollapsedimpl(j)) {
            return;
        }
        exitSelectionMode$foundation_release();
    }

    /* renamed from: setDeletionPreviewHighlight-5zc-tL8$foundation_release, reason: not valid java name */
    public final void m567setDeletionPreviewHighlight5zctL8$foundation_release(long j) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m403setDeletionPreviewHighlightRange5zctL8(j);
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.m405setSelectionPreviewHighlightRange5zctL8(TextRange.Companion.m2130getZerod9O1mEE());
        }
        if (TextRange.m2119getCollapsedimpl(j)) {
            return;
        }
        exitSelectionMode$foundation_release();
    }

    public final void clearPreviewHighlight$foundation_release() {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.m403setDeletionPreviewHighlightRange5zctL8(TextRange.Companion.m2130getZerod9O1mEE());
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 == null) {
            return;
        }
        legacyTextFieldState2.m405setSelectionPreviewHighlightRange5zctL8(TextRange.Companion.m2130getZerod9O1mEE());
    }

    public static /* synthetic */ void copy$foundation_release$default(TextFieldSelectionManager textFieldSelectionManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        textFieldSelectionManager.copy$foundation_release(z);
    }

    public final void copy$foundation_release(boolean z) {
        if (TextRange.m2119getCollapsedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.setText(TextFieldValueKt.getSelectedText(getValue$foundation_release()));
        }
        if (z) {
            int m2122getMaximpl = TextRange.m2122getMaximpl(getValue$foundation_release().m2247getSelectiond9O1mEE());
            this.onValueChange.invoke(m559createTextFieldValueFDrldGo(getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(m2122getMaximpl, m2122getMaximpl)));
            setHandleState(HandleState.None);
        }
    }

    public final void paste$foundation_release() {
        AnnotatedString text;
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager == null || (text = clipboardManager.getText()) == null) {
            return;
        }
        AnnotatedString plus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()).plus(text).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()));
        int m2123getMinimpl = TextRange.m2123getMinimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()) + text.length();
        this.onValueChange.invoke(m559createTextFieldValueFDrldGo(plus, TextRangeKt.TextRange(m2123getMinimpl, m2123getMinimpl)));
        setHandleState(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.forceNextSnapshot();
        }
    }

    public final void cut$foundation_release() {
        if (TextRange.m2119getCollapsedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE())) {
            return;
        }
        ClipboardManager clipboardManager = this.clipboardManager;
        if (clipboardManager != null) {
            clipboardManager.setText(TextFieldValueKt.getSelectedText(getValue$foundation_release()));
        }
        AnnotatedString plus = TextFieldValueKt.getTextBeforeSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()).plus(TextFieldValueKt.getTextAfterSelection(getValue$foundation_release(), getValue$foundation_release().getText().length()));
        int m2123getMinimpl = TextRange.m2123getMinimpl(getValue$foundation_release().m2247getSelectiond9O1mEE());
        this.onValueChange.invoke(m559createTextFieldValueFDrldGo(plus, TextRangeKt.TextRange(m2123getMinimpl, m2123getMinimpl)));
        setHandleState(HandleState.None);
        UndoManager undoManager = this.undoManager;
        if (undoManager != null) {
            undoManager.forceNextSnapshot();
        }
    }

    public final void selectAll$foundation_release() {
        TextFieldValue m559createTextFieldValueFDrldGo = m559createTextFieldValueFDrldGo(getValue$foundation_release().getAnnotatedString(), TextRangeKt.TextRange(0, getValue$foundation_release().getText().length()));
        this.onValueChange.invoke(m559createTextFieldValueFDrldGo);
        this.oldValue = TextFieldValue.m2244copy3r_uNRQ$default(this.oldValue, null, m559createTextFieldValueFDrldGo.m2247getSelectiond9O1mEE(), null, 5, null);
        enterSelectionMode$foundation_release(true);
    }

    /* renamed from: getHandlePosition-tuRUvjQ$foundation_release, reason: not valid java name */
    public final long m566getHandlePositiontuRUvjQ$foundation_release(boolean z) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null || (value = layoutResult.getValue()) == null) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        AnnotatedString transformedText$foundation_release = getTransformedText$foundation_release();
        if (transformedText$foundation_release == null) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        if (!Intrinsics.areEqual(transformedText$foundation_release.getText(), value.getLayoutInput().getText().getText())) {
            return Offset.Companion.m1178getUnspecifiedF1C5BW0();
        }
        long m2247getSelectiond9O1mEE = getValue$foundation_release().m2247getSelectiond9O1mEE();
        return TextSelectionDelegateKt.getSelectionHandleCoordinates(value, this.offsetMapping.originalToTransformed(z ? TextRange.m2125getStartimpl(m2247getSelectiond9O1mEE) : TextRange.m2120getEndimpl(m2247getSelectiond9O1mEE)), z, TextRange.m2124getReversedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()));
    }

    /* renamed from: getCursorPosition-tuRUvjQ$foundation_release, reason: not valid java name */
    public final long m565getCursorPositiontuRUvjQ$foundation_release(Density density) {
        int originalToTransformed = this.offsetMapping.originalToTransformed(TextRange.m2125getStartimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()));
        LegacyTextFieldState legacyTextFieldState = this.state;
        TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
        Intrinsics.checkNotNull(layoutResult);
        TextLayoutResult value = layoutResult.getValue();
        Rect cursorRect = value.getCursorRect(RangesKt.coerceIn(originalToTransformed, 0, value.getLayoutInput().getText().length()));
        return OffsetKt.Offset(cursorRect.getLeft() + (density.mo213toPx0680j_4(TextFieldCursorKt.getDefaultCursorThickness()) / 2), cursorRect.getBottom());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateFloatingToolbar(boolean z) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.setShowFloatingToolbar(z);
        }
        if (z) {
            showSelectionToolbar$foundation_release();
        } else {
            hideSelectionToolbar$foundation_release();
        }
    }

    public final void showSelectionToolbar$foundation_release() {
        ClipboardManager clipboardManager;
        if (getEnabled()) {
            LegacyTextFieldState legacyTextFieldState = this.state;
            if (legacyTextFieldState == null || legacyTextFieldState.isInTouchMode()) {
                Function0 function0 = !TextRange.m2119getCollapsedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()) ? new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$copy$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m569invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m569invoke() {
                        TextFieldSelectionManager.copy$foundation_release$default(TextFieldSelectionManager.this, false, 1, null);
                        TextFieldSelectionManager.this.hideSelectionToolbar$foundation_release();
                    }
                } : null;
                Function0 function02 = (TextRange.m2119getCollapsedimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()) || !getEditable()) ? null : new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$cut$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m570invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m570invoke() {
                        TextFieldSelectionManager.this.cut$foundation_release();
                        TextFieldSelectionManager.this.hideSelectionToolbar$foundation_release();
                    }
                };
                Function0 function03 = (getEditable() && (clipboardManager = this.clipboardManager) != null && clipboardManager.hasText()) ? new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$paste$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m571invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m571invoke() {
                        TextFieldSelectionManager.this.paste$foundation_release();
                        TextFieldSelectionManager.this.hideSelectionToolbar$foundation_release();
                    }
                } : null;
                Function0 function04 = TextRange.m2121getLengthimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()) != getValue$foundation_release().getText().length() ? new Function0() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$showSelectionToolbar$selectAll$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m572invoke();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: collision with other method in class */
                    public final void m572invoke() {
                        TextFieldSelectionManager.this.selectAll$foundation_release();
                    }
                } : null;
                TextToolbar textToolbar = this.textToolbar;
                if (textToolbar != null) {
                    textToolbar.showMenu(getContentRect(), function0, function03, function02, function04);
                }
            }
        }
    }

    public final void hideSelectionToolbar$foundation_release() {
        TextToolbar textToolbar;
        TextToolbar textToolbar2 = this.textToolbar;
        if ((textToolbar2 != null ? textToolbar2.getStatus() : null) != TextToolbarStatus.Shown || (textToolbar = this.textToolbar) == null) {
            return;
        }
        textToolbar.hide();
    }

    public final boolean isTextChanged$foundation_release() {
        return !Intrinsics.areEqual(this.oldValue.getText(), getValue$foundation_release().getText());
    }

    private final Rect getContentRect() {
        float f;
        LayoutCoordinates layoutCoordinates;
        TextLayoutResult value;
        Rect cursorRect;
        LayoutCoordinates layoutCoordinates2;
        TextLayoutResult value2;
        Rect cursorRect2;
        LayoutCoordinates layoutCoordinates3;
        LayoutCoordinates layoutCoordinates4;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.isLayoutResultStale()) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                int originalToTransformed = this.offsetMapping.originalToTransformed(TextRange.m2125getStartimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()));
                int originalToTransformed2 = this.offsetMapping.originalToTransformed(TextRange.m2120getEndimpl(getValue$foundation_release().m2247getSelectiond9O1mEE()));
                LegacyTextFieldState legacyTextFieldState2 = this.state;
                long m1179getZeroF1C5BW0 = (legacyTextFieldState2 == null || (layoutCoordinates4 = legacyTextFieldState2.getLayoutCoordinates()) == null) ? Offset.Companion.m1179getZeroF1C5BW0() : layoutCoordinates4.mo1756localToRootMKHz9U(m566getHandlePositiontuRUvjQ$foundation_release(true));
                LegacyTextFieldState legacyTextFieldState3 = this.state;
                long m1179getZeroF1C5BW02 = (legacyTextFieldState3 == null || (layoutCoordinates3 = legacyTextFieldState3.getLayoutCoordinates()) == null) ? Offset.Companion.m1179getZeroF1C5BW0() : layoutCoordinates3.mo1756localToRootMKHz9U(m566getHandlePositiontuRUvjQ$foundation_release(false));
                LegacyTextFieldState legacyTextFieldState4 = this.state;
                float f2 = 0.0f;
                if (legacyTextFieldState4 == null || (layoutCoordinates2 = legacyTextFieldState4.getLayoutCoordinates()) == null) {
                    f = 0.0f;
                } else {
                    TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
                    f = Offset.m1168getYimpl(layoutCoordinates2.mo1756localToRootMKHz9U(OffsetKt.Offset(0.0f, (layoutResult == null || (value2 = layoutResult.getValue()) == null || (cursorRect2 = value2.getCursorRect(originalToTransformed)) == null) ? 0.0f : cursorRect2.getTop())));
                }
                LegacyTextFieldState legacyTextFieldState5 = this.state;
                if (legacyTextFieldState5 != null && (layoutCoordinates = legacyTextFieldState5.getLayoutCoordinates()) != null) {
                    TextLayoutResultProxy layoutResult2 = legacyTextFieldState.getLayoutResult();
                    f2 = Offset.m1168getYimpl(layoutCoordinates.mo1756localToRootMKHz9U(OffsetKt.Offset(0.0f, (layoutResult2 == null || (value = layoutResult2.getValue()) == null || (cursorRect = value.getCursorRect(originalToTransformed2)) == null) ? 0.0f : cursorRect.getTop())));
                }
                return new Rect(Math.min(Offset.m1167getXimpl(m1179getZeroF1C5BW0), Offset.m1167getXimpl(m1179getZeroF1C5BW02)), Math.min(f, f2), Math.max(Offset.m1167getXimpl(m1179getZeroF1C5BW0), Offset.m1167getXimpl(m1179getZeroF1C5BW02)), Math.max(Offset.m1168getYimpl(m1179getZeroF1C5BW0), Offset.m1168getYimpl(m1179getZeroF1C5BW02)) + (Dp.m2424constructorimpl(25) * legacyTextFieldState.getTextDelegate().getDensity().getDensity()));
            }
        }
        return Rect.Companion.getZero();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: updateSelection-8UEBfa8, reason: not valid java name */
    public final long m562updateSelection8UEBfa8(TextFieldValue textFieldValue, long j, boolean z, boolean z2, SelectionAdjustment selectionAdjustment, boolean z3) {
        TextLayoutResultProxy layoutResult;
        HapticFeedback hapticFeedback;
        int i;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) {
            return TextRange.Companion.m2130getZerod9O1mEE();
        }
        long TextRange = TextRangeKt.TextRange(this.offsetMapping.originalToTransformed(TextRange.m2125getStartimpl(textFieldValue.m2247getSelectiond9O1mEE())), this.offsetMapping.originalToTransformed(TextRange.m2120getEndimpl(textFieldValue.m2247getSelectiond9O1mEE())));
        boolean z4 = false;
        int m468getOffsetForPosition3MmeM6k = layoutResult.m468getOffsetForPosition3MmeM6k(j, false);
        int m2125getStartimpl = (z2 || z) ? m468getOffsetForPosition3MmeM6k : TextRange.m2125getStartimpl(TextRange);
        int m2120getEndimpl = (!z2 || z) ? m468getOffsetForPosition3MmeM6k : TextRange.m2120getEndimpl(TextRange);
        SelectionLayout selectionLayout = this.previousSelectionLayout;
        int i2 = -1;
        if (!z && selectionLayout != null && (i = this.previousRawDragOffset) != -1) {
            i2 = i;
        }
        SelectionLayout m549getTextFieldSelectionLayoutRcvTLA = SelectionLayoutKt.m549getTextFieldSelectionLayoutRcvTLA(layoutResult.getValue(), m2125getStartimpl, m2120getEndimpl, i2, TextRange, z, z2);
        if (!m549getTextFieldSelectionLayoutRcvTLA.shouldRecomputeSelection(selectionLayout)) {
            return textFieldValue.m2247getSelectiond9O1mEE();
        }
        this.previousSelectionLayout = m549getTextFieldSelectionLayoutRcvTLA;
        this.previousRawDragOffset = m468getOffsetForPosition3MmeM6k;
        Selection adjust = selectionAdjustment.adjust(m549getTextFieldSelectionLayoutRcvTLA);
        long TextRange2 = TextRangeKt.TextRange(this.offsetMapping.transformedToOriginal(adjust.getStart().getOffset()), this.offsetMapping.transformedToOriginal(adjust.getEnd().getOffset()));
        if (TextRange.m2118equalsimpl0(TextRange2, textFieldValue.m2247getSelectiond9O1mEE())) {
            return textFieldValue.m2247getSelectiond9O1mEE();
        }
        boolean z5 = TextRange.m2124getReversedimpl(TextRange2) != TextRange.m2124getReversedimpl(textFieldValue.m2247getSelectiond9O1mEE()) && TextRange.m2118equalsimpl0(TextRangeKt.TextRange(TextRange.m2120getEndimpl(TextRange2), TextRange.m2125getStartimpl(TextRange2)), textFieldValue.m2247getSelectiond9O1mEE());
        boolean z6 = TextRange.m2119getCollapsedimpl(TextRange2) && TextRange.m2119getCollapsedimpl(textFieldValue.m2247getSelectiond9O1mEE());
        if (z3 && textFieldValue.getText().length() > 0 && !z5 && !z6 && (hapticFeedback = this.hapticFeedBack) != null) {
            hapticFeedback.mo1586performHapticFeedbackCdsT49E(HapticFeedbackType.Companion.m1590getTextHandleMove5zf0vsI());
        }
        this.onValueChange.invoke(m559createTextFieldValueFDrldGo(textFieldValue.getAnnotatedString(), TextRange2));
        if (!z3) {
            updateFloatingToolbar(!TextRange.m2119getCollapsedimpl(TextRange2));
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.setInTouchMode(z3);
        }
        LegacyTextFieldState legacyTextFieldState3 = this.state;
        if (legacyTextFieldState3 != null) {
            legacyTextFieldState3.setShowSelectionHandleStart(!TextRange.m2119getCollapsedimpl(TextRange2) && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(this, true));
        }
        LegacyTextFieldState legacyTextFieldState4 = this.state;
        if (legacyTextFieldState4 != null) {
            legacyTextFieldState4.setShowSelectionHandleEnd(!TextRange.m2119getCollapsedimpl(TextRange2) && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(this, false));
        }
        LegacyTextFieldState legacyTextFieldState5 = this.state;
        if (legacyTextFieldState5 != null) {
            if (TextRange.m2119getCollapsedimpl(TextRange2) && TextFieldSelectionManagerKt.isSelectionHandleInVisibleBound(this, true)) {
                z4 = true;
            }
            legacyTextFieldState5.setShowCursorHandle(z4);
        }
        return TextRange2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setHandleState(HandleState handleState) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.getHandleState() == handleState) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                legacyTextFieldState.setHandleState(handleState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createTextFieldValue-FDrldGo, reason: not valid java name */
    public final TextFieldValue m559createTextFieldValueFDrldGo(AnnotatedString annotatedString, long j) {
        return new TextFieldValue(annotatedString, j, (TextRange) null, 4, (DefaultConstructorMarker) null);
    }
}
