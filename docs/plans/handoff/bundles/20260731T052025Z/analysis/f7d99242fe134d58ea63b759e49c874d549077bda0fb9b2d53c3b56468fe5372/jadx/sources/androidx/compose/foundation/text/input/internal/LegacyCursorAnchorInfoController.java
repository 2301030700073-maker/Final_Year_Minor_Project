package androidx.compose.foundation.text.input.internal;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.cardview.widget.CardView;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import kotlin.ranges.RangesKt;
import kotlinx.datetime.internal.format.SignedFormatStructure$formatter$1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyCursorAnchorInfoController {
    public Rect decorationBoxBounds;
    public boolean hasPendingImmediateRequest;
    public boolean includeCharacterBounds;
    public boolean includeEditorBounds;
    public boolean includeInsertionMarker;
    public boolean includeLineBounds;
    public Rect innerTextFieldBounds;
    public final CardView.AnonymousClass1 inputMethodManager;
    public final SignedFormatStructure$formatter$1 localToScreen;
    public boolean monitorEnabled;
    public OffsetMapping offsetMapping;
    public TextFieldValue textFieldValue;
    public TextLayoutResult textLayoutResult;
    public final Object lock = new Object();
    public final CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
    public final float[] matrix = Matrix.m503constructorimpl$default();
    public final android.graphics.Matrix androidMatrix = new android.graphics.Matrix();

    public LegacyCursorAnchorInfoController(SignedFormatStructure$formatter$1 signedFormatStructure$formatter$1, CardView.AnonymousClass1 anonymousClass1) {
        this.localToScreen = signedFormatStructure$formatter$1;
        this.inputMethodManager = anonymousClass1;
    }

    public final void updateCursorAnchorInfo() {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        CardView.AnonymousClass1 anonymousClass1 = this.inputMethodManager;
        InputMethodManager imm = anonymousClass1.getImm();
        View view = (View) anonymousClass1.mCardBackground;
        if (!imm.isActive(view) || this.textFieldValue == null || this.offsetMapping == null || this.textLayoutResult == null || this.innerTextFieldBounds == null || this.decorationBoxBounds == null) {
            return;
        }
        float[] fArr = this.matrix;
        Matrix.m506resetimpl(fArr);
        LayoutCoordinates layoutCoordinates = (LayoutCoordinates) ((LegacyAdaptingPlatformTextInputModifierNode) this.localToScreen.this$0).layoutCoordinates$delegate.getValue();
        if (layoutCoordinates != null) {
            if (!layoutCoordinates.isAttached$1()) {
                layoutCoordinates = null;
            }
            if (layoutCoordinates != null) {
                layoutCoordinates.mo584transformToScreen58bKbWc(fArr);
            }
        }
        Rect rect = this.decorationBoxBounds;
        rect.getClass();
        float f = -rect.left;
        Rect rect2 = this.decorationBoxBounds;
        rect2.getClass();
        Matrix.m508translateimpl(fArr, f, -rect2.top);
        android.graphics.Matrix matrix = this.androidMatrix;
        ColorKt.m497setFromEL8BTi8(matrix, fArr);
        TextFieldValue textFieldValue = this.textFieldValue;
        textFieldValue.getClass();
        long j = textFieldValue.selection;
        OffsetMapping offsetMapping = this.offsetMapping;
        offsetMapping.getClass();
        TextLayoutResult textLayoutResult = this.textLayoutResult;
        textLayoutResult.getClass();
        Rect rect3 = this.innerTextFieldBounds;
        rect3.getClass();
        Rect rect4 = this.decorationBoxBounds;
        rect4.getClass();
        boolean z4 = this.includeInsertionMarker;
        boolean z5 = this.includeCharacterBounds;
        boolean z6 = this.includeEditorBounds;
        boolean z7 = this.includeLineBounds;
        CursorAnchorInfo.Builder builder = this.builder;
        builder.reset();
        builder.setMatrix(matrix);
        TextRange textRange = textFieldValue.composition;
        int m702getMinimpl = TextRange.m702getMinimpl(j);
        builder.setSelectionRange(m702getMinimpl, TextRange.m701getMaximpl(j));
        ResolvedTextDirection resolvedTextDirection = ResolvedTextDirection.Rtl;
        if (!z4 || m702getMinimpl < 0) {
            z = z5;
            z2 = z6;
        } else {
            int originalToTransformed = offsetMapping.originalToTransformed(m702getMinimpl);
            Rect cursorRect = textLayoutResult.getCursorRect(originalToTransformed);
            z = z5;
            z2 = z6;
            float coerceIn = RangesKt.coerceIn(cursorRect.left, 0.0f, (int) (textLayoutResult.size >> 32));
            boolean containsInclusive = HandwritingGesture_androidKt.containsInclusive(rect3, coerceIn, cursorRect.top);
            boolean containsInclusive2 = HandwritingGesture_androidKt.containsInclusive(rect3, coerceIn, cursorRect.bottom);
            boolean z8 = textLayoutResult.getBidiRunDirection(originalToTransformed) == resolvedTextDirection;
            int i2 = (containsInclusive || containsInclusive2) ? 1 : 0;
            if (!containsInclusive || !containsInclusive2) {
                i2 |= 2;
            }
            if (z8) {
                i2 |= 4;
            }
            float f2 = cursorRect.top;
            float f3 = cursorRect.bottom;
            builder.setInsertionMarkerLocation(coerceIn, f2, f3, f3, i2);
        }
        if (z) {
            int m702getMinimpl2 = textRange != null ? TextRange.m702getMinimpl(textRange.packedValue) : -1;
            int m701getMaximpl = textRange != null ? TextRange.m701getMaximpl(textRange.packedValue) : -1;
            if (m702getMinimpl2 >= 0 && m702getMinimpl2 < m701getMaximpl) {
                builder.setComposingText(m702getMinimpl2, textFieldValue.annotatedString.text.subSequence(m702getMinimpl2, m701getMaximpl));
                int originalToTransformed2 = offsetMapping.originalToTransformed(m702getMinimpl2);
                int originalToTransformed3 = offsetMapping.originalToTransformed(m701getMaximpl);
                float[] fArr2 = new float[(originalToTransformed3 - originalToTransformed2) * 4];
                z3 = z7;
                textLayoutResult.multiParagraph.m686fillBoundingBoxes8ffj60Q(ParagraphKt.TextRange(originalToTransformed2, originalToTransformed3), fArr2);
                while (m702getMinimpl2 < m701getMaximpl) {
                    int originalToTransformed4 = offsetMapping.originalToTransformed(m702getMinimpl2);
                    int i3 = (originalToTransformed4 - originalToTransformed2) * 4;
                    float f4 = fArr2[i3];
                    float f5 = fArr2[i3 + 1];
                    int i4 = m701getMaximpl;
                    float f6 = fArr2[i3 + 2];
                    float f7 = fArr2[i3 + 3];
                    int i5 = originalToTransformed2;
                    int i6 = (rect3.left < f6 ? 1 : 0) & (f4 < rect3.right ? 1 : 0) & (rect3.top < f7 ? 1 : 0) & (f5 < rect3.bottom ? 1 : 0);
                    if (!HandwritingGesture_androidKt.containsInclusive(rect3, f4, f5) || !HandwritingGesture_androidKt.containsInclusive(rect3, f6, f7)) {
                        i6 |= 2;
                    }
                    if (textLayoutResult.getBidiRunDirection(originalToTransformed4) == resolvedTextDirection) {
                        i6 |= 4;
                    }
                    int i7 = m702getMinimpl2;
                    builder.addCharacterBounds(i7, f4, f5, f6, f7, i6);
                    m702getMinimpl2 = i7 + 1;
                    m701getMaximpl = i4;
                    originalToTransformed2 = i5;
                }
                i = Build.VERSION.SDK_INT;
                if (i >= 33 && z2) {
                    Api34StartStylusHandwriting.setEditorBoundsInfo(builder, rect4);
                }
                if (i >= 34 && z3) {
                    EditorInfoApi34.addVisibleLineBounds(builder, textLayoutResult, rect3);
                }
                anonymousClass1.getImm().updateCursorAnchorInfo(view, builder.build());
                this.hasPendingImmediateRequest = false;
            }
        }
        z3 = z7;
        i = Build.VERSION.SDK_INT;
        if (i >= 33) {
            Api34StartStylusHandwriting.setEditorBoundsInfo(builder, rect4);
        }
        if (i >= 34) {
            EditorInfoApi34.addVisibleLineBounds(builder, textLayoutResult, rect3);
        }
        anonymousClass1.getImm().updateCursorAnchorInfo(view, builder.build());
        this.hasPendingImmediateRequest = false;
    }
}
