package org.schabi.newpipe.fragments.list;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.compose.ui.node.Owner;
import androidx.recyclerview.widget.RecyclerView;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleDoFinally$DoFinallyObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.util.Collection;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Queue;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.services.bandcamp.BandcampService;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda48;
import org.schabi.newpipe.views.NewPipeRecyclerView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class BaseListInfoFragment<I extends InfoItem, L extends ListInfo> extends BaseListFragment<L, ListExtractor.InfoItemsPage> {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ListInfo currentInfo;
    public Page currentNextPage;
    public ConsumerSingleObserver currentWorker;
    public final UserAction errorUserAction;
    protected String name;
    protected int serviceId = -1;
    protected String url;

    public BaseListInfoFragment(UserAction userAction) {
        this.errorUserAction = userAction;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
        ListInfo listInfo = this.currentInfo;
        if (listInfo == null) {
            startLoading(false);
        } else {
            handleResult(listInfo);
        }
    }

    public final void dynamicallyShowErrorPanelOrSnackbar(ErrorInfo errorInfo) {
        if (this.infoListAdapter.getItemCount() == 0) {
            showError(errorInfo);
        } else {
            this.isLoading.set(false);
            showSnackBarError(errorInfo);
        }
    }

    public void handleNextItems(ListExtractor.InfoItemsPage infoItemsPage) {
        this.isLoading.set(false);
        this.currentNextPage = infoItemsPage.nextPage;
        this.infoListAdapter.addInfoItemList(infoItemsPage.itemsList);
        showListFooter(Page.isValid(this.currentNextPage));
        if (infoItemsPage.errors.isEmpty()) {
            return;
        }
        dynamicallyShowErrorPanelOrSnackbar(new ErrorInfo(infoItemsPage.errors, this.errorUserAction, "Get next items of: " + this.url, Integer.valueOf(this.serviceId), this.url));
    }

    public void handleResult(ListInfo listInfo) {
        hideLoading();
        String name = listInfo.getName();
        this.name = name;
        setTitle(name);
        if (this.infoListAdapter.infoItemList.isEmpty()) {
            if (!listInfo.getRelatedItems().isEmpty()) {
                this.infoListAdapter.addInfoItemList(listInfo.getRelatedItems());
                showListFooter(Page.isValid(this.currentNextPage));
            } else if (Page.isValid(this.currentNextPage)) {
                loadMoreItems();
            } else {
                this.infoListAdapter.clearStreamItemList();
                showEmptyState();
            }
        }
        if (listInfo.getErrors().isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList(listInfo.getErrors());
        Collection.EL.removeIf(arrayList, new Player$$ExternalSyntheticLambda48(3));
        if (arrayList.isEmpty()) {
            return;
        }
        dynamicallyShowErrorPanelOrSnackbar(new ErrorInfo(listInfo.getErrors(), this.errorUserAction, "Start loading: " + this.url, Integer.valueOf(this.serviceId), this.url));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final boolean hasMoreItems() {
        return Page.isValid(this.currentNextPage);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        setTitle(this.name);
        showListFooter(Page.isValid(this.currentNextPage));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final void loadMoreItems() {
        int i = 1;
        this.isLoading.set(true);
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        RecyclerView recyclerView = this.itemsList;
        if (recyclerView instanceof NewPipeRecyclerView) {
            ((NewPipeRecyclerView) recyclerView).setFocusScrollAllowed(false);
        }
        SingleObserveOn subscribeOn = loadMoreItemsLogic().subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        BaseListInfoFragment$$ExternalSyntheticLambda1 baseListInfoFragment$$ExternalSyntheticLambda1 = new BaseListInfoFragment$$ExternalSyntheticLambda1(this, 3);
        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new BaseListInfoFragment$$ExternalSyntheticLambda1(this, 4), new BaseListInfoFragment$$ExternalSyntheticLambda1(this, i));
        try {
            try {
                subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(new SingleDoFinally$DoFinallyObserver(consumerSingleObserver2, baseListInfoFragment$$ExternalSyntheticLambda1), mainThread));
                this.currentWorker = consumerSingleObserver2;
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                AppKt.throwIfFatal(th);
                NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
                nullPointerException.initCause(th);
                throw nullPointerException;
            }
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th2) {
            throw Owner.CC.m(th2, "subscribeActual failed", th2);
        }
    }

    public abstract SingleAmb loadMoreItemsLogic();

    public abstract Single loadResult(boolean z);

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
            this.currentWorker = null;
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.wasLoading.getAndSet(false)) {
            if (!Page.isValid(this.currentNextPage) || this.infoListAdapter.infoItemList.isEmpty()) {
                doInitialLoadLogic();
            } else {
                loadMoreItems();
            }
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public void readFrom(Queue queue) {
        super.readFrom(queue);
        this.currentInfo = (ListInfo) queue.poll();
        this.currentNextPage = (Page) queue.poll();
    }

    public final void setInitialData(String str, int i, String str2) {
        this.serviceId = i;
        this.url = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        this.name = str2;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public void showEmptyState() {
        if (this.emptyStateView != null) {
            StreamingService service = this.currentInfo.getService();
            BandcampService bandcampService = ServiceList.SoundCloud;
            TextView textView = this.emptyStateMessageView;
            if (service == bandcampService) {
                if (textView != null) {
                    textView.setText(R.string.no_streams);
                }
            } else if (textView != null) {
                textView.setText(R.string.no_videos);
            }
        }
        super.showEmptyState();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        super.startLoading(z);
        int i = 0;
        showListFooter(false);
        this.infoListAdapter.clearStreamItemList();
        this.currentInfo = null;
        ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        SingleObserveOn subscribeOn = loadResult(z).subscribeOn(Schedulers.IO);
        Scheduler mainThread = AndroidSchedulers.mainThread();
        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new BaseListInfoFragment$$ExternalSyntheticLambda1(this, 2), new BaseListInfoFragment$$ExternalSyntheticLambda1(this, i));
        try {
            subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver2, mainThread));
            this.currentWorker = consumerSingleObserver2;
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            throw Owner.CC.m(th, "subscribeActual failed", th);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public void writeTo(LinkedList linkedList) {
        super.writeTo(linkedList);
        linkedList.add(this.currentInfo);
        linkedList.add(this.currentNextPage);
    }
}
