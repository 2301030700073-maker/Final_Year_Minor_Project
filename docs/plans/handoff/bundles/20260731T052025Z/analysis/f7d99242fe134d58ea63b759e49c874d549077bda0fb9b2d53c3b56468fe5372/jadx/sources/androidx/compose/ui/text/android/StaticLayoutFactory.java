package androidx.compose.ui.text.android;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import androidx.compose.runtime.ComposerKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.node.LayoutNode$$ExternalSyntheticLambda0;
import androidx.compose.ui.scrollcapture.RelativeScroller;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import com.fsck.k9.mailstore.LocalStore;
import java.text.Bidi;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class StaticLayoutFactory {
    public static final LayoutNode$$ExternalSyntheticLambda0 IntRangeComparator = new LayoutNode$$ExternalSyntheticLambda0(5);

    public static StaticLayout create(CharSequence charSequence, TextPaint textPaint, int i, int i2, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i3, TextUtils.TruncateAt truncateAt, int i4, int i5, boolean z, int i6, int i7, int i8, int i9) {
        if (i2 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid start value");
        }
        int length = charSequence.length();
        if (i2 < 0 || i2 > length) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid end value");
        }
        if (i3 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid maxLines value");
        }
        if (i < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid width value");
        }
        if (i4 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("invalid ellipsizedWidth value");
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, i2, textPaint, i);
        obtain.setTextDirection(textDirectionHeuristic);
        obtain.setAlignment(alignment);
        obtain.setMaxLines(i3);
        obtain.setEllipsize(truncateAt);
        obtain.setEllipsizedWidth(i4);
        obtain.setLineSpacing(0.0f, 1.0f);
        obtain.setIncludePad(z);
        obtain.setBreakStrategy(i6);
        obtain.setHyphenationFrequency(i9);
        obtain.setIndents(null, null);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 26) {
            CanvasCompatO.setJustificationMode(obtain, i5);
        }
        if (i10 >= 28) {
            StaticLayoutFactory28.setUseLineSpacingFromFallbacks(obtain);
        }
        if (i10 >= 33) {
            BoringLayoutFactory33.setLineBreakConfig(obtain, i7, i8);
        }
        if (i10 >= 35) {
            StaticLayoutFactory35.disableUseBoundsForWidth(obtain);
        }
        return obtain.build();
    }

    public static final Rect getCharSequenceBounds(TextPaint textPaint, CharSequence charSequence, int i, int i2) {
        int i3 = i;
        if (charSequence instanceof Spanned) {
            Spanned spanned = (Spanned) charSequence;
            if (spanned.nextSpanTransition(i3 - 1, i2, MetricAffectingSpan.class) != i2) {
                Rect rect = new Rect();
                Rect rect2 = new Rect();
                TextPaint textPaint2 = new TextPaint();
                while (i3 < i2) {
                    int nextSpanTransition = spanned.nextSpanTransition(i3, i2, MetricAffectingSpan.class);
                    MetricAffectingSpan[] metricAffectingSpanArr = (MetricAffectingSpan[]) spanned.getSpans(i3, nextSpanTransition, MetricAffectingSpan.class);
                    textPaint2.set(textPaint);
                    for (MetricAffectingSpan metricAffectingSpan : metricAffectingSpanArr) {
                        if (spanned.getSpanStart(metricAffectingSpan) != spanned.getSpanEnd(metricAffectingSpan)) {
                            metricAffectingSpan.updateMeasureState(textPaint2);
                        }
                    }
                    if (Build.VERSION.SDK_INT >= 29) {
                        Paint29.getTextBounds(textPaint2, charSequence, i3, nextSpanTransition, rect2);
                    } else {
                        textPaint2.getTextBounds(charSequence.toString(), i3, nextSpanTransition, rect2);
                    }
                    rect.right = rect2.width() + rect.right;
                    rect.top = Math.min(rect.top, rect2.top);
                    rect.bottom = Math.max(rect.bottom, rect2.bottom);
                    i3 = nextSpanTransition;
                }
                return rect;
            }
        }
        Rect rect3 = new Rect();
        if (Build.VERSION.SDK_INT >= 29) {
            Paint29.getTextBounds(textPaint, charSequence, i3, i2, rect3);
            return rect3;
        }
        textPaint.getTextBounds(charSequence.toString(), i3, i2, rect3);
        return rect3;
    }

    public static final float getCharacterRightBounds(int i, int i2, float[] fArr) {
        return fArr[((i - i2) * 2) + 1];
    }

    public static final int getLineForOffset(Layout layout, int i, boolean z) {
        if (i <= 0) {
            return 0;
        }
        if (i >= layout.getText().length()) {
            return layout.getLineCount() - 1;
        }
        int lineForOffset = layout.getLineForOffset(i);
        int lineStart = layout.getLineStart(lineForOffset);
        int lineEnd = layout.getLineEnd(lineForOffset);
        if (lineStart == i || lineEnd == i) {
            if (lineStart == i) {
                if (z) {
                    return lineForOffset - 1;
                }
            } else if (!z) {
                return lineForOffset + 1;
            }
        }
        return lineForOffset;
    }

    public static final int getStartOrEndOffsetForRectWithinLine(TextLayout textLayout, Layout layout, LocalStore.AnonymousClass7 anonymousClass7, int i, RectF rectF, SegmentFinder segmentFinder, ComposerKt$$ExternalSyntheticLambda0 composerKt$$ExternalSyntheticLambda0, boolean z) {
        LayoutHelper$BidiRun[] layoutHelper$BidiRunArr;
        int i2;
        LayoutHelper$BidiRun[] layoutHelper$BidiRunArr2;
        int i3;
        int nextEndBoundary;
        int i4;
        int i5;
        int previousStartBoundary;
        Bidi createLineBidi;
        boolean z2;
        float f;
        float f2;
        float f3;
        int lineTop = layout.getLineTop(i);
        int lineBottom = layout.getLineBottom(i);
        int lineStart = layout.getLineStart(i);
        int lineEnd = layout.getLineEnd(i);
        if (lineStart == lineEnd) {
            return -1;
        }
        int i6 = (lineEnd - lineStart) * 2;
        float[] fArr = new float[i6];
        Layout layout2 = textLayout.layout;
        int lineStart2 = layout2.getLineStart(i);
        int lineEnd2 = textLayout.getLineEnd(i);
        if (i6 < (lineEnd2 - lineStart2) * 2) {
            InlineClassHelperKt.throwIllegalArgumentException("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 2");
        }
        RelativeScroller relativeScroller = new RelativeScroller(textLayout);
        boolean z3 = false;
        boolean z4 = layout2.getParagraphDirection(i) == 1;
        int i7 = 0;
        while (lineStart2 < lineEnd2) {
            boolean isRtlCharAt = layout2.isRtlCharAt(lineStart2);
            if (z4 && !isRtlCharAt) {
                f = relativeScroller.get(lineStart2, z3, z3, true);
                f3 = relativeScroller.get(lineStart2 + 1, true, true, true);
                z2 = z4;
            } else if (z4 && isRtlCharAt) {
                z2 = z4;
                f3 = relativeScroller.get(lineStart2, false, false, false);
                f = relativeScroller.get(lineStart2 + 1, true, true, false);
            } else {
                z2 = z4;
                if (isRtlCharAt) {
                    f2 = relativeScroller.get(lineStart2, false, false, true);
                    f = relativeScroller.get(lineStart2 + 1, true, true, true);
                } else {
                    f = relativeScroller.get(lineStart2, false, false, false);
                    f2 = relativeScroller.get(lineStart2 + 1, true, true, false);
                }
                f3 = f2;
            }
            fArr[i7] = f;
            fArr[i7 + 1] = f3;
            i7 += 2;
            lineStart2++;
            z4 = z2;
            z3 = false;
        }
        Layout layout3 = (Layout) anonymousClass7.val$queryString;
        int lineStart3 = layout3.getLineStart(i);
        int lineEnd3 = layout3.getLineEnd(i);
        int paragraphForOffset = anonymousClass7.getParagraphForOffset(lineStart3, false);
        int paragraphStart = anonymousClass7.getParagraphStart(paragraphForOffset);
        int i8 = lineStart3 - paragraphStart;
        int i9 = lineEnd3 - paragraphStart;
        Bidi analyzeBidi = anonymousClass7.analyzeBidi(paragraphForOffset);
        if (analyzeBidi == null || (createLineBidi = analyzeBidi.createLineBidi(i8, i9)) == null) {
            i2 = 0;
            layoutHelper$BidiRunArr = new LayoutHelper$BidiRun[]{new LayoutHelper$BidiRun(lineStart3, lineEnd3, layout3.isRtlCharAt(lineStart3))};
        } else {
            int runCount = createLineBidi.getRunCount();
            layoutHelper$BidiRunArr = new LayoutHelper$BidiRun[runCount];
            int i10 = 0;
            while (i10 < runCount) {
                int i11 = runCount;
                layoutHelper$BidiRunArr[i10] = new LayoutHelper$BidiRun(createLineBidi.getRunStart(i10) + lineStart3, createLineBidi.getRunLimit(i10) + lineStart3, createLineBidi.getRunLevel(i10) % 2 == 1);
                i10++;
                runCount = i11;
            }
            i2 = 0;
        }
        IntProgression intRange = z ? new IntRange(i2, layoutHelper$BidiRunArr.length - 1, 1) : new IntProgression(layoutHelper$BidiRunArr.length - 1, i2, -1);
        int i12 = intRange.first;
        int i13 = intRange.last;
        int i14 = intRange.step;
        if ((i14 <= 0 || i12 > i13) && (i14 >= 0 || i13 > i12)) {
            return -1;
        }
        while (true) {
            LayoutHelper$BidiRun layoutHelper$BidiRun = layoutHelper$BidiRunArr[i12];
            boolean z5 = layoutHelper$BidiRun.isRtl;
            int i15 = layoutHelper$BidiRun.start;
            int i16 = layoutHelper$BidiRun.end;
            float f4 = z5 ? fArr[((i16 - 1) - lineStart) * 2] : fArr[(i15 - lineStart) * 2];
            float characterRightBounds = z5 ? getCharacterRightBounds(i15, lineStart, fArr) : getCharacterRightBounds(i16 - 1, lineStart, fArr);
            float f5 = rectF.left;
            int i17 = i14;
            if (z) {
                if (characterRightBounds >= f5) {
                    float f6 = rectF.right;
                    if (f4 <= f6) {
                        if ((z5 || f5 > f4) && (!z5 || f6 < characterRightBounds)) {
                            int i18 = i16;
                            int i19 = i15;
                            while (true) {
                                i4 = i18;
                                if (i18 - i19 <= 1) {
                                    break;
                                }
                                int i20 = (i4 + i19) / 2;
                                float f7 = fArr[(i20 - lineStart) * 2];
                                if ((z5 || f7 <= rectF.left) && (!z5 || f7 >= rectF.right)) {
                                    i18 = i4;
                                    i19 = i20;
                                } else {
                                    i18 = i20;
                                }
                            }
                            i5 = z5 ? i4 : i19;
                        } else {
                            i5 = i15;
                        }
                        int nextEndBoundary2 = segmentFinder.nextEndBoundary(i5);
                        if (nextEndBoundary2 != -1 && (previousStartBoundary = segmentFinder.previousStartBoundary(nextEndBoundary2)) < i16) {
                            if (previousStartBoundary >= i15) {
                                i15 = previousStartBoundary;
                            }
                            if (nextEndBoundary2 > i16) {
                                nextEndBoundary2 = i16;
                            }
                            layoutHelper$BidiRunArr2 = layoutHelper$BidiRunArr;
                            RectF rectF2 = new RectF(0.0f, lineTop, 0.0f, lineBottom);
                            int i21 = nextEndBoundary2;
                            while (true) {
                                rectF2.left = z5 ? fArr[((i21 - 1) - lineStart) * 2] : fArr[(i15 - lineStart) * 2];
                                rectF2.right = z5 ? getCharacterRightBounds(i15, lineStart, fArr) : getCharacterRightBounds(i21 - 1, lineStart, fArr);
                                if (!((Boolean) composerKt$$ExternalSyntheticLambda0.invoke(rectF2, rectF)).booleanValue()) {
                                    i15 = segmentFinder.nextStartBoundary(i15);
                                    if (i15 == -1 || i15 >= i16) {
                                        break;
                                    }
                                    i21 = segmentFinder.nextEndBoundary(i15);
                                    if (i21 > i16) {
                                        i21 = i16;
                                    }
                                } else {
                                    break;
                                }
                            }
                            i15 = -1;
                        }
                    }
                }
                layoutHelper$BidiRunArr2 = layoutHelper$BidiRunArr;
                i15 = -1;
            } else {
                layoutHelper$BidiRunArr2 = layoutHelper$BidiRunArr;
                if (characterRightBounds >= f5) {
                    float f8 = rectF.right;
                    if (f4 <= f8) {
                        if ((z5 || f8 < characterRightBounds) && (!z5 || f5 > f4)) {
                            int i22 = i16;
                            int i23 = i15;
                            while (i22 - i23 > 1) {
                                int i24 = (i22 + i23) / 2;
                                float f9 = fArr[(i24 - lineStart) * 2];
                                int i25 = i22;
                                if ((z5 || f9 <= rectF.right) && (!z5 || f9 >= rectF.left)) {
                                    i22 = i25;
                                    i23 = i24;
                                } else {
                                    i22 = i24;
                                }
                            }
                            i3 = z5 ? i22 : i23;
                        } else {
                            i3 = i16 - 1;
                        }
                        int previousStartBoundary2 = segmentFinder.previousStartBoundary(i3 + 1);
                        if (previousStartBoundary2 != -1 && (nextEndBoundary = segmentFinder.nextEndBoundary(previousStartBoundary2)) > i15) {
                            if (previousStartBoundary2 < i15) {
                                previousStartBoundary2 = i15;
                            }
                            if (nextEndBoundary <= i16) {
                                i16 = nextEndBoundary;
                            }
                            RectF rectF3 = new RectF(0.0f, lineTop, 0.0f, lineBottom);
                            int i26 = previousStartBoundary2;
                            while (true) {
                                rectF3.left = z5 ? fArr[((i16 - 1) - lineStart) * 2] : fArr[(i26 - lineStart) * 2];
                                rectF3.right = z5 ? getCharacterRightBounds(i26, lineStart, fArr) : getCharacterRightBounds(i16 - 1, lineStart, fArr);
                                if (!((Boolean) composerKt$$ExternalSyntheticLambda0.invoke(rectF3, rectF)).booleanValue()) {
                                    i16 = segmentFinder.previousEndBoundary(i16);
                                    if (i16 == -1 || i16 <= i15) {
                                        break;
                                    }
                                    i26 = segmentFinder.previousStartBoundary(i16);
                                    if (i26 < i15) {
                                        i26 = i15;
                                    }
                                } else {
                                    break;
                                }
                            }
                        }
                    }
                }
                i16 = -1;
                i15 = i16;
            }
            if (i15 >= 0) {
                return i15;
            }
            if (i12 == i13) {
                return -1;
            }
            i12 += i17;
            i14 = i17;
            layoutHelper$BidiRunArr = layoutHelper$BidiRunArr2;
        }
    }

    public static final boolean hasSpan(Spanned spanned, Class cls) {
        return spanned.nextSpanTransition(-1, spanned.length(), cls) != spanned.length();
    }
}
