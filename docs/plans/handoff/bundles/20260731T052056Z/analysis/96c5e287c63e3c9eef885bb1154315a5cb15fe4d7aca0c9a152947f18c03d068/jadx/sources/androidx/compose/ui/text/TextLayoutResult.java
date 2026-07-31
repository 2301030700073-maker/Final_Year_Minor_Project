package androidx.compose.ui.text;

import android.graphics.RectF;
import android.text.Layout;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextLayoutResult {
    public final float firstBaseline;
    public final float lastBaseline;
    public final TextLayoutInput layoutInput;
    public final MultiParagraph multiParagraph;
    public final ArrayList placeholderRects;
    public final long size;

    public TextLayoutResult(TextLayoutInput textLayoutInput, MultiParagraph multiParagraph, long j) {
        this.layoutInput = textLayoutInput;
        this.multiParagraph = multiParagraph;
        this.size = j;
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        boolean isEmpty = arrayList.isEmpty();
        float f = RecyclerView.DECELERATION_RATE;
        this.firstBaseline = isEmpty ? 0.0f : ((ParagraphInfo) arrayList.get(0)).paragraph.layout.getLineBaseline(0);
        if (!arrayList.isEmpty()) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.last((List) arrayList);
            f = paragraphInfo.paragraph.layout.getLineBaseline(r4.lineCount - 1) + paragraphInfo.top;
        }
        this.lastBaseline = f;
        this.placeholderRects = multiParagraph.placeholderRects;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextLayoutResult) {
            TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
            if (Intrinsics.areEqual(this.layoutInput, textLayoutResult.layoutInput) && this.multiParagraph == textLayoutResult.multiParagraph && IntSize.m721equalsimpl0(this.size, textLayoutResult.size) && this.firstBaseline == textLayoutResult.firstBaseline && this.lastBaseline == textLayoutResult.lastBaseline && this.placeholderRects.equals(textLayoutResult.placeholderRects)) {
                return true;
            }
        }
        return false;
    }

    public final ResolvedTextDirection getBidiRunDirection(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireIndexInRangeInclusiveEnd(i);
        int length = ((AnnotatedString) multiParagraph.intrinsics.url).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? arrayList.size() - 1 : ParagraphKt.findParagraphByIndex(arrayList, i));
        return paragraphInfo.paragraph.layout.layout.isRtlCharAt(paragraphInfo.toLocalIndex(i)) ? ResolvedTextDirection.Rtl : ResolvedTextDirection.Ltr;
    }

    public final Rect getBoundingBox(int i) {
        float secondaryHorizontal;
        float secondaryHorizontal2;
        float primaryHorizontal;
        float primaryHorizontal2;
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireIndexInRange(i);
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        CharSequence charSequence = androidParagraph.charSequence;
        if (localIndex < 0 || localIndex >= charSequence.length()) {
            StringBuilder m20m = Animation.CC.m20m(localIndex, "offset(", ") is out of bounds [0,");
            m20m.append(charSequence.length());
            m20m.append(')');
            InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
        }
        TextLayout textLayout = androidParagraph.layout;
        int lineForOffset = textLayout.getLineForOffset(localIndex);
        float lineTop = textLayout.getLineTop(lineForOffset);
        float lineBottom = textLayout.getLineBottom(lineForOffset);
        Layout layout = textLayout.layout;
        boolean z = layout.getParagraphDirection(lineForOffset) == 1;
        boolean isRtlCharAt = layout.isRtlCharAt(localIndex);
        if (!z || isRtlCharAt) {
            if (z && isRtlCharAt) {
                primaryHorizontal = textLayout.getSecondaryHorizontal(localIndex, false);
                primaryHorizontal2 = textLayout.getSecondaryHorizontal(localIndex + 1, true);
            } else if (isRtlCharAt) {
                primaryHorizontal = textLayout.getPrimaryHorizontal(localIndex, false);
                primaryHorizontal2 = textLayout.getPrimaryHorizontal(localIndex + 1, true);
            } else {
                secondaryHorizontal = textLayout.getSecondaryHorizontal(localIndex, false);
                secondaryHorizontal2 = textLayout.getSecondaryHorizontal(localIndex + 1, true);
            }
            float f = primaryHorizontal;
            secondaryHorizontal = primaryHorizontal2;
            secondaryHorizontal2 = f;
        } else {
            secondaryHorizontal = textLayout.getPrimaryHorizontal(localIndex, false);
            secondaryHorizontal2 = textLayout.getPrimaryHorizontal(localIndex + 1, true);
        }
        RectF rectF = new RectF(secondaryHorizontal, lineTop, secondaryHorizontal2, lineBottom);
        return paragraphInfo.toGlobal(new Rect(rectF.left, rectF.top, rectF.right, rectF.bottom));
    }

    public final Rect getCursorRect(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireIndexInRangeInclusiveEnd(i);
        int length = ((AnnotatedString) multiParagraph.intrinsics.url).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? arrayList.size() - 1 : ParagraphKt.findParagraphByIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        CharSequence charSequence = androidParagraph.charSequence;
        TextLayout textLayout = androidParagraph.layout;
        if (localIndex < 0 || localIndex > charSequence.length()) {
            StringBuilder m20m = Animation.CC.m20m(localIndex, "offset(", ") is out of bounds [0,");
            m20m.append(charSequence.length());
            m20m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m20m.toString());
        }
        float primaryHorizontal = textLayout.getPrimaryHorizontal(localIndex, false);
        int lineForOffset = textLayout.getLineForOffset(localIndex);
        return paragraphInfo.toGlobal(new Rect(primaryHorizontal, textLayout.getLineTop(lineForOffset), primaryHorizontal, textLayout.getLineBottom(lineForOffset)));
    }

    public final boolean getDidOverflowHeight() {
        MultiParagraph multiParagraph = this.multiParagraph;
        return multiParagraph.didExceedMaxLines || ((float) ((int) (this.size & 4294967295L))) < multiParagraph.height;
    }

    public final float getLineLeft(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int i2 = i - paragraphInfo.startLineIndex;
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getLineLeft(i2) + (i2 == textLayout.lineCount + (-1) ? textLayout.leftPadding : RecyclerView.DECELERATION_RATE);
    }

    public final float getLineRight(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int i2 = i - paragraphInfo.startLineIndex;
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getLineRight(i2) + (i2 == textLayout.lineCount + (-1) ? textLayout.rightPadding : RecyclerView.DECELERATION_RATE);
    }

    public final int getLineStart(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.layout.getLineStart(i - paragraphInfo.startLineIndex) + paragraphInfo.startIndex;
    }

    public final ResolvedTextDirection getParagraphDirection(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireIndexInRangeInclusiveEnd(i);
        int length = ((AnnotatedString) multiParagraph.intrinsics.url).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? arrayList.size() - 1 : ParagraphKt.findParagraphByIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getParagraphDirection(textLayout.getLineForOffset(localIndex)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    public final AndroidPath getPathForRange(int i, int i2) {
        MultiParagraph multiParagraph = this.multiParagraph;
        AnnotatedString annotatedString = (AnnotatedString) multiParagraph.intrinsics.url;
        if (i < 0 || i > i2 || i2 > annotatedString.text.length()) {
            StringBuilder m = Animation.CC.m(i, i2, "Start(", ") or End(", ") is out of range [0..");
            m.append(annotatedString.text.length());
            m.append("), or start > end!");
            InlineClassHelperKt.throwIllegalArgumentException(m.toString());
        }
        if (i == i2) {
            return AndroidPath_androidKt.Path();
        }
        AndroidPath Path = AndroidPath_androidKt.Path();
        ParagraphKt.m634findParagraphsByRangeSbBc2M(multiParagraph.paragraphInfoList, ParagraphKt.TextRange(i, i2), new MultiParagraph$$ExternalSyntheticLambda1(Path, i, i2));
        return Path;
    }

    /* renamed from: getWordBoundary--jx7JFs, reason: not valid java name */
    public final long m638getWordBoundaryjx7JFs(int i) {
        int prevBoundary;
        int i2;
        int nextBoundary;
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireIndexInRangeInclusiveEnd(i);
        int length = ((AnnotatedString) multiParagraph.intrinsics.url).text.length();
        ArrayList arrayList = multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? arrayList.size() - 1 : ParagraphKt.findParagraphByIndex(arrayList, i));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        SVG.PathDefinition wordIterator = androidParagraph.layout.getWordIterator();
        if (wordIterator.isOnPunctuation(wordIterator.prevBoundary(localIndex))) {
            wordIterator.checkOffsetIsValid(localIndex);
            prevBoundary = localIndex;
            while (prevBoundary != -1 && (!wordIterator.isOnPunctuation(prevBoundary) || wordIterator.isAfterPunctuation(prevBoundary))) {
                prevBoundary = wordIterator.prevBoundary(prevBoundary);
            }
        } else {
            wordIterator.checkOffsetIsValid(localIndex);
            prevBoundary = wordIterator.isOnLetterOrDigitOrEmoji(localIndex) ? (!wordIterator.isBoundary(localIndex) || wordIterator.isAfterLetterOrDigitOrEmoji(localIndex)) ? wordIterator.prevBoundary(localIndex) : localIndex : wordIterator.isAfterLetterOrDigitOrEmoji(localIndex) ? wordIterator.prevBoundary(localIndex) : -1;
        }
        if (prevBoundary == -1) {
            prevBoundary = localIndex;
        }
        if (wordIterator.isAfterPunctuation(wordIterator.nextBoundary(localIndex))) {
            wordIterator.checkOffsetIsValid(localIndex);
            i2 = localIndex;
            while (i2 != -1 && (wordIterator.isOnPunctuation(i2) || !wordIterator.isAfterPunctuation(i2))) {
                i2 = wordIterator.nextBoundary(i2);
            }
        } else {
            wordIterator.checkOffsetIsValid(localIndex);
            if (wordIterator.isAfterLetterOrDigitOrEmoji(localIndex)) {
                if (!wordIterator.isBoundary(localIndex) || wordIterator.isOnLetterOrDigitOrEmoji(localIndex)) {
                    nextBoundary = wordIterator.nextBoundary(localIndex);
                    i2 = nextBoundary;
                } else {
                    i2 = localIndex;
                }
            } else if (wordIterator.isOnLetterOrDigitOrEmoji(localIndex)) {
                nextBoundary = wordIterator.nextBoundary(localIndex);
                i2 = nextBoundary;
            } else {
                i2 = -1;
            }
        }
        if (i2 != -1) {
            localIndex = i2;
        }
        return paragraphInfo.m631toGlobalxdX6G0(ParagraphKt.TextRange(prevBoundary, localIndex), false);
    }

    public final int hashCode() {
        int hashCode = (this.multiParagraph.hashCode() + (this.layoutInput.hashCode() * 31)) * 31;
        long j = this.size;
        return this.placeholderRects.hashCode() + Animation.CC.m(Animation.CC.m((((int) (j ^ (j >>> 32))) + hashCode) * 31, this.firstBaseline, 31), this.lastBaseline, 31);
    }

    public final String toString() {
        return "TextLayoutResult(layoutInput=" + this.layoutInput + ", multiParagraph=" + this.multiParagraph + ", size=" + ((Object) IntSize.m722toStringimpl(this.size)) + ", firstBaseline=" + this.firstBaseline + ", lastBaseline=" + this.lastBaseline + ", placeholderRects=" + this.placeholderRects + ')';
    }
}
