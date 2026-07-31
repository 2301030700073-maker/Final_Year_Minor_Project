package org.wikipedia.random;

import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.RealImageLoader$execute$2;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import org.wikipedia.WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RandomViewModel extends ViewModel {
    public PageTitle currentTitle;
    public final SnapshotStateList items;
    public final ParcelableSnapshotMutableState loadError$delegate;
    public boolean loading;
    public final ParcelableSnapshotMutableState saveButtonState$delegate;
    public final WikiSite wikiSite;

    public RandomViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("wikiSite");
        obj.getClass();
        this.wikiSite = (WikiSite) obj;
        this.items = new SnapshotStateList();
        this.loadError$delegate = Updater.mutableStateOf$default(null);
        this.saveButtonState$delegate = Updater.mutableStateOf$default(Boolean.FALSE);
        loadMore();
    }

    public final void loadMore() {
        this.loading = true;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new RandomViewModel$loadMore$2(this, (Continuation) null, 0), 2);
    }

    public final void refreshSaveState() {
        PageTitle pageTitle = this.currentTitle;
        if (pageTitle == null) {
            this.saveButtonState$delegate.setValue(Boolean.FALSE);
        } else {
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new WikipediaApp$logOut$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 25), null, new RealImageLoader$execute$2(this, pageTitle, null, 18), 2);
        }
    }
}
