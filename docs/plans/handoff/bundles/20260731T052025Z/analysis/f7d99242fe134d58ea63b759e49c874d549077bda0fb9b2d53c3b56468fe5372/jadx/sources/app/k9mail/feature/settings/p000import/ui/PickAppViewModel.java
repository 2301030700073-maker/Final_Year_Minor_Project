package app.k9mail.feature.settings.p000import.ui;

import androidx.lifecycle.BlockRunner$cancel$1;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.collections.EmptyList;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class PickAppViewModel extends ViewModel {
    public final StateFlowImpl _appInfoFlow;
    public final StateFlowImpl appInfoFlow;
    public final ImportAppFetcher importAppFetcher;

    public PickAppViewModel(ImportAppFetcher importAppFetcher) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.importAppFetcher = importAppFetcher;
        StateFlowImpl MutableStateFlow = FlowKt.MutableStateFlow(EmptyList.INSTANCE);
        this._appInfoFlow = MutableStateFlow;
        this.appInfoFlow = MutableStateFlow;
        JobKt.launch$default(ViewModelKt.getViewModelScope(this), defaultIoScheduler, null, new BlockRunner$cancel$1(this, null, 12), 2);
    }
}
