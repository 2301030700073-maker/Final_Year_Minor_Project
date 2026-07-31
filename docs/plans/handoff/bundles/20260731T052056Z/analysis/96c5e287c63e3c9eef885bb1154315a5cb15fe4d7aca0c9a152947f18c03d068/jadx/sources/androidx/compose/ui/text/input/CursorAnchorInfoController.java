package androidx.compose.ui.text.input;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.CursorAnchorInfo;
import android.view.inputmethod.InputMethodManager;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.core.util.TypedValueCompat$Api34Impl;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import com.caverock.androidsvg.SVG;
import com.hcaptcha.sdk.HCaptchaCompat;
import kotlin.Lazy;
import kotlin.jvm.functions.Function1;
import kotlin.text.RegexKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CursorAnchorInfoController {
    public Rect decorationBoxBounds;
    public boolean hasPendingImmediateRequest;
    public boolean includeCharacterBounds;
    public boolean includeEditorBounds;
    public boolean includeInsertionMarker;
    public boolean includeLineBounds;
    public Rect innerTextFieldBounds;
    public final SVG inputMethodManager;
    public boolean monitorEnabled;
    public OffsetMapping offsetMapping;
    public final AndroidComposeView rootPositionCalculator;
    public TextFieldValue textFieldValue;
    public TextLayoutResult textLayoutResult;
    public final Object lock = new Object();
    public Function1 textFieldToRootTransform = TextInputServiceAndroid$stopInput$1.INSTANCE$2;
    public final CursorAnchorInfo.Builder builder = new CursorAnchorInfo.Builder();
    public final float[] matrix = Matrix.m446constructorimpl$default();
    public final android.graphics.Matrix androidMatrix = new android.graphics.Matrix();

    public CursorAnchorInfoController(AndroidComposeView androidComposeView, SVG svg) {
        this.rootPositionCalculator = androidComposeView;
        this.inputMethodManager = svg;
    }

    public final void updateCursorAnchorInfo() {
        boolean z;
        SVG svg = this.inputMethodManager;
        Lazy lazy = (Lazy) svg.cssRules;
        InputMethodManager inputMethodManager = (InputMethodManager) lazy.getValue();
        View view = (View) svg.rootElement;
        if (inputMethodManager.isActive(view)) {
            Function1 function1 = this.textFieldToRootTransform;
            float[] fArr = this.matrix;
            function1.invoke(new Matrix(fArr));
            this.rootPositionCalculator.m587localToScreen58bKbWc(fArr);
            android.graphics.Matrix matrix = this.androidMatrix;
            ColorKt.m442setFromEL8BTi8(matrix, fArr);
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
            boolean z2 = this.includeInsertionMarker;
            boolean z3 = this.includeCharacterBounds;
            boolean z4 = this.includeEditorBounds;
            boolean z5 = this.includeLineBounds;
            CursorAnchorInfo.Builder builder = this.builder;
            builder.reset();
            builder.setMatrix(matrix);
            TextRange textRange = textFieldValue.composition;
            int m644getMinimpl = TextRange.m644getMinimpl(j);
            builder.setSelectionRange(m644getMinimpl, TextRange.m643getMaximpl(j));
            if (!z2 || m644getMinimpl < 0) {
                z = z3;
            } else {
                int originalToTransformed = offsetMapping.originalToTransformed(m644getMinimpl);
                Rect cursorRect = textLayoutResult.getCursorRect(originalToTransformed);
                z = z3;
                float coerceIn = RegexKt.coerceIn(cursorRect.left, RecyclerView.DECELERATION_RATE, (int) (textLayoutResult.size >> 32));
                boolean containsInclusive = OperationKt.containsInclusive(rect, coerceIn, cursorRect.top);
                boolean containsInclusive2 = OperationKt.containsInclusive(rect, coerceIn, cursorRect.bottom);
                boolean z6 = textLayoutResult.getBidiRunDirection(originalToTransformed) == ResolvedTextDirection.Rtl;
                int i = (containsInclusive || containsInclusive2) ? 1 : 0;
                if (!containsInclusive || !containsInclusive2) {
                    i |= 2;
                }
                if (z6) {
                    i |= 4;
                }
                int i2 = i;
                float f = cursorRect.top;
                float f2 = cursorRect.bottom;
                builder.setInsertionMarkerLocation(coerceIn, f, f2, f2, i2);
            }
            if (z) {
                int m644getMinimpl2 = textRange != null ? TextRange.m644getMinimpl(textRange.packedValue) : -1;
                int m643getMaximpl = textRange != null ? TextRange.m643getMaximpl(textRange.packedValue) : -1;
                if (m644getMinimpl2 >= 0 && m644getMinimpl2 < m643getMaximpl) {
                    builder.setComposingText(m644getMinimpl2, textFieldValue.annotatedString.text.subSequence(m644getMinimpl2, m643getMaximpl));
                    int originalToTransformed2 = offsetMapping.originalToTransformed(m644getMinimpl2);
                    int originalToTransformed3 = offsetMapping.originalToTransformed(m643getMaximpl);
                    float[] fArr2 = new float[(originalToTransformed3 - originalToTransformed2) * 4];
                    textLayoutResult.multiParagraph.m628fillBoundingBoxes8ffj60Q(ParagraphKt.TextRange(originalToTransformed2, originalToTransformed3), fArr2);
                    int i3 = m644getMinimpl2;
                    while (i3 < m643getMaximpl) {
                        int originalToTransformed4 = offsetMapping.originalToTransformed(i3);
                        int i4 = (originalToTransformed4 - originalToTransformed2) * 4;
                        float f3 = fArr2[i4];
                        int i5 = m643getMaximpl;
                        float f4 = fArr2[i4 + 1];
                        int i6 = originalToTransformed2;
                        float f5 = fArr2[i4 + 2];
                        float f6 = fArr2[i4 + 3];
                        int i7 = i3;
                        int i8 = (rect.left < f5 ? 1 : 0) & (f3 < rect.right ? 1 : 0) & (rect.top < f6 ? 1 : 0) & (f4 < rect.bottom ? 1 : 0);
                        if (!OperationKt.containsInclusive(rect, f3, f4) || !OperationKt.containsInclusive(rect, f5, f6)) {
                            i8 |= 2;
                        }
                        if (textLayoutResult.getBidiRunDirection(originalToTransformed4) == ResolvedTextDirection.Rtl) {
                            i8 |= 4;
                        }
                        builder.addCharacterBounds(i7, f3, f4, f5, f6, i8);
                        i3 = i7 + 1;
                        m643getMaximpl = i5;
                        originalToTransformed2 = i6;
                    }
                }
            }
            int i9 = Build.VERSION.SDK_INT;
            if (i9 >= 33 && z4) {
                HCaptchaCompat.setEditorBoundsInfo(builder, rect2);
            }
            if (i9 >= 34 && z5) {
                TypedValueCompat$Api34Impl.addVisibleLineBounds(builder, textLayoutResult, rect);
            }
            ((InputMethodManager) lazy.getValue()).updateCursorAnchorInfo(view, builder.build());
            this.hasPendingImmediateRequest = false;
        }
    }
}
