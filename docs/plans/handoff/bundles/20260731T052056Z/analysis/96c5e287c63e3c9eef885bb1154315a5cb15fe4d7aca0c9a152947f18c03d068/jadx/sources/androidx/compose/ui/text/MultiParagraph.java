package androidx.compose.ui.text;

import android.graphics.Matrix;
import android.graphics.Shader;
import android.text.Layout;
import android.text.TextUtils;
import androidx.compose.animation.core.Animation;
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
import androidx.compose.ui.text.input.VisualTransformation$Companion$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.platform.AndroidTextPaint_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MultiParagraph {
    public final boolean didExceedMaxLines;
    public final float height;
    public final Request.Builder intrinsics;
    public final int lineCount;
    public final int maxLines;
    public final ArrayList paragraphInfoList;
    public final ArrayList placeholderRects;
    public final float width;

    public MultiParagraph(Request.Builder builder, long j, int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int m680getMaxHeightimpl;
        int i5;
        this.intrinsics = builder;
        this.maxLines = i;
        if (Constraints.m683getMinWidthimpl(j) != 0 || Constraints.m682getMinHeightimpl(j) != 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = (ArrayList) builder.tags;
        int size = arrayList2.size();
        float f = 0.0f;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) arrayList2.get(i6);
            AndroidParagraphIntrinsics androidParagraphIntrinsics = paragraphIntrinsicInfo.intrinsics;
            int m681getMaxWidthimpl = Constraints.m681getMaxWidthimpl(j);
            if (Constraints.m676getHasBoundedHeightimpl(j)) {
                i4 = i6;
                m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j) - ((int) Math.ceil(f));
                if (m680getMaxHeightimpl < 0) {
                    m680getMaxHeightimpl = 0;
                }
            } else {
                i4 = i6;
                m680getMaxHeightimpl = Constraints.m680getMaxHeightimpl(j);
            }
            i3 = 0;
            AndroidParagraph androidParagraph = new AndroidParagraph(androidParagraphIntrinsics, this.maxLines - i7, i2, ConstraintsKt.Constraints$default(0, m681getMaxWidthimpl, 0, m680getMaxHeightimpl, 5));
            float height = androidParagraph.getHeight() + f;
            TextLayout textLayout = androidParagraph.layout;
            int i8 = i7 + textLayout.lineCount;
            arrayList.add(new ParagraphInfo(androidParagraph, paragraphIntrinsicInfo.startIndex, paragraphIntrinsicInfo.endIndex, i7, i8, f, height));
            if (!textLayout.didExceedMaxLines) {
                if (i8 == this.maxLines) {
                    i5 = i4;
                    if (i5 != Room.getLastIndex((ArrayList) this.intrinsics.tags)) {
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
        this.width = Constraints.m681getMaxWidthimpl(j);
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
            CollectionsKt.addAll(arrayList3, arrayList4);
        }
        if (arrayList3.size() < ((List) this.intrinsics.method).size()) {
            int size4 = ((List) this.intrinsics.method).size() - arrayList3.size();
            ArrayList arrayList5 = new ArrayList(size4);
            for (int i11 = i3; i11 < size4; i11++) {
                arrayList5.add(null);
            }
            arrayList3 = CollectionsKt.plus((Collection) arrayList3, (Iterable) arrayList5);
        }
        this.placeholderRects = arrayList3;
    }

    /* renamed from: paint-LG529CI$default, reason: not valid java name */
    public static void m626paintLG529CI$default(MultiParagraph multiParagraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.save();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i);
            paragraphInfo.paragraph.m623paintLG529CI(canvas, j, shadow, textDecoration, drawStyle);
            canvas.translate(RecyclerView.DECELERATION_RATE, paragraphInfo.paragraph.getHeight());
        }
        canvas.restore();
    }

    /* renamed from: paint-hn5TExg$default, reason: not valid java name */
    public static void m627painthn5TExg$default(MultiParagraph multiParagraph, Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.save();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        if (arrayList.size() <= 1) {
            AndroidTextPaint_androidKt.m666drawParagraphs7AXcY_I(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else if (brush instanceof SolidColor) {
            AndroidTextPaint_androidKt.m666drawParagraphs7AXcY_I(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else {
            if (!(brush instanceof ShaderBrush)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m();
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
            Shader mo422createShaderuvyYCjk = ((ShaderBrush) brush).mo422createShaderuvyYCjk((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
            Matrix matrix = new Matrix();
            mo422createShaderuvyYCjk.getLocalMatrix(matrix);
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AndroidParagraph androidParagraph = ((ParagraphInfo) arrayList.get(i2)).paragraph;
                androidParagraph.m624painthn5TExg(canvas, new BrushKt$ShaderBrush$1(mo422createShaderuvyYCjk), f, shadow, textDecoration, drawStyle);
                canvas.translate(RecyclerView.DECELERATION_RATE, androidParagraph.getHeight());
                matrix.setTranslate(RecyclerView.DECELERATION_RATE, -androidParagraph.getHeight());
                mo422createShaderuvyYCjk.setLocalMatrix(matrix);
            }
        }
        canvas.restore();
    }

    /* renamed from: fillBoundingBoxes-8ffj60Q, reason: not valid java name */
    public final void m628fillBoundingBoxes8ffj60Q(long j, float[] fArr) {
        requireIndexInRange(TextRange.m644getMinimpl(j));
        requireIndexInRangeInclusiveEnd(TextRange.m643getMaximpl(j));
        Ref$IntRef ref$IntRef = new Ref$IntRef();
        ref$IntRef.element = 0;
        ParagraphKt.m634findParagraphsByRangeSbBc2M(this.paragraphInfoList, j, new MultiParagraph$$ExternalSyntheticLambda0(j, fArr, ref$IntRef, new Ref$FloatRef()));
    }

    public final float getLineBottom(int i) {
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.getLineBottom(i - paragraphInfo.startLineIndex) + paragraphInfo.top;
    }

    public final int getLineEnd(int i, boolean z) {
        int lineEnd;
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int i2 = i - paragraphInfo.startLineIndex;
        TextLayout textLayout = androidParagraph.layout;
        if (z) {
            Layout layout = textLayout.layout;
            ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
            if (layout.getEllipsisCount(i2) <= 0 || textLayout.ellipsize != TextUtils.TruncateAt.END) {
                Request.Builder layoutHelper = textLayout.getLayoutHelper();
                Layout layout2 = (Layout) layoutHelper.url;
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
        int length = ((AnnotatedString) this.intrinsics.url).text.length();
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i >= length ? arrayList.size() - 1 : i < 0 ? 0 : ParagraphKt.findParagraphByIndex(arrayList, i));
        return paragraphInfo.paragraph.layout.getLineForOffset(paragraphInfo.toLocalIndex(i)) + paragraphInfo.startLineIndex;
    }

    public final int getLineForVerticalPosition(float f) {
        int lineForVertical;
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
        int i3 = (int) f2;
        int i4 = textLayout.lineCount;
        if (i4 <= 0) {
            lineForVertical = 0;
        } else {
            lineForVertical = textLayout.layout.getLineForVertical(i3 - textLayout.topPadding);
            int i5 = i4 - 1;
            if (lineForVertical > i5) {
                lineForVertical = i5;
            }
        }
        return lineForVertical + i2;
    }

    public final float getLineTop(int i) {
        requireLineIndexInRange(i);
        ArrayList arrayList = this.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.getLineTop(i - paragraphInfo.startLineIndex) + paragraphInfo.top;
    }

    /* renamed from: getOffsetForPosition-k-4lQ0M, reason: not valid java name */
    public final int m629getOffsetForPositionk4lQ0M(long j) {
        int offsetForHorizontal;
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
        int intBitsToFloat4 = (int) Float.intBitsToFloat((int) (4294967295L & floatToRawIntBits));
        Layout layout = textLayout.layout;
        int lineForVertical = layout.getLineForVertical(intBitsToFloat4 - textLayout.topPadding);
        if (lineForVertical >= textLayout.lineCount) {
            offsetForHorizontal = layout.getText().length();
        } else {
            offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, (textLayout.getHorizontalPadding(lineForVertical) * (-1.0f)) + Float.intBitsToFloat((int) (floatToRawIntBits >> 32)));
        }
        return offsetForHorizontal + i3;
    }

    /* renamed from: getRangeForRect-8-6BmAI, reason: not valid java name */
    public final long m630getRangeForRect86BmAI(Rect rect, int i, VisualTransformation$Companion$$ExternalSyntheticLambda0 visualTransformation$Companion$$ExternalSyntheticLambda0) {
        long j;
        long j2;
        float f = rect.top;
        ArrayList arrayList = this.paragraphInfoList;
        int findParagraphByY = ParagraphKt.findParagraphByY(arrayList, f);
        float f2 = ((ParagraphInfo) arrayList.get(findParagraphByY)).bottom;
        float f3 = rect.bottom;
        if (f2 >= f3 || findParagraphByY == arrayList.size() - 1) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(findParagraphByY);
            return paragraphInfo.m631toGlobalxdX6G0(paragraphInfo.paragraph.m622getRangeForRect86BmAI(paragraphInfo.toLocal(rect), i, visualTransformation$Companion$$ExternalSyntheticLambda0), true);
        }
        int findParagraphByY2 = ParagraphKt.findParagraphByY(arrayList, f3);
        long j3 = TextRange.Zero;
        while (true) {
            j = TextRange.Zero;
            if (!TextRange.m640equalsimpl0(j3, j) || findParagraphByY > findParagraphByY2) {
                break;
            }
            ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList.get(findParagraphByY);
            j3 = paragraphInfo2.m631toGlobalxdX6G0(paragraphInfo2.paragraph.m622getRangeForRect86BmAI(paragraphInfo2.toLocal(rect), i, visualTransformation$Companion$$ExternalSyntheticLambda0), true);
            findParagraphByY++;
        }
        if (TextRange.m640equalsimpl0(j3, j)) {
            return j;
        }
        while (true) {
            j2 = TextRange.Zero;
            if (!TextRange.m640equalsimpl0(j, j2) || findParagraphByY > findParagraphByY2) {
                break;
            }
            ParagraphInfo paragraphInfo3 = (ParagraphInfo) arrayList.get(findParagraphByY2);
            j = paragraphInfo3.m631toGlobalxdX6G0(paragraphInfo3.paragraph.m622getRangeForRect86BmAI(paragraphInfo3.toLocal(rect), i, visualTransformation$Companion$$ExternalSyntheticLambda0), true);
            findParagraphByY2--;
        }
        return TextRange.m640equalsimpl0(j, j2) ? j3 : ParagraphKt.TextRange((int) (j3 >> 32), (int) (4294967295L & j));
    }

    public final void requireIndexInRange(int i) {
        AnnotatedString annotatedString = (AnnotatedString) this.intrinsics.url;
        if (i < 0 || i >= annotatedString.text.length()) {
            StringBuilder m20m = Animation.CC.m20m(i, "offset(", ") is out of bounds [0, ");
            m20m.append(annotatedString.text.length());
            m20m.append(')');
            InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
        }
    }

    public final void requireIndexInRangeInclusiveEnd(int i) {
        AnnotatedString annotatedString = (AnnotatedString) this.intrinsics.url;
        if (i < 0 || i > annotatedString.text.length()) {
            StringBuilder m20m = Animation.CC.m20m(i, "offset(", ") is out of bounds [0, ");
            m20m.append(annotatedString.text.length());
            m20m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
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
