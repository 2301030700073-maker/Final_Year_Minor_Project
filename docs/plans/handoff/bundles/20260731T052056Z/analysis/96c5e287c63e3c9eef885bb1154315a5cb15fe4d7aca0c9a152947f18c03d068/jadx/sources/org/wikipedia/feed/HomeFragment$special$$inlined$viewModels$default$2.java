package org.wikipedia.feed;

import androidx.lifecycle.ViewModelStoreOwner;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.donate.DonateDialog;
import org.wikipedia.feed.news.NewsFragment;
import org.wikipedia.feed.onthisday.OnThisDayFragment;
import org.wikipedia.feed.topread.TopReadFragment;
import org.wikipedia.gallery.GalleryItemFragment$special$$inlined$viewModels$default$1;
import org.wikipedia.games.GamesHubFragment;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.page.customize.CustomizeToolbarFragment;
import org.wikipedia.page.linkpreview.LinkPreviewDialog;
import org.wikipedia.places.PlacesFragment;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListInterestsFragment;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceFragment;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class HomeFragment$special$$inlined$viewModels$default$2 extends Lambda implements Function0 {
    public final /* synthetic */ Object $ownerProducer;
    public final /* synthetic */ int $r8$classId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ HomeFragment$special$$inlined$viewModels$default$2(int i, Object obj) {
        super(0);
        this.$r8$classId = i;
        this.$ownerProducer = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        Object obj = this.$ownerProducer;
        switch (i) {
            case 0:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 1:
                return (ViewModelStoreOwner) ((AndroidLeakFixes$Companion$onDecorViewReady$1) obj).invoke();
            case 2:
                return (ArticleEditDetailsFragment) obj;
            case 3:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 4:
                return (DonateDialog) obj;
            case 5:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 6:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case 7:
                return (NewsFragment) obj;
            case 8:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 9:
                return (OnThisDayFragment) obj;
            case 10:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 11:
                return (TopReadFragment) obj;
            case 12:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case IMAGE_VALUE:
                return (ViewModelStoreOwner) ((GalleryItemFragment$special$$inlined$viewModels$default$1) obj).invoke();
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                return (GamesHubFragment) obj;
            case 15:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case LAZY_VERTICAL_GRID_VALUE:
                return (HistoryFragment) obj;
            case VERTICAL_GRID_ITEM_VALUE:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case RADIO_GROUP_VALUE:
                return (CustomizeToolbarFragment) obj;
            case RADIO_BUTTON_VALUE:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case RADIO_ROW_VALUE:
                return (LinkPreviewDialog) obj;
            case RADIO_COLUMN_VALUE:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case SIZE_BOX_VALUE:
                return (PlacesFragment) obj;
            case 23:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 24:
                return (ReadingListFragment) obj;
            case 25:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 26:
                return (RecommendedReadingListInterestsFragment) obj;
            case 27:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
            case 28:
                return (RecommendedReadingListSourceFragment) obj;
            default:
                return (ViewModelStoreOwner) ((HomeFragment$special$$inlined$viewModels$default$2) obj).invoke();
        }
    }
}
