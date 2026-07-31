package org.wikipedia.feed;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SimpleLayoutKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.material3.TooltipStateImpl;
import androidx.compose.material3.internal.LayoutUtilKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.DialogProperties;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.lifecycle.LifecycleOwner;
import j$.time.LocalDate;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cookie;
import okhttp3.Headers;
import okio.Options;
import org.wikipedia.R;
import org.wikipedia.activitytab.ActivityTabViewModel;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.feed.wikigames.OnThisDayCardGameState;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt;
import org.wikipedia.random.RandomScreenKt;
import org.wikipedia.readinglist.ReadingListsFragment;
import org.wikipedia.search.HybridSearchOnboardingActivityKt;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda27 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ int f$4;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, String str, List list, Function0 function0, int i) {
        this.$r8$classId = 13;
        this.f$1 = modifier;
        this.f$0 = str;
        this.f$3 = list;
        this.f$2 = function0;
        this.f$4 = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Object obj3 = this.f$2;
        Object obj4 = this.f$3;
        Object obj5 = this.f$1;
        Unit unit = Unit.INSTANCE;
        int i2 = this.f$4;
        Object obj6 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ForYouCardKt.LanguageDropDownMenu((String) obj6, (Function1) obj5, (Function0) obj3, (AppLanguageState) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                SimpleLayoutKt.SelectionContainer((Modifier) obj6, (Selection) obj3, (Function1) obj5, (ComposableLambdaImpl) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                AlertDialogKt.BasicAlertDialog((Function0) obj3, (Modifier) obj6, (DialogProperties) obj5, (ComposableLambdaImpl) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                LayoutUtilKt.BasicTooltipBox((PopupPositionProvider) obj6, (ComposableLambdaImpl) obj5, (TooltipStateImpl) obj3, (ComposableLambdaImpl) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 4:
                ((Integer) obj2).getClass();
                ((ComposableLambdaImpl) obj6).invoke(this.f$1, this.f$2, this.f$3, (GapComposer) obj, Updater.updateChangedFlags(i2) | 1);
                break;
            case 5:
                ((Integer) obj2).getClass();
                TuplesKt.LifecycleStartEffect((Boolean) obj6, this.f$2, (LifecycleOwner) obj4, (Function1) obj5, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 6:
                ((Integer) obj2).getClass();
                ImpactModuleKt.ArticleReadThisMonthCard((Modifier) obj6, (ActivityTabViewModel.ReadingHistory) obj5, (LocalDate) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 7:
                ((Integer) obj2).getClass();
                ForYouCardKt.ForYouModulePager((Modifier) obj6, (ForYouModule) obj3, (Function1) obj5, (ComposableLambdaImpl) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                Options.Companion.OnThisDayGameCardPreview((Modifier) obj5, (OnThisDayCardGameState.Preview) obj4, (String) obj6, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                InitialOnboardingScreenKt.InitialOnboardingLanguagesScreen((Modifier) obj6, (AppLanguageState) obj4, (List) obj5, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                RandomScreenKt.RandomItemPage((Resource) obj6, (Function1) obj5, (Function0) obj3, (Function0) obj4, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            case 11:
                ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj5;
                String str = (String) obj6;
                MutableState mutableState = (MutableState) obj3;
                MutableState mutableState2 = (MutableState) obj4;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(readingListsFragment);
                    Object rememberedValue = gapComposer.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new WikiGames$$ExternalSyntheticLambda0(20, readingListsFragment);
                        gapComposer.updateRememberedValue(rememberedValue);
                    }
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m51clickableoSLSa3U$default(15, Modifier.Companion.$$INSTANCE, null, (Function0) rememberedValue, false), 16.0f);
                    String string = readingListsFragment.getString(R.string.recommended_reading_list_title);
                    string.getClass();
                    String string2 = readingListsFragment.getString(i2);
                    string2.getClass();
                    Cookie.Companion.RecommendedReadingListDiscoverCardView(m132padding3ABfNKs, string, str, string2, (List) mutableState.getValue(), ((Boolean) mutableState2.getValue()).booleanValue(), Headers.Companion.isLoggedIn(), gapComposer, 0);
                    break;
                }
                break;
            case 12:
                ((Integer) obj2).getClass();
                HybridSearchOnboardingActivityKt.SearchExamplesView((Modifier) obj3, (List) obj4, (String) obj6, (Function1) obj5, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
            default:
                ((Integer) obj2).getClass();
                PrefsIoUtil.AboutWikipediaScreen((Modifier) obj5, (String) obj6, (List) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(i2 | 1));
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, Object obj, Function1 function1, ComposableLambdaImpl composableLambdaImpl, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = modifier;
        this.f$2 = obj;
        this.f$1 = function1;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, List list, String str, Function1 function1, int i) {
        this.$r8$classId = 12;
        this.f$2 = modifier;
        this.f$3 = list;
        this.f$0 = str;
        this.f$1 = function1;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, ActivityTabViewModel.ReadingHistory readingHistory, LocalDate localDate, Function0 function0, int i) {
        this.$r8$classId = 6;
        this.f$0 = modifier;
        this.f$1 = readingHistory;
        this.f$3 = localDate;
        this.f$2 = function0;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, OnThisDayCardGameState.Preview preview, String str, Function0 function0, int i) {
        this.$r8$classId = 8;
        this.f$1 = modifier;
        this.f$3 = preview;
        this.f$0 = str;
        this.f$2 = function0;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Modifier modifier, AppLanguageState appLanguageState, List list, Function0 function0, int i) {
        this.$r8$classId = 9;
        this.f$0 = modifier;
        this.f$3 = appLanguageState;
        this.f$1 = list;
        this.f$2 = function0;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Boolean bool, Object obj, LifecycleOwner lifecycleOwner, Function1 function1, int i) {
        this.$r8$classId = 5;
        this.f$0 = bool;
        this.f$2 = obj;
        this.f$3 = lifecycleOwner;
        this.f$1 = function1;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Object obj, Object obj2, Object obj3, Object obj4, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
        this.f$3 = obj4;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(Function0 function0, Modifier modifier, DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.$r8$classId = 2;
        this.f$2 = function0;
        this.f$0 = modifier;
        this.f$1 = dialogProperties;
        this.f$3 = composableLambdaImpl;
        this.f$4 = i;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda27(ReadingListsFragment readingListsFragment, String str, int i, MutableState mutableState, MutableState mutableState2) {
        this.$r8$classId = 11;
        this.f$1 = readingListsFragment;
        this.f$0 = str;
        this.f$4 = i;
        this.f$2 = mutableState;
        this.f$3 = mutableState2;
    }
}
