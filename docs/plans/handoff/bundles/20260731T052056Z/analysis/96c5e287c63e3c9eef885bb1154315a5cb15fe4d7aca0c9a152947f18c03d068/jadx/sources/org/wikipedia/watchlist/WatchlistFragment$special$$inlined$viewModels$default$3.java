package org.wikipedia.watchlist;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistFragment$special$$inlined$viewModels$default$3 extends Lambda implements Function0 {
    public final /* synthetic */ Lazy $owner$delegate;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WatchlistFragment$special$$inlined$viewModels$default$3(Lazy lazy, int i) {
        super(0);
        this.$r8$classId = i;
        this.$owner$delegate = lazy;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory;
        int i = this.$r8$classId;
        Lazy lazy = this.$owner$delegate;
        switch (i) {
            case 0:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 1:
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 2:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            default:
                ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
        }
    }
}
