package androidx.compose.ui.text.platform;

import android.text.Layout;
import android.text.TextPaint;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.emoji2.text.EmojiCompat;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import kotlin.ranges.IntRange;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    public final List annotations;
    public final CharSequence charSequence;
    public final Density density;
    public final boolean emojiCompatProcessed;
    public final FontFamily.Resolver fontFamilyResolver;
    public final LayoutIntrinsics layoutIntrinsics;
    public final List placeholders;
    public SVG resolvedTypefaces;
    public final TextStyle style;
    public final String text;
    public final int textDirectionHeuristic;
    public final AndroidTextPaint textPaint;

    /* JADX WARN: Code restructure failed: missing block: B:469:0x0099, code lost:
    
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
    /* JADX WARN: Removed duplicated region for block: B:185:0x0644  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0793  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0803  */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0837  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x014f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:303:0x0894  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:332:0x082e  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:403:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:419:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:426:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:430:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:438:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:439:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:446:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x00b4  */
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
    public AndroidParagraphIntrinsics(java.lang.String r45, androidx.compose.ui.text.TextStyle r46, java.util.List r47, java.util.List r48, androidx.compose.ui.text.font.FontFamily.Resolver r49, androidx.compose.ui.unit.Density r50) {
        /*
            Method dump skipped, instructions count: 2383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics.<init>(java.lang.String, androidx.compose.ui.text.TextStyle, java.util.List, java.util.List, androidx.compose.ui.text.font.FontFamily$Resolver, androidx.compose.ui.unit.Density):void");
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean getHasStaleResolvedFonts() {
        SVG svg = this.resolvedTypefaces;
        if (svg != null ? svg.isStaleResolvedFont() : false) {
            return true;
        }
        if (!this.emojiCompatProcessed && AndroidTextPaint_androidKt.getHasEmojiCompat(this.style)) {
            HintHandler hintHandler = EmojiCompatStatus.delegate;
            HintHandler hintHandler2 = EmojiCompatStatus.delegate;
            State state = (State) hintHandler2.state;
            if (state == null) {
                if (EmojiCompat.isConfigured()) {
                    state = hintHandler2.getFontLoadState();
                    hintHandler2.state = state;
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
        lineInstance.setText(new CharSequenceCharacterIterator(charSequence, charSequence.length()));
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
        boolean isEmpty = priorityQueue.isEmpty();
        float f2 = RecyclerView.DECELERATION_RATE;
        if (!isEmpty) {
            Iterator it = priorityQueue.iterator();
            if (!it.hasNext()) {
                Utils$$ExternalSyntheticBUOutline0.m();
                return RecyclerView.DECELERATION_RATE;
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
