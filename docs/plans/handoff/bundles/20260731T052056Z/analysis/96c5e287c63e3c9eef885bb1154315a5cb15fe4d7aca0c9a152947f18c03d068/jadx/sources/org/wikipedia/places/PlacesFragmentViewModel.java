package org.wikipedia.places;

import android.location.Location;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlinx.coroutines.AwaitKt;
import org.wikipedia.login.LoginClient$login$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PlacesFragmentViewModel extends ViewModel {
    public PageTitle highlightedPageTitle;
    public Location lastKnownLocation;
    public final Location location;
    public final MutableLiveData nearbyPagesLiveData;

    public PlacesFragmentViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.location = (Location) savedStateHandle.get("location");
        this.highlightedPageTitle = (PageTitle) savedStateHandle.get("title");
        this.nearbyPagesLiveData = new MutableLiveData();
    }

    public final void fetchNearbyPages(double d, double d2, int i) {
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new LoginClient$login$$inlined$CoroutineExceptionHandler$1(this), null, new PlacesFragmentViewModel$fetchNearbyPages$2(this, d, d2, i, null), 2);
    }
}
