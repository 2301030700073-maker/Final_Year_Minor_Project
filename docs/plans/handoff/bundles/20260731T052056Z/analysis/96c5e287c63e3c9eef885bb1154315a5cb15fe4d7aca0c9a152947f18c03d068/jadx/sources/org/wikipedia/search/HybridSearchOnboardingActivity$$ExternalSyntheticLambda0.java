package org.wikipedia.search;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.Expect_jvmKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;
import org.wikipedia.Constants;
import org.wikipedia.WikipediaApp;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda11;
import org.wikipedia.util.SingleLiveData$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class HybridSearchOnboardingActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ HybridSearchOnboardingActivity f$0;
    public final /* synthetic */ Constants.InvokeSource f$1;

    public /* synthetic */ HybridSearchOnboardingActivity$$ExternalSyntheticLambda0(HybridSearchOnboardingActivity hybridSearchOnboardingActivity, Constants.InvokeSource invokeSource, int i) {
        this.$r8$classId = i;
        this.f$0 = hybridSearchOnboardingActivity;
        this.f$1 = invokeSource;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Constants.InvokeSource invokeSource = this.f$1;
        HybridSearchOnboardingActivity hybridSearchOnboardingActivity = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = HybridSearchOnboardingActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-699760091, new HybridSearchOnboardingActivity$$ExternalSyntheticLambda0(hybridSearchOnboardingActivity, invokeSource, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = HybridSearchOnboardingActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String appOrSystemLanguageCode = Jsoup.getInstance().getAppOrSystemLanguageCode();
                    List list = (List) HybridSearchOnboardingActivityKt.suggestedQueriesPerLanguage.get(Jsoup.getInstance().getAppOrSystemLanguageCode());
                    if (list == null) {
                        list = HybridSearchOnboardingActivityKt.defaultSuggestedQueries;
                    }
                    List list2 = list;
                    boolean changedInstance = gapComposer2.changedInstance(hybridSearchOnboardingActivity) | gapComposer2.changed(invokeSource == null ? -1 : invokeSource.ordinal());
                    Object rememberedValue = gapComposer2.rememberedValue();
                    NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                    if (changedInstance || rememberedValue == neverEqualPolicy) {
                        rememberedValue = new AboutActivityKt$$ExternalSyntheticLambda11(1, hybridSearchOnboardingActivity, invokeSource);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Function0 function0 = (Function0) rememberedValue;
                    boolean changedInstance2 = gapComposer2.changedInstance(hybridSearchOnboardingActivity) | gapComposer2.changed(invokeSource != null ? invokeSource.ordinal() : -1);
                    Object rememberedValue2 = gapComposer2.rememberedValue();
                    if (changedInstance2 || rememberedValue2 == neverEqualPolicy) {
                        rememberedValue2 = new SingleLiveData$$ExternalSyntheticLambda0(5, hybridSearchOnboardingActivity, invokeSource);
                        gapComposer2.updateRememberedValue(rememberedValue2);
                    }
                    Function1 function1 = (Function1) rememberedValue2;
                    boolean changedInstance3 = gapComposer2.changedInstance(hybridSearchOnboardingActivity);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance3 || rememberedValue3 == neverEqualPolicy) {
                        rememberedValue3 = new WikiGames$$ExternalSyntheticLambda0(23, hybridSearchOnboardingActivity);
                        gapComposer2.updateRememberedValue(rememberedValue3);
                    }
                    HybridSearchOnboardingActivityKt.HybridSearchOnboardingScreen(null, appOrSystemLanguageCode, list2, function0, function1, (Function0) rememberedValue3, gapComposer2, 0);
                    break;
                }
        }
        return unit;
    }
}
