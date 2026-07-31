package androidx.compose.ui.text;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.IntSize;
import coil3.ComponentRegistry;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
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
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        float f = 0.0f;
        this.firstBaseline = arrayList.isEmpty() ? 0.0f : ((ParagraphInfo) arrayList.get(0)).paragraph.layout.getLineBaseline(0);
        if (!arrayList.isEmpty()) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.last(arrayList);
            f = paragraphInfo.paragraph.layout.getLineBaseline(r4.lineCount - 1) + paragraphInfo.top;
        }
        this.lastBaseline = f;
        this.placeholderRects = (ArrayList) multiParagraph.placeholderRects;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextLayoutResult) {
            TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
            if (Intrinsics.areEqual(this.layoutInput, textLayoutResult.layoutInput) && this.multiParagraph == textLayoutResult.multiParagraph && IntSize.m449equalsimpl0(this.size, textLayoutResult.size) && this.firstBaseline == textLayoutResult.firstBaseline && this.lastBaseline == textLayoutResult.lastBaseline && Intrinsics.areEqual(this.placeholderRects, textLayoutResult.placeholderRects)) {
                return true;
            }
        }
        return false;
    }

    public final int getLineForOffset(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i >= ((AnnotatedString) ((ComponentRegistry.Builder) multiParagraph.intrinsics).mappers).text.length() ? Jsoup.getLastIndex(arrayList) : i < 0 ? 0 : ParagraphKt.findParagraphByIndex(i, arrayList));
        return paragraphInfo.paragraph.layout.layout.getLineForOffset(paragraphInfo.toLocalIndex(i)) + paragraphInfo.startLineIndex;
    }

    public final int getLineForVerticalPosition(float f) {
        ArrayList arrayList = (ArrayList) this.multiParagraph.paragraphInfoList;
        int i = 0;
        if (f > 0.0f) {
            if (f < ((ParagraphInfo) CollectionsKt.last(arrayList)).bottom) {
                int size = arrayList.size() - 1;
                int i2 = 0;
                while (true) {
                    if (i2 > size) {
                        i = -(i2 + 1);
                        break;
                    }
                    int i3 = (i2 + size) >>> 1;
                    ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i3);
                    char c = paragraphInfo.top > f ? (char) 1 : paragraphInfo.bottom <= f ? (char) 65535 : (char) 0;
                    if (c >= 0) {
                        if (c <= 0) {
                            i = i3;
                            break;
                        }
                        size = i3 - 1;
                    } else {
                        i2 = i3 + 1;
                    }
                }
            } else {
                i = arrayList.size() - 1;
            }
        }
        ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList.get(i);
        int i4 = paragraphInfo2.endIndex;
        int i5 = paragraphInfo2.startLineIndex;
        if (i4 - paragraphInfo2.startIndex == 0) {
            return i5;
        }
        AndroidParagraph androidParagraph = paragraphInfo2.paragraph;
        float f2 = f - paragraphInfo2.top;
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getLineForVertical(((int) f2) - textLayout.topPadding) + i5;
    }

    public final int getLineStart(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.layout.getLineStart(i - paragraphInfo.startLineIndex) + paragraphInfo.startIndex;
    }

    public final float getLineTop(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        multiParagraph.requireLineIndexInRange(i);
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        return androidParagraph.layout.getLineTop(i - paragraphInfo.startLineIndex) + paragraphInfo.top;
    }

    public final ResolvedTextDirection getParagraphDirection(int i) {
        MultiParagraph multiParagraph = this.multiParagraph;
        AnnotatedString annotatedString = (AnnotatedString) ((ComponentRegistry.Builder) multiParagraph.intrinsics).mappers;
        if (i < 0 || i > annotatedString.text.length()) {
            StringBuilder m179m = Modifier.CC.m179m("offset(", i, ") is out of bounds [0, ");
            m179m.append(annotatedString.text.length());
            m179m.append(']');
            InlineClassHelperKt.throwIllegalArgumentException(m179m.toString());
        }
        int length = ((AnnotatedString) ((ComponentRegistry.Builder) multiParagraph.intrinsics).mappers).text.length();
        ArrayList arrayList = (ArrayList) multiParagraph.paragraphInfoList;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i == length ? Jsoup.getLastIndex(arrayList) : ParagraphKt.findParagraphByIndex(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.paragraph;
        int localIndex = paragraphInfo.toLocalIndex(i);
        TextLayout textLayout = androidParagraph.layout;
        return textLayout.layout.getParagraphDirection(textLayout.layout.getLineForOffset(localIndex)) == 1 ? ResolvedTextDirection.Ltr : ResolvedTextDirection.Rtl;
    }

    public final int hashCode() {
        int hashCode = (this.multiParagraph.hashCode() + (this.layoutInput.hashCode() * 31)) * 31;
        long j = this.size;
        return this.placeholderRects.hashCode() + Modifier.CC.m(this.lastBaseline, Modifier.CC.m(this.firstBaseline, (((int) (j ^ (j >>> 32))) + hashCode) * 31, 31), 31);
    }

    public final String toString() {
        return "TextLayoutResult(layoutInput=" + this.layoutInput + ", multiParagraph=" + this.multiParagraph + ", size=" + ((Object) IntSize.m450toStringimpl(this.size)) + ", firstBaseline=" + this.firstBaseline + ", lastBaseline=" + this.lastBaseline + ", placeholderRects=" + this.placeholderRects + ')';
    }
}
