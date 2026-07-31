package org.wikipedia.views;

import android.view.View;
import androidx.appcompat.app.AlertDialog;
import androidx.fragment.app.FragmentManagerImpl;
import kotlin.Pair;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.UStringsKt;
import okio.Okio__OkioKt;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.views.PageItemView;
import org.wikipedia.watchlist.WatchlistExpiryDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class PageItemView$$ExternalSyntheticLambda3 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ PageItemView$$ExternalSyntheticLambda3(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 0:
                ReadingList readingList = (ReadingList) obj;
                PageItemView.Callback callback = ((PageItemView) obj2).callback;
                if (callback != null) {
                    callback.onListChipClick(readingList);
                    break;
                }
                break;
            case 1:
                ((WikiGames$$ExternalSyntheticLambda0) obj2).invoke();
                AlertDialog alertDialog = (AlertDialog) ((Ref$ObjectRef) obj).element;
                if (alertDialog != null) {
                    alertDialog.dismiss();
                    break;
                }
                break;
            default:
                PageTitle pageTitle = (PageTitle) obj;
                pageTitle.getClass();
                WatchlistExpiryDialog watchlistExpiryDialog = new WatchlistExpiryDialog();
                watchlistExpiryDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitle", pageTitle)));
                Okio__OkioKt.show((FragmentManagerImpl) obj2, watchlistExpiryDialog);
                break;
        }
    }
}
