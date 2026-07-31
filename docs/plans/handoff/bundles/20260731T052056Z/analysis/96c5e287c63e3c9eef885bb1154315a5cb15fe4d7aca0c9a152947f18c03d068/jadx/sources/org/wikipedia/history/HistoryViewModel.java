package org.wikipedia.history;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.Resource;
import org.wikipedia.util.SingleLiveData;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HistoryViewModel extends ViewModel {
    public StandaloneCoroutine searchJob;
    public String searchQuery;
    public final LoginClient$login$$inlined$CoroutineExceptionHandler$1 handler = new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this);
    public final MutableLiveData historyItems = new MutableLiveData(new Resource());
    public final SingleLiveData deleteHistoryItemsAction = new SingleLiveData();

    public HistoryViewModel() {
        reloadHistoryItems();
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        StandaloneCoroutine standaloneCoroutine = this.searchJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
    }

    public final void reloadHistoryItems() {
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new HistoryViewModel$searchQuery$1(this, null, 2), 2);
    }

    public final void setSearchQuery(String str) {
        this.searchQuery = str;
        StandaloneCoroutine standaloneCoroutine = this.searchJob;
        Continuation continuation = null;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.searchJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), null, null, new HistoryViewModel$searchQuery$1(this, continuation, 0), 3);
    }
}
