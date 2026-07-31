package org.wikipedia.donate;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.wikipedia.commons.ImagePreviewDialog;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.feed.news.NewsFragment;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.feed.topread.TopReadFragment;
import org.wikipedia.gallery.GalleryItemFragment;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment;
import org.wikipedia.search.SearchResultsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsFragment;
import org.wikipedia.suggestededits.SuggestedEditsCardsItemFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.suggestededits.SuggestedEditsTasksFragment;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.usercontrib.UserInformationDialog;
import org.wikipedia.watchlist.WatchlistExpiryDialog;
import org.wikipedia.watchlist.WatchlistFragment;
import org.wikipedia.wiktionary.WiktionaryDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DonateDialog$special$$inlined$viewModels$default$5 extends Lambda implements Function0 {
    public final /* synthetic */ Lazy $owner$delegate;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Fragment $this_viewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DonateDialog$special$$inlined$viewModels$default$5(Fragment fragment, Lazy lazy, int i) {
        super(0);
        this.$r8$classId = i;
        this.$this_viewModels = fragment;
        this.$owner$delegate = lazy;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory;
        ViewModelProvider$Factory defaultViewModelProviderFactory;
        ViewModelProvider$Factory defaultViewModelProviderFactory2;
        ViewModelProvider$Factory defaultViewModelProviderFactory3;
        ViewModelProvider$Factory defaultViewModelProviderFactory4;
        ViewModelProvider$Factory defaultViewModelProviderFactory5;
        ViewModelProvider$Factory defaultViewModelProviderFactory6;
        ViewModelProvider$Factory defaultViewModelProviderFactory7;
        ViewModelProvider$Factory defaultViewModelProviderFactory8;
        ViewModelProvider$Factory defaultViewModelProviderFactory9;
        ViewModelProvider$Factory defaultViewModelProviderFactory10;
        ViewModelProvider$Factory defaultViewModelProviderFactory11;
        ViewModelProvider$Factory defaultViewModelProviderFactory12;
        ViewModelProvider$Factory defaultViewModelProviderFactory13;
        ViewModelProvider$Factory defaultViewModelProviderFactory14;
        ViewModelProvider$Factory defaultViewModelProviderFactory15;
        ViewModelProvider$Factory defaultViewModelProviderFactory16;
        ViewModelProvider$Factory defaultViewModelProviderFactory17;
        ViewModelProvider$Factory defaultViewModelProviderFactory18;
        ViewModelProvider$Factory defaultViewModelProviderFactory19;
        ViewModelProvider$Factory defaultViewModelProviderFactory20;
        ViewModelProvider$Factory defaultViewModelProviderFactory21;
        ViewModelProvider$Factory defaultViewModelProviderFactory22;
        ViewModelProvider$Factory defaultViewModelProviderFactory23;
        ViewModelProvider$Factory defaultViewModelProviderFactory24;
        ViewModelProvider$Factory defaultViewModelProviderFactory25;
        ViewModelProvider$Factory defaultViewModelProviderFactory26;
        ViewModelProvider$Factory defaultViewModelProviderFactory27;
        int i = this.$r8$classId;
        Fragment fragment = this.$this_viewModels;
        Lazy lazy = this.$owner$delegate;
        switch (i) {
            case 0:
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((DonateDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            case 1:
                ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory2 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((ImagePreviewDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory2;
            case 2:
                ViewModelStoreOwner viewModelStoreOwner3 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner3 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner3 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory3 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((ArticleEditDetailsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory3;
            case 3:
                ViewModelStoreOwner viewModelStoreOwner4 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner4 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner4 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory4 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((NewsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory4;
            case 4:
                ViewModelStoreOwner viewModelStoreOwner5 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner5 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner5 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory5 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((OnThisDayFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory5;
            case 5:
                ViewModelStoreOwner viewModelStoreOwner6 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner6 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner6 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory6 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((TopReadFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory6;
            case 6:
                ViewModelStoreOwner viewModelStoreOwner7 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner7 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner7 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory7 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((GalleryItemFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory7;
            case 7:
                ViewModelStoreOwner viewModelStoreOwner8 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner8 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner8 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory8 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((GamesHubFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory8;
            case 8:
                ViewModelStoreOwner viewModelStoreOwner9 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner9 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner9 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory9 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((HistoryFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory9;
            case 9:
                ViewModelStoreOwner viewModelStoreOwner10 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner10 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner10 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory10 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((CustomizeToolbarFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory10;
            case 10:
                ViewModelStoreOwner viewModelStoreOwner11 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner11 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner11 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory11 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((LinkPreviewDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory11;
            case 11:
                ViewModelStoreOwner viewModelStoreOwner12 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner12 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner12 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory12 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((PlacesFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory12;
            case 12:
                ViewModelStoreOwner viewModelStoreOwner13 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner13 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner13 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory13 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((ReadingListFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory13;
            case IMAGE_VALUE:
                ViewModelStoreOwner viewModelStoreOwner14 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner14 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner14 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory14 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((RecommendedReadingListInterestsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory14;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                ViewModelStoreOwner viewModelStoreOwner15 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner15 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner15 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory15 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((RecommendedReadingListSourceFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory15;
            case 15:
                ViewModelStoreOwner viewModelStoreOwner16 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner16 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner16 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory16 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SearchResultsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory16;
            case LAZY_VERTICAL_GRID_VALUE:
                ViewModelStoreOwner viewModelStoreOwner17 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner17 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner17 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory17 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsCardsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory17;
            case VERTICAL_GRID_ITEM_VALUE:
                ViewModelStoreOwner viewModelStoreOwner18 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner18 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner18 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory18 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsCardsItemFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory18;
            case RADIO_GROUP_VALUE:
                ViewModelStoreOwner viewModelStoreOwner19 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner19 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner19 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory19 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsImageRecsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory19;
            case RADIO_BUTTON_VALUE:
                ViewModelStoreOwner viewModelStoreOwner20 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner20 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner20 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory20 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsImageTagsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory20;
            case RADIO_ROW_VALUE:
                ViewModelStoreOwner viewModelStoreOwner21 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner21 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner21 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory21 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsRecentEditsFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory21;
            case RADIO_COLUMN_VALUE:
                ViewModelStoreOwner viewModelStoreOwner22 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner22 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner22 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory22 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((SuggestedEditsTasksFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory22;
            case SIZE_BOX_VALUE:
                ViewModelStoreOwner viewModelStoreOwner23 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner23 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner23 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory23 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((TalkTemplatesFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory23;
            case 23:
                ViewModelStoreOwner viewModelStoreOwner24 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner24 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner24 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory24 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((UserInformationDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory24;
            case 24:
                ViewModelStoreOwner viewModelStoreOwner25 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner25 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner25 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory25 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((WatchlistExpiryDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory25;
            case 25:
                ViewModelStoreOwner viewModelStoreOwner26 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner26 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner26 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory26 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((WatchlistFragment) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory26;
            default:
                ViewModelStoreOwner viewModelStoreOwner27 = (ViewModelStoreOwner) lazy.getValue();
                hasDefaultViewModelProviderFactory = viewModelStoreOwner27 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner27 : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory27 = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((WiktionaryDialog) fragment).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory27;
        }
    }
}
