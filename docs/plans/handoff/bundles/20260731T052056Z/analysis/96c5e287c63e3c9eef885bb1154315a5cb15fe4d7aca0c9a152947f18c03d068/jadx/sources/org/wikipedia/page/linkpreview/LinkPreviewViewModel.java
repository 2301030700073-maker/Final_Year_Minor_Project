package org.wikipedia.page.linkpreview;

import android.location.Location;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$result$1;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.linkpreview.LinkPreviewViewState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LinkPreviewViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final boolean fromPlaces;
    public final HistoryEntry historyEntry;
    public boolean isInReadingList;
    public boolean isWatched;
    public final Location lastKnownLocation;
    public Location location;
    public PageTitle pageTitle;
    public final ReadonlyStateFlow uiState;

    public LinkPreviewViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(LinkPreviewViewState.Loading.INSTANCE);
        this._uiState = MutableStateFlow;
        this.uiState = new ReadonlyStateFlow(MutableStateFlow);
        Object obj = savedStateHandle.get("entry");
        obj.getClass();
        HistoryEntry historyEntry = (HistoryEntry) obj;
        this.historyEntry = historyEntry;
        this.pageTitle = historyEntry.getTitle();
        this.location = (Location) savedStateHandle.get("location");
        this.fromPlaces = historyEntry.source == 9;
        this.lastKnownLocation = (Location) savedStateHandle.get("lastKnownLocation");
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RealImageLoader$execute$result$1(15, this, (Continuation) null), 2);
    }
}
