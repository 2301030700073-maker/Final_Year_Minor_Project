package org.schabi.newpipe.fragments.list.search;

import android.content.Intent;
import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.recyclerview.widget.RecyclerView;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Notification;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.BiConsumer;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSkip;
import io.reactivex.rxjava3.internal.operators.observable.ObservableZip;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.util.NotificationLite;
import java.io.InterruptedIOException;
import java.util.Arrays;
import java.util.List;
import kotlin.text.CharsKt;
import okhttp3.ConnectionPool;
import org.schabi.newpipe.R;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.search.SearchInfo;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.info_list.InfoListAdapter;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda3;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchFragment$$ExternalSyntheticLambda1 implements Function, Consumer, BiConsumer {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ SearchFragment f$0;

    public /* synthetic */ SearchFragment$$ExternalSyntheticLambda1(SearchFragment searchFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = searchFragment;
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public void accept(Object obj) {
        int i = this.$r8$classId;
        UserAction userAction = UserAction.GET_SUGGESTIONS;
        UserAction userAction2 = UserAction.DELETE_FROM_HISTORY;
        final SearchFragment searchFragment = this.f$0;
        switch (i) {
            case 0:
                SearchInfo searchInfo = (SearchInfo) obj;
                List errors = searchInfo.getErrors();
                if (!errors.isEmpty() && (errors.size() != 1 || !(errors.get(0) instanceof SearchExtractor.NothingFoundException))) {
                    searchFragment.showSnackBarError(new ErrorInfo(searchInfo.getErrors(), UserAction.SEARCHED, searchFragment.searchString, Integer.valueOf(searchFragment.serviceId), searchFragment.getOpenInBrowserUrlForErrors()));
                }
                String searchSuggestion = searchInfo.getSearchSuggestion();
                searchFragment.searchSuggestion = searchSuggestion;
                if (searchSuggestion != null) {
                    searchFragment.searchSuggestion = searchSuggestion.trim();
                }
                searchFragment.isCorrectedSearch = searchInfo.isCorrectedSearch();
                searchFragment.metaInfo = (MetaInfo[]) searchInfo.getMetaInfo().toArray(new MetaInfo[0]);
                List metaInfo = searchInfo.getMetaInfo();
                DrawerHeaderBinding drawerHeaderBinding = searchFragment.searchBinding;
                ExtractorHelper.showMetaInfoInTextView(metaInfo, (NewPipeTextView) drawerHeaderBinding.drawerHeaderServiceView, (View) drawerHeaderBinding.drawerArrow, searchFragment.disposables);
                searchFragment.handleSearchSuggestion();
                searchFragment.lastSearchedString = searchFragment.searchString;
                searchFragment.nextPage = searchInfo.getNextPage();
                if (searchFragment.infoListAdapter.infoItemList.isEmpty()) {
                    boolean isEmpty = searchInfo.getRelatedItems().isEmpty();
                    InfoListAdapter infoListAdapter = searchFragment.infoListAdapter;
                    if (isEmpty) {
                        infoListAdapter.clearStreamItemList();
                        searchFragment.showEmptyState();
                        break;
                    } else {
                        infoListAdapter.addInfoItemList(searchInfo.getRelatedItems());
                    }
                }
                searchFragment.hideLoading();
                break;
            case 1:
            case 5:
            case 11:
            default:
                int i2 = SearchFragment.$r8$clinit;
                searchFragment.showSnackBarError(new ErrorInfo((Throwable) obj, userAction2, "Deleting item failed"));
                break;
            case 2:
                Notification notification = (Notification) obj;
                int i3 = SearchFragment.$r8$clinit;
                Object obj2 = notification.value;
                Object obj3 = notification.value;
                if (obj2 != null && !(obj2 instanceof NotificationLite.ErrorNotification)) {
                    if (notification.getValue() != null) {
                        searchFragment.suggestionListAdapter.submitList((List) notification.getValue(), new Runnable() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda21
                            @Override // java.lang.Runnable
                            public final void run() {
                                DrawerHeaderBinding drawerHeaderBinding2 = SearchFragment.this.searchBinding;
                                if (drawerHeaderBinding2 != null) {
                                    ((RecyclerView) drawerHeaderBinding2.drawerHeaderServiceIcon).scrollToPosition(0);
                                }
                            }
                        });
                        if (searchFragment.suggestionsPanelVisible && searchFragment.errorPanelHelper.errorPanelRoot.getVisibility() == 0) {
                            searchFragment.hideLoading();
                            break;
                        }
                    }
                } else if (obj2 instanceof NotificationLite.ErrorNotification) {
                    if ((obj2 instanceof NotificationLite.ErrorNotification ? NotificationLite.getError(obj2) : null) != null) {
                        Throwable error = obj3 instanceof NotificationLite.ErrorNotification ? NotificationLite.getError(obj3) : null;
                        error.getClass();
                        if (!CharsKt.hasCause(error, false, (Class[]) Arrays.copyOf(new Class[]{InterruptedIOException.class, InterruptedException.class}, 2))) {
                            searchFragment.showSnackBarError(new ErrorInfo(obj3 instanceof NotificationLite.ErrorNotification ? NotificationLite.getError(obj3) : null, userAction, searchFragment.searchString, Integer.valueOf(searchFragment.serviceId)));
                            break;
                        }
                    }
                }
                break;
            case 3:
                int i4 = SearchFragment.$r8$clinit;
                searchFragment.showSnackBarError(new ErrorInfo((Throwable) obj, userAction, searchFragment.searchString, Integer.valueOf(searchFragment.serviceId)));
                break;
            case 4:
                ListExtractor.InfoItemsPage infoItemsPage = (ListExtractor.InfoItemsPage) obj;
                searchFragment.showListFooter(false);
                searchFragment.infoListAdapter.addInfoItemList(infoItemsPage.itemsList);
                if (!infoItemsPage.errors.isEmpty()) {
                    Page page = searchFragment.nextPage;
                    List list = infoItemsPage.errors;
                    String str = searchFragment.searchString;
                    UserAction userAction3 = UserAction.SEARCHED;
                    if (page == null) {
                        searchFragment.showSnackBarError(new ErrorInfo(list, userAction3, Modifier.CC.m("\"", str, "\" → nextPage == null"), Integer.valueOf(searchFragment.serviceId), searchFragment.getOpenInBrowserUrlForErrors()));
                    } else {
                        StringBuilder m180m = Modifier.CC.m180m("\"", str, "\" → pageUrl: ");
                        m180m.append(searchFragment.nextPage.getUrl());
                        m180m.append(", pageIds: ");
                        m180m.append(searchFragment.nextPage.getIds());
                        m180m.append(", pageCookies: ");
                        m180m.append(searchFragment.nextPage.getCookies());
                        searchFragment.showSnackBarError(new ErrorInfo(list, userAction3, m180m.toString(), Integer.valueOf(searchFragment.serviceId), searchFragment.getOpenInBrowserUrlForErrors()));
                    }
                }
                searchFragment.nextPage = infoItemsPage.nextPage;
                searchFragment.isLoading.set(false);
                break;
            case 6:
                int i5 = SearchFragment.$r8$clinit;
                searchFragment.getFM().popBackStackImmediate();
                searchFragment.activity.startActivity((Intent) obj);
                break;
            case 7:
                int i6 = SearchFragment.$r8$clinit;
                searchFragment.showTextError(searchFragment.getString(R.string.unsupported_url));
                break;
            case 8:
                searchFragment.suggestionPublisher.onNext(searchFragment.getSearchEditString());
                break;
            case 9:
                int i7 = SearchFragment.$r8$clinit;
                searchFragment.showSnackBarError(new ErrorInfo((Throwable) obj, userAction2, "Deleting item failed"));
                break;
            case 10:
                SearchFragment.m870$r8$lambda$_nKY_qzNUEIiNoFyBa7FXIRdwc(searchFragment, (Throwable) obj);
                break;
            case 12:
                searchFragment.suggestionPublisher.onNext(searchFragment.getSearchEditString());
                break;
        }
    }

    @Override // io.reactivex.rxjava3.functions.Function
    public Object apply(Object obj) {
        String str = (String) obj;
        SearchFragment searchFragment = this.f$0;
        int i = 0;
        int i2 = 1;
        boolean z = searchFragment.showRemoteSuggestions && str.length() >= 1;
        boolean z2 = searchFragment.showLocalSuggestions;
        int i3 = 5;
        int i4 = 3;
        if (!z2 || !z) {
            if (z2) {
                return new ObservableSkip(searchFragment.getLocalSuggestionsObservable(25, str), 2);
            }
            if (!z) {
                return new ObservableSkip(new ViewClickObservable(new SingleAmb(new SearchFragment$$ExternalSyntheticLambda23(0), i4), i3), 2);
            }
            int i5 = searchFragment.serviceId;
            ExtractorHelper.checkServiceId(i5);
            return new ObservableSkip(new ObservableMap(new ViewClickObservable(new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i5, i2, str), i4), i3), new Utils$$ExternalSyntheticBUOutline0(24), i), 2);
        }
        ObservableMap localSuggestionsObservable = searchFragment.getLocalSuggestionsObservable(3, str);
        int i6 = searchFragment.serviceId;
        ExtractorHelper.checkServiceId(i6);
        ObservableMap observableMap = new ObservableMap(new ViewClickObservable(new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i6, i2, str), i4), i3), new Utils$$ExternalSyntheticBUOutline0(24), i);
        ConnectionPool connectionPool = new ConnectionPool(new Utils$$ExternalSyntheticBUOutline0(22), 15);
        int i7 = Flowable.BUFFER_SIZE;
        Observable[] observableArr = {localSuggestionsObservable, observableMap};
        Functions.verifyPositive(i7, "bufferSize");
        return new ObservableSkip(new ObservableZip(observableArr, connectionPool, i7), 2);
    }

    @Override // io.reactivex.rxjava3.functions.BiConsumer
    public void accept(Object obj, Throwable th) {
        int i = this.$r8$classId;
        SearchFragment searchFragment = this.f$0;
        switch (i) {
            case 5:
                int i2 = SearchFragment.$r8$clinit;
                searchFragment.isLoading.set(false);
                break;
            default:
                int i3 = SearchFragment.$r8$clinit;
                searchFragment.isLoading.set(false);
                break;
        }
    }
}
