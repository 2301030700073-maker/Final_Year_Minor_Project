package okhttp3;

import android.content.Context;
import android.content.Intent;
import androidx.compose.animation.core.Animation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.material3.CardKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Cookie;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http.DateFormattingKt;
import okhttp3.internal.http.StatusLine;
import org.maplibre.android.log.Logger;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda5;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda22;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda26;
import org.wikipedia.language.LangLinksScreenKt$$ExternalSyntheticLambda6;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda18;
import org.wikipedia.readinglist.RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0;
import org.wikipedia.settings.Prefs;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Cookie {
    public final String domain;
    public final long expiresAt;
    public final boolean hostOnly;
    public final boolean httpOnly;
    public final String name;
    public final String path;
    public final boolean persistent;
    public final String sameSite;
    public final boolean secure;
    public final String value;
    public static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4, String str5) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.persistent = z3;
        this.hostOnly = z4;
        this.sameSite = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return cookie.name.equals(this.name) && cookie.value.equals(this.value) && cookie.expiresAt == this.expiresAt && cookie.domain.equals(this.domain) && cookie.path.equals(this.path) && cookie.secure == this.secure && cookie.httpOnly == this.httpOnly && cookie.persistent == this.persistent && cookie.hostOnly == this.hostOnly && Intrinsics.areEqual(cookie.sameSite, this.sameSite);
    }

    public final int hashCode() {
        int m = Animation.CC.m(Animation.CC.m(527, 31, this.name), 31, this.value);
        long j = this.expiresAt;
        int m2 = (((((((Animation.CC.m(Animation.CC.m((m + ((int) (j ^ (j >>> 32)))) * 31, 31, this.domain), 31, this.path) + (this.secure ? 1231 : 1237)) * 31) + (this.httpOnly ? 1231 : 1237)) * 31) + (this.persistent ? 1231 : 1237)) * 31) + (this.hostOnly ? 1231 : 1237)) * 31;
        String str = this.sameSite;
        return m2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            long j = this.expiresAt;
            if (j == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                String format = ((DateFormat) DateFormattingKt.STANDARD_DATE_FORMAT.get()).format(new Date(j));
                format.getClass();
                sb.append(format);
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        String str = this.sameSite;
        if (str != null) {
            sb.append("; samesite=");
            sb.append(str);
        }
        return sb.toString();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class Companion {
        public static final void FeaturedArticleModule(WikiSite wikiSite, PageSummary pageSummary, Function1 function1, Function0 function0, Function0 function02, Function1 function12, Function1 function13, Function0 function03, GapComposer gapComposer, int i) {
            wikiSite.getClass();
            pageSummary.getClass();
            gapComposer.startRestartGroup(-2044155056);
            int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(pageSummary) ? 32 : 16) | (gapComposer.changedInstance(function1) ? 256 : 128) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function12) ? 131072 : 65536) | (gapComposer.changedInstance(function13) ? 1048576 : 524288) | (gapComposer.changedInstance(function03) ? 8388608 : 4194304);
            if (gapComposer.shouldExecute(i2 & 1, (4793491 & i2) != 4793490)) {
                int i3 = i2 << 3;
                int i4 = i2 << 9;
                ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.view_featured_article_card_title, R.string.explore_feed_featured_article_subtitle, null, 0L, function0, function02, function03, Expect_jvmKt.rememberComposableLambda(157044098, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(function1, pageSummary, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), function13, function12, wikiSite, 3), gapComposer), gapComposer, (i4 & 29360128) | (i3 & 112) | 805306368 | (3670016 & i4) | (i3 & 234881024), 49);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new HomeFragment$$ExternalSyntheticLambda5(wikiSite, pageSummary, function1, function0, function02, function12, function13, function03, i, 3);
            }
        }

        public static final void LanguageListItemView(Modifier modifier, String str, String str2, GapComposer gapComposer, int i) {
            GapComposer gapComposer2 = gapComposer;
            gapComposer2.startRestartGroup(1850536424);
            int i2 = i | (gapComposer2.changed(modifier) ? 4 : 2) | (gapComposer2.changed(str) ? 32 : 16) | (gapComposer2.changed(str2) ? 256 : 128);
            if (gapComposer2.shouldExecute(i2 & 1, (i2 & 147) != 146)) {
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(OffsetKt.Center, Alignment.Companion.Start, gapComposer2, 6);
                long j = gapComposer2.compositeKeyHashCode;
                int i3 = (int) ((j >>> 32) ^ j);
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i3), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = TypographyKt.LocalTypography;
                TextStyle textStyle = ((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).titleMedium;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = WikipediaColorKt.LocalWikipediaColor;
                TextKt.m308TextNvy7gAk(str, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(textStyle, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).primaryColor, 0L, FontWeight.Bold, null, 0L, 0L, null, 16777210), gapComposer2, (i2 >> 3) & 14, 0, 131070);
                if (str2 != null) {
                    gapComposer2.startReplaceGroup(1464308872);
                    TextKt.m308TextNvy7gAk(str2, null, 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal)).bodyMedium, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal2)).secondaryColor, 0L, null, null, 0L, ContextsKt.getSp(24), null, 16613374), gapComposer, (i2 >> 6) & 14, 0, 131070);
                    gapComposer2 = gapComposer;
                    gapComposer2.end(false);
                } else {
                    gapComposer2 = gapComposer2;
                    gapComposer2.startReplaceGroup(1464612548);
                    gapComposer2.end(false);
                }
                gapComposer2.end(true);
            } else {
                gapComposer2.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new RandomScreenKt$$ExternalSyntheticLambda18(modifier, str, str2, i, 16);
            }
        }

        public static final void LanguagesListScreen(Modifier modifier, UiState uiState, Function0 function0, Function1 function1, Function1 function12, Function1 function13, WikiErrorClickEvents wikiErrorClickEvents, GapComposer gapComposer, int i) {
            uiState.getClass();
            function0.getClass();
            function1.getClass();
            function12.getClass();
            function13.getClass();
            gapComposer.startRestartGroup(1841302094);
            int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(uiState) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 256 : 128) | (gapComposer.changedInstance(function1) ? 2048 : 1024) | (gapComposer.changedInstance(function12) ? 16384 : 8192) | (gapComposer.changedInstance(function13) ? 131072 : 65536) | (gapComposer.changedInstance(wikiErrorClickEvents) ? 1048576 : 524288);
            if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
                Object rememberedValue = gapComposer.rememberedValue();
                if (rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = Updater.mutableStateOf$default("");
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                CardKt.m270ScaffoldTvnljyQ(modifier, Expect_jvmKt.rememberComposableLambda(2093762322, new RandomScreenKt$$ExternalSyntheticLambda1(function13, function1, function0, (MutableState) rememberedValue), gapComposer), null, null, null, 0, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).paperColor, 0L, null, Expect_jvmKt.rememberComposableLambda(2063614941, new HomeScreenKt$$ExternalSyntheticLambda26(uiState, modifier, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), function12, wikiErrorClickEvents), gapComposer), gapComposer, (i2 & 14) | 805306416, 444);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda22(modifier, uiState, function0, function1, function12, function13, wikiErrorClickEvents, i);
            }
        }

        public static final void ListHeader(String str, Modifier modifier, TextStyle textStyle, GapComposer gapComposer, int i) {
            TextStyle textStyle2;
            int i2;
            TextStyle m647copyp1EtxEg$default;
            GapComposer gapComposer2 = gapComposer;
            gapComposer2.startRestartGroup(2046517312);
            int i3 = i | (gapComposer2.changed(str) ? 4 : 2) | 128;
            if (gapComposer2.shouldExecute(i3 & 1, (i3 & 147) != 146)) {
                gapComposer2.startDefaults();
                if ((i & 1) == 0 || gapComposer2.getDefaultsInvalid()) {
                    i2 = i3 & (-897);
                    m647copyp1EtxEg$default = TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(TypographyKt.LocalTypography)).titleSmall, ((WikipediaColor) gapComposer2.consume(WikipediaColorKt.LocalWikipediaColor)).primaryColor, 0L, FontWeight.Bold, null, 0L, ContextsKt.getSp(24), null, 16646138);
                } else {
                    gapComposer2.skipToGroupEnd();
                    i2 = i3 & (-897);
                    m647copyp1EtxEg$default = textStyle;
                }
                gapComposer2.endDefaults();
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(Alignment.Companion.TopStart, false);
                long j = gapComposer2.compositeKeyHashCode;
                int i4 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, modifier);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                Updater.m327setimpl(gapComposer2, Integer.valueOf(i4), ComposeUiNode.Companion.SetCompositeKeyHash);
                Updater.m326reconcileimpl(gapComposer2, ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion);
                Updater.m327setimpl(gapComposer2, materializeModifier, ComposeUiNode.Companion.SetModifier);
                TextKt.m308TextNvy7gAk(str, BoxScopeInstance.INSTANCE.align(Modifier.Companion.$$INSTANCE, Alignment.Companion.CenterStart), 0L, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, m647copyp1EtxEg$default, gapComposer2, i2 & 14, 0, 131068);
                gapComposer2 = gapComposer2;
                gapComposer2.end(true);
                textStyle2 = m647copyp1EtxEg$default;
            } else {
                gapComposer2.skipToGroupEnd();
                textStyle2 = textStyle;
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new LangLinksScreenKt$$ExternalSyntheticLambda6(str, modifier, textStyle2, i, 1);
            }
        }

        public static final void RecommendedReadingListDiscoverCardView(final Modifier modifier, final String str, final String str2, final String str3, final List list, final boolean z, final boolean z2, GapComposer gapComposer, final int i) {
            list.getClass();
            gapComposer.startRestartGroup(1264733256);
            int i2 = i | (gapComposer.changed(modifier) ? 4 : 2) | (gapComposer.changed(str) ? 32 : 16) | (gapComposer.changed(R.drawable.ic_wikipedia_w) ? 256 : 128) | (gapComposer.changed(str2) ? 2048 : 1024) | (gapComposer.changed(str3) ? 16384 : 8192) | (gapComposer.changedInstance(list) ? 131072 : 65536) | (gapComposer.changed(z) ? 1048576 : 524288);
            if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
                TabsBoxKt.m902WikiCardjfnsLPA(null, 4.0f, null, null, null, null, Expect_jvmKt.rememberComposableLambda(-896804677, new RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda0(modifier, list, str3, str, z, str2), gapComposer), gapComposer, 1572912, 61);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2(str, str2, str3, list, z, z2, i) { // from class: org.wikipedia.readinglist.RecommendedReadingListDiscoverCardViewKt$$ExternalSyntheticLambda1
                    public final /* synthetic */ String f$1;
                    public final /* synthetic */ String f$3;
                    public final /* synthetic */ String f$4;
                    public final /* synthetic */ List f$5;
                    public final /* synthetic */ boolean f$6;
                    public final /* synthetic */ boolean f$7;

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int updateChangedFlags = Updater.updateChangedFlags(1);
                        Cookie.Companion.RecommendedReadingListDiscoverCardView(Modifier.this, this.f$1, this.f$3, this.f$4, this.f$5, this.f$6, this.f$7, (GapComposer) obj, updateChangedFlags);
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        public static int dateCharacterOffset(int i, int i2, String str, boolean z) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || ('0' <= charAt && charAt < ':') || (('a' <= charAt && charAt < '{') || (('A' <= charAt && charAt < '[') || charAt == ':'))) == (!z)) {
                    return i;
                }
                i++;
            }
            return i2;
        }

        public static String getActionDataString$default(Long l, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i) {
            String str9;
            String str10;
            if ((i & 1) != 0) {
                l = null;
            }
            if ((i & 2) != 0) {
                str = null;
            }
            if ((i & 4) != 0) {
                str2 = null;
            }
            if ((i & 8) != 0) {
                str3 = null;
            }
            if ((i & 16) != 0) {
                str4 = null;
            }
            if ((i & 32) != 0) {
                str5 = null;
            }
            if ((i & 128) != 0) {
                str6 = null;
            }
            if ((i & 256) != 0) {
                str7 = null;
            }
            if ((i & 512) != 0) {
                str8 = null;
            }
            if (l != null) {
                str9 = "revision_id: " + l.longValue() + ", ";
            } else {
                str9 = null;
            }
            if (str9 == null) {
                str9 = "";
            }
            String m = str != null ? Animation.CC.m("feedback: ", str, ", ") : null;
            if (m == null) {
                m = "";
            }
            String m2 = str2 != null ? Animation.CC.m("feedback_text: ", str2, ", ") : null;
            if (m2 == null) {
                m2 = "";
            }
            String m3 = str3 != null ? Animation.CC.m("message_type: ", str3, ", ") : null;
            if (m3 == null) {
                m3 = "";
            }
            String m4 = str4 != null ? Animation.CC.m("summary_text: ", str4, ", ") : null;
            if (m4 == null) {
                m4 = "";
            }
            if (str4 != null) {
                str10 = String.valueOf(str4.length() > 0);
            } else {
                str10 = null;
            }
            if (str10 == null) {
                str10 = "";
            }
            String m5 = str5 != null ? Animation.CC.m("filter_selected: ", str5, ", ") : null;
            if (m5 == null) {
                m5 = "";
            }
            String m6 = str6 != null ? Animation.CC.m("filters_list: ", str6, ", ") : null;
            if (m6 == null) {
                m6 = "";
            }
            String m7 = str7 != null ? Animation.CC.m("app_language_code_added: ", str7, ", ") : null;
            if (m7 == null) {
                m7 = "";
            }
            String m8 = str8 != null ? Animation.CC.m("app_language_codes: ", str8, ", ") : null;
            if (m8 == null) {
                m8 = "";
            }
            StringBuilder m352m = Modifier.CC.m352m(str9, m, m2, m3, m4);
            Modifier.CC.m(m352m, str10, m5, "", m6);
            return Animation.CC.m(m352m, m7, m8);
        }

        public static AppDatabase getInstance() {
            return (AppDatabase) AppDatabase.instance$delegate.getValue();
        }

        /* JADX WARN: Code restructure failed: missing block: B:6:0x0021, code lost:
        
            if (r5.length() > 0) goto L20;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static android.util.Pair[] getSharedElements(android.content.Context r7, android.view.View... r8) {
            /*
                r7.getClass()
                java.util.ArrayList r0 = new java.util.ArrayList
                r0.<init>()
                int r1 = r8.length
                r2 = 0
                r3 = r2
            Lb:
                if (r3 >= r1) goto L5c
                r4 = r8[r3]
                boolean r5 = r4 instanceof android.widget.TextView
                if (r5 == 0) goto L24
                r5 = r4
                android.widget.TextView r5 = (android.widget.TextView) r5
                java.lang.CharSequence r5 = r5.getText()
                r5.getClass()
                int r5 = r5.length()
                if (r5 <= 0) goto L24
                goto L56
            L24:
                boolean r5 = r4 instanceof android.widget.ImageView
                if (r5 == 0) goto L59
                int r5 = r4.getVisibility()
                if (r5 != 0) goto L59
                r5 = r4
                android.widget.ImageView r5 = (android.widget.ImageView) r5
                android.view.ViewParent r5 = r5.getParent()
                r5.getClass()
                android.view.View r5 = (android.view.View) r5
                int r5 = r5.getVisibility()
                if (r5 != 0) goto L59
                android.content.res.Resources r5 = r7.getResources()
                android.content.res.Configuration r5 = r5.getConfiguration()
                int r5 = r5.orientation
                r6 = 2
                if (r5 != r6) goto L4e
                goto L59
            L4e:
                org.wikipedia.settings.Prefs r5 = org.wikipedia.settings.Prefs.INSTANCE
                boolean r5 = org.wikipedia.settings.Prefs.isImageDownloadEnabled()
                if (r5 == 0) goto L59
            L56:
                r0.add(r4)
            L59:
                int r3 = r3 + 1
                goto Lb
            L5c:
                java.util.ArrayList r7 = new java.util.ArrayList
                r8 = 10
                int r8 = kotlin.collections.CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(r0, r8)
                r7.<init>(r8)
                java.util.Iterator r8 = r0.iterator()
            L6b:
                boolean r0 = r8.hasNext()
                if (r0 == 0) goto L84
                java.lang.Object r0 = r8.next()
                android.view.View r0 = (android.view.View) r0
                android.util.Pair r1 = new android.util.Pair
                java.lang.String r3 = r0.getTransitionName()
                r1.<init>(r0, r3)
                r7.add(r1)
                goto L6b
            L84:
                android.util.Pair[] r8 = new android.util.Pair[r2]
                java.lang.Object[] r7 = r7.toArray(r8)
                android.util.Pair[] r7 = (android.util.Pair[]) r7
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.getSharedElements(android.content.Context, android.view.View[]):android.util.Pair[]");
        }

        public static void log(int i, String str) {
            Logger.log(i, "Mbgl-HttpRequest", str);
        }

        public static Intent newIntent(Context context, DescriptionEditActivity.Action action) {
            action.getClass();
            Intent putExtra = new Intent(context, (Class<?>) SuggestionsActivity.class).putExtra("intentAction", action);
            putExtra.getClass();
            return putExtra;
        }

        /* JADX WARN: Code restructure failed: missing block: B:103:0x01a7, code lost:
        
            if (okhttp3.internal._HostnamesCommonKt.VERIFY_AS_IP_ADDRESS.matches(r0) == false) goto L91;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static okhttp3.Cookie parse(okhttp3.HttpUrl r33, java.lang.String r34) {
            /*
                Method dump skipped, instructions count: 495
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.Companion.parse(okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
        }

        public static long parseExpires(int i, String str) {
            int dateCharacterOffset = dateCharacterOffset(0, i, str, false);
            Matcher matcher = Cookie.TIME_PATTERN.matcher(str);
            int i2 = -1;
            int i3 = -1;
            int i4 = -1;
            int i5 = -1;
            int i6 = -1;
            int i7 = -1;
            while (dateCharacterOffset < i) {
                int dateCharacterOffset2 = dateCharacterOffset(dateCharacterOffset + 1, i, str, true);
                matcher.region(dateCharacterOffset, dateCharacterOffset2);
                if (i3 == -1 && matcher.usePattern(Cookie.TIME_PATTERN).matches()) {
                    String group = matcher.group(1);
                    group.getClass();
                    i3 = Integer.parseInt(group);
                    String group2 = matcher.group(2);
                    group2.getClass();
                    i6 = Integer.parseInt(group2);
                    String group3 = matcher.group(3);
                    group3.getClass();
                    i7 = Integer.parseInt(group3);
                } else if (i4 == -1 && matcher.usePattern(Cookie.DAY_OF_MONTH_PATTERN).matches()) {
                    String group4 = matcher.group(1);
                    group4.getClass();
                    i4 = Integer.parseInt(group4);
                } else {
                    if (i5 == -1) {
                        Pattern pattern = Cookie.MONTH_PATTERN;
                        if (matcher.usePattern(pattern).matches()) {
                            String group5 = matcher.group(1);
                            group5.getClass();
                            Locale locale = Locale.US;
                            locale.getClass();
                            String lowerCase = group5.toLowerCase(locale);
                            lowerCase.getClass();
                            String pattern2 = pattern.pattern();
                            pattern2.getClass();
                            i5 = StringsKt.indexOf$default(pattern2, lowerCase, 0, false, 6) / 4;
                        }
                    }
                    if (i2 == -1 && matcher.usePattern(Cookie.YEAR_PATTERN).matches()) {
                        String group6 = matcher.group(1);
                        group6.getClass();
                        i2 = Integer.parseInt(group6);
                    }
                }
                dateCharacterOffset = dateCharacterOffset(dateCharacterOffset2 + 1, i, str, false);
            }
            if (70 <= i2 && i2 < 100) {
                i2 += 1900;
            }
            if (i2 >= 0 && i2 < 70) {
                i2 += 2000;
            }
            if (i2 < 1601) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            if (i5 == -1) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            if (1 > i4 || i4 >= 32) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            if (i3 < 0 || i3 >= 24) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            if (i6 < 0 || i6 >= 60) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            if (i7 < 0 || i7 >= 60) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Failed requirement.");
                return 0L;
            }
            GregorianCalendar gregorianCalendar = new GregorianCalendar(_UtilJvmKt.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i2);
            gregorianCalendar.set(2, i5 - 1);
            gregorianCalendar.set(5, i4);
            gregorianCalendar.set(11, i3);
            gregorianCalendar.set(12, i6);
            gregorianCalendar.set(13, i7);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }

        public static void submitPatrollerActivityEvent(String str, String str2, String str3) {
            EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            String m = ViewSizeResolver$CC.m();
            Prefs prefs = Prefs.INSTANCE;
            EventPlatformClient.submit(new AppInteractionEvent(str, str2, str3, m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
        }

        public static StatusLine parse(String str) {
            Protocol protocol;
            int i;
            String str2;
            if (StringsKt__StringsJVMKt.startsWith(str, "HTTP/1.", false)) {
                i = 9;
                if (str.length() >= 9 && str.charAt(8) == ' ') {
                    int charAt = str.charAt(7) - '0';
                    if (charAt == 0) {
                        protocol = Protocol.HTTP_1_0;
                    } else if (charAt == 1) {
                        protocol = Protocol.HTTP_1_1;
                    } else {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                } else {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
            } else if (StringsKt__StringsJVMKt.startsWith(str, "ICY ", false)) {
                protocol = Protocol.HTTP_1_0;
                i = 4;
            } else if (StringsKt__StringsJVMKt.startsWith(str, "SOURCETABLE ", false)) {
                protocol = Protocol.HTTP_1_1;
                i = 12;
            } else {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            int i2 = i + 3;
            if (str.length() >= i2) {
                Integer intOrNull = StringsKt__StringsJVMKt.toIntOrNull(str.substring(i, i2));
                if (intOrNull != null) {
                    int intValue = intOrNull.intValue();
                    if (str.length() > i2) {
                        if (str.charAt(i2) == ' ') {
                            str2 = str.substring(i + 4);
                        } else {
                            throw new ProtocolException("Unexpected status line: ".concat(str));
                        }
                    } else {
                        str2 = "";
                    }
                    return new StatusLine(protocol, intValue, str2);
                }
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            throw new ProtocolException("Unexpected status line: ".concat(str));
        }
    }
}
