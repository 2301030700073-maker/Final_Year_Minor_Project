package androidx.compose.ui.text;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.ListUtilsKt;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import app.k9mail.K9KoinModuleKt$$ExternalSyntheticLambda2;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ParagraphKt {
    public static final WeakCache LineBreakSaver;
    public static final WeakCache PlatformParagraphStyleSaver;
    public static final WeakCache TextMotionLinearitySaver;
    public static final WeakCache TextMotionSaver;
    public static final WeakCache emojiSupportMatchSaver;

    static {
        int i = 3;
        PlatformParagraphStyleSaver = new WeakCache(i, new K9KoinModuleKt$$ExternalSyntheticLambda2(17), new SaversKt$$ExternalSyntheticLambda2(29));
        emojiSupportMatchSaver = new WeakCache(i, new K9KoinModuleKt$$ExternalSyntheticLambda2(18), new RoomDatabase$$ExternalSyntheticLambda0(1));
        LineBreakSaver = new WeakCache(i, new K9KoinModuleKt$$ExternalSyntheticLambda2(19), new RoomDatabase$$ExternalSyntheticLambda0(2));
        TextMotionSaver = new WeakCache(i, new K9KoinModuleKt$$ExternalSyntheticLambda2(20), new RoomDatabase$$ExternalSyntheticLambda0(3));
        TextMotionLinearitySaver = new WeakCache(i, new K9KoinModuleKt$$ExternalSyntheticLambda2(21), new RoomDatabase$$ExternalSyntheticLambda0(4));
    }

    /* renamed from: Paragraph-Ul8oQg4$default, reason: not valid java name */
    public static AndroidParagraph m690ParagraphUl8oQg4$default(String str, TextStyle textStyle, long j, Density density, FontFamily$Resolver fontFamily$Resolver, int i, int i2) {
        EmptyList emptyList = EmptyList.INSTANCE;
        return new AndroidParagraph(new AndroidParagraphIntrinsics(str, textStyle, emptyList, emptyList, fontFamily$Resolver, density), i, 1, j);
    }

    public static final long TextRange(int i, int i2) {
        if (i < 0 || i2 < 0) {
            InlineClassHelperKt.throwIllegalArgumentException("start and end cannot be negative. [start: " + i + ", end: " + i2 + ']');
        }
        long j = (i2 & 4294967295L) | (i << 32);
        int i3 = TextRange.$r8$clinit;
        return j;
    }

    /* renamed from: coerceIn-8ffj60Q, reason: not valid java name */
    public static final long m691coerceIn8ffj60Q(int i, long j) {
        int i2 = TextRange.$r8$clinit;
        int i3 = (int) (j >> 32);
        int i4 = i3 < 0 ? 0 : i3;
        if (i4 > i) {
            i4 = i;
        }
        int i5 = (int) (4294967295L & j);
        int i6 = i5 >= 0 ? i5 : 0;
        if (i6 <= i) {
            i = i6;
        }
        return (i4 == i3 && i == i5) ? j : TextRange(i4, i);
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
        StringBuilder m30m = CameraDevices$CC.m30m(i2, "Found paragraph index ", " should be in range [0, ");
        m30m.append(list.size());
        m30m.append(").\nDebug info: index=");
        m30m.append(i);
        m30m.append(", paragraphs=[");
        m30m.append(ListUtilsKt.fastJoinToString$default(list, null, new TextKt$$ExternalSyntheticLambda1(27), 31));
        m30m.append(']');
        InlineClassHelperKt.throwIllegalArgumentException(m30m.toString());
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

    public static final int findParagraphByY(ArrayList arrayList, float f) {
        if (f <= 0.0f) {
            return 0;
        }
        if (f >= ((ParagraphInfo) CollectionsKt.last(arrayList)).bottom) {
            return arrayList.size() - 1;
        }
        int size = arrayList.size() - 1;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i2);
            char c = paragraphInfo.top > f ? (char) 1 : paragraphInfo.bottom <= f ? (char) 65535 : (char) 0;
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
    public static final void m692findParagraphsByRangeSbBc2M(ArrayList arrayList, long j, Function1 function1) {
        int size = arrayList.size();
        for (int findParagraphByIndex = findParagraphByIndex(TextRange.m702getMinimpl(j), arrayList); findParagraphByIndex < size; findParagraphByIndex++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(findParagraphByIndex);
            if (paragraphInfo.startIndex >= TextRange.m701getMaximpl(j)) {
                return;
            }
            if (paragraphInfo.startIndex != paragraphInfo.endIndex) {
                function1.invoke(paragraphInfo);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.TextStyle resolveDefaults(androidx.compose.ui.text.TextStyle r30, androidx.compose.ui.unit.LayoutDirection r31) {
        /*
            Method dump skipped, instructions count: 305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.ParagraphKt.resolveDefaults(androidx.compose.ui.text.TextStyle, androidx.compose.ui.unit.LayoutDirection):androidx.compose.ui.text.TextStyle");
    }
}
