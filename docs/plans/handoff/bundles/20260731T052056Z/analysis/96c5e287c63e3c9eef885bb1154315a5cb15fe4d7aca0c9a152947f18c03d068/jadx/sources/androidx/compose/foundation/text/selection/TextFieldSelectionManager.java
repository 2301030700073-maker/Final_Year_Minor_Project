package androidx.compose.foundation.text.selection;

import androidx.cardview.widget.CardView;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import com.caverock.androidsvg.CSSParser;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.diff.ArticleEditDetailsViewModel$undoEdit$2;
import org.wikipedia.settings.homefeed.ModulesViewModel$toggleModuleVisibility$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager {
    public Clipboard clipboard;
    public CoroutineScope coroutineScope;
    public final ParcelableSnapshotMutableState currentDragPosition$delegate;
    public long dragBeginPosition;
    public TextRange dragBeginSelection;
    public long dragTotalDistance;
    public final ParcelableSnapshotMutableState draggingHandle$delegate;
    public final ParcelableSnapshotMutableState editable$delegate;
    public final ParcelableSnapshotMutableState enabled$delegate;
    public FocusRequester focusRequester;
    public HapticFeedback hapticFeedBack;
    public final ParcelableSnapshotMutableState hasAvailableTextToPaste$delegate;
    public TextRange latestSelection;
    public final CSSParser mouseSelectionObserver;
    public TextFieldValue oldValue;
    public PlatformSelectionBehaviors platformSelectionBehaviors;
    public int previousRawDragOffset;
    public SingleSelectionLayout previousSelectionLayout;
    public Function0 requestAutofillAction;
    public LegacyTextFieldState state;
    public boolean textToolbarShownViaProvider;
    public final CardView.AnonymousClass1 toolbarRequester;
    public final TextFieldSelectionManager$touchSelectionObserver$1 touchSelectionObserver;
    public final UndoManager undoManager;
    public OffsetMapping offsetMapping = BasicTextKt.ValidatingEmptyOffsetMappingIdentity;
    public Function1 onValueChange = new ChipKt$$ExternalSyntheticLambda2(15);
    public final ParcelableSnapshotMutableState valueState = Updater.mutableStateOf$default(new TextFieldValue(7, 0, (String) null));

    /* JADX WARN: Type inference failed for: r6v14, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1] */
    public TextFieldSelectionManager(UndoManager undoManager) {
        this.undoManager = undoManager;
        Boolean bool = Boolean.TRUE;
        this.editable$delegate = Updater.mutableStateOf$default(bool);
        this.enabled$delegate = Updater.mutableStateOf$default(bool);
        this.dragBeginPosition = 0L;
        this.dragTotalDistance = 0L;
        this.draggingHandle$delegate = Updater.mutableStateOf$default(null);
        this.currentDragPosition$delegate = Updater.mutableStateOf$default(null);
        this.previousRawDragOffset = -1;
        this.oldValue = new TextFieldValue(7, 0L, (String) null);
        this.hasAvailableTextToPaste$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
        this.toolbarRequester = new CardView.AnonymousClass1(7);
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            public TextRange runningSelection;
            public boolean isLongPressSelectionOnly = true;
            public SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustmentMode = SelectionAdjustment$Companion.None;

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                onEnd();
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x00e4  */
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void mo194onDragk4lQ0M(long r10) {
                /*
                    r9 = this;
                    androidx.compose.foundation.text.selection.TextFieldSelectionManager r0 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.this
                    boolean r1 = r0.getEnabled()
                    if (r1 == 0) goto Le9
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.text.AnnotatedString r1 = r1.annotatedString
                    java.lang.String r1 = r1.text
                    int r1 = r1.length()
                    if (r1 != 0) goto L18
                    goto Le9
                L18:
                    long r1 = r0.dragTotalDistance
                    long r10 = androidx.compose.ui.geometry.Offset.m386plusMKHz9U(r1, r10)
                    r0.dragTotalDistance = r10
                    androidx.compose.foundation.text.LegacyTextFieldState r10 = r0.state
                    r11 = 0
                    if (r10 == 0) goto Le6
                    androidx.compose.foundation.text.TextLayoutResultProxy r10 = r10.getLayoutResult()
                    if (r10 == 0) goto Le6
                    long r1 = r0.dragBeginPosition
                    long r3 = r0.dragTotalDistance
                    long r1 = androidx.compose.ui.geometry.Offset.m386plusMKHz9U(r1, r3)
                    androidx.compose.ui.geometry.Offset r3 = new androidx.compose.ui.geometry.Offset
                    r3.<init>(r1)
                    r0.m244setCurrentDragPosition_kEHs6E(r3)
                    androidx.compose.ui.text.TextRange r1 = r0.dragBeginSelection
                    r2 = 9
                    if (r1 != 0) goto L94
                    androidx.compose.ui.geometry.Offset r1 = r0.m241getCurrentDragPosition_m7T9E()
                    r1.getClass()
                    long r3 = r1.packedValue
                    boolean r1 = r10.m198isPositionOnTextk4lQ0M(r3)
                    if (r1 != 0) goto L94
                    androidx.compose.ui.text.input.OffsetMapping r1 = r0.offsetMapping
                    long r3 = r0.dragBeginPosition
                    r5 = 1
                    int r3 = r10.m197getOffsetForPosition3MmeM6k(r3, r5)
                    int r1 = r1.transformedToOriginal(r3)
                    androidx.compose.ui.text.input.OffsetMapping r3 = r0.offsetMapping
                    androidx.compose.ui.geometry.Offset r4 = r0.m241getCurrentDragPosition_m7T9E()
                    r4.getClass()
                    long r6 = r4.packedValue
                    int r10 = r10.m197getOffsetForPosition3MmeM6k(r6, r5)
                    int r10 = r3.transformedToOriginal(r10)
                    if (r1 != r10) goto L76
                    androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0 r10 = androidx.compose.foundation.text.selection.SelectionAdjustment$Companion.None
                L74:
                    r6 = r10
                    goto L79
                L76:
                    androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0 r10 = androidx.compose.foundation.text.selection.SelectionAdjustment$Companion.Word
                    goto L74
                L79:
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.geometry.Offset r10 = r0.m241getCurrentDragPosition_m7T9E()
                    r10.getClass()
                    long r3 = r10.packedValue
                    androidx.compose.ui.hapticfeedback.HapticFeedbackType r8 = new androidx.compose.ui.hapticfeedback.HapticFeedbackType
                    r8.<init>(r2)
                    r2 = r3
                    r4 = 0
                    r5 = 0
                    r7 = 1
                    long r1 = r0.m245updateSelectionjSglsI8(r1, r2, r4, r5, r6, r7, r8)
                    goto Ld5
                L94:
                    androidx.compose.ui.text.TextRange r1 = r0.dragBeginSelection
                    if (r1 == 0) goto L9f
                    long r3 = r1.packedValue
                    r1 = 32
                    long r3 = r3 >> r1
                    int r1 = (int) r3
                    goto La5
                L9f:
                    long r3 = r0.dragBeginPosition
                    int r1 = r10.m197getOffsetForPosition3MmeM6k(r3, r11)
                La5:
                    androidx.compose.ui.geometry.Offset r3 = r0.m241getCurrentDragPosition_m7T9E()
                    r3.getClass()
                    long r3 = r3.packedValue
                    int r10 = r10.m197getOffsetForPosition3MmeM6k(r3, r11)
                    androidx.compose.ui.text.TextRange r3 = r0.dragBeginSelection
                    if (r3 != 0) goto Lb9
                    if (r1 != r10) goto Lb9
                    goto Le9
                Lb9:
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.geometry.Offset r10 = r0.m241getCurrentDragPosition_m7T9E()
                    r10.getClass()
                    long r3 = r10.packedValue
                    androidx.compose.foundation.text.selection.SelectionAdjustment$Companion$$ExternalSyntheticLambda0 r6 = r9.selectionAdjustmentMode
                    androidx.compose.ui.hapticfeedback.HapticFeedbackType r8 = new androidx.compose.ui.hapticfeedback.HapticFeedbackType
                    r8.<init>(r2)
                    r2 = r3
                    r4 = 0
                    r5 = 0
                    r7 = 1
                    long r1 = r0.m245updateSelectionjSglsI8(r1, r2, r4, r5, r6, r7, r8)
                Ld5:
                    androidx.compose.ui.text.TextRange r10 = new androidx.compose.ui.text.TextRange
                    r10.<init>(r1)
                    r9.runningSelection = r10
                    androidx.compose.ui.text.TextRange r10 = r0.dragBeginSelection
                    boolean r10 = androidx.compose.ui.text.TextRange.m639equalsimpl(r1, r10)
                    if (r10 != 0) goto Le6
                    r9.isLongPressSelectionOnly = r11
                Le6:
                    r0.updateFloatingToolbar(r11)
                Le9:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1.mo194onDragk4lQ0M(long):void");
            }

            public final void onEnd() {
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.setDraggingHandle(null);
                textFieldSelectionManager.m244setCurrentDragPosition_kEHs6E(null);
                this.selectionAdjustmentMode = SelectionAdjustment$Companion.None;
                textFieldSelectionManager.updateFloatingToolbar(true);
                TextRange textRange = this.runningSelection;
                boolean m641getCollapsedimpl = TextRange.m641getCollapsedimpl(textRange != null ? textRange.packedValue : textFieldSelectionManager.getValue$foundation().selection);
                textFieldSelectionManager.setHandleState(m641getCollapsedimpl ? HandleState.Cursor : HandleState.Selection);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                if (legacyTextFieldState != null) {
                    legacyTextFieldState.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(!m641getCollapsedimpl && SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(textFieldSelectionManager, true)));
                }
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                if (legacyTextFieldState2 != null) {
                    legacyTextFieldState2.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(!m641getCollapsedimpl && SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(textFieldSelectionManager, false)));
                }
                LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.state;
                if (legacyTextFieldState3 != null) {
                    legacyTextFieldState3.showCursorHandle$delegate.setValue(Boolean.valueOf(m641getCollapsedimpl && SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(textFieldSelectionManager, true)));
                }
                if (this.isLongPressSelectionOnly) {
                    textFieldSelectionManager.m243maybeSuggestSelectionOEnZFl4(textFieldSelectionManager.dragBeginSelection);
                }
                textFieldSelectionManager.dragBeginSelection = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-3MmeM6k */
            public final void mo195onStart3MmeM6k(long j, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0) {
                long j2;
                TextLayoutResultProxy layoutResult;
                TextLayoutResultProxy layoutResult2;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                if (textFieldSelectionManager.getEnabled() && ((Handle) textFieldSelectionManager.draggingHandle$delegate.getValue()) == null) {
                    textFieldSelectionManager.setDraggingHandle(Handle.SelectionEnd);
                    textFieldSelectionManager.previousRawDragOffset = -1;
                    this.isLongPressSelectionOnly = true;
                    this.selectionAdjustmentMode = selectionAdjustment$Companion$$ExternalSyntheticLambda0;
                    textFieldSelectionManager.hideSelectionToolbar$foundation();
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                    if (legacyTextFieldState == null || (layoutResult2 = legacyTextFieldState.getLayoutResult()) == null || !layoutResult2.m198isPositionOnTextk4lQ0M(j)) {
                        j2 = j;
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                        if (legacyTextFieldState2 != null && (layoutResult = legacyTextFieldState2.getLayoutResult()) != null) {
                            int transformedToOriginal = textFieldSelectionManager.offsetMapping.transformedToOriginal(layoutResult.m197getOffsetForPosition3MmeM6k(j2, true));
                            TextFieldValue m239createTextFieldValueFDrldGo = TextFieldSelectionManager.m239createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().annotatedString, ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal));
                            textFieldSelectionManager.enterSelectionMode$foundation(false);
                            HapticFeedback hapticFeedback = textFieldSelectionManager.hapticFeedBack;
                            if (hapticFeedback != null) {
                                ((PlatformHapticFeedback) hapticFeedback).m497performHapticFeedbackCdsT49E(0);
                            }
                            textFieldSelectionManager.onValueChange.invoke(m239createTextFieldValueFDrldGo);
                            textFieldSelectionManager.latestSelection = new TextRange(m239createTextFieldValueFDrldGo.selection);
                        }
                        this.isLongPressSelectionOnly = false;
                    } else {
                        if (textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0) {
                            return;
                        }
                        textFieldSelectionManager.enterSelectionMode$foundation(false);
                        long m245updateSelectionjSglsI8 = textFieldSelectionManager.m245updateSelectionjSglsI8(TextFieldValue.m659copy3r_uNRQ$default(textFieldSelectionManager.getValue$foundation(), null, TextRange.Zero, 5), j, true, false, this.selectionAdjustmentMode, true, new HapticFeedbackType(0));
                        j2 = j;
                        textFieldSelectionManager.dragBeginSelection = new TextRange(m245updateSelectionjSglsI8);
                        this.runningSelection = new TextRange(m245updateSelectionjSglsI8);
                    }
                    textFieldSelectionManager.setHandleState(HandleState.None);
                    textFieldSelectionManager.dragBeginPosition = j2;
                    textFieldSelectionManager.m244setCurrentDragPosition_kEHs6E(new Offset(j2));
                    textFieldSelectionManager.dragTotalDistance = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onStop() {
                onEnd();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public final void mo193onDownk4lQ0M() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onUp() {
            }
        };
        this.mouseSelectionObserver = new CSSParser(this);
    }

    /* renamed from: createTextFieldValue-FDrldGo, reason: not valid java name */
    public static TextFieldValue m239createTextFieldValueFDrldGo(AnnotatedString annotatedString, long j) {
        return new TextFieldValue(annotatedString, j, (TextRange) null);
    }

    public final StandaloneCoroutine copy$foundation(boolean z) {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            return AwaitKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new ModulesViewModel$toggleModuleVisibility$1(this, z, (Continuation) null), 1);
        }
        return null;
    }

    public final void cut$foundation() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            AwaitKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null, 0), 1);
        }
    }

    /* renamed from: deselect-_kEHs6E$foundation, reason: not valid java name */
    public final void m240deselect_kEHs6E$foundation(Offset offset) {
        if (!TextRange.m641getCollapsedimpl(getValue$foundation().selection)) {
            LegacyTextFieldState legacyTextFieldState = this.state;
            TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
            int m643getMaximpl = (offset == null || layoutResult == null) ? TextRange.m643getMaximpl(getValue$foundation().selection) : this.offsetMapping.transformedToOriginal(layoutResult.m197getOffsetForPosition3MmeM6k(offset.packedValue, true));
            TextFieldValue m659copy3r_uNRQ$default = TextFieldValue.m659copy3r_uNRQ$default(getValue$foundation(), null, ParagraphKt.TextRange(m643getMaximpl, m643getMaximpl), 5);
            this.onValueChange.invoke(m659copy3r_uNRQ$default);
            this.latestSelection = new TextRange(m659copy3r_uNRQ$default.selection);
        }
        setHandleState((offset == null || getValue$foundation().annotatedString.text.length() <= 0) ? HandleState.None : HandleState.Cursor);
        updateFloatingToolbar(false);
    }

    public final void enterSelectionMode$foundation(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null && !legacyTextFieldState.getHasFocus() && (focusRequester = this.focusRequester) != null) {
            FocusRequester.m366requestFocus3ESFkO8$default(focusRequester);
        }
        this.oldValue = getValue$foundation();
        updateFloatingToolbar(z);
        setHandleState(HandleState.Selection);
    }

    public final Pair getContextTextAndSelection() {
        String str;
        TextRange textRange;
        AnnotatedString transformedText$foundation = getTransformedText$foundation();
        if (transformedText$foundation == null || (str = transformedText$foundation.text) == null || (textRange = this.latestSelection) == null) {
            return null;
        }
        long j = textRange.packedValue;
        return new Pair(str, new TextRange(ParagraphKt.TextRange(this.offsetMapping.originalToTransformed((int) (j >> 32)), this.offsetMapping.originalToTransformed((int) (j & 4294967295L)))));
    }

    /* renamed from: getCurrentDragPosition-_m7T9-E, reason: not valid java name */
    public final Offset m241getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    public final boolean getEditable() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue()).booleanValue();
    }

    /* renamed from: getHandlePosition-tuRUvjQ$foundation, reason: not valid java name */
    public final long m242getHandlePositiontuRUvjQ$foundation(boolean z) {
        TextLayoutResultProxy layoutResult;
        long j;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) {
            return 9205357640488583168L;
        }
        TextLayoutResult textLayoutResult = layoutResult.value;
        AnnotatedString transformedText$foundation = getTransformedText$foundation();
        if (transformedText$foundation == null) {
            return 9205357640488583168L;
        }
        if (!Intrinsics.areEqual(transformedText$foundation.text, textLayoutResult.layoutInput.text.text)) {
            return 9205357640488583168L;
        }
        TextFieldValue value$foundation = getValue$foundation();
        if (z) {
            long j2 = value$foundation.selection;
            int i = TextRange.$r8$clinit;
            j = j2 >> 32;
        } else {
            long j3 = value$foundation.selection;
            int i2 = TextRange.$r8$clinit;
            j = j3 & 4294967295L;
        }
        return SimpleLayoutKt.getSelectionHandleCoordinates(textLayoutResult, this.offsetMapping.originalToTransformed((int) j), z, TextRange.m645getReversedimpl(getValue$foundation().selection));
    }

    public final AnnotatedString getTransformedText$foundation() {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            return (AnnotatedString) legacyTextFieldState.textDelegate.text;
        }
        return null;
    }

    public final TextFieldValue getValue$foundation() {
        return (TextFieldValue) this.valueState.getValue();
    }

    public final void hideSelectionToolbar$foundation() {
        StandaloneCoroutine standaloneCoroutine;
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) this.toolbarRequester.mCardBackground;
        if (textContextMenuToolbarHandlerNode == null || (standaloneCoroutine = textContextMenuToolbarHandlerNode.textToolbarJob) == null) {
            return;
        }
        standaloneCoroutine.cancel(null);
        textContextMenuToolbarHandlerNode.textToolbarJob = null;
    }

    /* renamed from: maybeSuggestSelection-OEnZFl4, reason: not valid java name */
    public final void m243maybeSuggestSelectionOEnZFl4(TextRange textRange) {
        AnnotatedString transformedText$foundation;
        String str;
        CoroutineScope coroutineScope;
        if (textRange == null) {
            return;
        }
        long j = textRange.packedValue;
        PlatformSelectionBehaviors platformSelectionBehaviors = this.platformSelectionBehaviors;
        if (platformSelectionBehaviors == null || (transformedText$foundation = getTransformedText$foundation()) == null || (str = transformedText$foundation.text) == null) {
            return;
        }
        OffsetMapping offsetMapping = this.offsetMapping;
        long TextRange = ParagraphKt.TextRange(offsetMapping.originalToTransformed((int) (j >> 32)), offsetMapping.originalToTransformed((int) (j & 4294967295L)));
        if (str.length() <= 0 || TextRange.m641getCollapsedimpl(TextRange) || (coroutineScope = this.coroutineScope) == null) {
            return;
        }
        AwaitKt.launch$default(coroutineScope, null, null, new ArticleEditDetailsViewModel$undoEdit$2(platformSelectionBehaviors, str, TextRange, textRange, this, offsetMapping, null), 3);
    }

    public final void paste$foundation() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            AwaitKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null, 2), 1);
        }
    }

    /* renamed from: setCurrentDragPosition-_kEHs6E, reason: not valid java name */
    public final void m244setCurrentDragPosition_kEHs6E(Offset offset) {
        this.currentDragPosition$delegate.setValue(offset);
    }

    public final void setDraggingHandle(Handle handle) {
        this.draggingHandle$delegate.setValue(handle);
    }

    public final void setHandleState(HandleState handleState) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            if (legacyTextFieldState.getHandleState() == handleState) {
                legacyTextFieldState = null;
            }
            if (legacyTextFieldState != null) {
                legacyTextFieldState.handleState$delegate.setValue(handleState);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0026, code lost:
    
        if (((java.lang.Boolean) r3.isInTouchMode$delegate.getValue()).booleanValue() == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showSelectionToolbar$foundation() {
        /*
            r4 = this;
            androidx.compose.runtime.snapshots.Snapshot r0 = androidx.compose.runtime.snapshots.SnapshotId_jvmKt.getCurrentThreadSnapshot()
            if (r0 == 0) goto Lb
            kotlin.jvm.functions.Function1 r1 = r0.getReadObserver()
            goto Lc
        Lb:
            r1 = 0
        Lc:
            androidx.compose.runtime.snapshots.Snapshot r2 = androidx.compose.runtime.snapshots.SnapshotId_jvmKt.makeCurrentNonObservable(r0)
            boolean r3 = r4.getEnabled()     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L34
            androidx.compose.foundation.text.LegacyTextFieldState r3 = r4.state     // Catch: java.lang.Throwable -> L32
            if (r3 == 0) goto L29
            androidx.compose.runtime.ParcelableSnapshotMutableState r3 = r3.isInTouchMode$delegate     // Catch: java.lang.Throwable -> L32
            java.lang.Object r3 = r3.getValue()     // Catch: java.lang.Throwable -> L32
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L32
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L32
            if (r3 != 0) goto L29
            goto L34
        L29:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r2, r1)
            androidx.cardview.widget.CardView$1 r4 = r4.toolbarRequester
            r4.show()
            return
        L32:
            r4 = move-exception
            goto L38
        L34:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r2, r1)
            return
        L38:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r2, r1)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager.showSelectionToolbar$foundation():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateClipboardEntry$foundation(kotlin.coroutines.jvm.internal.ContinuationImpl r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof androidx.compose.foundation.text.selection.TextFieldSelectionManager$updateClipboardEntry$1
            if (r0 == 0) goto L13
            r0 = r5
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$updateClipboardEntry$1 r0 = (androidx.compose.foundation.text.selection.TextFieldSelectionManager$updateClipboardEntry$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.selection.TextFieldSelectionManager$updateClipboardEntry$1 r0 = new androidx.compose.foundation.text.selection.TextFieldSelectionManager$updateClipboardEntry$1
            r0.<init>(r4, r5)
        L18:
            java.lang.Object r5 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5b
        L29:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r4)
            r4 = 0
            return r4
        L30:
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.compose.ui.platform.Clipboard r5 = r4.clipboard
            if (r5 == 0) goto L65
            r0.L$0 = r4
            r0.label = r3
            androidx.compose.ui.platform.AndroidClipboard r5 = (androidx.compose.ui.platform.AndroidClipboard) r5
            androidx.compose.ui.platform.AndroidClipboardManager r5 = r5.androidClipboardManager
            android.content.ClipboardManager r5 = r5.getClipboardManager()
            android.content.ClipDescription r5 = r5.getPrimaryClipDescription()
            r0 = 0
            if (r5 == 0) goto L53
            java.lang.String r2 = "text/*"
            boolean r5 = r5.hasMimeType(r2)
            if (r5 != r3) goto L53
            goto L54
        L53:
            r3 = r0
        L54:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r3)
            if (r5 != r1) goto L5b
            return r1
        L5b:
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            r5.getClass()
            androidx.compose.runtime.ParcelableSnapshotMutableState r4 = r4.hasAvailableTextToPaste$delegate
            r4.setValue(r5)
        L65:
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager.updateClipboardEntry$foundation(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final void updateFloatingToolbar(boolean z) {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            legacyTextFieldState.showFloatingToolbar$delegate.setValue(Boolean.valueOf(z));
        }
        if (z) {
            showSelectionToolbar$foundation();
        } else {
            hideSelectionToolbar$foundation();
        }
    }

    /* renamed from: updateSelection-jSglsI8, reason: not valid java name */
    public final long m245updateSelectionjSglsI8(TextFieldValue textFieldValue, long j, boolean z, boolean z2, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0, boolean z3, HapticFeedbackType hapticFeedbackType) {
        TextLayoutResultProxy layoutResult;
        long j2;
        long j3;
        Selection selection;
        boolean z4;
        boolean z5;
        HapticFeedback hapticFeedback;
        int i;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) {
            return TextRange.Zero;
        }
        OffsetMapping offsetMapping = this.offsetMapping;
        long j4 = textFieldValue.selection;
        AnnotatedString annotatedString = textFieldValue.annotatedString;
        int i2 = TextRange.$r8$clinit;
        long TextRange = ParagraphKt.TextRange(offsetMapping.originalToTransformed((int) (j4 >> 32)), this.offsetMapping.originalToTransformed((int) (j4 & 4294967295L)));
        int m197getOffsetForPosition3MmeM6k = layoutResult.m197getOffsetForPosition3MmeM6k(j, false);
        int i3 = (z2 || z) ? m197getOffsetForPosition3MmeM6k : (int) (TextRange >> 32);
        int i4 = (!z2 || z) ? m197getOffsetForPosition3MmeM6k : (int) (TextRange & 4294967295L);
        SingleSelectionLayout singleSelectionLayout = this.previousSelectionLayout;
        int i5 = (z || singleSelectionLayout == null || (i = this.previousRawDragOffset) == -1) ? -1 : i;
        TextLayoutResult textLayoutResult = layoutResult.value;
        if (z) {
            j3 = j4;
            j2 = 4294967295L;
            selection = null;
        } else {
            j2 = 4294967295L;
            int i6 = (int) (TextRange >> 32);
            j3 = j4;
            Selection.AnchorInfo anchorInfo = new Selection.AnchorInfo(SimpleLayoutKt.getTextDirectionForOffset(textLayoutResult, i6), i6, 1L);
            int i7 = (int) (TextRange & 4294967295L);
            selection = new Selection(anchorInfo, new Selection.AnchorInfo(SimpleLayoutKt.getTextDirectionForOffset(textLayoutResult, i7), i7, 1L), TextRange.m645getReversedimpl(TextRange));
        }
        SingleSelectionLayout singleSelectionLayout2 = new SingleSelectionLayout(z2, 1, 1, selection, new SelectableInfo(1L, 1, i3, i4, i5, textLayoutResult));
        if (!singleSelectionLayout2.shouldRecomputeSelection(singleSelectionLayout)) {
            return j3;
        }
        this.previousSelectionLayout = singleSelectionLayout2;
        this.previousRawDragOffset = m197getOffsetForPosition3MmeM6k;
        Selection adjust = selectionAdjustment$Companion$$ExternalSyntheticLambda0.adjust(singleSelectionLayout2);
        long TextRange2 = ParagraphKt.TextRange(this.offsetMapping.transformedToOriginal(adjust.start.offset), this.offsetMapping.transformedToOriginal(adjust.end.offset));
        long j5 = j3;
        if (TextRange.m640equalsimpl0(TextRange2, j5)) {
            return j5;
        }
        boolean z6 = TextRange.m645getReversedimpl(TextRange2) != TextRange.m645getReversedimpl(j5) && TextRange.m640equalsimpl0(ParagraphKt.TextRange((int) (TextRange2 & j2), (int) (TextRange2 >> 32)), j5);
        boolean z7 = TextRange.m641getCollapsedimpl(TextRange2) && TextRange.m641getCollapsedimpl(j5);
        if (z3 && annotatedString.text.length() > 0 && !z6 && !z7 && hapticFeedbackType != null && (hapticFeedback = this.hapticFeedBack) != null) {
            ((PlatformHapticFeedback) hapticFeedback).m497performHapticFeedbackCdsT49E(hapticFeedbackType.value);
        }
        this.onValueChange.invoke(m239createTextFieldValueFDrldGo(annotatedString, TextRange2));
        this.latestSelection = new TextRange(TextRange2);
        if (!z3) {
            updateFloatingToolbar(!TextRange.m641getCollapsedimpl(TextRange2));
        }
        LegacyTextFieldState legacyTextFieldState2 = this.state;
        if (legacyTextFieldState2 != null) {
            legacyTextFieldState2.isInTouchMode$delegate.setValue(Boolean.valueOf(z3));
        }
        LegacyTextFieldState legacyTextFieldState3 = this.state;
        if (legacyTextFieldState3 != null) {
            legacyTextFieldState3.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(!TextRange.m641getCollapsedimpl(TextRange2) && SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(this, true)));
        }
        LegacyTextFieldState legacyTextFieldState4 = this.state;
        if (legacyTextFieldState4 != null) {
            if (TextRange.m641getCollapsedimpl(TextRange2)) {
                z4 = false;
            } else {
                z4 = false;
                if (SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(this, false)) {
                    z5 = true;
                    legacyTextFieldState4.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(z5));
                }
            }
            z5 = z4;
            legacyTextFieldState4.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(z5));
        } else {
            z4 = false;
        }
        LegacyTextFieldState legacyTextFieldState5 = this.state;
        if (legacyTextFieldState5 != null) {
            legacyTextFieldState5.showCursorHandle$delegate.setValue(Boolean.valueOf((TextRange.m641getCollapsedimpl(TextRange2) && SimpleLayoutKt.isSelectionHandleInVisibleBoundDefault(this, true)) ? true : z4));
        }
        return TextRange2;
    }
}
