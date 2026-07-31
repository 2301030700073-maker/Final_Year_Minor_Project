package org.wikipedia.games;

import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.jsoup.Jsoup;
import org.wikipedia.activitytab.ImpactModuleKt;
import org.wikipedia.compose.components.SettingsKt$$ExternalSyntheticLambda8;
import org.wikipedia.compose.components.TabsBoxKt;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.Resource;
import org.wikipedia.widgets.readingchallenge.ReadingChallengeWidget$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class GamesHubScreenKt$$ExternalSyntheticLambda6 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ boolean f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;
    public final /* synthetic */ Object f$3;

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda6(State state, boolean z, Resource resource, Function0 function0) {
        this.$r8$classId = 3;
        this.f$1 = state;
        this.f$0 = z;
        this.f$2 = resource;
        this.f$3 = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj3 = this.f$3;
        Object obj4 = this.f$2;
        Object obj5 = this.f$1;
        int i2 = 1;
        switch (i) {
            case 0:
                ((Integer) obj2).getClass();
                Jsoup.GamesHubLanguageChip(this.f$0, (String) obj5, (Function1) obj4, (Function0) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 1:
                ((Integer) obj2).getClass();
                ImpactModuleKt.CustomizationScreenSwitch(this.f$0, (String) obj5, (Function1) obj4, (Modifier) obj3, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            case 2:
                ((Integer) obj2).getClass();
                TabsBoxKt.ArticleCard((Modifier) obj5, (PageTitle) obj3, this.f$0, (Function1) obj4, (GapComposer) obj, Updater.updateChangedFlags(1));
                break;
            default:
                State state = (State) obj5;
                Resource resource = (Resource) obj4;
                Function0 function0 = (Function0) obj3;
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-274626487, new ReadingChallengeWidget$$ExternalSyntheticLambda1(state, i2), gapComposer);
                    ComposableLambdaImpl rememberComposableLambda2 = Expect_jvmKt.rememberComposableLambda(1812949451, new SettingsKt$$ExternalSyntheticLambda8(3, resource, function0, this.f$0), gapComposer);
                    float f = TopAppBarDefaults.TopAppBarExpandedHeight;
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                    AppBarKt.m257TopAppBarGHTll3U(rememberComposableLambda, null, rememberComposableLambda2, null, RecyclerView.DECELERATION_RATE, null, TopAppBarDefaults.m311topAppBarColors5tl4gsc(((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor, 0L, gapComposer, 60), null, gapComposer, 390, 186);
                    break;
                }
        }
        return unit;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda6(Modifier modifier, PageTitle pageTitle, boolean z, Function1 function1, int i) {
        this.$r8$classId = 2;
        this.f$1 = modifier;
        this.f$3 = pageTitle;
        this.f$0 = z;
        this.f$2 = function1;
    }

    public /* synthetic */ GamesHubScreenKt$$ExternalSyntheticLambda6(boolean z, String str, Function1 function1, Object obj, int i, int i2) {
        this.$r8$classId = i2;
        this.f$0 = z;
        this.f$1 = str;
        this.f$2 = function1;
        this.f$3 = obj;
    }
}
