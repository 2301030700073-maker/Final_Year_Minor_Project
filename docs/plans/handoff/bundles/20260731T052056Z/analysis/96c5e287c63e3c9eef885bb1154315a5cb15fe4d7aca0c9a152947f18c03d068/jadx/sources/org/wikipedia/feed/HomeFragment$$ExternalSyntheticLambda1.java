package org.wikipedia.feed;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.preference.PreferenceManager;
import coil3.size.ViewSizeResolver$CC;
import com.caverock.androidsvg.SVGAndroidRenderer;
import kotlin.Unit;
import kotlin.collections.builders.MapBuilder;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.settings.Prefs;
import org.wikipedia.theme.Theme;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeFragment$$ExternalSyntheticLambda1 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HomeFragment f$0;

    public /* synthetic */ HomeFragment$$ExternalSyntheticLambda1(HomeFragment homeFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = homeFragment;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Theme theme;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                Integer num = (Integer) obj;
                String str = (String) obj2;
                str.getClass();
                SVGAndroidRenderer sVGAndroidRenderer = this.f$0.instrument;
                MapBuilder mapBuilder = new MapBuilder();
                if (num != null) {
                    mapBuilder.put("score", Integer.valueOf(num.intValue()));
                }
                mapBuilder.put("text", str);
                SVGAndroidRenderer.submitInteraction$default(sVGAndroidRenderer, "click", "home_feed_feedback", null, "feedback_submit", null, mapBuilder.build(), 116);
                break;
            default:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    HomeFragment homeFragment = this.f$0;
                    MutableState collectAsState = Updater.collectAsState(homeFragment.getViewModel().selectedTab, gapComposer);
                    MutableState collectAsState2 = Updater.collectAsState(homeFragment.getViewModel().wikiSite, gapComposer);
                    MutableState collectAsState3 = Updater.collectAsState(homeFragment.getViewModel().tabsState, gapComposer);
                    MutableState collectAsState4 = Updater.collectAsState(homeFragment.getViewModel().unreadCount, gapComposer);
                    MutableState collectAsState5 = Updater.collectAsState(homeFragment.getViewModel().forYouState, gapComposer);
                    MutableState collectAsState6 = Updater.collectAsState(homeFragment.getViewModel().communityState, gapComposer);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (rememberedValue == Composer$Companion.Empty) {
                        Prefs prefs = Prefs.INSTANCE;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String m = ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_home_swipe_to_explore_prompt_shown);
                        WikipediaApp jsoup = Jsoup.getInstance();
                        rememberedValue = Updater.mutableStateOf$default(Boolean.valueOf(jsoup.getSharedPreferences(PreferenceManager.getDefaultSharedPreferencesName(jsoup), 0).getBoolean(m, false)));
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    MutableState mutableState = (MutableState) rememberedValue;
                    if (((HomeTab) collectAsState.getValue()) == HomeTab.FOR_YOU) {
                        theme = Theme.BLACK;
                    } else {
                        WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                        theme = Jsoup.getInstance().currentTheme;
                    }
                    Cache.Companion.BaseTheme(theme, Expect_jvmKt.rememberComposableLambda(891600899, new HomeFragment$$ExternalSyntheticLambda5(homeFragment, collectAsState2, collectAsState, collectAsState6, collectAsState5, collectAsState3, collectAsState4, mutableState), gapComposer), gapComposer, 48, 0);
                    break;
                }
        }
        return unit;
    }
}
