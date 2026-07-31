package org.wikipedia.feed;

import android.content.Context;
import androidx.compose.foundation.pager.DefaultPagerState;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.saveable.RememberSaveableKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.Cache;
import okhttp3.Cookie;
import org.wikipedia.compose.components.error.WikiErrorClickEvents;
import org.wikipedia.compose.components.menu.PageOverflowMenuViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.feed.personalization.PersonalizationScreenKt;
import org.wikipedia.feed.personalization.PersonalizationViewModel;
import org.wikipedia.language.AppLanguageState;
import org.wikipedia.onboarding.InitialOnboardingScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HomeScreenKt$$ExternalSyntheticLambda22 implements Function2 {
    public final /* synthetic */ int $r8$classId = 2;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;
    public final /* synthetic */ Object f$5;
    public final /* synthetic */ Function0 f$6;

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda22(DefaultPagerState defaultPagerState, Context context, List list, CoroutineScope coroutineScope, Function0 function0, Function0 function02, Map map) {
        this.f$0 = defaultPagerState;
        this.f$1 = context;
        this.f$2 = list;
        this.f$3 = coroutineScope;
        this.f$6 = function0;
        this.f$4 = function02;
        this.f$5 = map;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Context context;
        DefaultPagerState defaultPagerState;
        List list;
        Map map;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$4;
        Object obj4 = this.f$3;
        Object obj5 = this.f$2;
        Object obj6 = this.f$5;
        Object obj7 = this.f$1;
        Object obj8 = this.f$0;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                ForYouCardKt.HomeTabBar((Modifier) obj8, (WikiSite) obj7, (HomeTab) obj5, (AppLanguageState) obj4, (Function2) obj3, (Function1) obj6, this.f$6, (GapComposer) obj, Updater.updateChangedFlags(7));
                break;
            case 1:
                ((Integer) obj2).getClass();
                Cache.Companion.DidYouKnowScreen((WikiSite) obj7, (List) obj8, this.f$6, (Function1) obj6, (PageOverflowMenuViewModel.PageOverflowMenuState) obj5, (Function0) obj4, (Function3) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                DefaultPagerState defaultPagerState2 = (DefaultPagerState) obj8;
                Context context2 = (Context) obj7;
                List list2 = (List) obj5;
                CoroutineScope coroutineScope = (CoroutineScope) obj4;
                Function0 function0 = (Function0) obj3;
                Map map2 = (Map) obj6;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(1 & intValue, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer.changedInstance(context2) | gapComposer.changedInstance(list2) | gapComposer.changed(defaultPagerState2) | gapComposer.changedInstance(coroutineScope);
                    Function0 function02 = this.f$6;
                    boolean changed = gapComposer.changed(function02) | changedInstance;
                    Object rememberedValue = gapComposer.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changed || rememberedValue == neverEqualPolicy) {
                        context = context2;
                        defaultPagerState = defaultPagerState2;
                        list = list2;
                        map = map2;
                        RememberSaveableKt$$ExternalSyntheticLambda0 rememberSaveableKt$$ExternalSyntheticLambda0 = new RememberSaveableKt$$ExternalSyntheticLambda0(context, map, list, defaultPagerState, coroutineScope, function02, 1);
                        gapComposer.updateRememberedValue(rememberSaveableKt$$ExternalSyntheticLambda0);
                        rememberedValue = rememberSaveableKt$$ExternalSyntheticLambda0;
                    } else {
                        list = list2;
                        map = map2;
                        context = context2;
                        defaultPagerState = defaultPagerState2;
                    }
                    Function0 function03 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer.changedInstance(context) | gapComposer.changedInstance(list) | gapComposer.changed(defaultPagerState) | gapComposer.changed(function0);
                    Object rememberedValue2 = gapComposer.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new InitialOnboardingScreenKt$$ExternalSyntheticLambda3(context, map, list, defaultPagerState, function0);
                        gapComposer.updateRememberedValue(rememberedValue2);
                    }
                    PersonalizationScreenKt.OnboardingBottomBar(defaultPagerState, function03, (Function0) rememberedValue2, gapComposer, 0);
                    break;
                }
            case 3:
                ((Integer) obj2).getClass();
                PersonalizationScreenKt.PersonalizationScreen((Modifier) obj8, (PersonalizationViewModel) obj7, (List) obj5, this.f$6, (Function0) obj4, (Function0) obj3, (Function0) obj6, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                ((Integer) obj2).getClass();
                Cookie.Companion.LanguagesListScreen((Modifier) obj8, (UiState) obj7, this.f$6, (Function1) obj6, (Function1) obj5, (Function1) obj4, (WikiErrorClickEvents) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
        }
        return unit;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda22(Modifier modifier, WikiSite wikiSite, HomeTab homeTab, AppLanguageState appLanguageState, Function2 function2, Function1 function1, Function0 function0, int i) {
        this.f$0 = modifier;
        this.f$1 = wikiSite;
        this.f$2 = homeTab;
        this.f$3 = appLanguageState;
        this.f$4 = function2;
        this.f$5 = function1;
        this.f$6 = function0;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda22(Modifier modifier, PersonalizationViewModel personalizationViewModel, List list, Function0 function0, Function0 function02, Function0 function03, Function0 function04, int i) {
        this.f$0 = modifier;
        this.f$1 = personalizationViewModel;
        this.f$2 = list;
        this.f$6 = function0;
        this.f$3 = function02;
        this.f$4 = function03;
        this.f$5 = function04;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda22(Modifier modifier, UiState uiState, Function0 function0, Function1 function1, Function1 function12, Function1 function13, WikiErrorClickEvents wikiErrorClickEvents, int i) {
        this.f$0 = modifier;
        this.f$1 = uiState;
        this.f$6 = function0;
        this.f$5 = function1;
        this.f$2 = function12;
        this.f$3 = function13;
        this.f$4 = wikiErrorClickEvents;
    }

    public /* synthetic */ HomeScreenKt$$ExternalSyntheticLambda22(WikiSite wikiSite, List list, Function0 function0, Function1 function1, PageOverflowMenuViewModel.PageOverflowMenuState pageOverflowMenuState, Function0 function02, Function3 function3, int i) {
        this.f$1 = wikiSite;
        this.f$0 = list;
        this.f$6 = function0;
        this.f$5 = function1;
        this.f$2 = pageOverflowMenuState;
        this.f$3 = function02;
        this.f$4 = function3;
    }
}
