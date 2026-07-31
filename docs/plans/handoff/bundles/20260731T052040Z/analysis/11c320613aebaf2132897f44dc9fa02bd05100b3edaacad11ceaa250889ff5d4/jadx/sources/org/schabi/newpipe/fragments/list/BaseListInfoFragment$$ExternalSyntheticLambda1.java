package org.schabi.newpipe.fragments.list;

import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.views.NewPipeRecyclerView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseListInfoFragment$$ExternalSyntheticLambda1 implements Consumer, Action {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BaseListInfoFragment f$0;

    public /* synthetic */ BaseListInfoFragment$$ExternalSyntheticLambda1(BaseListInfoFragment baseListInfoFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = baseListInfoFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        BaseListInfoFragment baseListInfoFragment = this.f$0;
        switch (i) {
            case 0:
                baseListInfoFragment.showError(new ErrorInfo((Throwable) obj, baseListInfoFragment.errorUserAction, "Start loading: " + baseListInfoFragment.url, Integer.valueOf(baseListInfoFragment.serviceId), baseListInfoFragment.url));
                break;
            case 1:
                baseListInfoFragment.dynamicallyShowErrorPanelOrSnackbar(new ErrorInfo((Throwable) obj, baseListInfoFragment.errorUserAction, "Loading more items: " + baseListInfoFragment.url, Integer.valueOf(baseListInfoFragment.serviceId), baseListInfoFragment.url));
                break;
            case 2:
                ListInfo listInfo = (ListInfo) obj;
                int i2 = BaseListInfoFragment.$r8$clinit;
                baseListInfoFragment.isLoading.set(false);
                baseListInfoFragment.currentInfo = listInfo;
                baseListInfoFragment.currentNextPage = listInfo.getNextPage();
                baseListInfoFragment.handleResult(listInfo);
                break;
            default:
                int i3 = BaseListInfoFragment.$r8$clinit;
                baseListInfoFragment.isLoading.set(false);
                baseListInfoFragment.handleNextItems((ListExtractor.InfoItemsPage) obj);
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public void run() {
        int i = BaseListInfoFragment.$r8$clinit;
        RecyclerView recyclerView = this.f$0.itemsList;
        if (recyclerView instanceof NewPipeRecyclerView) {
            ((NewPipeRecyclerView) recyclerView).setFocusScrollAllowed(true);
        }
    }
}
