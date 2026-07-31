package org.wikipedia.readinglist.recommended;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import kotlin.Pair;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.R;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.random.RandomViewModel$loadMore$2;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.util.Resource;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RecommendedReadingListSourceViewModel extends ViewModel {
    public final StateFlowImpl _uiSourceState;
    public final ArrayList availableSources;
    public final boolean fromSettings;
    public final ReadonlyStateFlow uiSourceState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SourceSelectionUiState {
        public final boolean isHistoryOptionEnabled;
        public final boolean isSavedOptionEnabled;
        public final RecommendedReadingListSource selectedSource;

        public SourceSelectionUiState(boolean z, boolean z2, RecommendedReadingListSource recommendedReadingListSource) {
            recommendedReadingListSource.getClass();
            this.isSavedOptionEnabled = z;
            this.isHistoryOptionEnabled = z2;
            this.selectedSource = recommendedReadingListSource;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SourceSelectionUiState)) {
                return false;
            }
            SourceSelectionUiState sourceSelectionUiState = (SourceSelectionUiState) obj;
            return this.isSavedOptionEnabled == sourceSelectionUiState.isSavedOptionEnabled && this.isHistoryOptionEnabled == sourceSelectionUiState.isHistoryOptionEnabled && this.selectedSource == sourceSelectionUiState.selectedSource;
        }

        public final int hashCode() {
            return this.selectedSource.hashCode() + ((((this.isSavedOptionEnabled ? 1231 : 1237) * 31) + (this.isHistoryOptionEnabled ? 1231 : 1237)) * 31);
        }

        public final String toString() {
            return "SourceSelectionUiState(isSavedOptionEnabled=" + this.isSavedOptionEnabled + ", isHistoryOptionEnabled=" + this.isHistoryOptionEnabled + ", selectedSource=" + this.selectedSource + ")";
        }
    }

    public RecommendedReadingListSourceViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.fromSettings = Intrinsics.areEqual(savedStateHandle.get("fromSettings"), Boolean.TRUE);
        this.availableSources = new ArrayList();
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiSourceState = m786m;
        this.uiSourceState = new ReadonlyStateFlow(m786m);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RandomViewModel$loadMore$2(this, (Continuation) null, 5), 2);
    }

    public final Pair saveSourceSelection() {
        Resource resource = (Resource) this._uiSourceState.getValue();
        if (!(resource instanceof Resource.Success)) {
            return new Pair(Boolean.FALSE, RecommendedReadingListSource.INTERESTS);
        }
        RecommendedReadingListSource recommendedReadingListSource = ((SourceSelectionUiState) ((Resource.Success) resource).data).selectedSource;
        Prefs prefs = Prefs.INSTANCE;
        recommendedReadingListSource.getClass();
        PrefsIoUtil.setString(R.string.preference_key_recommended_reading_list_source, recommendedReadingListSource.name());
        return new Pair(Boolean.valueOf(recommendedReadingListSource == RecommendedReadingListSource.INTERESTS), recommendedReadingListSource);
    }

    public final void updateSourceSelection(RecommendedReadingListSource recommendedReadingListSource) {
        StateFlowImpl stateFlowImpl = this._uiSourceState;
        Resource resource = (Resource) stateFlowImpl.getValue();
        if (resource instanceof Resource.Success) {
            SourceSelectionUiState sourceSelectionUiState = (SourceSelectionUiState) ((Resource.Success) resource).data;
            stateFlowImpl.updateState(null, new Resource.Success(new SourceSelectionUiState(sourceSelectionUiState.isSavedOptionEnabled, sourceSelectionUiState.isHistoryOptionEnabled, recommendedReadingListSource)));
        }
    }
}
