package androidx.compose.ui.text.platform;

import android.text.Layout;
import android.text.TextPaint;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.unit.Density;
import androidx.core.view.MenuHostHelper;
import androidx.emoji2.text.EmojiCompat;
import androidx.fragment.app.Fragment;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import kotlin.ranges.IntRange;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    public final List annotations;
    public final CharSequence charSequence;
    public final Density density;
    public final boolean emojiCompatProcessed;
    public final FontFamily$Resolver fontFamilyResolver;
    public final LayoutIntrinsics layoutIntrinsics;
    public final List placeholders;
    public MenuHostHelper resolvedTypefaces;
    public final TextStyle style;
    public final String text;
    public final int textDirectionHeuristic;
    public final AndroidTextPaint textPaint;

    /* JADX WARN: Code restructure failed: missing block: B:452:0x0099, code lost:
    
        if (r7 == 1) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03ca  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x04f8  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0526  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x063f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0802  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x082c A[LOOP:5: B:286:0x082a->B:287:0x082c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x083e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:366:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:409:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:424:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x022c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02a9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidParagraphIntrinsics(java.lang.String r43, androidx.compose.ui.text.TextStyle r44, java.util.List r45, java.util.List r46, androidx.compose.ui.text.font.FontFamily$Resolver r47, androidx.compose.ui.unit.Density r48) {
        /*
            Method dump skipped, instructions count: 2287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics.<init>(java.lang.String, androidx.compose.ui.text.TextStyle, java.util.List, java.util.List, androidx.compose.ui.text.font.FontFamily$Resolver, androidx.compose.ui.unit.Density):void");
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean getHasStaleResolvedFonts() {
        MenuHostHelper menuHostHelper = this.resolvedTypefaces;
        if (menuHostHelper != null ? menuHostHelper.isStaleResolvedFont() : false) {
            return true;
        }
        if (!this.emojiCompatProcessed && AndroidTextPaint_androidKt.access$getHasEmojiCompat(this.style)) {
            Fragment.AnonymousClass7 anonymousClass7 = EmojiCompatStatus.delegate;
            Fragment.AnonymousClass7 anonymousClass72 = EmojiCompatStatus.delegate;
            State state = (State) anonymousClass72.this$0;
            if (state == null) {
                if (EmojiCompat.isConfigured()) {
                    state = anonymousClass72.getFontLoadState();
                    anonymousClass72.this$0 = state;
                } else {
                    state = AndroidTextPaint_androidKt.Falsey;
                }
            }
            if (((Boolean) state.getValue()).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float getMaxIntrinsicWidth() {
        return this.layoutIntrinsics.getMaxIntrinsicWidth();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float getMinIntrinsicWidth() {
        LayoutIntrinsics layoutIntrinsics = this.layoutIntrinsics;
        float f = layoutIntrinsics._minIntrinsicWidth;
        TextPaint textPaint = layoutIntrinsics.textPaint;
        if (!Float.isNaN(f)) {
            return layoutIntrinsics._minIntrinsicWidth;
        }
        BreakIterator lineInstance = BreakIterator.getLineInstance(textPaint.getTextLocale());
        CharSequence charSequence = layoutIntrinsics.charSequence;
        lineInstance.setText(new CharSequenceCharacterIterator(charSequence.length(), charSequence));
        PriorityQueue priorityQueue = new PriorityQueue(10, StaticLayoutFactory.IntRangeComparator);
        int i = 0;
        for (int next = lineInstance.next(); next != -1; next = lineInstance.next()) {
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new IntRange(i, next, 1));
            } else {
                IntRange intRange = (IntRange) priorityQueue.peek();
                if (intRange != null && intRange.last - intRange.first < next - i) {
                    priorityQueue.poll();
                    priorityQueue.add(new IntRange(i, next, 1));
                }
            }
            i = next;
        }
        float f2 = 0.0f;
        if (!priorityQueue.isEmpty()) {
            Iterator it = priorityQueue.iterator();
            if (!it.hasNext()) {
                Regex$$ExternalSyntheticBUOutline0.m990m();
                return 0.0f;
            }
            IntRange intRange2 = (IntRange) it.next();
            f2 = Layout.getDesiredWidth(layoutIntrinsics.getCharSequenceForIntrinsicWidth(), intRange2.first, intRange2.last, textPaint);
            while (it.hasNext()) {
                IntRange intRange3 = (IntRange) it.next();
                f2 = Math.max(f2, Layout.getDesiredWidth(layoutIntrinsics.getCharSequenceForIntrinsicWidth(), intRange3.first, intRange3.last, textPaint));
            }
        }
        layoutIntrinsics._minIntrinsicWidth = f2;
        return f2;
    }
}
