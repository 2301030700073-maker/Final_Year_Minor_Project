package org.wikipedia.activitytab;

import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import coil3.util.UtilsKt;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import org.jsoup.Jsoup;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.games.WikiGames;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/activitytab/ActivityTabCustomizationActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ActivityTabCustomizationActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EdgeToEdge.enable$default(this);
        Window window = getWindow();
        HintHandler hintHandler = new HintHandler(getWindow().getDecorView());
        int i = Build.VERSION.SDK_INT;
        UtilsKt windowInsetsControllerCompat$Impl35 = i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler);
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        windowInsetsControllerCompat$Impl35.setAppearanceLightStatusBars(!Jsoup.getInstance().currentTheme.isDark());
        ComponentActivityKt.setContent$default(this, new ComposableLambdaImpl(new ActivityTabCustomizationActivity$$ExternalSyntheticLambda0(this, 0), true, -980098837));
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        Prefs prefs = Prefs.INSTANCE;
        ActivityTabModules activityTabModules = Prefs.getActivityTabModules();
        String onOffString = ImpactModuleKt.toOnOffString(activityTabModules.isTimeSpentEnabled);
        String onOffString2 = ImpactModuleKt.toOnOffString(activityTabModules.isReadingInsightsEnabled);
        String onOffString3 = ImpactModuleKt.toOnOffString(activityTabModules.isEditingInsightsEnabled);
        String onOffString4 = ImpactModuleKt.toOnOffString(activityTabModules.isImpactEnabled);
        String onOffString5 = ImpactModuleKt.toOnOffString(activityTabModules.isGamesEnabled);
        String str = null;
        String onOffString6 = !Prefs.getDonationResults().isEmpty() ? ImpactModuleKt.toOnOffString(activityTabModules.isDonationsEnabled) : null;
        String onOffString7 = ImpactModuleKt.toOnOffString(activityTabModules.isTimelineEnabled);
        boolean z = !Prefs.getDonationResults().isEmpty();
        WikiGames wikiGames = WikiGames.WHICH_CAME_FIRST;
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        if (activityTabModules.noModulesVisible(z, wikiGames.isLangSupported(Jsoup.getInstance().getWikiSite().languageCode))) {
            str = "off";
        } else {
            EnumEntries entries = ModuleType.getEntries();
            if (entries == null || !entries.isEmpty()) {
                Iterator<E> it = entries.iterator();
                while (it.hasNext()) {
                    if (!activityTabModules.isModuleEnabled((ModuleType) it.next())) {
                        break;
                    }
                }
            }
            str = "on";
        }
        WikiGamesEvent.submit$default("activity_tab_customize", "customize_click", null, null, onOffString, onOffString2, onOffString3, onOffString4, onOffString5, onOffString6, onOffString7, str, 8220);
    }
}
