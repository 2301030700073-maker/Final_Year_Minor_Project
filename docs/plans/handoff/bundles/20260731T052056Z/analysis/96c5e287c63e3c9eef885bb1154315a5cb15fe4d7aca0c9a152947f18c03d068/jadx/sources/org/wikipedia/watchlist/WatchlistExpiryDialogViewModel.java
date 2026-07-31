package org.wikipedia.watchlist;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistExpiryDialogViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public final ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 handler;
    public final PageTitle pageTitle;
    public final ReadonlyStateFlow uiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistExpiryChangeSuccess {
        public final WatchlistExpiry expiry;
        public final String message;

        public WatchlistExpiryChangeSuccess(WatchlistExpiry watchlistExpiry, String str) {
            str.getClass();
            this.expiry = watchlistExpiry;
            this.message = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WatchlistExpiryChangeSuccess)) {
                return false;
            }
            WatchlistExpiryChangeSuccess watchlistExpiryChangeSuccess = (WatchlistExpiryChangeSuccess) obj;
            return this.expiry == watchlistExpiryChangeSuccess.expiry && Intrinsics.areEqual(this.message, watchlistExpiryChangeSuccess.message);
        }

        public final int hashCode() {
            return this.message.hashCode() + (this.expiry.hashCode() * 31);
        }

        public final String toString() {
            return "WatchlistExpiryChangeSuccess(expiry=" + this.expiry + ", message=" + this.message + ")";
        }
    }

    public WatchlistExpiryDialogViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.handler = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
        Object obj = savedStateHandle.get("pageTitle");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
    }
}
