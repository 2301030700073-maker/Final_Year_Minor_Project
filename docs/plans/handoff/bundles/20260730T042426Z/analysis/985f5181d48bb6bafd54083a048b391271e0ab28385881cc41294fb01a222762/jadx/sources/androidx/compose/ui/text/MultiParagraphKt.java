package androidx.compose.ui.text;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* compiled from: MultiParagraph.kt */
/* loaded from: classes.dex */
public abstract class MultiParagraphKt {
    public static final int findParagraphByIndex(List list, int i) {
        char c;
        int endIndex = ((ParagraphInfo) CollectionsKt.last(list)).getEndIndex();
        if (i > ((ParagraphInfo) CollectionsKt.last(list)).getEndIndex()) {
            throw new IllegalArgumentException(("Index " + i + " should be less or equal than last line's end " + endIndex).toString());
        }
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            if (paragraphInfo.getStartIndex() > i) {
                c = 1;
            } else {
                c = paragraphInfo.getEndIndex() <= i ? (char) 65535 : (char) 0;
            }
            if (c < 0) {
                i2 = i3 + 1;
            } else {
                if (c <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final int findParagraphByY(List list, float f) {
        if (f <= 0.0f) {
            return 0;
        }
        if (f >= ((ParagraphInfo) CollectionsKt.last(list)).getBottom()) {
            return CollectionsKt.getLastIndex(list);
        }
        int size = list.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i2);
            char c = paragraphInfo.getTop() > f ? (char) 1 : paragraphInfo.getBottom() <= f ? (char) 65535 : (char) 0;
            if (c < 0) {
                i = i2 + 1;
            } else {
                if (c <= 0) {
                    return i2;
                }
                size = i2 - 1;
            }
        }
        return -(i + 1);
    }

    /* renamed from: findParagraphsByRange-Sb-Bc2M, reason: not valid java name */
    public static final void m2063findParagraphsByRangeSbBc2M(List list, long j, Function1 function1) {
        int size = list.size();
        for (int findParagraphByIndex = findParagraphByIndex(list, TextRange.m2123getMinimpl(j)); findParagraphByIndex < size; findParagraphByIndex++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(findParagraphByIndex);
            if (paragraphInfo.getStartIndex() >= TextRange.m2122getMaximpl(j)) {
                return;
            }
            if (paragraphInfo.getStartIndex() != paragraphInfo.getEndIndex()) {
                function1.invoke(paragraphInfo);
            }
        }
    }

    public static final int findParagraphByLineIndex(List list, int i) {
        char c;
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            if (paragraphInfo.getStartLineIndex() > i) {
                c = 1;
            } else {
                c = paragraphInfo.getEndLineIndex() <= i ? (char) 65535 : (char) 0;
            }
            if (c < 0) {
                i2 = i3 + 1;
            } else {
                if (c <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }
}
