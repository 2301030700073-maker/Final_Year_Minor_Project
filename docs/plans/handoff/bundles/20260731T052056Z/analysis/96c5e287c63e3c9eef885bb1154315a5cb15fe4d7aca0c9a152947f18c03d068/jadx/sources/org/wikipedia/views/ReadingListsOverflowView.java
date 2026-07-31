package org.wikipedia.views;

import android.widget.FrameLayout;
import android.widget.PopupWindow;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.edithistory.EditHistoryListActivity$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ReadingListsOverflowView extends FrameLayout {
    public Object callback;
    public PopupWindow popupWindowHost;

    public void dismissPopupWindowHost() {
        PopupWindow popupWindow = this.popupWindowHost;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
        this.popupWindowHost = null;
    }

    public void onSelected() {
        SearchAndFilterActionProvider searchAndFilterActionProvider;
        EditHistoryListActivity$$ExternalSyntheticLambda6 editHistoryListActivity$$ExternalSyntheticLambda6 = (EditHistoryListActivity$$ExternalSyntheticLambda6) this.callback;
        if (editHistoryListActivity$$ExternalSyntheticLambda6 != null) {
            EditHistoryListActivity editHistoryListActivity = editHistoryListActivity$$ExternalSyntheticLambda6.f$0;
            int i = EditHistoryListActivity.$r8$clinit;
            editHistoryListActivity.setupAdapters();
            editHistoryListActivity.editHistoryListAdapter.refresh();
            editHistoryListActivity.editHistorySearchBarAdapter.notifyItemChanged(0);
            if (editHistoryListActivity.actionMode != null && (searchAndFilterActionProvider = (SearchAndFilterActionProvider) editHistoryListActivity.searchActionModeCallback.searchActionProvider) != null) {
                searchAndFilterActionProvider.updateFilterIconAndText();
            }
        }
        PopupWindow popupWindow = this.popupWindowHost;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }
}
