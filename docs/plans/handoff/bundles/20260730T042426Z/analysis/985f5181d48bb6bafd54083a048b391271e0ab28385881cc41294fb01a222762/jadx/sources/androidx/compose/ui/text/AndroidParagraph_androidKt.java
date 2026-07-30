package androidx.compose.ui.text;

import android.os.Build;
import android.text.Spannable;
import android.text.SpannableString;
import androidx.compose.ui.text.TextGranularity;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.style.IndentationFixSpan;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;

/* compiled from: AndroidParagraph.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidParagraph_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutAlign-aXe7zB0, reason: not valid java name */
    public static final int m2038toLayoutAlignaXe7zB0(int i) {
        TextAlign.Companion companion = TextAlign.Companion;
        if (TextAlign.m2344equalsimpl0(i, companion.m2351getLefte0LSkKk())) {
            return 3;
        }
        if (TextAlign.m2344equalsimpl0(i, companion.m2352getRighte0LSkKk())) {
            return 4;
        }
        if (TextAlign.m2344equalsimpl0(i, companion.m2348getCentere0LSkKk())) {
            return 2;
        }
        return (!TextAlign.m2344equalsimpl0(i, companion.m2353getStarte0LSkKk()) && TextAlign.m2344equalsimpl0(i, companion.m2349getEnde0LSkKk())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutHyphenationFrequency--3fSNIE, reason: not valid java name */
    public static final int m2040toLayoutHyphenationFrequency3fSNIE(int i) {
        Hyphens.Companion companion = Hyphens.Companion;
        if (Hyphens.m2288equalsimpl0(i, companion.m2292getAutovmbZdU8())) {
            return Build.VERSION.SDK_INT <= 32 ? 2 : 4;
        }
        Hyphens.m2288equalsimpl0(i, companion.m2293getNonevmbZdU8());
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutBreakStrategy-xImikfE, reason: not valid java name */
    public static final int m2039toLayoutBreakStrategyxImikfE(int i) {
        LineBreak.Strategy.Companion companion = LineBreak.Strategy.Companion;
        if (LineBreak.Strategy.m2308equalsimpl0(i, companion.m2312getSimplefcGXIks())) {
            return 0;
        }
        if (LineBreak.Strategy.m2308equalsimpl0(i, companion.m2311getHighQualityfcGXIks())) {
            return 1;
        }
        return LineBreak.Strategy.m2308equalsimpl0(i, companion.m2310getBalancedfcGXIks()) ? 2 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakStyle-hpcqdu8, reason: not valid java name */
    public static final int m2041toLayoutLineBreakStylehpcqdu8(int i) {
        LineBreak.Strictness.Companion companion = LineBreak.Strictness.Companion;
        if (LineBreak.Strictness.m2314equalsimpl0(i, companion.m2316getDefaultusljTpc())) {
            return 0;
        }
        if (LineBreak.Strictness.m2314equalsimpl0(i, companion.m2317getLooseusljTpc())) {
            return 1;
        }
        if (LineBreak.Strictness.m2314equalsimpl0(i, companion.m2318getNormalusljTpc())) {
            return 2;
        }
        return LineBreak.Strictness.m2314equalsimpl0(i, companion.m2319getStrictusljTpc()) ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutLineBreakWordStyle-wPN0Rpw, reason: not valid java name */
    public static final int m2042toLayoutLineBreakWordStylewPN0Rpw(int i) {
        LineBreak.WordBreak.Companion companion = LineBreak.WordBreak.Companion;
        return (!LineBreak.WordBreak.m2321equalsimpl0(i, companion.m2323getDefaultjp8hJ3c()) && LineBreak.WordBreak.m2321equalsimpl0(i, companion.m2324getPhrasejp8hJ3c())) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int numberOfLinesThatFitMaxHeight(TextLayout textLayout, int i) {
        int lineCount = textLayout.getLineCount();
        for (int i2 = 0; i2 < lineCount; i2++) {
            if (textLayout.getLineBottom(i2) > i) {
                return i2;
            }
        }
        return textLayout.getLineCount();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean shouldAttachIndentationFixSpan(TextStyle textStyle, boolean z) {
        if (!z || TextUnit.m2495equalsimpl0(textStyle.m2143getLetterSpacingXSAIIZE(), TextUnitKt.getSp(0)) || TextUnit.m2495equalsimpl0(textStyle.m2143getLetterSpacingXSAIIZE(), TextUnit.Companion.m2502getUnspecifiedXSAIIZE())) {
            return false;
        }
        int m2146getTextAligne0LSkKk = textStyle.m2146getTextAligne0LSkKk();
        TextAlign.Companion companion = TextAlign.Companion;
        return (TextAlign.m2344equalsimpl0(m2146getTextAligne0LSkKk, companion.m2354getUnspecifiede0LSkKk()) || TextAlign.m2344equalsimpl0(textStyle.m2146getTextAligne0LSkKk(), companion.m2353getStarte0LSkKk()) || TextAlign.m2344equalsimpl0(textStyle.m2146getTextAligne0LSkKk(), companion.m2350getJustifye0LSkKk())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence attachIndentationFixSpan(CharSequence charSequence) {
        if (charSequence.length() == 0) {
            return charSequence;
        }
        Spannable spannableString = charSequence instanceof Spannable ? (Spannable) charSequence : new SpannableString(charSequence);
        SpannableExtensions_androidKt.setSpan(spannableString, new IndentationFixSpan(), spannableString.length() - 1, spannableString.length() - 1);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: toLayoutTextGranularity-duNsdkg, reason: not valid java name */
    public static final int m2043toLayoutTextGranularityduNsdkg(int i) {
        TextGranularity.Companion companion = TextGranularity.Companion;
        return (!TextGranularity.m2103equalsimpl0(i, companion.m2104getCharacterDRrd7Zo()) && TextGranularity.m2103equalsimpl0(i, companion.m2105getWordDRrd7Zo())) ? 1 : 0;
    }
}
