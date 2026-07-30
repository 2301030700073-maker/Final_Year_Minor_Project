package androidx.compose.foundation.text.input.internal;

import android.graphics.PointF;
import android.graphics.RectF;
import android.os.CancellationSignal;
import android.view.inputmethod.DeleteGesture;
import android.view.inputmethod.DeleteRangeGesture;
import android.view.inputmethod.HandwritingGesture;
import android.view.inputmethod.InsertGesture;
import android.view.inputmethod.JoinOrSplitGesture;
import android.view.inputmethod.PreviewableHandwritingGesture;
import android.view.inputmethod.RemoveSpaceGesture;
import android.view.inputmethod.SelectGesture;
import android.view.inputmethod.SelectRangeGesture;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.TextLayoutResultProxy;
import androidx.compose.foundation.text.input.TextHighlightType;
import androidx.compose.foundation.text.input.internal.undo.TextFieldEditUndoBehavior;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.TextInclusionStrategy;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.CommitTextCommand;
import androidx.compose.ui.text.input.DeleteSurroundingTextCommand;
import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.SetSelectionCommand;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* compiled from: HandwritingGesture.android.kt */
/* loaded from: classes.dex */
public final class HandwritingGestureApi34 {
    public static final HandwritingGestureApi34 INSTANCE = new HandwritingGestureApi34();

    private HandwritingGestureApi34() {
    }

