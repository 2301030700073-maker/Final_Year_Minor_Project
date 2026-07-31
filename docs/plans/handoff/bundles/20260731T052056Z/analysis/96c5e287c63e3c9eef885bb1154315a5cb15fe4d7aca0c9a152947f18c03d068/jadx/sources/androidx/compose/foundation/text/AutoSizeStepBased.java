package androidx.compose.foundation.text;

import android.text.Layout;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.recyclerview.widget.RecyclerView;
import coil3.util.ContextsKt;
import java.util.ArrayList;
import kotlin.text.RegexKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AutoSizeStepBased {
    public final long maxFontSize;
    public final long minFontSize;
    public final long stepSize;

    public AutoSizeStepBased(long j, long j2, long j3) {
        this.minFontSize = j;
        this.maxFontSize = j2;
        this.stepSize = j3;
        long j4 = TextUnit.Unspecified;
        if (TextUnit.m723equalsimpl0(j, j4)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for minFontSize. Try using other values e.g. 10.sp");
            throw null;
        }
        if (TextUnit.m723equalsimpl0(j2, j4)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for maxFontSize. Try using other values e.g. 100.sp");
            throw null;
        }
        if (TextUnit.m723equalsimpl0(j3, j4)) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: TextUnit.Unspecified is not a valid value for stepSize. Try using other values e.g. 0.25.sp");
            throw null;
        }
        if (TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j), TextUnit.m724getTypeUIouoOA(j2))) {
            ContextsKt.m789checkArithmeticNB67dxo(j, j2);
            if (Float.compare(TextUnit.m725getValueimpl(j), TextUnit.m725getValueimpl(j2)) > 0) {
                this.minFontSize = j2;
                j = j2;
            }
        }
        if (TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j3), 4294967296L)) {
            long pack = ContextsKt.pack(1.0E-4f, 4294967296L);
            ContextsKt.m789checkArithmeticNB67dxo(j3, pack);
            if (Float.compare(TextUnit.m725getValueimpl(j3), TextUnit.m725getValueimpl(pack)) < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: stepSize must be greater than or equal to 0.0001f.sp");
                throw null;
            }
        }
        if (TextUnit.m725getValueimpl(j) < RecyclerView.DECELERATION_RATE) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: minFontSize must not be negative");
            throw null;
        }
        if (TextUnit.m725getValueimpl(j2) >= RecyclerView.DECELERATION_RATE) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("AutoSize.StepBased: maxFontSize must not be negative");
        throw null;
    }

    public static boolean didOverflow(TextLayoutResult textLayoutResult) {
        MultiParagraph multiParagraph = textLayoutResult.multiParagraph;
        long j = textLayoutResult.size;
        TextLayoutInput textLayoutInput = textLayoutResult.layoutInput;
        int i = textLayoutInput.overflow;
        if (i == 1 || i == 3) {
            return ((float) ((int) (j >> 32))) < multiParagraph.width || textLayoutResult.getDidOverflowHeight();
        }
        if (i != 4 && i != 5 && i != 2) {
            TimeSource$Companion$$ExternalSyntheticLambda0.m$2(RegexKt.m841toStringimpl(textLayoutInput.overflow), " is not supported.", "TextOverflow type ");
            return false;
        }
        int i2 = multiParagraph.lineCount;
        if (i2 != 0) {
            if (i2 == 1) {
                multiParagraph.requireLineIndexInRange(0);
                ArrayList arrayList = multiParagraph.paragraphInfoList;
                Layout layout = ((ParagraphInfo) arrayList.get(ParagraphKt.findParagraphByLineIndex(arrayList, 0))).paragraph.layout.layout;
                ThreadLocal threadLocal = TextLayout_androidKt.SharedTextAndroidCanvas;
                if (layout.getEllipsisCount(0) > 0) {
                    return true;
                }
            } else {
                if (i == 4 || i == 5) {
                    return ((float) ((int) (j >> 32))) < multiParagraph.width || textLayoutResult.getDidOverflowHeight();
                }
                if (i == 2) {
                    int i3 = i2 - 1;
                    multiParagraph.requireLineIndexInRange(i3);
                    ArrayList arrayList2 = multiParagraph.paragraphInfoList;
                    Layout layout2 = ((ParagraphInfo) arrayList2.get(ParagraphKt.findParagraphByLineIndex(arrayList2, i3))).paragraph.layout.layout;
                    ThreadLocal threadLocal2 = TextLayout_androidKt.SharedTextAndroidCanvas;
                    return layout2.getEllipsisCount(i3) > 0;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof AutoSizeStepBased)) {
            return false;
        }
        AutoSizeStepBased autoSizeStepBased = (AutoSizeStepBased) obj;
        return TextUnit.m723equalsimpl0(autoSizeStepBased.minFontSize, this.minFontSize) && TextUnit.m723equalsimpl0(autoSizeStepBased.maxFontSize, this.maxFontSize) && TextUnit.m723equalsimpl0(autoSizeStepBased.stepSize, this.stepSize);
    }

    public final int hashCode() {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return Modifier.CC.m(this.stepSize) + ((Modifier.CC.m(this.maxFontSize) + (Modifier.CC.m(this.minFontSize) * 31)) * 31);
    }
}
