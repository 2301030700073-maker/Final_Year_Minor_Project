package androidx.compose.foundation.text.selection;

import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.cardview.widget.CardView;
import androidx.compose.foundation.ScrollState$$ExternalSyntheticLambda4;
import androidx.compose.foundation.gestures.ContentInViewNode$launchAnimation$2;
import androidx.compose.foundation.text.Handle;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.UndoManager;
import androidx.compose.foundation.text.ValidatingOffsetMappingKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.work.Data;
import com.fsck.k9.mailstore.LocalFolder;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.StandaloneCoroutine;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
    public final LocalFolder.AnonymousClass12 mouseSelectionObserver;
    public TextFieldValue oldValue;
    public PlatformSelectionBehaviors platformSelectionBehaviors;
    public int previousRawDragOffset;
    public LocalFolder.AnonymousClass12 previousSelectionLayout;
    public Function0 requestAutofillAction;
    public LegacyTextFieldState state;
    public boolean textToolbarShownViaProvider;
    public final CardView.AnonymousClass1 toolbarRequester;
    public final TextFieldSelectionManager$touchSelectionObserver$1 touchSelectionObserver;
    public final UndoManager undoManager;
    public OffsetMapping offsetMapping = ValidatingOffsetMappingKt.ValidatingEmptyOffsetMappingIdentity;
    public Function1 onValueChange = new ScrollState$$ExternalSyntheticLambda4(18);
    public final ParcelableSnapshotMutableState valueState = Updater.mutableStateOf$default(new TextFieldValue(7, 0, (String) null));
    public VisualTransformation visualTransformation = VisualTransformation.Companion.None;

    /* JADX WARN: Type inference failed for: r6v15, types: [androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1] */
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
        CardView.AnonymousClass1 anonymousClass1 = new CardView.AnonymousClass1(25, false);
        anonymousClass1.this$0 = ToolbarHandlerState.Uninitialized;
        this.toolbarRequester = anonymousClass1;
        this.touchSelectionObserver = new TextDragObserver() { // from class: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1
            public TextRange runningSelection;
            public boolean isLongPressSelectionOnly = true;
            public StreamSharing$$ExternalSyntheticLambda0 selectionAdjustmentMode = SelectionAdjustment$Companion.None;

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onCancel() {
                onEnd();
            }

            /* JADX WARN: Removed duplicated region for block: B:20:0x00e6  */
            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDrag-k-4lQ0M */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void mo278onDragk4lQ0M(long r10) {
                /*
                    r9 = this;
                    androidx.compose.foundation.text.selection.TextFieldSelectionManager r0 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.this
                    boolean r1 = r0.getEnabled()
                    if (r1 == 0) goto Leb
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.text.AnnotatedString r1 = r1.annotatedString
                    java.lang.String r1 = r1.text
                    int r1 = r1.length()
                    if (r1 != 0) goto L18
                    goto Leb
                L18:
                    long r1 = r0.dragTotalDistance
                    long r10 = androidx.compose.ui.geometry.Offset.m441plusMKHz9U(r1, r10)
                    r0.dragTotalDistance = r10
                    androidx.compose.foundation.text.LegacyTextFieldState r10 = r0.state
                    r11 = 0
                    if (r10 == 0) goto Le8
                    androidx.compose.foundation.text.TextLayoutResultProxy r10 = r10.getLayoutResult()
                    if (r10 == 0) goto Le8
                    long r1 = r0.dragBeginPosition
                    long r3 = r0.dragTotalDistance
                    long r1 = androidx.compose.ui.geometry.Offset.m441plusMKHz9U(r1, r3)
                    androidx.compose.ui.geometry.Offset r3 = new androidx.compose.ui.geometry.Offset
                    r3.<init>(r1)
                    androidx.compose.runtime.ParcelableSnapshotMutableState r1 = r0.currentDragPosition$delegate
                    r1.setValue(r3)
                    androidx.compose.ui.text.TextRange r1 = r0.dragBeginSelection
                    r2 = 9
                    if (r1 != 0) goto L96
                    androidx.compose.ui.geometry.Offset r1 = r0.m311getCurrentDragPosition_m7T9E()
                    r1.getClass()
                    long r3 = r1.packedValue
                    boolean r1 = r10.m282isPositionOnTextk4lQ0M(r3)
                    if (r1 != 0) goto L96
                    androidx.compose.ui.text.input.OffsetMapping r1 = r0.offsetMapping
                    long r3 = r0.dragBeginPosition
                    r5 = 1
                    int r3 = r10.m281getOffsetForPosition3MmeM6k(r3, r5)
                    int r1 = r1.transformedToOriginal(r3)
                    androidx.compose.ui.text.input.OffsetMapping r3 = r0.offsetMapping
                    androidx.compose.ui.geometry.Offset r4 = r0.m311getCurrentDragPosition_m7T9E()
                    r4.getClass()
                    long r6 = r4.packedValue
                    int r10 = r10.m281getOffsetForPosition3MmeM6k(r6, r5)
                    int r10 = r3.transformedToOriginal(r10)
                    if (r1 != r10) goto L78
                    androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0 r10 = androidx.compose.foundation.text.selection.SelectionAdjustment$Companion.None
                L76:
                    r6 = r10
                    goto L7b
                L78:
                    androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0 r10 = androidx.compose.foundation.text.selection.SelectionAdjustment$Companion.Word
                    goto L76
                L7b:
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.geometry.Offset r10 = r0.m311getCurrentDragPosition_m7T9E()
                    r10.getClass()
                    long r3 = r10.packedValue
                    androidx.compose.ui.hapticfeedback.HapticFeedbackType r8 = new androidx.compose.ui.hapticfeedback.HapticFeedbackType
                    r8.<init>(r2)
                    r2 = r3
                    r4 = 0
                    r5 = 0
                    r7 = 1
                    long r1 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.m308access$updateSelectionjSglsI8(r0, r1, r2, r4, r5, r6, r7, r8)
                    goto Ld7
                L96:
                    androidx.compose.ui.text.TextRange r1 = r0.dragBeginSelection
                    if (r1 == 0) goto La1
                    long r3 = r1.packedValue
                    r1 = 32
                    long r3 = r3 >> r1
                    int r1 = (int) r3
                    goto La7
                La1:
                    long r3 = r0.dragBeginPosition
                    int r1 = r10.m281getOffsetForPosition3MmeM6k(r3, r11)
                La7:
                    androidx.compose.ui.geometry.Offset r3 = r0.m311getCurrentDragPosition_m7T9E()
                    r3.getClass()
                    long r3 = r3.packedValue
                    int r10 = r10.m281getOffsetForPosition3MmeM6k(r3, r11)
                    androidx.compose.ui.text.TextRange r3 = r0.dragBeginSelection
                    if (r3 != 0) goto Lbb
                    if (r1 != r10) goto Lbb
                    goto Leb
                Lbb:
                    androidx.compose.ui.text.input.TextFieldValue r1 = r0.getValue$foundation()
                    androidx.compose.ui.geometry.Offset r10 = r0.m311getCurrentDragPosition_m7T9E()
                    r10.getClass()
                    long r3 = r10.packedValue
                    androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0 r6 = r9.selectionAdjustmentMode
                    androidx.compose.ui.hapticfeedback.HapticFeedbackType r8 = new androidx.compose.ui.hapticfeedback.HapticFeedbackType
                    r8.<init>(r2)
                    r2 = r3
                    r4 = 0
                    r5 = 0
                    r7 = 1
                    long r1 = androidx.compose.foundation.text.selection.TextFieldSelectionManager.m308access$updateSelectionjSglsI8(r0, r1, r2, r4, r5, r6, r7, r8)
                Ld7:
                    androidx.compose.ui.text.TextRange r10 = new androidx.compose.ui.text.TextRange
                    r10.<init>(r1)
                    r9.runningSelection = r10
                    androidx.compose.ui.text.TextRange r10 = r0.dragBeginSelection
                    boolean r10 = androidx.compose.ui.text.TextRange.m697equalsimpl(r1, r10)
                    if (r10 != 0) goto Le8
                    r9.isLongPressSelectionOnly = r11
                Le8:
                    r0.updateFloatingToolbar(r11)
                Leb:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager$touchSelectionObserver$1.mo278onDragk4lQ0M(long):void");
            }

            public final void onEnd() {
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                textFieldSelectionManager.draggingHandle$delegate.setValue(null);
                textFieldSelectionManager.currentDragPosition$delegate.setValue(null);
                this.selectionAdjustmentMode = SelectionAdjustment$Companion.None;
                textFieldSelectionManager.updateFloatingToolbar(true);
                TextRange textRange = this.runningSelection;
                boolean m699getCollapsedimpl = TextRange.m699getCollapsedimpl(textRange != null ? textRange.packedValue : textFieldSelectionManager.getValue$foundation().selection);
                textFieldSelectionManager.setHandleState(m699getCollapsedimpl ? HandleState.Cursor : HandleState.Selection);
                LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                if (legacyTextFieldState != null) {
                    legacyTextFieldState.showSelectionHandleStart$delegate.setValue(Boolean.valueOf(!m699getCollapsedimpl && Data.Companion.isSelectionHandleInVisibleBound(textFieldSelectionManager, true)));
                }
                LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                if (legacyTextFieldState2 != null) {
                    legacyTextFieldState2.showSelectionHandleEnd$delegate.setValue(Boolean.valueOf(!m699getCollapsedimpl && Data.Companion.isSelectionHandleInVisibleBound(textFieldSelectionManager, false)));
                }
                LegacyTextFieldState legacyTextFieldState3 = textFieldSelectionManager.state;
                if (legacyTextFieldState3 != null) {
                    legacyTextFieldState3.showCursorHandle$delegate.setValue(Boolean.valueOf(m699getCollapsedimpl && Data.Companion.isSelectionHandleInVisibleBound(textFieldSelectionManager, true)));
                }
                if (this.isLongPressSelectionOnly) {
                    TextFieldSelectionManager.m307access$maybeSuggestSelectionOEnZFl4(textFieldSelectionManager, textFieldSelectionManager.dragBeginSelection);
                }
                textFieldSelectionManager.dragBeginSelection = null;
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onStart-3MmeM6k */
            public final void mo279onStart3MmeM6k(long j, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0) {
                long j2;
                TextLayoutResultProxy layoutResult;
                TextLayoutResultProxy layoutResult2;
                TextFieldSelectionManager textFieldSelectionManager = TextFieldSelectionManager.this;
                ParcelableSnapshotMutableState parcelableSnapshotMutableState = textFieldSelectionManager.draggingHandle$delegate;
                if (textFieldSelectionManager.getEnabled() && ((Handle) parcelableSnapshotMutableState.getValue()) == null) {
                    parcelableSnapshotMutableState.setValue(Handle.SelectionEnd);
                    textFieldSelectionManager.previousRawDragOffset = -1;
                    this.isLongPressSelectionOnly = true;
                    this.selectionAdjustmentMode = streamSharing$$ExternalSyntheticLambda0;
                    textFieldSelectionManager.hideSelectionToolbar$foundation();
                    LegacyTextFieldState legacyTextFieldState = textFieldSelectionManager.state;
                    if (legacyTextFieldState == null || (layoutResult2 = legacyTextFieldState.getLayoutResult()) == null || !layoutResult2.m282isPositionOnTextk4lQ0M(j)) {
                        j2 = j;
                        LegacyTextFieldState legacyTextFieldState2 = textFieldSelectionManager.state;
                        if (legacyTextFieldState2 != null && (layoutResult = legacyTextFieldState2.getLayoutResult()) != null) {
                            int transformedToOriginal = textFieldSelectionManager.offsetMapping.transformedToOriginal(layoutResult.m281getOffsetForPosition3MmeM6k(j2, true));
                            TextFieldValue m309createTextFieldValueFDrldGo = TextFieldSelectionManager.m309createTextFieldValueFDrldGo(textFieldSelectionManager.getValue$foundation().annotatedString, ParagraphKt.TextRange(transformedToOriginal, transformedToOriginal));
                            textFieldSelectionManager.enterSelectionMode$foundation(false);
                            HapticFeedback hapticFeedback = textFieldSelectionManager.hapticFeedBack;
                            if (hapticFeedback != null) {
                                ((PlatformHapticFeedback) hapticFeedback).m555performHapticFeedbackCdsT49E(0);
                            }
                            textFieldSelectionManager.onValueChange.invoke(m309createTextFieldValueFDrldGo);
                            textFieldSelectionManager.latestSelection = new TextRange(m309createTextFieldValueFDrldGo.selection);
                        }
                        this.isLongPressSelectionOnly = false;
                    } else {
                        if (textFieldSelectionManager.getValue$foundation().annotatedString.text.length() == 0) {
                            return;
                        }
                        textFieldSelectionManager.enterSelectionMode$foundation(false);
                        long m308access$updateSelectionjSglsI8 = TextFieldSelectionManager.m308access$updateSelectionjSglsI8(textFieldSelectionManager, TextFieldValue.m714copy3r_uNRQ$default(textFieldSelectionManager.getValue$foundation(), null, TextRange.Zero, 5), j, true, false, this.selectionAdjustmentMode, true, new HapticFeedbackType(0));
                        j2 = j;
                        textFieldSelectionManager.dragBeginSelection = new TextRange(m308access$updateSelectionjSglsI8);
                        this.runningSelection = new TextRange(m308access$updateSelectionjSglsI8);
                    }
                    textFieldSelectionManager.setHandleState(HandleState.None);
                    textFieldSelectionManager.dragBeginPosition = j2;
                    textFieldSelectionManager.currentDragPosition$delegate.setValue(new Offset(j2));
                    textFieldSelectionManager.dragTotalDistance = 0L;
                }
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onStop() {
                onEnd();
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            /* renamed from: onDown-k-4lQ0M */
            public final void mo277onDownk4lQ0M() {
            }

            @Override // androidx.compose.foundation.text.TextDragObserver
            public final void onUp() {
            }
        };
        this.mouseSelectionObserver = new LocalFolder.AnonymousClass12(this);
    }

    public static final Pair access$getContextTextAndSelection(TextFieldSelectionManager textFieldSelectionManager) {
        String str;
        TextRange textRange;
        AnnotatedString transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation();
        if (transformedText$foundation == null || (str = transformedText$foundation.text) == null || (textRange = textFieldSelectionManager.latestSelection) == null) {
            return null;
        }
        long j = textRange.packedValue;
        return new Pair(str, new TextRange(ParagraphKt.TextRange(textFieldSelectionManager.offsetMapping.originalToTransformed((int) (j >> 32)), textFieldSelectionManager.offsetMapping.originalToTransformed((int) (j & 4294967295L)))));
    }

    /* renamed from: access$maybeSuggestSelection-OEnZFl4, reason: not valid java name */
    public static final void m307access$maybeSuggestSelectionOEnZFl4(TextFieldSelectionManager textFieldSelectionManager, TextRange textRange) {
        AnnotatedString transformedText$foundation;
        String str;
        CoroutineScope coroutineScope;
        if (textRange == null) {
            return;
        }
        long j = textRange.packedValue;
        PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.platformSelectionBehaviors;
        if (platformSelectionBehaviors == null || (transformedText$foundation = textFieldSelectionManager.getTransformedText$foundation()) == null || (str = transformedText$foundation.text) == null) {
            return;
        }
        OffsetMapping offsetMapping = textFieldSelectionManager.offsetMapping;
        long TextRange = ParagraphKt.TextRange(offsetMapping.originalToTransformed((int) (j >> 32)), offsetMapping.originalToTransformed((int) (j & 4294967295L)));
        if (str.length() <= 0 || TextRange.m699getCollapsedimpl(TextRange) || (coroutineScope = textFieldSelectionManager.coroutineScope) == null) {
            return;
        }
        JobKt.launch$default(coroutineScope, null, null, new ContentInViewNode$launchAnimation$2.AnonymousClass1(platformSelectionBehaviors, str, TextRange, textRange, textFieldSelectionManager, offsetMapping, null), 3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x012d, code lost:
    
        if (r1.offset == r7.offset) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0156, code lost:
    
        r5 = (androidx.compose.foundation.text.selection.Selection) r15.val$messages;
        r6 = ((androidx.compose.ui.text.TextLayoutResult) r4.elements).layoutInput.text.text;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0164, code lost:
    
        if (r5 == null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x016a, code lost:
    
        if (r6.length() != 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x016e, code lost:
    
        r6 = r15.val$value;
        r8 = ((androidx.compose.ui.text.TextLayoutResult) r4.elements).layoutInput.text.text;
        r9 = r4.head;
        r10 = r8.length();
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0181, code lost:
    
        if (r9 != 0) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0183, code lost:
    
        r5 = androidx.compose.foundation.text.BasicTextKt.findFollowingBreak(r8, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0188, code lost:
    
        if (r6 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x018a, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, androidx.core.util.DebugUtils.changeOffset(r1, r4, r5), null, true, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0195, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, null, androidx.core.util.DebugUtils.changeOffset(r7, r4, r5), false, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01a2, code lost:
    
        if (r9 != r10) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01a4, code lost:
    
        r5 = androidx.compose.foundation.text.BasicTextKt.findPrecedingBreak(r8, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01a8, code lost:
    
        if (r6 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01aa, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, androidx.core.util.DebugUtils.changeOffset(r1, r4, r5), null, false, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01b3, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, null, androidx.core.util.DebugUtils.changeOffset(r7, r4, r5), true, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01be, code lost:
    
        if (r5.handlesCrossed != true) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01c0, code lost:
    
        r12 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01c5, code lost:
    
        if ((r6 ^ r12) == false) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x01c7, code lost:
    
        r5 = androidx.compose.foundation.text.BasicTextKt.findPrecedingBreak(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01d0, code lost:
    
        if (r6 == false) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01d2, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, androidx.core.util.DebugUtils.changeOffset(r1, r4, r5), null, r12, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01dc, code lost:
    
        r1 = androidx.compose.foundation.text.selection.Selection.copy$default(r2, null, androidx.core.util.DebugUtils.changeOffset(r7, r4, r5), r12, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01cc, code lost:
    
        r5 = androidx.compose.foundation.text.BasicTextKt.findFollowingBreak(r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01c2, code lost:
    
        r12 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x0152, code lost:
    
        if (((androidx.compose.ui.text.TextLayoutResult) r4.elements).layoutInput.text.text.length() != (r5 ? r7 : r1).offset) goto L108;
     */
    /* renamed from: access$updateSelection-jSglsI8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long m308access$updateSelectionjSglsI8(androidx.compose.foundation.text.selection.TextFieldSelectionManager r21, androidx.compose.ui.text.input.TextFieldValue r22, long r23, boolean r25, boolean r26, androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0 r27, boolean r28, androidx.compose.ui.hapticfeedback.HapticFeedbackType r29) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager.m308access$updateSelectionjSglsI8(androidx.compose.foundation.text.selection.TextFieldSelectionManager, androidx.compose.ui.text.input.TextFieldValue, long, boolean, boolean, androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0, boolean, androidx.compose.ui.hapticfeedback.HapticFeedbackType):long");
    }

    /* renamed from: createTextFieldValue-FDrldGo, reason: not valid java name */
    public static TextFieldValue m309createTextFieldValueFDrldGo(AnnotatedString annotatedString, long j) {
        return new TextFieldValue(annotatedString, j, (TextRange) null);
    }

    public final StandaloneCoroutine copy$foundation(boolean z) {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            return null;
        }
        return JobKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$copy$1(this, z, null), 1);
    }

    public final void cut$foundation() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            JobKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null, 0), 1);
        }
    }

    /* renamed from: deselect-_kEHs6E$foundation, reason: not valid java name */
    public final void m310deselect_kEHs6E$foundation(Offset offset) {
        if (!TextRange.m699getCollapsedimpl(getValue$foundation().selection)) {
            LegacyTextFieldState legacyTextFieldState = this.state;
            TextLayoutResultProxy layoutResult = legacyTextFieldState != null ? legacyTextFieldState.getLayoutResult() : null;
            int m701getMaximpl = (offset == null || layoutResult == null) ? TextRange.m701getMaximpl(getValue$foundation().selection) : this.offsetMapping.transformedToOriginal(layoutResult.m281getOffsetForPosition3MmeM6k(offset.packedValue, true));
            TextFieldValue m714copy3r_uNRQ$default = TextFieldValue.m714copy3r_uNRQ$default(getValue$foundation(), null, ParagraphKt.TextRange(m701getMaximpl, m701getMaximpl), 5);
            this.onValueChange.invoke(m714copy3r_uNRQ$default);
            this.latestSelection = new TextRange(m714copy3r_uNRQ$default.selection);
        }
        setHandleState((offset == null || getValue$foundation().annotatedString.text.length() <= 0) ? HandleState.None : HandleState.Cursor);
        updateFloatingToolbar(false);
    }

    public final void enterSelectionMode$foundation(boolean z) {
        FocusRequester focusRequester;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null && !legacyTextFieldState.getHasFocus() && (focusRequester = this.focusRequester) != null) {
            FocusRequester.m418requestFocus3ESFkO8$default(focusRequester);
        }
        this.oldValue = getValue$foundation();
        updateFloatingToolbar(z);
        setHandleState(HandleState.Selection);
    }

    /* renamed from: getCurrentDragPosition-_m7T9-E, reason: not valid java name */
    public final Offset m311getCurrentDragPosition_m7T9E() {
        return (Offset) this.currentDragPosition$delegate.getValue();
    }

    public final boolean getEditable() {
        return ((Boolean) this.editable$delegate.getValue()).booleanValue();
    }

    public final boolean getEnabled() {
        return ((Boolean) this.enabled$delegate.getValue()).booleanValue();
    }

    /* renamed from: getHandlePosition-tuRUvjQ$foundation, reason: not valid java name */
    public final long m312getHandlePositiontuRUvjQ$foundation(boolean z) {
        TextLayoutResultProxy layoutResult;
        long j;
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState == null || (layoutResult = legacyTextFieldState.getLayoutResult()) == null) {
            return 9205357640488583168L;
        }
        TextLayoutResult textLayoutResult = layoutResult.value;
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
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
        int originalToTransformed = this.offsetMapping.originalToTransformed((int) j);
        boolean m703getReversedimpl = TextRange.m703getReversedimpl(getValue$foundation().selection);
        long j4 = textLayoutResult.size;
        if (multiParagraph.getLineForOffset(originalToTransformed) >= multiParagraph.lineCount) {
            return 9205357640488583168L;
        }
        boolean z2 = textLayoutResult.getBidiRunDirection(((!z || m703getReversedimpl) && (z || !m703getReversedimpl)) ? Math.max(originalToTransformed + (-1), 0) : originalToTransformed) == textLayoutResult.getParagraphDirection(originalToTransformed);
        multiParagraph.requireIndexInRangeInclusiveEnd(originalToTransformed);
        int length = ((AnnotatedString) multiParagraph.intrinsics.val$queryString).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(originalToTransformed == length ? IntOffsetKt.getLastIndex(arrayList) : ParagraphKt.findParagraphByIndex(originalToTransformed, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(originalToTransformed);
        TextLayout textLayout = androidParagraph.layout;
        return (Float.floatToRawIntBits(RangesKt.coerceIn(multiParagraph.getLineBottom(r8), 0.0f, (int) (j4 & 4294967295L))) & 4294967295L) | (Float.floatToRawIntBits(RangesKt.coerceIn(z2 ? textLayout.getPrimaryHorizontal(localIndex, false) : textLayout.getSecondaryHorizontal(localIndex, false), 0.0f, (int) (j4 >> 32))) << 32);
    }

    public final AnnotatedString getTransformedText$foundation() {
        LegacyTextFieldState legacyTextFieldState = this.state;
        if (legacyTextFieldState != null) {
            return legacyTextFieldState.textDelegate.text;
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

    public final void paste$foundation() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            JobKt.launch$default(coroutineScope, null, CoroutineStart.UNDISPATCHED, new TextFieldSelectionManager$cut$1(this, null, 2), 1);
        }
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

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0027, code lost:
    
        if (((java.lang.Boolean) r4.isInTouchMode$delegate.getValue()).booleanValue() == false) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void showSelectionToolbar$foundation() {
        /*
            r6 = this;
            androidx.compose.runtime.snapshots.Snapshot r0 = androidx.compose.runtime.snapshots.SnapshotId_jvmKt.getCurrentThreadSnapshot()
            r1 = 0
            if (r0 == 0) goto Lc
            kotlin.jvm.functions.Function1 r2 = r0.getReadObserver()
            goto Ld
        Lc:
            r2 = r1
        Ld:
            androidx.compose.runtime.snapshots.Snapshot r3 = androidx.compose.runtime.snapshots.SnapshotId_jvmKt.makeCurrentNonObservable(r0)
            boolean r4 = r6.getEnabled()     // Catch: java.lang.Throwable -> L72
            if (r4 == 0) goto L74
            androidx.compose.foundation.text.LegacyTextFieldState r4 = r6.state     // Catch: java.lang.Throwable -> L72
            if (r4 == 0) goto L2a
            androidx.compose.runtime.ParcelableSnapshotMutableState r4 = r4.isInTouchMode$delegate     // Catch: java.lang.Throwable -> L72
            java.lang.Object r4 = r4.getValue()     // Catch: java.lang.Throwable -> L72
            java.lang.Boolean r4 = (java.lang.Boolean) r4     // Catch: java.lang.Throwable -> L72
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L72
            if (r4 != 0) goto L2a
            goto L74
        L2a:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r3, r2)
            androidx.cardview.widget.CardView$1 r6 = r6.toolbarRequester
            java.lang.Object r0 = r6.this$0
            androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState r0 = (androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState) r0
            androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState r2 = androidx.compose.foundation.text.contextmenu.modifier.ToolbarHandlerState.Uninitialized
            if (r0 == r2) goto L38
            goto L3d
        L38:
            java.lang.String r0 = "ToolbarRequester is not initialized."
            androidx.compose.foundation.internal.InlineClassHelperKt.throwIllegalStateException(r0)
        L3d:
            java.lang.Object r6 = r6.mCardBackground
            androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode r6 = (androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode) r6
            if (r6 == 0) goto L71
            boolean r0 = r6.isAttached
            if (r0 == 0) goto L71
            kotlinx.coroutines.StandaloneCoroutine r0 = r6.textToolbarJob
            r2 = 1
            if (r0 == 0) goto L53
            boolean r0 = r0.isActive()
            if (r0 != r2) goto L53
            goto L71
        L53:
            androidx.compose.runtime.DynamicProvidableCompositionLocal r0 = androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt.LocalTextContextMenuToolbarProvider
            java.lang.Object r0 = androidx.compose.ui.node.HitTestResultKt.currentValueOf(r6, r0)
            androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider r0 = (androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider) r0
            if (r0 != 0) goto L5e
            goto L71
        L5e:
            kotlinx.coroutines.CoroutineScope r3 = r6.getCoroutineScope()
            androidx.compose.foundation.gestures.DraggableNode$drag$2 r4 = new androidx.compose.foundation.gestures.DraggableNode$drag$2
            r5 = 22
            r4.<init>(r6, r0, r1, r5)
            kotlinx.coroutines.CoroutineStart r0 = kotlinx.coroutines.CoroutineStart.UNDISPATCHED
            kotlinx.coroutines.StandaloneCoroutine r0 = kotlinx.coroutines.JobKt.launch$default(r3, r1, r0, r4, r2)
            r6.textToolbarJob = r0
        L71:
            return
        L72:
            r6 = move-exception
            goto L78
        L74:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r3, r2)
            return
        L78:
            androidx.compose.runtime.snapshots.SnapshotId_jvmKt.restoreNonObservable(r0, r3, r2)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.TextFieldSelectionManager.showSelectionToolbar$foundation():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
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
            int r1 = r0.label
            r2 = 1
            if (r1 == 0) goto L2e
            if (r1 != r2) goto L27
            androidx.compose.foundation.text.selection.TextFieldSelectionManager r4 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r5)
            goto L5b
        L27:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r4)
            r4 = 0
            return r4
        L2e:
            kotlin.ResultKt.throwOnFailure(r5)
            androidx.compose.ui.platform.Clipboard r5 = r4.clipboard
            if (r5 == 0) goto L65
            r0.L$0 = r4
            r0.label = r2
            androidx.compose.ui.platform.AndroidClipboard r5 = (androidx.compose.ui.platform.AndroidClipboard) r5
            androidx.compose.ui.platform.AndroidClipboardManager r5 = r5.androidClipboardManager
            android.content.ClipboardManager r5 = r5.getClipboardManager()
            android.content.ClipDescription r5 = r5.getPrimaryClipDescription()
            r0 = 0
            if (r5 == 0) goto L51
            java.lang.String r1 = "text/*"
            boolean r5 = r5.hasMimeType(r1)
            if (r5 != r2) goto L51
            goto L52
        L51:
            r2 = r0
        L52:
            java.lang.Boolean r5 = java.lang.Boolean.valueOf(r2)
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            if (r5 != r0) goto L5b
            return r0
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
}
