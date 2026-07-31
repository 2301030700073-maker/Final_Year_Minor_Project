package org.wikipedia.settings.homefeed;

import androidx.compose.ui.unit.DpKt;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StartedWhileSubscribed;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.Cookie;
import org.wikipedia.database.AppDatabase;
import org.wikipedia.database.AppDatabase$Companion$MIGRATION_19_20$1;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs$observeKeys$$inlined$filter$1;
import org.wikipedia.settings.SettingsRepository;
import org.wikipedia.settings.homefeed.FeedConfigurationState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModulesViewModel extends ViewModel {
    public final ReadonlyStateFlow feedConfigurationState;
    public final ReadonlyStateFlow hiddenModules = StateFlowKt.stateIn(SettingsRepository.hiddenModules, ViewModelKt.getViewModelScope(this), new StartedWhileSubscribed(5000, Long.MAX_VALUE), null);

    public ModulesViewModel() {
        AppDatabase$Companion$MIGRATION_19_20$1 appDatabase$Companion$MIGRATION_19_20$1 = AppDatabase.MIGRATION_19_20;
        this.feedConfigurationState = StateFlowKt.stateIn(new Prefs$observeKeys$$inlined$filter$1(6, new Flow[]{DpKt.createFlow(Cookie.Companion.getInstance().topicInterestDao().__db, new String[]{"InterestTopic"}, new ForYouCardKt$$ExternalSyntheticLambda1(14)), DpKt.createFlow(Cookie.Companion.getInstance().articleInterestDao().__db, new String[]{"InterestArticle"}, new ForYouCardKt$$ExternalSyntheticLambda1(11)), DpKt.createFlow(Cookie.Companion.getInstance().historyEntryDao().__db, new String[]{"HistoryEntry"}, new ForYouCardKt$$ExternalSyntheticLambda1(22))}, new ModulesViewModel$feedConfigurationState$1(4, null)), ViewModelKt.getViewModelScope(this), new StartedWhileSubscribed(5000L, Long.MAX_VALUE), FeedConfigurationState.Loading.INSTANCE);
    }

    public final void toggleModuleVisibility(String str, boolean z) {
        str.getClass();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new ModulesViewModel$toggleModuleVisibility$1(z, str, (Continuation) null), 3);
    }
}
