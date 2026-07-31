package org.wikipedia.readinglist.recommended;

import androidx.lifecycle.ViewModel;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.R;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListSettingsViewModel extends ViewModel {
    public final StateFlowImpl _resetUiState;
    public final StateFlowImpl _uiState;
    public final ReadonlyStateFlow resetUiState;
    public final ReadonlyStateFlow uiState;

    public RecommendedReadingListSettingsViewModel() {
        Prefs prefs = Prefs.INSTANCE;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(new RecommendedReadingListSettingsState(Prefs.isRecommendedReadingListEnabled(), Prefs.getRecommendedReadingListArticlesNumber(), Prefs.getRecommendedReadingListUpdateFrequency(), Prefs.getRecommendedReadingListSource(), Prefs.isRecommendedReadingListNotificationEnabled()));
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._resetUiState = m786m;
        this.resetUiState = new ReadonlyStateFlow(m786m);
    }

    public final void toggleNotification(boolean z) {
        Prefs prefs = Prefs.INSTANCE;
        Prefs.setRecommendedReadingListNotificationEnabled(z);
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, 0, null, null, z, 15));
    }

    public final void updateRecommendedReadingListSource(RecommendedReadingListSource recommendedReadingListSource) {
        recommendedReadingListSource.getClass();
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_source, recommendedReadingListSource.name());
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.updateState(null, RecommendedReadingListSettingsState.copy$default((RecommendedReadingListSettingsState) stateFlowImpl.getValue(), false, 0, null, recommendedReadingListSource, false, 23));
    }
}
