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
import androidx.emoji2.text.EmojiCompat;
import coil3.memory.MemoryCacheService;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.text.BreakIterator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import kotlin.ranges.IntRange;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    public final List annotations;
    public final CharSequence charSequence;
    public final Density density;
    public final boolean emojiCompatProcessed;
    public final FontFamily$Resolver fontFamilyResolver;
    public final LayoutIntrinsics layoutIntrinsics;
    public final List placeholders;
    public ProcessFinisher resolvedTypefaces;
    public final TextStyle style;
    public final String text;
    public final int textDirectionHeuristic;
    public final AndroidTextPaint textPaint;

    /* JADX WARN: Code restructure failed: missing block: B:109:0x0393, code lost:
    
        if ((r5.paragraphStyle.lineHeight & 1095216660480L) != 0) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x0099, code lost:
    
        if (r7 == 1) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x037a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0464  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0513  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0541  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x058c  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x065a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x07ae  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x081e  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x0848 A[LOOP:5: B:286:0x0846->B:287:0x0848, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:291:0x0859  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0150 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x05c1  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:351:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0436  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0442  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0439  */
    /* JADX WARN: Removed duplicated region for block: B:375:0x03c3  */
    /* JADX WARN: Removed duplicated region for block: B:376:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:385:0x02c6  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:397:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:399:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:412:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:418:0x00fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:425:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0298  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0338  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00a7  */
    /* JADX WARN: Type inference failed for: r8v7, types: [android.text.Spannable] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AndroidParagraphIntrinsics(java.lang.String r42, androidx.compose.ui.text.TextStyle r43, java.util.List r44, java.util.List r45, androidx.compose.ui.text.font.FontFamily$Resolver r46, androidx.compose.ui.unit.Density r47) {
        /*
            Method dump skipped, instructions count: 2207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.AndroidParagraphIntrinsics.<init>(java.lang.String, androidx.compose.ui.text.TextStyle, java.util.List, java.util.List, androidx.compose.ui.text.font.FontFamily$Resolver, androidx.compose.ui.unit.Density):void");
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean getHasStaleResolvedFonts() {
        ProcessFinisher processFinisher = this.resolvedTypefaces;
        if (processFinisher != null ? processFinisher.isStaleResolvedFont() : false) {
            return true;
        }
        if (!this.emojiCompatProcessed && AndroidTextPaint_androidKt.access$getHasEmojiCompat(this.style)) {
            MemoryCacheService memoryCacheService = EmojiCompatStatus.delegate;
            MemoryCacheService memoryCacheService2 = EmojiCompatStatus.delegate;
            State state = (State) memoryCacheService2.imageLoader;
            if (state == null) {
                if (EmojiCompat.isConfigured()) {
                    state = memoryCacheService2.getFontLoadState();
                    memoryCacheService2.imageLoader = state;
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
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m();
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
