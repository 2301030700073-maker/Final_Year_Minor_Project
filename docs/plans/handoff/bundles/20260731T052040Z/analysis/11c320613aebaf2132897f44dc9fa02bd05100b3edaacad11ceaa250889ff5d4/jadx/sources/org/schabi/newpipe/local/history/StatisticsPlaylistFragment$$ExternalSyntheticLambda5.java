package org.schabi.newpipe.local.history;

import android.view.View;
import android.widget.Toast;
import com.google.android.material.snackbar.Snackbar;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class StatisticsPlaylistFragment$$ExternalSyntheticLambda5 implements Action, Consumer {
    public final /* synthetic */ StatisticsPlaylistFragment f$0;

    public /* synthetic */ StatisticsPlaylistFragment$$ExternalSyntheticLambda5(StatisticsPlaylistFragment statisticsPlaylistFragment) {
        this.f$0 = statisticsPlaylistFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = StatisticsPlaylistFragment.$r8$clinit;
        this.f$0.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.DELETE_FROM_HISTORY, "Deleting item"));
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        int i = StatisticsPlaylistFragment.$r8$clinit;
        StatisticsPlaylistFragment statisticsPlaylistFragment = this.f$0;
        if (statisticsPlaylistFragment.getView() == null) {
            Toast.makeText(statisticsPlaylistFragment.getContext(), R.string.one_item_deleted, 0).show();
            return;
        }
        View view = statisticsPlaylistFragment.getView();
        int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
        Snackbar.make(view, view.getResources().getText(R.string.one_item_deleted), -1).show();
    }
}