    public final int performHandwritingGesture$foundation_release(TransformedTextFieldState transformedTextFieldState, HandwritingGesture handwritingGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline8.m(handwritingGesture)) {
            return performSelectGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline9.m(handwritingGesture), textLayoutState);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline10.m(handwritingGesture)) {
            return performDeleteGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline11.m(handwritingGesture), textLayoutState);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline12.m(handwritingGesture)) {
            return performSelectRangeGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline13.m(handwritingGesture), textLayoutState);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline14.m(handwritingGesture)) {
            return performDeleteRangeGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline15.m(handwritingGesture), textLayoutState);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline22.m(handwritingGesture)) {
            return performJoinOrSplitGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline23.m(handwritingGesture), textLayoutState, viewConfiguration);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline18.m(handwritingGesture)) {
            return performInsertGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline19.m(handwritingGesture), textLayoutState, viewConfiguration);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline20.m(handwritingGesture)) {
            return performRemoveSpaceGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline21.m(handwritingGesture), textLayoutState, viewConfiguration);
        }
        return 2;
    }

    public final boolean previewHandwritingGesture$foundation_release(final TransformedTextFieldState transformedTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, TextLayoutState textLayoutState, CancellationSignal cancellationSignal) {
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline8.m(previewableHandwritingGesture)) {
            previewSelectGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline9.m(previewableHandwritingGesture), textLayoutState);
        } else if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline10.m(previewableHandwritingGesture)) {
            previewDeleteGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline11.m(previewableHandwritingGesture), textLayoutState);
        } else if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline12.m(previewableHandwritingGesture)) {
            previewSelectRangeGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline13.m(previewableHandwritingGesture), textLayoutState);
        } else {
            if (!HandwritingGestureApi34$$ExternalSyntheticApiModelOutline14.m(previewableHandwritingGesture)) {
                return false;
            }
            previewDeleteRangeGesture(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline15.m(previewableHandwritingGesture), textLayoutState);
        }
        if (cancellationSignal == null) {
            return true;
        }
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener(transformedTextFieldState) { // from class: androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticLambda32
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                HandwritingGestureApi34.previewHandwritingGesture$lambda$1(null);
            }
        });
        return true;
    }

    private final int performSelectGesture(TransformedTextFieldState transformedTextFieldState, SelectGesture selectGesture, TextLayoutState textLayoutState) {
        RectF selectionArea;
        int granularity;
        long m508getRangeForScreenRectOH9lIzo;
        selectionArea = selectGesture.getSelectionArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionArea);
        granularity = selectGesture.getGranularity();
        m508getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m508getRangeForScreenRectOH9lIzo(textLayoutState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m508getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallback(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(selectGesture));
        }
        throw null;
    }

    private final void previewSelectGesture(TransformedTextFieldState transformedTextFieldState, SelectGesture selectGesture, TextLayoutState textLayoutState) {
        RectF selectionArea;
        int granularity;
        long m508getRangeForScreenRectOH9lIzo;
        selectionArea = selectGesture.getSelectionArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionArea);
        granularity = selectGesture.getGranularity();
        m508getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m508getRangeForScreenRectOH9lIzo(textLayoutState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        m486highlightRangeXJREzCE(transformedTextFieldState, m508getRangeForScreenRectOH9lIzo, TextHighlightType.Companion.m480getHandwritingSelectPreviewsxJuwY());
    }

    private final int performDeleteGesture(TransformedTextFieldState transformedTextFieldState, DeleteGesture deleteGesture, TextLayoutState textLayoutState) {
        int granularity;
        RectF deletionArea;
        long m508getRangeForScreenRectOH9lIzo;
        granularity = deleteGesture.getGranularity();
        int m490toTextGranularityNUwxegE = m490toTextGranularityNUwxegE(granularity);
        deletionArea = deleteGesture.getDeletionArea();
        m508getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m508getRangeForScreenRectOH9lIzo(textLayoutState, RectHelper_androidKt.toComposeRect(deletionArea), m490toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m508getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallback(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(deleteGesture));
        }
        m487performDeletionSbBc2M(transformedTextFieldState, m508getRangeForScreenRectOH9lIzo, TextGranularity.m2103equalsimpl0(m490toTextGranularityNUwxegE, TextGranularity.Companion.m2105getWordDRrd7Zo()));
        return 1;
    }

    private final void previewDeleteGesture(TransformedTextFieldState transformedTextFieldState, DeleteGesture deleteGesture, TextLayoutState textLayoutState) {
        RectF deletionArea;
        int granularity;
        long m508getRangeForScreenRectOH9lIzo;
        deletionArea = deleteGesture.getDeletionArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(deletionArea);
        granularity = deleteGesture.getGranularity();
        m508getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m508getRangeForScreenRectOH9lIzo(textLayoutState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        m486highlightRangeXJREzCE(transformedTextFieldState, m508getRangeForScreenRectOH9lIzo, TextHighlightType.Companion.m479getHandwritingDeletePreviewsxJuwY());
    }

    private final int performSelectRangeGesture(TransformedTextFieldState transformedTextFieldState, SelectRangeGesture selectRangeGesture, TextLayoutState textLayoutState) {
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity;
        long m510getRangeForScreenRectsO048IG0;
        selectionStartArea = selectRangeGesture.getSelectionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionStartArea);
        selectionEndArea = selectRangeGesture.getSelectionEndArea();
        Rect composeRect2 = RectHelper_androidKt.toComposeRect(selectionEndArea);
        granularity = selectRangeGesture.getGranularity();
        m510getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m510getRangeForScreenRectsO048IG0(textLayoutState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m510getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallback(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(selectRangeGesture));
        }
        throw null;
    }

    private final void previewSelectRangeGesture(TransformedTextFieldState transformedTextFieldState, SelectRangeGesture selectRangeGesture, TextLayoutState textLayoutState) {
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity;
        long m510getRangeForScreenRectsO048IG0;
        selectionStartArea = selectRangeGesture.getSelectionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionStartArea);
        selectionEndArea = selectRangeGesture.getSelectionEndArea();
        Rect composeRect2 = RectHelper_androidKt.toComposeRect(selectionEndArea);
        granularity = selectRangeGesture.getGranularity();
        m510getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m510getRangeForScreenRectsO048IG0(textLayoutState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        m486highlightRangeXJREzCE(transformedTextFieldState, m510getRangeForScreenRectsO048IG0, TextHighlightType.Companion.m480getHandwritingSelectPreviewsxJuwY());
    }

    private final int performDeleteRangeGesture(TransformedTextFieldState transformedTextFieldState, DeleteRangeGesture deleteRangeGesture, TextLayoutState textLayoutState) {
        int granularity;
        RectF deletionStartArea;
        RectF deletionEndArea;
        long m510getRangeForScreenRectsO048IG0;
        granularity = deleteRangeGesture.getGranularity();
        int m490toTextGranularityNUwxegE = m490toTextGranularityNUwxegE(granularity);
        deletionStartArea = deleteRangeGesture.getDeletionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(deletionStartArea);
        deletionEndArea = deleteRangeGesture.getDeletionEndArea();
        m510getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m510getRangeForScreenRectsO048IG0(textLayoutState, composeRect, RectHelper_androidKt.toComposeRect(deletionEndArea), m490toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m510getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallback(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(deleteRangeGesture));
        }
        m487performDeletionSbBc2M(transformedTextFieldState, m510getRangeForScreenRectsO048IG0, TextGranularity.m2103equalsimpl0(m490toTextGranularityNUwxegE, TextGranularity.Companion.m2105getWordDRrd7Zo()));
        return 1;
    }

    private final void previewDeleteRangeGesture(TransformedTextFieldState transformedTextFieldState, DeleteRangeGesture deleteRangeGesture, TextLayoutState textLayoutState) {
        RectF deletionStartArea;
        RectF deletionEndArea;
        int granularity;
        long m510getRangeForScreenRectsO048IG0;
        deletionStartArea = deleteRangeGesture.getDeletionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(deletionStartArea);
        deletionEndArea = deleteRangeGesture.getDeletionEndArea();
        Rect composeRect2 = RectHelper_androidKt.toComposeRect(deletionEndArea);
        granularity = deleteRangeGesture.getGranularity();
        m510getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m510getRangeForScreenRectsO048IG0(textLayoutState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        m486highlightRangeXJREzCE(transformedTextFieldState, m510getRangeForScreenRectsO048IG0, TextHighlightType.Companion.m479getHandwritingDeletePreviewsxJuwY());
    }

    private final int performJoinOrSplitGesture(TransformedTextFieldState transformedTextFieldState, JoinOrSplitGesture joinOrSplitGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        throw null;
    }

    private final int performInsertGesture(TransformedTextFieldState transformedTextFieldState, InsertGesture insertGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        PointF insertionPoint;
        long offset;
        int m503getOffsetForHandwritingGestured4ec7I;
        String textToInsert;
        insertionPoint = insertGesture.getInsertionPoint();
        offset = HandwritingGesture_androidKt.toOffset(insertionPoint);
        m503getOffsetForHandwritingGestured4ec7I = HandwritingGesture_androidKt.m503getOffsetForHandwritingGestured4ec7I(textLayoutState, offset, viewConfiguration);
        if (m503getOffsetForHandwritingGestured4ec7I == -1) {
            return fallback(transformedTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(insertGesture));
        }
        textToInsert = insertGesture.getTextToInsert();
        TransformedTextFieldState.m513replaceTextM8tDOmk$default(transformedTextFieldState, textToInsert, TextRangeKt.TextRange(m503getOffsetForHandwritingGestured4ec7I), null, false, 12, null);
        return 1;
    }

    private final int performRemoveSpaceGesture(TransformedTextFieldState transformedTextFieldState, RemoveSpaceGesture removeSpaceGesture, TextLayoutState textLayoutState, ViewConfiguration viewConfiguration) {
        throw null;
    }

    private final int fallback(TransformedTextFieldState transformedTextFieldState, HandwritingGesture handwritingGesture) {
        TransformedTextFieldState.access$getTextFieldState$p(transformedTextFieldState);
        TransformedTextFieldState.access$getInputTransformation$p(transformedTextFieldState);
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void previewHandwritingGesture$lambda$1(TransformedTextFieldState transformedTextFieldState) {
        TransformedTextFieldState.access$getTextFieldState$p(transformedTextFieldState);
        TransformedTextFieldState.access$getInputTransformation$p(transformedTextFieldState);
        TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
        throw null;
    }

    /* renamed from: performDeletion-Sb-Bc2M, reason: not valid java name */
    private final void m487performDeletionSbBc2M(TransformedTextFieldState transformedTextFieldState, long j, boolean z) {
        if (z) {
            throw null;
        }
        TransformedTextFieldState.m513replaceTextM8tDOmk$default(transformedTextFieldState, "", j, null, false, 12, null);
    }

    /* renamed from: highlightRange-XJREzCE, reason: not valid java name */
    private final void m486highlightRangeXJREzCE(TransformedTextFieldState transformedTextFieldState, long j, int i) {
        if (TextRange.m2119getCollapsedimpl(j)) {
            TransformedTextFieldState.access$getTextFieldState$p(transformedTextFieldState);
            TransformedTextFieldState.access$getInputTransformation$p(transformedTextFieldState);
            TextFieldEditUndoBehavior textFieldEditUndoBehavior = TextFieldEditUndoBehavior.MergeIfPossible;
            throw null;
        }
        throw null;
    }

    public final int performHandwritingGesture$foundation_release(LegacyTextFieldState legacyTextFieldState, HandwritingGesture handwritingGesture, TextFieldSelectionManager textFieldSelectionManager, ViewConfiguration viewConfiguration, Function1 function1) {
        TextLayoutResult value;
        TextLayoutInput layoutInput;
        AnnotatedString untransformedText = legacyTextFieldState.getUntransformedText();
        if (untransformedText == null) {
            return 3;
        }
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (!Intrinsics.areEqual(untransformedText, (layoutResult == null || (value = layoutResult.getValue()) == null || (layoutInput = value.getLayoutInput()) == null) ? null : layoutInput.getText())) {
            return 3;
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline8.m(handwritingGesture)) {
            return performSelectGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline9.m(handwritingGesture), textFieldSelectionManager, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline10.m(handwritingGesture)) {
            return performDeleteGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline11.m(handwritingGesture), untransformedText, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline12.m(handwritingGesture)) {
            return performSelectRangeGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline13.m(handwritingGesture), textFieldSelectionManager, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline14.m(handwritingGesture)) {
            return performDeleteRangeGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline15.m(handwritingGesture), untransformedText, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline22.m(handwritingGesture)) {
            return performJoinOrSplitGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline23.m(handwritingGesture), untransformedText, viewConfiguration, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline18.m(handwritingGesture)) {
            return performInsertGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline19.m(handwritingGesture), viewConfiguration, function1);
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline20.m(handwritingGesture)) {
            return performRemoveSpaceGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline21.m(handwritingGesture), untransformedText, viewConfiguration, function1);
        }
        return 2;
    }

    public final boolean previewHandwritingGesture$foundation_release(LegacyTextFieldState legacyTextFieldState, PreviewableHandwritingGesture previewableHandwritingGesture, final TextFieldSelectionManager textFieldSelectionManager, CancellationSignal cancellationSignal) {
        TextLayoutResult value;
        TextLayoutInput layoutInput;
        AnnotatedString untransformedText = legacyTextFieldState.getUntransformedText();
        if (untransformedText == null) {
            return false;
        }
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        if (!Intrinsics.areEqual(untransformedText, (layoutResult == null || (value = layoutResult.getValue()) == null || (layoutInput = value.getLayoutInput()) == null) ? null : layoutInput.getText())) {
            return false;
        }
        if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline8.m(previewableHandwritingGesture)) {
            previewSelectGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline9.m(previewableHandwritingGesture), textFieldSelectionManager);
        } else if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline10.m(previewableHandwritingGesture)) {
            previewDeleteGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline11.m(previewableHandwritingGesture), textFieldSelectionManager);
        } else if (HandwritingGestureApi34$$ExternalSyntheticApiModelOutline12.m(previewableHandwritingGesture)) {
            previewSelectRangeGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline13.m(previewableHandwritingGesture), textFieldSelectionManager);
        } else {
            if (!HandwritingGestureApi34$$ExternalSyntheticApiModelOutline14.m(previewableHandwritingGesture)) {
                return false;
            }
            previewDeleteRangeGesture(legacyTextFieldState, HandwritingGestureApi34$$ExternalSyntheticApiModelOutline15.m(previewableHandwritingGesture), textFieldSelectionManager);
        }
        if (cancellationSignal == null) {
            return true;
        }
        cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticLambda31
            @Override // android.os.CancellationSignal.OnCancelListener
            public final void onCancel() {
                HandwritingGestureApi34.previewHandwritingGesture$lambda$9(TextFieldSelectionManager.this);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void previewHandwritingGesture$lambda$9(TextFieldSelectionManager textFieldSelectionManager) {
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.clearPreviewHighlight$foundation_release();
        }
    }

    private final int performSelectGesture(LegacyTextFieldState legacyTextFieldState, SelectGesture selectGesture, TextFieldSelectionManager textFieldSelectionManager, Function1 function1) {
        RectF selectionArea;
        int granularity;
        long m507getRangeForScreenRectOH9lIzo;
        selectionArea = selectGesture.getSelectionArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionArea);
        granularity = selectGesture.getGranularity();
        m507getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m507getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(selectGesture), function1);
        }
        m489performSelectionOnLegacyTextField8ffj60Q(m507getRangeForScreenRectOH9lIzo, textFieldSelectionManager, function1);
        return 1;
    }

    private final void previewSelectGesture(LegacyTextFieldState legacyTextFieldState, SelectGesture selectGesture, TextFieldSelectionManager textFieldSelectionManager) {
        RectF selectionArea;
        int granularity;
        long m507getRangeForScreenRectOH9lIzo;
        if (textFieldSelectionManager != null) {
            selectionArea = selectGesture.getSelectionArea();
            Rect composeRect = RectHelper_androidKt.toComposeRect(selectionArea);
            granularity = selectGesture.getGranularity();
            m507getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
            textFieldSelectionManager.m568setSelectionPreviewHighlight5zctL8$foundation_release(m507getRangeForScreenRectOH9lIzo);
        }
    }

    private final int performDeleteGesture(LegacyTextFieldState legacyTextFieldState, DeleteGesture deleteGesture, AnnotatedString annotatedString, Function1 function1) {
        int granularity;
        RectF deletionArea;
        long m507getRangeForScreenRectOH9lIzo;
        granularity = deleteGesture.getGranularity();
        int m490toTextGranularityNUwxegE = m490toTextGranularityNUwxegE(granularity);
        deletionArea = deleteGesture.getDeletionArea();
        m507getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, RectHelper_androidKt.toComposeRect(deletionArea), m490toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m507getRangeForScreenRectOH9lIzo)) {
            return INSTANCE.fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(deleteGesture), function1);
        }
        m488performDeletionOnLegacyTextFieldvJH6DeI(m507getRangeForScreenRectOH9lIzo, annotatedString, TextGranularity.m2103equalsimpl0(m490toTextGranularityNUwxegE, TextGranularity.Companion.m2105getWordDRrd7Zo()), function1);
        return 1;
    }

    private final void previewDeleteGesture(LegacyTextFieldState legacyTextFieldState, DeleteGesture deleteGesture, TextFieldSelectionManager textFieldSelectionManager) {
        RectF deletionArea;
        int granularity;
        long m507getRangeForScreenRectOH9lIzo;
        if (textFieldSelectionManager != null) {
            deletionArea = deleteGesture.getDeletionArea();
            Rect composeRect = RectHelper_androidKt.toComposeRect(deletionArea);
            granularity = deleteGesture.getGranularity();
            m507getRangeForScreenRectOH9lIzo = HandwritingGesture_androidKt.m507getRangeForScreenRectOH9lIzo(legacyTextFieldState, composeRect, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
            textFieldSelectionManager.m567setDeletionPreviewHighlight5zctL8$foundation_release(m507getRangeForScreenRectOH9lIzo);
        }
    }

    private final int performSelectRangeGesture(LegacyTextFieldState legacyTextFieldState, SelectRangeGesture selectRangeGesture, TextFieldSelectionManager textFieldSelectionManager, Function1 function1) {
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity;
        long m509getRangeForScreenRectsO048IG0;
        selectionStartArea = selectRangeGesture.getSelectionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(selectionStartArea);
        selectionEndArea = selectRangeGesture.getSelectionEndArea();
        Rect composeRect2 = RectHelper_androidKt.toComposeRect(selectionEndArea);
        granularity = selectRangeGesture.getGranularity();
        m509getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m509getRangeForScreenRectsO048IG0(legacyTextFieldState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m509getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(selectRangeGesture), function1);
        }
        m489performSelectionOnLegacyTextField8ffj60Q(m509getRangeForScreenRectsO048IG0, textFieldSelectionManager, function1);
        return 1;
    }

    private final void previewSelectRangeGesture(LegacyTextFieldState legacyTextFieldState, SelectRangeGesture selectRangeGesture, TextFieldSelectionManager textFieldSelectionManager) {
        RectF selectionStartArea;
        RectF selectionEndArea;
        int granularity;
        long m509getRangeForScreenRectsO048IG0;
        if (textFieldSelectionManager != null) {
            selectionStartArea = selectRangeGesture.getSelectionStartArea();
            Rect composeRect = RectHelper_androidKt.toComposeRect(selectionStartArea);
            selectionEndArea = selectRangeGesture.getSelectionEndArea();
            Rect composeRect2 = RectHelper_androidKt.toComposeRect(selectionEndArea);
            granularity = selectRangeGesture.getGranularity();
            m509getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m509getRangeForScreenRectsO048IG0(legacyTextFieldState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
            textFieldSelectionManager.m568setSelectionPreviewHighlight5zctL8$foundation_release(m509getRangeForScreenRectsO048IG0);
        }
    }

    private final int performDeleteRangeGesture(LegacyTextFieldState legacyTextFieldState, DeleteRangeGesture deleteRangeGesture, AnnotatedString annotatedString, Function1 function1) {
        int granularity;
        RectF deletionStartArea;
        RectF deletionEndArea;
        long m509getRangeForScreenRectsO048IG0;
        granularity = deleteRangeGesture.getGranularity();
        int m490toTextGranularityNUwxegE = m490toTextGranularityNUwxegE(granularity);
        deletionStartArea = deleteRangeGesture.getDeletionStartArea();
        Rect composeRect = RectHelper_androidKt.toComposeRect(deletionStartArea);
        deletionEndArea = deleteRangeGesture.getDeletionEndArea();
        m509getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m509getRangeForScreenRectsO048IG0(legacyTextFieldState, composeRect, RectHelper_androidKt.toComposeRect(deletionEndArea), m490toTextGranularityNUwxegE, TextInclusionStrategy.Companion.getContainsCenter());
        if (TextRange.m2119getCollapsedimpl(m509getRangeForScreenRectsO048IG0)) {
            return INSTANCE.fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(deleteRangeGesture), function1);
        }
        m488performDeletionOnLegacyTextFieldvJH6DeI(m509getRangeForScreenRectsO048IG0, annotatedString, TextGranularity.m2103equalsimpl0(m490toTextGranularityNUwxegE, TextGranularity.Companion.m2105getWordDRrd7Zo()), function1);
        return 1;
    }

    private final void previewDeleteRangeGesture(LegacyTextFieldState legacyTextFieldState, DeleteRangeGesture deleteRangeGesture, TextFieldSelectionManager textFieldSelectionManager) {
        RectF deletionStartArea;
        RectF deletionEndArea;
        int granularity;
        long m509getRangeForScreenRectsO048IG0;
        if (textFieldSelectionManager != null) {
            deletionStartArea = deleteRangeGesture.getDeletionStartArea();
            Rect composeRect = RectHelper_androidKt.toComposeRect(deletionStartArea);
            deletionEndArea = deleteRangeGesture.getDeletionEndArea();
            Rect composeRect2 = RectHelper_androidKt.toComposeRect(deletionEndArea);
            granularity = deleteRangeGesture.getGranularity();
            m509getRangeForScreenRectsO048IG0 = HandwritingGesture_androidKt.m509getRangeForScreenRectsO048IG0(legacyTextFieldState, composeRect, composeRect2, m490toTextGranularityNUwxegE(granularity), TextInclusionStrategy.Companion.getContainsCenter());
            textFieldSelectionManager.m567setDeletionPreviewHighlight5zctL8$foundation_release(m509getRangeForScreenRectsO048IG0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        if (r8 == true) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int performJoinOrSplitGesture(androidx.compose.foundation.text.LegacyTextFieldState r8, android.view.inputmethod.JoinOrSplitGesture r9, androidx.compose.ui.text.AnnotatedString r10, androidx.compose.ui.platform.ViewConfiguration r11, kotlin.jvm.functions.Function1 r12) {
        /*
            r7 = this;
            if (r11 != 0) goto Lb
            android.view.inputmethod.HandwritingGesture r8 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(r9)
            int r8 = r7.fallbackOnLegacyTextField(r8, r12)
            return r8
        Lb:
            android.graphics.PointF r0 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline30.m(r9)
            long r0 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.access$toOffset(r0)
            int r11 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.m492access$getOffsetForHandwritingGestured4ec7I(r8, r0, r11)
            r0 = -1
            if (r11 == r0) goto L4a
            androidx.compose.foundation.text.TextLayoutResultProxy r8 = r8.getLayoutResult()
            r0 = 1
            if (r8 == 0) goto L2e
            androidx.compose.ui.text.TextLayoutResult r8 = r8.getValue()
            if (r8 == 0) goto L2e
            boolean r8 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.access$isBiDiBoundary(r8, r11)
            if (r8 != r0) goto L2e
            goto L4a
        L2e:
            long r2 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.access$rangeOfWhitespaces(r10, r11)
            boolean r8 = androidx.compose.ui.text.TextRange.m2119getCollapsedimpl(r2)
            if (r8 == 0) goto L42
            int r8 = androidx.compose.ui.text.TextRange.m2125getStartimpl(r2)
            java.lang.String r9 = " "
            r7.performInsertionOnLegacyTextField(r8, r9, r12)
            goto L49
        L42:
            r5 = 0
            r1 = r7
            r4 = r10
            r6 = r12
            r1.m488performDeletionOnLegacyTextFieldvJH6DeI(r2, r4, r5, r6)
        L49:
            return r0
        L4a:
            android.view.inputmethod.HandwritingGesture r8 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(r9)
            int r8 = r7.fallbackOnLegacyTextField(r8, r12)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.HandwritingGestureApi34.performJoinOrSplitGesture(androidx.compose.foundation.text.LegacyTextFieldState, android.view.inputmethod.JoinOrSplitGesture, androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.platform.ViewConfiguration, kotlin.jvm.functions.Function1):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
    
        if (r3 == true) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int performInsertGesture(androidx.compose.foundation.text.LegacyTextFieldState r3, android.view.inputmethod.InsertGesture r4, androidx.compose.ui.platform.ViewConfiguration r5, kotlin.jvm.functions.Function1 r6) {
        /*
            r2 = this;
            if (r5 != 0) goto Lb
            android.view.inputmethod.HandwritingGesture r3 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(r4)
            int r3 = r2.fallbackOnLegacyTextField(r3, r6)
            return r3
        Lb:
            android.graphics.PointF r0 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline26.m(r4)
            long r0 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.access$toOffset(r0)
            int r5 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.m492access$getOffsetForHandwritingGestured4ec7I(r3, r0, r5)
            r0 = -1
            if (r5 == r0) goto L36
            androidx.compose.foundation.text.TextLayoutResultProxy r3 = r3.getLayoutResult()
            r0 = 1
            if (r3 == 0) goto L2e
            androidx.compose.ui.text.TextLayoutResult r3 = r3.getValue()
            if (r3 == 0) goto L2e
            boolean r3 = androidx.compose.foundation.text.input.internal.HandwritingGesture_androidKt.access$isBiDiBoundary(r3, r5)
            if (r3 != r0) goto L2e
            goto L36
        L2e:
            java.lang.String r3 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline27.m(r4)
            r2.performInsertionOnLegacyTextField(r5, r3, r6)
            return r0
        L36:
            android.view.inputmethod.HandwritingGesture r3 = androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(r4)
            int r3 = r2.fallbackOnLegacyTextField(r3, r6)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.input.internal.HandwritingGestureApi34.performInsertGesture(androidx.compose.foundation.text.LegacyTextFieldState, android.view.inputmethod.InsertGesture, androidx.compose.ui.platform.ViewConfiguration, kotlin.jvm.functions.Function1):int");
    }

    private final int performRemoveSpaceGesture(LegacyTextFieldState legacyTextFieldState, RemoveSpaceGesture removeSpaceGesture, AnnotatedString annotatedString, ViewConfiguration viewConfiguration, Function1 function1) {
        PointF startPoint;
        long offset;
        PointF endPoint;
        long offset2;
        long m505getRangeForRemoveSpaceGesture5iVPX68;
        EditCommand compoundEditCommand;
        TextLayoutResultProxy layoutResult = legacyTextFieldState.getLayoutResult();
        TextLayoutResult value = layoutResult != null ? layoutResult.getValue() : null;
        startPoint = removeSpaceGesture.getStartPoint();
        offset = HandwritingGesture_androidKt.toOffset(startPoint);
        endPoint = removeSpaceGesture.getEndPoint();
        offset2 = HandwritingGesture_androidKt.toOffset(endPoint);
        m505getRangeForRemoveSpaceGesture5iVPX68 = HandwritingGesture_androidKt.m505getRangeForRemoveSpaceGesture5iVPX68(value, offset, offset2, legacyTextFieldState.getLayoutCoordinates(), viewConfiguration);
        if (TextRange.m2119getCollapsedimpl(m505getRangeForRemoveSpaceGesture5iVPX68)) {
            return INSTANCE.fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(removeSpaceGesture), function1);
        }
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = -1;
        final Ref$IntRef ref$IntRef2 = new Ref$IntRef();
        ref$IntRef2.element = -1;
        String replace = new Regex("\\s+").replace(TextRangeKt.m2132substringFDrldGo(annotatedString, m505getRangeForRemoveSpaceGesture5iVPX68), new Function1() { // from class: androidx.compose.foundation.text.input.internal.HandwritingGestureApi34$performRemoveSpaceGesture$newText$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(MatchResult matchResult) {
                Ref$IntRef ref$IntRef3 = Ref$IntRef.this;
                if (ref$IntRef3.element == -1) {
                    ref$IntRef3.element = matchResult.getRange().getFirst();
                }
                ref$IntRef2.element = matchResult.getRange().getLast() + 1;
                return "";
            }
        });
        if (ref$IntRef.element == -1 || ref$IntRef2.element == -1) {
            return fallbackOnLegacyTextField(HandwritingGestureApi34$$ExternalSyntheticApiModelOutline7.m(removeSpaceGesture), function1);
        }
        int m2125getStartimpl = TextRange.m2125getStartimpl(m505getRangeForRemoveSpaceGesture5iVPX68) + ref$IntRef.element;
        int m2125getStartimpl2 = TextRange.m2125getStartimpl(m505getRangeForRemoveSpaceGesture5iVPX68) + ref$IntRef2.element;
        String substring = replace.substring(ref$IntRef.element, replace.length() - (TextRange.m2121getLengthimpl(m505getRangeForRemoveSpaceGesture5iVPX68) - ref$IntRef2.element));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        compoundEditCommand = HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(m2125getStartimpl, m2125getStartimpl2), new CommitTextCommand(substring, 1));
        function1.invoke(compoundEditCommand);
        return 1;
    }

    private final void performInsertionOnLegacyTextField(int i, String str, Function1 function1) {
        EditCommand compoundEditCommand;
        compoundEditCommand = HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(i, i), new CommitTextCommand(str, 1));
        function1.invoke(compoundEditCommand);
    }

    /* renamed from: performSelectionOnLegacyTextField-8ffj60Q, reason: not valid java name */
    private final void m489performSelectionOnLegacyTextField8ffj60Q(long j, TextFieldSelectionManager textFieldSelectionManager, Function1 function1) {
        function1.invoke(new SetSelectionCommand(TextRange.m2125getStartimpl(j), TextRange.m2120getEndimpl(j)));
        if (textFieldSelectionManager != null) {
            textFieldSelectionManager.enterSelectionMode$foundation_release(true);
        }
    }

    /* renamed from: performDeletionOnLegacyTextField-vJH6DeI, reason: not valid java name */
    private final void m488performDeletionOnLegacyTextFieldvJH6DeI(long j, AnnotatedString annotatedString, boolean z, Function1 function1) {
        EditCommand compoundEditCommand;
        if (z) {
            j = HandwritingGesture_androidKt.m499adjustHandwritingDeleteGestureRange72CqOWE(j, annotatedString);
        }
        compoundEditCommand = HandwritingGesture_androidKt.compoundEditCommand(new SetSelectionCommand(TextRange.m2120getEndimpl(j), TextRange.m2120getEndimpl(j)), new DeleteSurroundingTextCommand(TextRange.m2121getLengthimpl(j), 0));
        function1.invoke(compoundEditCommand);
    }

    private final int fallbackOnLegacyTextField(HandwritingGesture handwritingGesture, Function1 function1) {
        String fallbackText;
        fallbackText = handwritingGesture.getFallbackText();
        if (fallbackText == null) {
            return 3;
        }
        function1.invoke(new CommitTextCommand(fallbackText, 1));
        return 5;
    }

    /* renamed from: toTextGranularity-NUwxegE, reason: not valid java name */
    private final int m490toTextGranularityNUwxegE(int i) {
        if (i == 1) {
            return TextGranularity.Companion.m2105getWordDRrd7Zo();
        }
        if (i == 2) {
            return TextGranularity.Companion.m2104getCharacterDRrd7Zo();
        }
        return TextGranularity.Companion.m2104getCharacterDRrd7Zo();
    }
}
