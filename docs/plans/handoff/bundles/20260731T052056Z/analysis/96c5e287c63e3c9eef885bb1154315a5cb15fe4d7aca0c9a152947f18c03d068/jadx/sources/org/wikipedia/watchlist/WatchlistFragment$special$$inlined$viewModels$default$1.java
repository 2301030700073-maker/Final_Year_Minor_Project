package org.wikipedia.watchlist;

import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.wikipedia.search.SearchResultsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.usercontrib.UserInformationDialog;
import org.wikipedia.wiktionary.WiktionaryDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WatchlistFragment$special$$inlined$viewModels$default$1 extends Lambda implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WatchlistFragment$special$$inlined$viewModels$default$1(int i, Object obj) {
        super(0);
        this.$r8$classId = i;
        this.$this_viewModels = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.$this_viewModels;
        switch (i) {
            case 0:
                return (WatchlistFragment) obj;
            case 1:
                return (SearchResultsFragment) obj;
            case 2:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 3:
                return (SuggestedEditsCardsFragment) obj;
            case 4:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 5:
                return (SuggestedEditsCardsItemFragment) obj;
            case 6:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 7:
                return (SuggestedEditsImageRecsFragment) obj;
            case 8:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 9:
                return (SuggestedEditsImageTagsFragment) obj;
            case 10:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 11:
                return (SuggestedEditsRecentEditsFragment) obj;
            case 12:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case IMAGE_VALUE:
                return (SuggestedEditsTasksFragment) obj;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 15:
                return (TalkTemplatesFragment) obj;
            case LAZY_VERTICAL_GRID_VALUE:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case VERTICAL_GRID_ITEM_VALUE:
                return (UserInformationDialog) obj;
            case RADIO_GROUP_VALUE:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case RADIO_BUTTON_VALUE:
                return (WatchlistExpiryDialog) obj;
            case RADIO_ROW_VALUE:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case RADIO_COLUMN_VALUE:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case SIZE_BOX_VALUE:
                return (WiktionaryDialog) obj;
            default:
                return (ViewModelStoreOwner) ((WatchlistFragment$special$$inlined$viewModels$default$1) obj).invoke();
        }
    }
}
