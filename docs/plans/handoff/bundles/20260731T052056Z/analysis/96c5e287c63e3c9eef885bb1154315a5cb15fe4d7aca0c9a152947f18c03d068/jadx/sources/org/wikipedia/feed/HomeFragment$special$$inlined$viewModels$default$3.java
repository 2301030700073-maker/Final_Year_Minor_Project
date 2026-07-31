package org.wikipedia.feed;

import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeFragment$special$$inlined$viewModels$default$3 extends Lambda implements Function0 {
    public final /* synthetic */ Lazy $owner$delegate;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeFragment$special$$inlined$viewModels$default$3(Lazy lazy, int i) {
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
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 2:
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 3:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 4:
                ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 5:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 6:
                ViewModelStoreOwner viewModelStoreOwner3 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner3 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner3 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 7:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 8:
                ViewModelStoreOwner viewModelStoreOwner4 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner4 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner4 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 9:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 10:
                ViewModelStoreOwner viewModelStoreOwner5 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner5 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner5 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 11:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 12:
                ViewModelStoreOwner viewModelStoreOwner6 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner6 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner6 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case IMAGE_VALUE:
                ViewModelStoreOwner viewModelStoreOwner7 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner7 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner7 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 15:
                ViewModelStoreOwner viewModelStoreOwner8 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner8 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner8 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case LAZY_VERTICAL_GRID_VALUE:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case VERTICAL_GRID_ITEM_VALUE:
                ViewModelStoreOwner viewModelStoreOwner9 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner9 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner9 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case RADIO_GROUP_VALUE:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case RADIO_BUTTON_VALUE:
                ViewModelStoreOwner viewModelStoreOwner10 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner10 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner10 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case RADIO_ROW_VALUE:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case RADIO_COLUMN_VALUE:
                ViewModelStoreOwner viewModelStoreOwner11 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner11 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner11 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case SIZE_BOX_VALUE:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 23:
                ViewModelStoreOwner viewModelStoreOwner12 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner12 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner12 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 24:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 25:
                ViewModelStoreOwner viewModelStoreOwner13 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner13 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner13 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 26:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            case 27:
                ViewModelStoreOwner viewModelStoreOwner14 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner14 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner14 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
            case 28:
                return ((ViewModelStoreOwner) lazy.getValue()).getViewModelStore();
            default:
                ViewModelStoreOwner viewModelStoreOwner15 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner15 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner15 : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.INSTANCE;
        }
    }
}
