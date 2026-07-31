package org.wikipedia.util;

import android.content.Context;
import android.icu.text.CompactDecimalFormat;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import kotlin.UnsignedKt;
import kotlin.io.FileTreeWalk;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.sequences.SubSequence$iterator$1;
import kotlin.text.MatcherMatchResult;
import kotlin.text.Regex;
import kotlin.text.Regex$$ExternalSyntheticLambda0;
import kotlin.text.Regex$findAll$2;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Headers;
import org.wikipedia.R;
import org.wikipedia.richtext.CustomHtmlParser;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StringUtil {
    public static final StringUtil INSTANCE = new StringUtil();
    public static final EnumSet SEARCH_REGEX_OPTIONS;

    static {
        EnumSet of = EnumSet.of(RegexOption.LITERAL, RegexOption.IGNORE_CASE);
        of.getClass();
        SEARCH_REGEX_OPTIONS = of;
    }

    public static String addUnderscores(String str) {
        if (str == null) {
            str = "";
        }
        return StringsKt__StringsJVMKt.replace$default(str, " ", "_");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void boldenKeywordText(android.widget.TextView r7, java.lang.String r8, java.lang.String r9) {
        /*
            r8.getClass()
            r0 = 0
            if (r9 == 0) goto L35
            int r1 = r9.length()
            if (r1 != 0) goto Ld
            goto L35
        Ld:
            java.text.Collator r1 = java.text.Collator.getInstance()
            r1.setStrength(r0)
            int r2 = r8.length()
            int r3 = r9.length()
            int r2 = r2 - r3
            if (r2 < 0) goto L35
            r3 = r0
        L20:
            int r4 = r9.length()
            int r4 = r4 + r3
            java.lang.String r4 = r8.substring(r3, r4)
            boolean r4 = r1.equals(r9, r4)
            if (r4 == 0) goto L30
            goto L36
        L30:
            if (r3 == r2) goto L35
            int r3 = r3 + 1
            goto L20
        L35:
            r3 = -1
        L36:
            if (r3 < 0) goto L7e
            int r1 = r8.length()
            r2 = r0
            r4 = r2
        L3e:
            if (r2 >= r1) goto L5a
            char r5 = r8.charAt(r2)
            r6 = 60
            if (r5 != r6) goto L4b
            int r4 = r4 + 1
            goto L55
        L4b:
            char r5 = r8.charAt(r2)
            r6 = 62
            if (r5 != r6) goto L55
            int r4 = r4 + (-1)
        L55:
            if (r2 == r3) goto L5a
            int r2 = r2 + 1
            goto L3e
        L5a:
            if (r4 <= 0) goto L5d
            goto L7e
        L5d:
            java.lang.String r0 = r8.substring(r0, r3)
            r9.getClass()
            int r1 = r9.length()
            int r1 = r1 + r3
            java.lang.String r1 = r8.substring(r3, r1)
            int r9 = r9.length()
            int r9 = r9 + r3
            java.lang.String r8 = r8.substring(r9)
            java.lang.String r9 = "<strong>"
            java.lang.String r2 = "</strong>"
            java.lang.String r8 = androidx.compose.ui.Modifier.CC.m(r0, r9, r1, r2, r8)
        L7e:
            android.text.Spanned r8 = fromHtml(r8)
            r7.setText(r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.util.StringUtil.boldenKeywordText(android.widget.TextView, java.lang.String, java.lang.String):void");
    }

    public static String capitalize(String str) {
        String valueOf;
        if (str == null) {
            return null;
        }
        if (str.length() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        char charAt = str.charAt(0);
        if (Character.isLowerCase(charAt)) {
            Locale locale = Locale.getDefault();
            locale.getClass();
            String valueOf2 = String.valueOf(charAt);
            valueOf2.getClass();
            valueOf = valueOf2.toUpperCase(locale);
            valueOf.getClass();
            if (valueOf.length() <= 1) {
                String valueOf3 = String.valueOf(charAt);
                valueOf3.getClass();
                String upperCase = valueOf3.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                if (valueOf.equals(upperCase)) {
                    valueOf = String.valueOf(Character.toTitleCase(charAt));
                }
            } else if (charAt != 329) {
                char charAt2 = valueOf.charAt(0);
                String lowerCase = valueOf.substring(1).toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                valueOf = charAt2 + lowerCase;
            }
        } else {
            valueOf = String.valueOf(charAt);
        }
        sb.append((Object) valueOf);
        sb.append(str.substring(1));
        return sb.toString();
    }

    public static ArrayList csvToList(String str) {
        List split$default = StringsKt.split$default(str, new String[]{","});
        ArrayList arrayList = new ArrayList();
        for (Object obj : split$default) {
            if (!StringsKt.isBlank((String) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static String dbNameToLangCode(String str) {
        str.getClass();
        return StringsKt__StringsJVMKt.replace$default(StringsKt.substringBefore$default(str, "wiki"), "_", "-");
    }

    public static Spanned fromHtml(String str) {
        LinkedHashMap linkedHashMap = CustomHtmlParser.contextBmpMap;
        return Headers.Companion.fromHtml(null, str);
    }

    public static String getDiffBytesText(Context context, int i) {
        String quantityString = context.getResources().getQuantityString(R.plurals.edit_diff_bytes, Math.abs(i), i > 0 ? Animation.CC.m(i, "+") : String.valueOf(i));
        quantityString.getClass();
        return quantityString;
    }

    public static String getPageViewText(Context context, long j) {
        context.getClass();
        if (Build.VERSION.SDK_INT >= 24) {
            String format = CompactDecimalFormat.getInstance(context.getResources().getConfiguration().getLocales().get(0), CompactDecimalFormat.CompactStyle.SHORT).format(j);
            format.getClass();
            return format;
        }
        if (j < 1000) {
            return String.valueOf(j);
        }
        if (j < 1000000) {
            String string = context.getString(R.string.view_top_read_card_pageviews_k_suffix, Integer.valueOf(UnsignedKt.roundToInt(j / 1000.0f)));
            string.getClass();
            return string;
        }
        String string2 = context.getString(R.string.view_top_read_card_pageviews_m_suffix, Integer.valueOf(UnsignedKt.roundToInt(j / 1000000.0f)));
        string2.getClass();
        return string2;
    }

    public static boolean normalizedEquals(String str, String str2) {
        if (str == null || str2 == null) {
            return str == null && str2 == null;
        }
        Normalizer.Form form = Normalizer.Form.NFC;
        return Intrinsics.areEqual(Normalizer.normalize(str, form), Normalizer.normalize(str2, form));
    }

    public static String removeHTMLTags(String str) {
        return fromHtml(str).toString();
    }

    public static String removeNamespace(String str) {
        str.getClass();
        return StringsKt.substringAfter$default(str, ':');
    }

    public static String removeStyleTags(String str) {
        str.getClass();
        Pattern compile = Pattern.compile("<style.*?</style>");
        compile.getClass();
        String replaceAll = compile.matcher(str).replaceAll("");
        replaceAll.getClass();
        return replaceAll;
    }

    public static void setHighlightedAndBoldenedText(TextView textView, CharSequence charSequence, String str) {
        textView.getClass();
        charSequence.getClass();
        if (str != null && str.length() != 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append(charSequence);
            Regex regex = new Regex(str, SEARCH_REGEX_OPTIONS);
            if (charSequence.length() < 0) {
                throw new IndexOutOfBoundsException("Start index out of bounds: 0, input length: " + charSequence.length());
            }
            SubSequence$iterator$1 subSequence$iterator$1 = new SubSequence$iterator$1(new FileTreeWalk(1, new Regex$$ExternalSyntheticLambda0(0, regex, charSequence), Regex$findAll$2.INSTANCE));
            while (subSequence$iterator$1.hasNext()) {
                IntRange range = ((MatcherMatchResult) subSequence$iterator$1.next()).getRange();
                Integer valueOf = Integer.valueOf(range.first);
                Integer valueOf2 = Integer.valueOf(range.last + 1);
                int intValue = valueOf.intValue();
                int intValue2 = valueOf2.intValue();
                spannableStringBuilder.setSpan(new BackgroundColorSpan(-256), intValue, intValue2, 17);
                spannableStringBuilder.setSpan(new ForegroundColorSpan(-16777216), intValue, intValue2, 17);
                spannableStringBuilder.setSpan(new StyleSpan(1), intValue, intValue2, 17);
            }
            charSequence = new SpannedString(spannableStringBuilder);
        }
        textView.setText(charSequence);
    }
}
