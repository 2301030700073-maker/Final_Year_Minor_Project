package org.wikipedia.page.edithistory;

import android.view.View;
import okio.ByteString;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class EditHistoryListActivity$$ExternalSyntheticLambda2 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ EditHistoryListActivity f$0;

    public /* synthetic */ EditHistoryListActivity$$ExternalSyntheticLambda2(EditHistoryListActivity editHistoryListActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = editHistoryListActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        EditHistoryListActivity editHistoryListActivity = this.f$0;
        switch (i) {
            case 0:
                int i2 = EditHistoryListActivity.$r8$clinit;
                EditHistoryListViewModel viewModel = editHistoryListActivity.getViewModel();
                boolean z = viewModel.comparing;
                viewModel.comparing = !z;
                if (z) {
                    viewModel.selectedRevisionFrom = null;
                    viewModel.selectedRevisionTo = null;
                }
                editHistoryListActivity.updateCompareState();
                break;
            case 1:
                int i3 = EditHistoryListActivity.$r8$clinit;
                EditHistoryListActivity editHistoryListActivity2 = this.f$0;
                if (editHistoryListActivity2.getViewModel().selectedRevisionFrom != null && editHistoryListActivity2.getViewModel().selectedRevisionTo != null) {
                    ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
                    PageTitle pageTitle = editHistoryListActivity2.getViewModel().pageTitle;
                    int i4 = editHistoryListActivity2.getViewModel().pageId;
                    MwQueryPage.Revision revision = editHistoryListActivity2.getViewModel().selectedRevisionFrom;
                    revision.getClass();
                    long j = revision.revId;
                    MwQueryPage.Revision revision2 = editHistoryListActivity2.getViewModel().selectedRevisionTo;
                    revision2.getClass();
                    editHistoryListActivity2.startActivity(ByteString.Companion.newIntent$default(companion, editHistoryListActivity2, pageTitle, i4, j, revision2.revId, null, 32));
                    break;
                }
                break;
            case 2:
                int i5 = EditHistoryListActivity.$r8$clinit;
                editHistoryListActivity.actionMode = editHistoryListActivity.startSupportActionMode(editHistoryListActivity.searchActionModeCallback);
                break;
            default:
                editHistoryListActivity.showFilterOverflowMenu();
                break;
        }
    }
}
