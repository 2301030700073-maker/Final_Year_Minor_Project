package androidx.compose.ui.text;

import android.graphics.Matrix;
import android.graphics.Shader;
import android.text.Layout;
import android.text.TextUtils;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt$ShaderBrush$1;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.DifferentialMotionFlingController$$ExternalSyntheticLambda0;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MultiParagraph {
    public final boolean didExceedMaxLines;
    public final float height;
    public final LocalStore.AnonymousClass7 intrinsics;
    public final int lineCount;
    public final int maxLines;
    public final ArrayList paragraphInfoList;
    public final ArrayList placeholderRects;
    public final float width;

    public MultiParagraph(LocalStore.AnonymousClass7 anonymousClass7, long j, int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int m733getMaxHeightimpl;
        int i5;
        this.intrinsics = anonymousClass7;
        this.maxLines = i;
        if (Constraints.m736getMinWidthimpl(j) != 0 || Constraints.m735getMinHeightimpl(j) != 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) anonymousClass7.val$messages;
        int size = arrayList2.size();
        float f = 0.0f;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) arrayList2.get(i6);
            AndroidParagraphIntrinsics androidParagraphIntrinsics = paragraphIntrinsicInfo.intrinsics;
            int m734getMaxWidthimpl = Constraints.m734getMaxWidthimpl(j);
            if (Constraints.m729getHasBoundedHeightimpl(j)) {
                i4 = i6;
                m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j) - ((int) Math.ceil(f));
                if (m733getMaxHeightimpl < 0) {
                    m733getMaxHeightimpl = 0;
                }
            } else {
                i4 = i6;
                m733getMaxHeightimpl = Constraints.m733getMaxHeightimpl(j);
            }
            i3 = 0;
            AndroidParagraph androidParagraph = new AndroidParagraph(androidParagraphIntrinsics, this.maxLines - i7, i2, ConstraintsKt.Constraints$default(0, m734getMaxWidthimpl, 0, m733getMaxHeightimpl, 5));
            float height = androidParagraph.getHeight() + f;
            TextLayout textLayout = androidParagraph.layout;
            int i8 = i7 + textLayout.lineCount;
            arrayList.add(new ParagraphInfo(androidParagraph, paragraphIntrinsicInfo.startIndex, paragraphIntrinsicInfo.endIndex, i7, i8, f, height));
            if (!textLayout.didExceedMaxLines) {
                if (i8 == this.maxLines) {
                    i5 = i4;
                    if (i5 != IntOffsetKt.getLastIndex((ArrayList) this.intrinsics.val$messages)) {
                    }
                } else {
                    i5 = i4;
                }
                i6 = i5 + 1;
                i7 = i8;
                f = height;
            }
            z = true;
            i7 = i8;
            f = height;
            break;
        }
        i3 = 0;
        z = false;
        this.height = f;
        this.lineCount = i7;
        this.didExceedMaxLines = z;
        this.paragraphInfoList = arrayList;
        this.width = Constraints.m734getMaxWidthimpl(j);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i9 = i3; i9 < size2; i9++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i9);
            List list = paragraphInfo.paragraph.placeholderRects;
            ArrayList arrayList4 = new ArrayList(list.size());
            int size3 = list.size();
            for (int i10 = i3; i10 < size3; i10++) {
                Rect rect = (Rect) list.get(i10);
                arrayList4.add(rect != null ? paragraphInfo.toGlobal(rect) : null);
            }
            CollectionsKt.addAll(arrayList4, arrayList3);
        }
        if (arrayList3.size() < ((List) this.intrinsics.val$placeHolders).size()) {
            int size4 = ((List) this.intrinsics.val$placeHolders).size() - arrayList3.size();
            ArrayList arrayList5 = new ArrayList(size4);
            for (int i11 = i3; i11 < size4; i11++) {
                arrayList5.add(null);
            }
            arrayList3 = CollectionsKt.plus((Collection) arrayList3, (Iterable) arrayList5);
        }
        this.placeholderRects = arrayList3;
    }

    /* renamed from: paint-LG529CI$default, reason: not valid java name */
    public static void m684paintLG529CI$default(MultiParagraph multiParagraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.save();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i);
            paragraphInfo.paragraph.m681paintLG529CI(canvas, j, shadow, textDecoration, drawStyle);
            canvas.translate(0.0f, paragraphInfo.paragraph.getHeight());
        }
        canvas.restore();
    }

    /* renamed from: paint-hn5TExg$default, reason: not valid java name */
    public static void m685painthn5TExg$default(MultiParagraph multiParagraph, Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.save();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        if (arrayList.size() <= 1) {
            AndroidTextPaint_androidKt.m719drawParagraphs7AXcY_I(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else if (brush instanceof SolidColor) {
            AndroidTextPaint_androidKt.m719drawParagraphs7AXcY_I(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else {
            if (!(brush instanceof ShaderBrush)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            int size = arrayList.size();
            float f2 = 0.0f;
            float f3 = 0.0f;
            for (int i = 0; i < size; i++) {
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i);
                f3 += paragraphInfo.paragraph.getHeight();
                f2 = Math.max(f2, paragraphInfo.paragraph.getWidth());
            }
            Shader mo476createShaderuvyYCjk = ((ShaderBrush) brush).mo476createShaderuvyYCjk((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
            Matrix matrix = new Matrix();
            mo476createShaderuvyYCjk.getLocalMatrix(matrix);
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AndroidParagraph androidParagraph = ((ParagraphInfo) arrayList.get(i2)).paragraph;
                androidParagraph.m682painthn5TExg(canvas, new BrushKt$ShaderBrush$1(mo476createShaderuvyYCjk), f, shadow, textDecoration, drawStyle);
                canvas.translate(0.0f, androidParagraph.getHeight());
                matrix.setTranslate(0.0f, -androidParagraph.getHeight());
                mo476createShaderuvyYCjk.setLocalMatrix(matrix);
            }
        }
        canvas.restore();
    }

    /* renamed from: fillBoundingBoxes-8ffj60Q, reason: not valid java name */
    public final void m686fillBoundingBoxes8ffj60Q(long j, float[] fArr) {
        requireIndexInRange(TextRange.m702getMinimpl(j));
        requireIndexInRangeInclusiveEnd(TextRange.m701getMaximpl(j));
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 0;
        ParagraphKt.m692findParagraphsByRangeSbBc2M(this.paragraphInfoList, j, new MultiParagraph$$ExternalSyntheticLambda0(j, fArr, ref$IntRef, new Ref$FloatRef()));
    }

    public final float getLineBottom(int i) {
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.getLineBottom(i - paragraphInfo.startLineIndex) + paragraphInfo.top;
    }

    public final int getLineEnd(int i, boolean z) {
        int lineEnd;
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int i2 = i - paragraphInfo.startLineIndex;
        TextLayout textLayout = androidParagraph.layout;
        if (z) {
            Layout layout = textLayout.layout;
            ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
            if (layout.getEllipsisCount(i2) <= 0 || textLayout.ellipsize != TextUtils.TruncateAt.END) {
                LocalStore.AnonymousClass7 layoutHelper = textLayout.getLayoutHelper();
                Layout layout2 = (Layout) layoutHelper.val$queryString;
                lineEnd = layoutHelper.lineEndToVisibleEnd(layout2.getLineEnd(i2), layout2.getLineStart(i2));
            } else {
                lineEnd = layout.getEllipsisStart(i2) + layout.getLineStart(i2);
            }
        } else {
            lineEnd = textLayout.getLineEnd(i2);
        }
        return lineEnd + paragraphInfo.startIndex;
    }

    public final int getLineForOffset(int i) {
        int length = ((AnnotatedString) this.intrinsics.val$queryString).text.length();
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i >= length ? IntOffsetKt.getLastIndex(arrayList) : i < 0 ? 0 : ParagraphKt.findParagraphByIndex(i, arrayList));
        return paragraphInfo.paragraph.layout.layout.getLineForOffset(paragraphInfo.toLocalIndex(i)) + paragraphInfo.startLineIndex;
    }

    public final int getLineForVerticalPosition(float f) {
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByY(arrayList, f));
        int i = paragraphInfo.endIndex - paragraphInfo.startIndex;
        int i2 = paragraphInfo.startLineIndex;
        if (i == 0) {
            return i2;
        }
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        float f2 = f - paragraphInfo.top;
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getLineForVertical(((int) f2) - textLayout.topPadding) + i2;
    }

    public final float getLineTop(int i) {
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.getLineTop(i - paragraphInfo.startLineIndex) + paragraphInfo.top;
    }

    /* renamed from: getOffsetForPosition-k-4lQ0M, reason: not valid java name */
    public final int m687getOffsetForPositionk4lQ0M(long j) {
        int i = (int) (j & 4294967295L);
        float intBitsToFloat = Float.intBitsToFloat(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByY(arrayList, intBitsToFloat));
        int i2 = paragraphInfo.endIndex;
        int i3 = paragraphInfo.startIndex;
        if (i2 - i3 == 0) {
            return i3;
        }
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat(i) - paragraphInfo.top;
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) << 32) | (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L);
        TextLayout textLayout = androidParagraph.layout;
        int lineForVertical = textLayout.layout.getLineForVertical(((int) Float.intBitsToFloat((int) (4294967295L & floatToRawIntBits))) - textLayout.topPadding);
        return textLayout.layout.getOffsetForHorizontal(lineForVertical, (textLayout.getHorizontalPadding(lineForVertical) * (-1.0f)) + Float.intBitsToFloat((int) (floatToRawIntBits >> 32))) + i3;
    }

    /* renamed from: getRangeForRect-8-6BmAI, reason: not valid java name */
    public final long m688getRangeForRect86BmAI(Rect rect, int i, DifferentialMotionFlingController$$ExternalSyntheticLambda0 differentialMotionFlingController$$ExternalSyntheticLambda0) {
        long j;
        long j2;
        float f = rect.top;
        ArrayList arrayList = this.paragraphInfoList;
        int findParagraphByY = ParagraphKt.findParagraphByY(arrayList, f);
        float f2 = ((ParagraphInfo) arrayList.get(findParagraphByY)).bottom;
        float f3 = rect.bottom;
        if (f2 >= f3 || findParagraphByY == IntOffsetKt.getLastIndex(arrayList)) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(findParagraphByY);
            return paragraphInfo.m689toGlobalxdX6G0(paragraphInfo.paragraph.m680getRangeForRect86BmAI(paragraphInfo.toLocal(rect), i, differentialMotionFlingController$$ExternalSyntheticLambda0), true);
        }
        int findParagraphByY2 = ParagraphKt.findParagraphByY(arrayList, f3);
        long j3 = TextRange.Zero;
        while (true) {
            j = TextRange.Zero;
            if (!TextRange.m698equalsimpl0(j3, j) || findParagraphByY > findParagraphByY2) {
                break;
            }
            ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList.get(findParagraphByY);
            j3 = paragraphInfo2.m689toGlobalxdX6G0(paragraphInfo2.paragraph.m680getRangeForRect86BmAI(paragraphInfo2.toLocal(rect), i, differentialMotionFlingController$$ExternalSyntheticLambda0), true);
            findParagraphByY++;
        }
        if (TextRange.m698equalsimpl0(j3, j)) {
            return j;
        }
        while (true) {
            j2 = TextRange.Zero;
            if (!TextRange.m698equalsimpl0(j, j2) || findParagraphByY > findParagraphByY2) {
                break;
            }
            ParagraphInfo paragraphInfo3 = (ParagraphInfo) arrayList.get(findParagraphByY2);
            j = paragraphInfo3.m689toGlobalxdX6G0(paragraphInfo3.paragraph.m680getRangeForRect86BmAI(paragraphInfo3.toLocal(rect), i, differentialMotionFlingController$$ExternalSyntheticLambda0), true);
            findParagraphByY2--;
        }
        return TextRange.m698equalsimpl0(j, j2) ? j3 : ParagraphKt.TextRange((int) (j3 >> 32), (int) (4294967295L & j));
    }

    public final void requireIndexInRange(int i) {
        AnnotatedString annotatedString = (AnnotatedString) this.intrinsics.val$queryString;
        if (i < 0 || i >= annotatedString.text.length()) {
            StringBuilder m30m = CameraDevices$CC.m30m(i, "offset(", ") is out of bounds [0, ");
            m30m.append(annotatedString.text.length());
            m30m.append(')');
            InlineClassHelperKt.throwIllegalArgumentException(m30m.toString());
        }
    }

    public final void requireIndexInRangeInclusiveEnd(int i) {
        AnnotatedString annotatedString = (AnnotatedString) this.intrinsics.val$queryString;
        if (i < 0 || i > annotatedString.text.length()) {
            StringBuilder m30m = CameraDevices$CC.m30m(i, "offset(", ") is out of bounds [0, ");
            m30m.append(annotatedString.text.length());
            m30m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m30m.toString());
        }
    }

    public final void requireLineIndexInRange(int i) {
        boolean z = false;
        int i2 = this.lineCount;
        if (i >= 0 && i < i2) {
            z = true;
        }
        if (z) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("lineIndex(" + i + ") is out of bounds [0, " + i2 + ')');
    }
}
