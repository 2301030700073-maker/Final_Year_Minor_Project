package org.wikipedia.views;

import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.Intrinsics;
import org.maplibre.android.maps.MapChangeReceiver;
import org.wikipedia.bridge.JavaScriptActionHandler$ImageHitInfo;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.feed.onthisday.OnThisDayPagesViewHolder;
import org.wikipedia.feed.view.ListItemView;
import org.wikipedia.gallery.GalleryActivity;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.media.AvPlayer;
import org.wikipedia.page.edithistory.EditHistoryItemView;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.ReadingListMode;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.settings.languages.WikipediaLanguagesItemView;
import org.wikipedia.suggestededits.SuggestedEditsImageRecsFragment;
import org.wikipedia.suggestededits.SuggestedEditsImageTagsFragment;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.PageItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageItemView$$ExternalSyntheticLambda1 implements View.OnLongClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ PageItemView$$ExternalSyntheticLambda1(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 0:
                PageItemView pageItemView = (PageItemView) obj;
                PageItemView.Callback callback = pageItemView.callback;
                if (callback != null) {
                    callback.onLongClick(pageItemView.item);
                }
                return false;
            case 1:
                OnThisDayPagesViewHolder onThisDayPagesViewHolder = (OnThisDayPagesViewHolder) obj;
                if (view != null) {
                    PageSummary pageSummary = onThisDayPagesViewHolder.selectedPage;
                    pageSummary.getClass();
                    new LongPressMenu(view, 0, null, new AvPlayer(6, onThisDayPagesViewHolder), 30).show(new HistoryEntry(24, pageSummary.getPageTitle(onThisDayPagesViewHolder.wiki)));
                }
                return true;
            case 2:
                ListItemView listItemView = (ListItemView) obj;
                view.getClass();
                new LongPressMenu(view, 0, null, new AvPlayer(8, listItemView), 30).show(listItemView.historyEntry);
                return false;
            case 3:
                GalleryActivity galleryActivity = (GalleryActivity) obj;
                JavaScriptActionHandler$ImageHitInfo javaScriptActionHandler$ImageHitInfo = GalleryActivity.TRANSITION_INFO;
                ActivityGalleryBinding activityGalleryBinding = galleryActivity.binding;
                if (activityGalleryBinding == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    throw null;
                }
                Object tag = ((ImageView) activityGalleryBinding.licenseIcon).getTag();
                String str = tag instanceof String ? (String) tag : null;
                if (str != null && str.length() != 0) {
                    Uri parse = Uri.parse(UriUtil.resolveProtocolRelativeUrl(str));
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(galleryActivity, parse);
                }
                return true;
            case 4:
                EditHistoryItemView.Listener listener = ((EditHistoryItemView) obj).listener;
                if (listener != null) {
                    EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder = (EditHistoryListActivity.EditHistoryListItemHolder) listener;
                    EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                    int i2 = EditHistoryListActivity.$r8$clinit;
                    if (!editHistoryListActivity.getViewModel().comparing) {
                        EditHistoryListViewModel viewModel = editHistoryListActivity.getViewModel();
                        boolean z = viewModel.comparing;
                        viewModel.comparing = !z;
                        if (z) {
                            viewModel.selectedRevisionFrom = null;
                            viewModel.selectedRevisionTo = null;
                        }
                        editHistoryListActivity.updateCompareState();
                    }
                    editHistoryListItemHolder.toggleSelectState();
                }
                return true;
            case 5:
                ReadingListItemView readingListItemView = (ReadingListItemView) obj;
                ReadingList readingList = readingListItemView.readingList;
                if (readingList != null) {
                    ReadingListMode readingListMode = ReadingListMode.DEFAULT;
                    view.getClass();
                    readingListItemView.showOverflowMenu(true, readingList, readingListMode, view, 8388613);
                }
                return false;
            case 6:
                WikipediaLanguagesItemView wikipediaLanguagesItemView = (WikipediaLanguagesItemView) obj;
                WikipediaLanguagesItemView.Callback callback2 = wikipediaLanguagesItemView.callback;
                if (callback2 != null) {
                    int i3 = wikipediaLanguagesItemView.position;
                    WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) callback2;
                    if (wikipediaLanguagesFragment.actionMode == null) {
                        wikipediaLanguagesFragment.requireActivity().startSupportActionMode(wikipediaLanguagesFragment.multiSelectCallback);
                        WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = wikipediaLanguagesFragment.adapter;
                        if (wikipediaLanguageItemAdapter == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("adapter");
                            throw null;
                        }
                        wikipediaLanguageItemAdapter.checkboxEnabled = true;
                        wikipediaLanguageItemAdapter.notifyDataSetChanged();
                        wikipediaLanguagesFragment.requireActivity().invalidateOptionsMenu();
                    }
                    wikipediaLanguagesFragment.toggleSelectedLanguage((String) wikipediaLanguagesFragment.wikipediaLanguages.get(i3));
                    WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter2 = wikipediaLanguagesFragment.adapter;
                    if (wikipediaLanguageItemAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    wikipediaLanguageItemAdapter2.notifyDataSetChanged();
                }
                return true;
            case 7:
                SuggestedEditsImageRecsFragment suggestedEditsImageRecsFragment = (SuggestedEditsImageRecsFragment) obj;
                if (ImageZoomHelper.isZooming) {
                    MapChangeReceiver mapChangeReceiver = suggestedEditsImageRecsFragment._binding;
                    mapChangeReceiver.getClass();
                    ((WikiCardView) mapChangeReceiver.onDidFinishLoadingStyleListenerList).dispatchTouchEvent(MotionEvent.obtain(0L, 0L, 3, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 0));
                }
                return false;
            default:
                ((SuggestedEditsImageTagsFragment) obj).wasCaptionLongClicked = true;
                return false;
        }
    }
}
