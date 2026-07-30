package androidx.compose.foundation.text;

import androidx.compose.foundation.text.modifiers.SelectionController;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringElement;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BasicText.kt */
/* loaded from: classes.dex */
public abstract class BasicTextKt {
    private static final AnnotatedString BasicText_RWo7tUw$lambda$5(MutableState mutableState) {
        return (AnnotatedString) mutableState.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x028a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00dc  */
    /* renamed from: BasicText-VhcvRP8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m380BasicTextVhcvRP8(final java.lang.String r42, androidx.compose.ui.Modifier r43, androidx.compose.ui.text.TextStyle r44, kotlin.jvm.functions.Function1 r45, int r46, boolean r47, int r48, int r49, androidx.compose.ui.graphics.ColorProducer r50, androidx.compose.runtime.Composer r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m380BasicTextVhcvRP8(java.lang.String, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, int, androidx.compose.ui.graphics.ColorProducer, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0376  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x02fb  */
    /* renamed from: BasicText-RWo7tUw, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m379BasicTextRWo7tUw(final androidx.compose.ui.text.AnnotatedString r52, androidx.compose.ui.Modifier r53, androidx.compose.ui.text.TextStyle r54, kotlin.jvm.functions.Function1 r55, int r56, boolean r57, int r58, int r59, java.util.Map r60, androidx.compose.ui.graphics.ColorProducer r61, androidx.compose.runtime.Composer r62, final int r63, final int r64) {
        /*
            Method dump skipped, instructions count: 905
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m379BasicTextRWo7tUw(androidx.compose.ui.text.AnnotatedString, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function1, int, boolean, int, int, java.util.Map, androidx.compose.ui.graphics.ColorProducer, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List measureWithTextRangeMeasureConstraints(List list, Function0 function0) {
        if (!((Boolean) function0.invoke()).booleanValue()) {
            return null;
        }
        TextRangeLayoutMeasureScope textRangeLayoutMeasureScope = new TextRangeLayoutMeasureScope();
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = (Measurable) list.get(i);
            Object parentData = measurable.getParentData();
            Intrinsics.checkNotNull(parentData, "null cannot be cast to non-null type androidx.compose.foundation.text.TextRangeLayoutModifier");
            TextRangeLayoutMeasureResult measure = ((TextRangeLayoutModifier) parentData).getMeasurePolicy().measure(textRangeLayoutMeasureScope);
            arrayList.add(new Pair(measurable.mo1751measureBRTryo0(Constraints.Companion.m2405fitPrioritizingWidthZbe2FdA(measure.getWidth(), measure.getWidth(), measure.getHeight(), measure.getHeight())), measure.getPlace()));
        }
        return arrayList;
    }

    /* renamed from: textModifier-cFh6CEA, reason: not valid java name */
    private static final Modifier m383textModifiercFh6CEA(Modifier modifier, AnnotatedString annotatedString, TextStyle textStyle, Function1 function1, int i, boolean z, int i2, int i3, FontFamily.Resolver resolver, List list, Function1 function12, SelectionController selectionController, ColorProducer colorProducer, Function1 function13) {
        return modifier.then(Modifier.Companion).then(new TextAnnotatedStringElement(annotatedString, textStyle, resolver, function1, i, z, i2, i3, list, function12, null, colorProducer, function13, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:101:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0422  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0445  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x046a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x04a8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x048f  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0426  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:66:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02a8  */
    /* renamed from: LayoutWithLinksAndInlineContent-vOo2fZY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m381LayoutWithLinksAndInlineContentvOo2fZY(final androidx.compose.ui.Modifier r46, final androidx.compose.ui.text.AnnotatedString r47, final kotlin.jvm.functions.Function1 r48, final boolean r49, java.util.Map r50, final androidx.compose.ui.text.TextStyle r51, final int r52, final boolean r53, final int r54, final int r55, final androidx.compose.ui.text.font.FontFamily.Resolver r56, final androidx.compose.foundation.text.modifiers.SelectionController r57, final androidx.compose.ui.graphics.ColorProducer r58, final kotlin.jvm.functions.Function1 r59, androidx.compose.runtime.Composer r60, final int r61, final int r62, final int r63) {
        /*
            Method dump skipped, instructions count: 1253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.BasicTextKt.m381LayoutWithLinksAndInlineContentvOo2fZY(androidx.compose.ui.Modifier, androidx.compose.ui.text.AnnotatedString, kotlin.jvm.functions.Function1, boolean, java.util.Map, androidx.compose.ui.text.TextStyle, int, boolean, int, int, androidx.compose.ui.text.font.FontFamily$Resolver, androidx.compose.foundation.text.modifiers.SelectionController, androidx.compose.ui.graphics.ColorProducer, kotlin.jvm.functions.Function1, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
