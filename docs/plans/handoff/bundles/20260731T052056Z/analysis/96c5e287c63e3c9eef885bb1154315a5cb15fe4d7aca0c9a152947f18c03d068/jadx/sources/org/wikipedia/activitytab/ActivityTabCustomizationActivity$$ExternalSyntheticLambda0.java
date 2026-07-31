package org.wikipedia.activitytab;

import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import okhttp3.Cache;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.games.WikiGames;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ActivityTabCustomizationActivity$$ExternalSyntheticLambda0 implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ActivityTabCustomizationActivity f$0;

    public /* synthetic */ ActivityTabCustomizationActivity$$ExternalSyntheticLambda0(ActivityTabCustomizationActivity activityTabCustomizationActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = activityTabCustomizationActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        ActivityTabCustomizationActivity activityTabCustomizationActivity = this.f$0;
        int i2 = 1;
        switch (i) {
            case 0:
                GapComposer gapComposer = (GapComposer) obj;
                int intValue = ((Integer) obj2).intValue();
                int i3 = ActivityTabCustomizationActivity.$r8$clinit;
                if (!gapComposer.shouldExecute(intValue & 1, (intValue & 3) != 2)) {
                    gapComposer.skipToGroupEnd();
                    break;
                } else {
                    Cache.Companion.BaseTheme(null, Expect_jvmKt.rememberComposableLambda(-239985089, new ActivityTabCustomizationActivity$$ExternalSyntheticLambda0(activityTabCustomizationActivity, i2), gapComposer), gapComposer, 48, 1);
                    break;
                }
            default:
                GapComposer gapComposer2 = (GapComposer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                int i4 = ActivityTabCustomizationActivity.$r8$clinit;
                if (!gapComposer2.shouldExecute(intValue2 & 1, (intValue2 & 3) != 2)) {
                    gapComposer2.skipToGroupEnd();
                    break;
                } else {
                    boolean changedInstance = gapComposer2.changedInstance(activityTabCustomizationActivity);
                    Object rememberedValue = gapComposer2.rememberedValue();
                    if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                        rememberedValue = new Worker$$ExternalSyntheticLambda0(28, activityTabCustomizationActivity);
                        gapComposer2.updateRememberedValue(rememberedValue);
                    }
                    Prefs prefs = Prefs.INSTANCE;
                    ActivityTabModules activityTabModules = Prefs.getActivityTabModules();
                    boolean z = !Prefs.getDonationResults().isEmpty();
                    WikiGames wikiGames = WikiGames.WHICH_CAME_FIRST;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    ImpactModuleKt.CustomizationScreen(null, (Function0) rememberedValue, activityTabModules, z, wikiGames.isLangSupported(Jsoup.getInstance().getWikiSite().languageCode), gapComposer2, 0, 1);
                    break;
                }
                break;
        }
        return unit;
    }
}
