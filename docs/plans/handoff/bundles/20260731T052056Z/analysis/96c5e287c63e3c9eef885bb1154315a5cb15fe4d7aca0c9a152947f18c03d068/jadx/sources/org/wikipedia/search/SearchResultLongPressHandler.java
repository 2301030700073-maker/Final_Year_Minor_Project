package org.wikipedia.search;

import android.location.Location;
import android.os.Build;
import android.view.Window;
import androidx.appcompat.widget.SearchView;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.paging.HintHandler;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.wikipedia.Constants;
import org.wikipedia.databinding.FragmentNewsBinding;
import org.wikipedia.dataclient.Service;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.readinglist.LongPressMenu;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.views.CabSearchView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SearchResultLongPressHandler implements SearchView.OnQueryTextListener, LongPressMenu.Callback {
    public final SearchFragment callback;

    public SearchResultLongPressHandler(SearchFragment searchFragment, int i) {
        this.callback = searchFragment;
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onAddRequest(HistoryEntry historyEntry, boolean z) {
        historyEntry.getClass();
        SearchFragment searchFragment = this.callback;
        if (searchFragment != null) {
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListBehaviorsUtil.addToDefaultList(searchFragment.requireActivity(), historyEntry.getTitle(), z, Constants.InvokeSource.SEARCH, null);
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onMoveRequest(ReadingListPage readingListPage, HistoryEntry historyEntry) {
        historyEntry.getClass();
        SearchFragment searchFragment = this.callback;
        if (searchFragment != null) {
            readingListPage.getClass();
            long j = readingListPage.listId;
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListBehaviorsUtil.moveToList(searchFragment.requireActivity(), j, historyEntry.getTitle(), Constants.InvokeSource.SEARCH, true, null);
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenInNewTab(HistoryEntry historyEntry) {
        historyEntry.getClass();
        SearchFragment searchFragment = this.callback;
        if (searchFragment != null) {
            searchFragment.navigateToTitle(historyEntry.getTitle(), true, null);
        }
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public /* bridge */ void onOpenInPlaces(HistoryEntry historyEntry, Location location) {
        Service.CC.$default$onOpenInPlaces(historyEntry, location);
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onOpenLink(HistoryEntry historyEntry) {
        historyEntry.getClass();
        SearchFragment searchFragment = this.callback;
        if (searchFragment != null) {
            searchFragment.navigateToTitle(historyEntry.getTitle(), false, null);
        }
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public void onQueryTextChange(String str) {
        str.getClass();
        SearchFragment searchFragment = this.callback;
        FragmentNewsBinding fragmentNewsBinding = searchFragment._binding;
        fragmentNewsBinding.getClass();
        ((CabSearchView) fragmentNewsBinding.appBarLayout).setCloseButtonVisibility(str);
        String obj = StringsKt.trim(str).toString();
        SearchResultsFragment searchResultsFragment = searchFragment.searchResultsFragment;
        if (searchResultsFragment != null) {
            searchFragment.startSearch(obj, false, searchResultsFragment.getShowHybridSearch());
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
            throw null;
        }
    }

    @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
    public boolean onQueryTextSubmit(String str) {
        str.getClass();
        SearchFragment searchFragment = this.callback;
        Window window = searchFragment.requireActivity().getWindow();
        window.getClass();
        HintHandler hintHandler = new HintHandler(window.getDecorView());
        int i = Build.VERSION.SDK_INT;
        (i >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
        if (!new HybridSearchAbCTest().isHybridSearchEnabled(searchFragment.searchLanguageCode)) {
            return true;
        }
        SearchResultsFragment searchResultsFragment = searchFragment.searchResultsFragment;
        if (searchResultsFragment == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsFragment");
            throw null;
        }
        searchResultsFragment.setShowHybridSearch(true);
        searchFragment.startSearch(str, true, false);
        return true;
    }

    public SearchResultLongPressHandler(SearchFragment searchFragment) {
        this.callback = searchFragment;
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onRemoveRequest() {
    }

    @Override // org.wikipedia.readinglist.LongPressMenu.Callback
    public void onShareRequest() {
    }
}
