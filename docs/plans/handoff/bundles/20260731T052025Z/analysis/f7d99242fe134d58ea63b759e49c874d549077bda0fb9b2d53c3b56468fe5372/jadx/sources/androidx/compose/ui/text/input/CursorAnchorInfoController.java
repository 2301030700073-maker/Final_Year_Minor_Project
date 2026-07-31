package androidx.compose.ui.text.input;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.window.Api33Impl;
import androidx.core.view.MenuHostHelper;
import androidx.room.util.DBUtil;
import kotlin.Lazy;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CursorAnchorInfoController {
    public Rect decorationBoxBounds;
    public boolean hasPendingImmediateRequest;
    public boolean includeCharacterBounds;
    public boolean includeEditorBounds;
    public boolean includeInsertionMarker;
    public boolean includeLineBounds;
    public Rect innerTextFieldBounds;
    public final MenuHostHelper inputMethodManager;
    public boolean monitorEnabled;
    public OffsetMapping offsetMapping;
    public final AndroidComposeView rootPositionCalculator;
    public TextFieldValue textFieldValue;
    public TextLayoutResult textLayoutResult;
    public final Object lock = new Object();
    public Function1 textFieldToRootTransform = TextInputServiceAndroid$stopInput$1.INSTANCE$2;
    public final CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
    public final float[] matrix = Matrix.m503constructorimpl$default();
    public final android.graphics.Matrix androidMatrix = new android.graphics.Matrix();

    public CursorAnchorInfoController(AndroidComposeView androidComposeView, MenuHostHelper menuHostHelper) {
        this.rootPositionCalculator = androidComposeView;
        this.inputMethodManager = menuHostHelper;
    }

    public final void updateCursorAnchorInfo() {
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        MenuHostHelper menuHostHelper = this.inputMethodManager;
        Lazy lazy = (Lazy) menuHostHelper.mMenuProviders;
        InputMethodManager inputMethodManager = (InputMethodManager) lazy.getValue();
        View view = (View) menuHostHelper.mOnInvalidateMenuCallback;
        if (inputMethodManager.isActive(view)) {
            Function1 function1 = this.textFieldToRootTransform;
            float[] fArr = this.matrix;
            function1.invoke(new Matrix(fArr));
            this.rootPositionCalculator.m647localToScreen58bKbWc(fArr);
            android.graphics.Matrix matrix = this.androidMatrix;
            ColorKt.m497setFromEL8BTi8(matrix, fArr);
            TextFieldValue textFieldValue = this.textFieldValue;
            textFieldValue.getClass();
            long j = textFieldValue.selection;
            OffsetMapping offsetMapping = this.offsetMapping;
            offsetMapping.getClass();
            TextLayoutResult textLayoutResult = this.textLayoutResult;
            textLayoutResult.getClass();
            Rect rect = this.innerTextFieldBounds;
            rect.getClass();
            Rect rect2 = this.decorationBoxBounds;
            rect2.getClass();
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
                boolean containsInclusive = DBUtil.containsInclusive(rect, coerceIn, cursorRect.top);
                boolean containsInclusive2 = DBUtil.containsInclusive(rect, coerceIn, cursorRect.bottom);
                boolean z8 = textLayoutResult.getBidiRunDirection(originalToTransformed) == resolvedTextDirection;
                int i2 = (containsInclusive || containsInclusive2) ? 1 : 0;
                if (!containsInclusive || !containsInclusive2) {
                    i2 |= 2;
                }
                if (z8) {
                    i2 |= 4;
                }
                float f = cursorRect.top;
                float f2 = cursorRect.bottom;
                builder.setInsertionMarkerLocation(coerceIn, f, f2, f2, i2);
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
                        float f3 = fArr2[i3];
                        float f4 = fArr2[i3 + 1];
                        int i4 = m701getMaximpl;
                        float f5 = fArr2[i3 + 2];
                        float f6 = fArr2[i3 + 3];
                        int i5 = originalToTransformed2;
                        int i6 = (rect.left < f5 ? 1 : 0) & (f3 < rect.right ? 1 : 0) & (rect.top < f6 ? 1 : 0) & (f4 < rect.bottom ? 1 : 0);
                        if (!DBUtil.containsInclusive(rect, f3, f4) || !DBUtil.containsInclusive(rect, f5, f6)) {
                            i6 |= 2;
                        }
                        if (textLayoutResult.getBidiRunDirection(originalToTransformed4) == resolvedTextDirection) {
                            i6 |= 4;
                        }
                        int i7 = m702getMinimpl2;
                        builder.addCharacterBounds(i7, f3, f4, f5, f6, i6);
                        m702getMinimpl2 = i7 + 1;
                        m701getMaximpl = i4;
                        originalToTransformed2 = i5;
                    }
                    i = Build.VERSION.SDK_INT;
                    if (i >= 33 && z2) {
                        Api33Impl.setEditorBoundsInfo(builder, rect2);
                    }
                    if (i >= 34 && z3) {
                        Api34Compat.addVisibleLineBounds(builder, textLayoutResult, rect);
                    }
                    ((InputMethodManager) lazy.getValue()).updateCursorAnchorInfo(view, builder.build());
                    this.hasPendingImmediateRequest = false;
                }
            }
            z3 = z7;
            i = Build.VERSION.SDK_INT;
            if (i >= 33) {
                Api33Impl.setEditorBoundsInfo(builder, rect2);
            }
            if (i >= 34) {
                Api34Compat.addVisibleLineBounds(builder, textLayoutResult, rect);
            }
            ((InputMethodManager) lazy.getValue()).updateCursorAnchorInfo(view, builder.build());
            this.hasPendingImmediateRequest = false;
        }
    }
}
