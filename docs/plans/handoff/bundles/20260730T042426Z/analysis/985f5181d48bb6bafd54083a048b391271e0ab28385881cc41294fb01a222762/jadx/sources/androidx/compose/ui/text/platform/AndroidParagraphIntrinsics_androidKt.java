package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import androidx.core.text.TextUtilsCompat;
import java.util.List;
import java.util.Locale;

/* compiled from: AndroidParagraphIntrinsics.android.kt */
/* loaded from: classes.dex */
public abstract class AndroidParagraphIntrinsics_androidKt {
    /* renamed from: resolveTextDirectionHeuristics-HklW4sA, reason: not valid java name */
    public static final int m2255resolveTextDirectionHeuristicsHklW4sA(int i, LocaleList localeList) {
        Locale locale;
        TextDirection.Companion companion = TextDirection.Companion;
        if (TextDirection.m2358equalsimpl0(i, companion.m2363getContentOrLtrs_7Xco())) {
            return 2;
        }
        if (!TextDirection.m2358equalsimpl0(i, companion.m2364getContentOrRtls_7Xco())) {
            if (TextDirection.m2358equalsimpl0(i, companion.m2365getLtrs_7Xco())) {
                return 0;
            }
            if (TextDirection.m2358equalsimpl0(i, companion.m2366getRtls_7Xco())) {
                return 1;
            }
            if (TextDirection.m2358equalsimpl0(i, companion.m2362getContents_7Xco()) ? true : TextDirection.m2358equalsimpl0(i, companion.m2367getUnspecifieds_7Xco())) {
                if (localeList == null || (locale = localeList.get(0).getPlatformLocale()) == null) {
                    locale = Locale.getDefault();
                }
                int layoutDirectionFromLocale = TextUtilsCompat.getLayoutDirectionFromLocale(locale);
                if (layoutDirectionFromLocale == 0 || layoutDirectionFromLocale != 1) {
                    return 2;
                }
            } else {
                throw new IllegalStateException("Invalid TextDirection.");
            }
        }
        return 3;
    }

    public static final ParagraphIntrinsics ActualParagraphIntrinsics(String str, TextStyle textStyle, List list, List list2, Density density, FontFamily.Resolver resolver) {
        return new AndroidParagraphIntrinsics(str, textStyle, list, list2, resolver, density);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean getHasEmojiCompat(TextStyle textStyle) {
        PlatformParagraphStyle paragraphStyle;
        PlatformTextStyle platformStyle = textStyle.getPlatformStyle();
        return !(((platformStyle == null || (paragraphStyle = platformStyle.getParagraphStyle()) == null) ? null : EmojiSupportMatch.m2045boximpl(paragraphStyle.m2080getEmojiSupportMatch_3YsG6Y())) == null ? false : EmojiSupportMatch.m2048equalsimpl0(r1.m2051unboximpl(), EmojiSupportMatch.Companion.m2054getNone_3YsG6Y()));
    }
}
