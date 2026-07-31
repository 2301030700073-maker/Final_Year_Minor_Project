package androidx.compose.ui.text;

import androidx.cardview.widget.CardView;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.DensityImpl;
import androidx.compose.ui.util.ListUtilsKt;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ParagraphKt {
    public static final CardView.AnonymousClass1 PlatformParagraphStyleSaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda3(15), new SaversKt$$ExternalSyntheticLambda4(20), false);
    public static final CardView.AnonymousClass1 emojiSupportMatchSaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda3(16), new SaversKt$$ExternalSyntheticLambda4(21), false);
    public static final CardView.AnonymousClass1 LineBreakSaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda3(17), new SaversKt$$ExternalSyntheticLambda4(22), false);
    public static final CardView.AnonymousClass1 TextMotionSaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda3(18), new SaversKt$$ExternalSyntheticLambda4(23), false);
    public static final CardView.AnonymousClass1 TextMotionLinearitySaver = new CardView.AnonymousClass1(13, new SaversKt$$ExternalSyntheticLambda3(19), new SaversKt$$ExternalSyntheticLambda4(24), false);

    /* renamed from: Paragraph-Ul8oQg4$default, reason: not valid java name */
    public static AndroidParagraph m406ParagraphUl8oQg4$default(String str, TextStyle textStyle, long j, DensityImpl densityImpl, FontFamily$Resolver fontFamily$Resolver, int i) {
        EmptyList emptyList = EmptyList.INSTANCE;
        return new AndroidParagraph(new AndroidParagraphIntrinsics(str, textStyle, emptyList, emptyList, fontFamily$Resolver, densityImpl), i, 1, j);
    }

    public static final long TextRange(int i, int i2) {
        if (i < 0 || i2 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("start and end cannot be negative. [start: " + i + ", end: " + i2 + ']');
        }
        long j = (i2 & 4294967295L) | (i << 32);
        int i3 = TextRange.$r8$clinit;
        return j;
    }

    public static final int findParagraphByIndex(int i, List list) {
        int i2;
        int i3 = ((ParagraphInfo) CollectionsKt.last(list)).endIndex;
        if (i > ((ParagraphInfo) CollectionsKt.last(list)).endIndex) {
            InlineClassHelperKt.throwIllegalArgumentException("Index " + i + " should be less or equal than last line's end " + i3);
        }
        int size = list.size() - 1;
        int i4 = 0;
        while (true) {
            if (i4 > size) {
                i2 = -(i4 + 1);
                break;
            }
            i2 = (i4 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i2);
            char c = paragraphInfo.startIndex > i ? (char) 1 : paragraphInfo.endIndex <= i ? (char) 65535 : (char) 0;
            if (c >= 0) {
                if (c <= 0) {
                    break;
                }
                size = i2 - 1;
            } else {
                i4 = i2 + 1;
            }
        }
        if (i2 >= 0 && i2 < list.size()) {
            return i2;
        }
        StringBuilder m179m = Modifier.CC.m179m("Found paragraph index ", i2, " should be in range [0, ");
        m179m.append(list.size());
        m179m.append(").\nDebug info: index=");
        m179m.append(i);
        m179m.append(", paragraphs=[");
        m179m.append(ListUtilsKt.fastJoinToString$default(list, null, new SaversKt$$ExternalSyntheticLambda2(19), 31));
        m179m.append(']');
        InlineClassHelperKt.throwIllegalArgumentException(m179m.toString());
        return i2;
    }

    public static final int findParagraphByLineIndex(int i, List list) {
        int size = list.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            char c = paragraphInfo.startLineIndex > i ? (char) 1 : paragraphInfo.endLineIndex <= i ? (char) 65535 : (char) 0;
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

    /* JADX WARN: Removed duplicated region for block: B:58:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.TextStyle resolveDefaults(androidx.compose.ui.text.TextStyle r29, androidx.compose.ui.unit.LayoutDirection r30) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.ParagraphKt.resolveDefaults(androidx.compose.ui.text.TextStyle, androidx.compose.ui.unit.LayoutDirection):androidx.compose.ui.text.TextStyle");
    }
}
