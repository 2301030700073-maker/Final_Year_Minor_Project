package org.schabi.newpipe.fragments.list.search;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.collection.SparseArrayCompat;
import androidx.compose.ui.node.Owner;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.transition.Transition;
import androidx.work.OperationKt;
import androidx.work.impl.Processor$$ExternalSyntheticLambda0;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.material.textfield.TextInputLayout;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeCallbackObserver;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeEmpty;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeFromCallable;
import io.reactivex.rxjava3.internal.operators.maybe.MaybeObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableDebounceTimed;
import io.reactivex.rxjava3.internal.operators.observable.ObservableEmpty;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromCallable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableJust;
import io.reactivex.rxjava3.internal.operators.observable.ObservableMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap$ScalarXMapObservable;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleDoOnEvent;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.operators.ScalarSupplier;
import io.reactivex.rxjava3.schedulers.Schedulers;
import io.reactivex.rxjava3.subjects.PublishSubject;
import j$.time.OffsetDateTime;
import j$.time.ZoneOffset;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.Callable;
import net.newpipe.app.AppKt;
import okhttp3.Cookie;
import okio.Options;
import okio.internal.ZipFilesKt$$ExternalSyntheticLambda3;
import org.jsoup.Jsoup;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.history.dao.SearchHistoryDAO_Impl;
import org.schabi.newpipe.database.history.model.SearchHistoryEntry;
import org.schabi.newpipe.databinding.DrawerHeaderBinding;
import org.schabi.newpipe.databinding.ErrorPanelBinding;
import org.schabi.newpipe.databinding.PlaylistHeaderBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ListExtractor;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.StreamingService;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.search.SearchExtractor;
import org.schabi.newpipe.extractor.search.SearchInfo;
import org.schabi.newpipe.extractor.utils.Utils;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticBUOutline0;
import org.schabi.newpipe.extractor.utils.Utils$$ExternalSyntheticLambda1;
import org.schabi.newpipe.fragments.BackPressable;
import org.schabi.newpipe.fragments.list.BaseListFragment;
import org.schabi.newpipe.ktx.AnimationType;
import org.schabi.newpipe.local.history.HistoryRecordManager$$ExternalSyntheticLambda0;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.PeertubeInstanceListFragment;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda2;
import org.schabi.newpipe.views.NewPipeTextView;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SearchFragment extends BaseListFragment<SearchInfo, ListExtractor.InfoItemsPage> implements BackPressable {
    public static final /* synthetic */ int $r8$clinit = 0;
    public PlaylistHeaderBinding historyRecordManager;
    boolean isCorrectedSearch;
    String lastSearchedString;
    MetaInfo[] metaInfo;
    public Page nextPage;
    public DrawerHeaderBinding searchBinding;
    public View searchClear;
    public ConsumerSingleObserver searchDisposable;
    public EditText searchEditText;
    String searchString;
    String searchSuggestion;
    public View searchToolbarContainer;
    public StreamingService service;
    String sortFilter;
    public LambdaObserver suggestionDisposable;
    public SuggestionListAdapter suggestionListAdapter;
    public TextInputLayout.AnonymousClass1 textWatcher;
    public final PublishSubject suggestionPublisher = new PublishSubject();
    int filterItemCheckedId = -1;
    protected int serviceId = -1;
    String[] contentFilter = new String[0];
    boolean wasSearchFocused = false;
    public final SparseArrayCompat menuItemToFilterName = new SparseArrayCompat((Object) null);
    public boolean showLocalSuggestions = true;
    public boolean showRemoteSuggestions = true;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public boolean suggestionsPanelVisible = false;

    /* renamed from: $r8$lambda$-D5gL6hX0Mo6q1vU6pdkn6B4CkA, reason: not valid java name */
    public static /* synthetic */ void m869$r8$lambda$D5gL6hX0Mo6q1vU6pdkn6B4CkA(List list, List list2) {
        Collection.EL.removeIf(list2, new SearchFragment$$ExternalSyntheticLambda25(list, 0));
        list.addAll(list2);
    }

    /* renamed from: $r8$lambda$_nKY-_qzNUEIiNoFyBa7FXIRdwc, reason: not valid java name */
    public static void m870$r8$lambda$_nKY_qzNUEIiNoFyBa7FXIRdwc(SearchFragment searchFragment, Throwable th) {
        if (th instanceof SearchExtractor.NothingFoundException) {
            searchFragment.infoListAdapter.clearStreamItemList();
            searchFragment.showEmptyState();
        } else {
            searchFragment.showError(new ErrorInfo(th, UserAction.SEARCHED, searchFragment.searchString, Integer.valueOf(searchFragment.serviceId), searchFragment.getOpenInBrowserUrlForErrors()));
        }
    }

    public static /* synthetic */ List $r8$lambda$mmPjPW93nDks_6G8XnBg7Up1Kms(List list) {
        return (List) Collection.EL.stream(list).map(new Utils$$ExternalSyntheticLambda1(29)).collect(Collectors.toList());
    }

    public static SearchFragment getInstance(int i, String str) {
        SearchFragment searchFragment = new SearchFragment();
        searchFragment.serviceId = i;
        searchFragment.searchString = str;
        searchFragment.contentFilter = new String[0];
        searchFragment.sortFilter = "";
        if (!TextUtils.isEmpty(str)) {
            searchFragment.wasLoading.set(true);
        }
        return searchFragment;
    }

    public final ObservableMap getLocalSuggestionsObservable(int i, String str) {
        Flowable createFlowable;
        PlaylistHeaderBinding playlistHeaderBinding = this.historyRecordManager;
        playlistHeaderBinding.getClass();
        int length = str.length();
        SearchHistoryDAO_Impl searchHistoryDAO_Impl = (SearchHistoryDAO_Impl) playlistHeaderBinding.playlistDescriptionReadMore;
        int i2 = 0;
        if (length > 0) {
            searchHistoryDAO_Impl.getClass();
            createFlowable = Cookie.Companion.createFlowable(searchHistoryDAO_Impl.__db, false, new String[]{"search_history"}, new WorkSpecDao_Impl$$ExternalSyntheticLambda3(str, i, 3));
        } else {
            createFlowable = Cookie.Companion.createFlowable(searchHistoryDAO_Impl.__db, false, new String[]{"search_history"}, new ZipFilesKt$$ExternalSyntheticLambda3(27));
        }
        return new ObservableMap(new ViewClickObservable(createFlowable, 4), new Utils$$ExternalSyntheticBUOutline0(23), i2);
    }

    public final String getOpenInBrowserUrlForErrors() {
        if (TextUtils.isEmpty(this.searchString)) {
            return null;
        }
        try {
            return this.service.getSearchQHFactory().getUrl(this.searchString, this.sortFilter, Arrays.asList(this.contentFilter));
        } catch (NullPointerException | ParsingException unused) {
            return null;
        }
    }

    public final String getSearchEditString() {
        return this.searchEditText.getText().toString();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void handleError() {
        super.handleError();
        hideSuggestionsPanel();
        hideKeyboardSearch();
    }

    public final void handleSearchSuggestion() {
        if (TextUtils.isEmpty(this.searchSuggestion)) {
            ((NewPipeTextView) this.searchBinding.drawerHeaderNewpipeTitle).setVisibility(8);
            return;
        }
        int i = 1;
        String format = String.format(getString(this.isCorrectedSearch ? R.string.search_showing_result_for : R.string.did_you_mean), "<b><i>" + Html.escapeHtml(this.searchSuggestion) + "</i></b>");
        ((NewPipeTextView) this.searchBinding.drawerHeaderNewpipeTitle).setText(Build.VERSION.SDK_INT >= 24 ? Utility.fromHtml(0, format) : Html.fromHtml(format));
        ((NewPipeTextView) this.searchBinding.drawerHeaderNewpipeTitle).setOnClickListener(new SearchFragment$$ExternalSyntheticLambda7(this, i));
        ((NewPipeTextView) this.searchBinding.drawerHeaderNewpipeTitle).setOnLongClickListener(new View.OnLongClickListener() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda17
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                SearchFragment searchFragment = SearchFragment.this;
                searchFragment.searchEditText.setText(searchFragment.searchSuggestion);
                searchFragment.searchEditText.setSelection(searchFragment.searchSuggestion.length());
                Jsoup.showKeyboard(searchFragment.activity, searchFragment.searchEditText);
                return true;
            }
        });
        ((NewPipeTextView) this.searchBinding.drawerHeaderNewpipeTitle).setVisibility(0);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final boolean hasMoreItems() {
        return Page.isValid(this.nextPage);
    }

    public final void hideKeyboardSearch() {
        AppCompatActivity appCompatActivity = this.activity;
        EditText editText = this.searchEditText;
        if (appCompatActivity == null || editText == null) {
            return;
        }
        InputMethodManager inputMethodManager = (InputMethodManager) appCompatActivity.getSystemService(InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(editText.getWindowToken(), 0);
        }
        editText.clearFocus();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void hideLoading() {
        super.hideLoading();
        showListFooter(false);
    }

    public final void hideSuggestionsPanel() {
        this.suggestionsPanelVisible = false;
        AppKt.animate$default((LinearLayout) this.searchBinding.drawerHeaderActionButton, false, 200L, AnimationType.LIGHT_SLIDE_AND_ALPHA, 0L, null, 24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void initSuggestionObserver() {
        Observable observableObserveOn;
        LambdaObserver lambdaObserver = this.suggestionDisposable;
        if (lambdaObserver != null) {
            DisposableHelper.dispose(lambdaObserver);
        }
        ObservableDebounceTimed debounce = this.suggestionPublisher.debounce(120L);
        String str = this.searchString;
        if (str == null) {
            str = "";
        }
        ObservableJust observableJust = new ObservableJust(str);
        int i = 2;
        int i2 = 1;
        int i3 = 3;
        ViewClickObservable viewClickObservable = new ViewClickObservable(new Observable[]{observableJust, debounce}, i3);
        int i4 = Flowable.BUFFER_SIZE;
        ObservableFlatMap observableFlatMap = new ObservableFlatMap(viewClickObservable, i4, 1);
        SearchFragment$$ExternalSyntheticLambda1 searchFragment$$ExternalSyntheticLambda1 = new SearchFragment$$ExternalSyntheticLambda1(this, i2);
        Functions.verifyPositive(i4, "bufferSize");
        if (observableFlatMap instanceof ScalarSupplier) {
            Object obj = ((ScalarSupplier) observableFlatMap).get();
            observableObserveOn = obj == null ? ObservableEmpty.INSTANCE : new ObservableScalarXMap$ScalarXMapObservable(obj, searchFragment$$ExternalSyntheticLambda1);
        } else {
            observableObserveOn = new ObservableObserveOn(observableFlatMap, searchFragment$$ExternalSyntheticLambda1, i4, i2);
        }
        ObservableObserveOn observeOn = observableObserveOn.subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
        LambdaObserver lambdaObserver2 = new LambdaObserver(new SearchFragment$$ExternalSyntheticLambda1(this, i), new SearchFragment$$ExternalSyntheticLambda1(this, i3));
        observeOn.subscribe(lambdaObserver2);
        this.suggestionDisposable = lambdaObserver2;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        ((RecyclerView) this.searchBinding.drawerHeaderServiceIcon).setAdapter(this.suggestionListAdapter);
        ((RecyclerView) this.searchBinding.drawerHeaderServiceIcon).setItemAnimator(null);
        new ItemTouchHelper(new ItemTouchHelper.Callback() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment.1
            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                return (bindingAdapterPosition != -1 && ((SuggestionItem) SearchFragment.this.suggestionListAdapter.getCurrentList().get(bindingAdapterPosition)).fromHistory) ? 3084 : 0;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
                return false;
            }

            @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
            public final void onSwiped(RecyclerView.ViewHolder viewHolder) {
                int bindingAdapterPosition = viewHolder.getBindingAdapterPosition();
                SearchFragment searchFragment = SearchFragment.this;
                String str = ((SuggestionItem) searchFragment.suggestionListAdapter.getCurrentList().get(bindingAdapterPosition)).query;
                PlaylistHeaderBinding playlistHeaderBinding = searchFragment.historyRecordManager;
                playlistHeaderBinding.getClass();
                SingleObserveOn subscribeOn = new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(playlistHeaderBinding, str, 7), 3).subscribeOn(Schedulers.IO);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new SearchFragment$$ExternalSyntheticLambda1(searchFragment, 12), new SearchFragment$$ExternalSyntheticLambda1(searchFragment, 13));
                try {
                    subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                    searchFragment.disposables.add(consumerSingleObserver);
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th) {
                    throw Owner.CC.m(th, "subscribeActual failed", th);
                }
            }
        }).attachToRecyclerView((RecyclerView) this.searchBinding.drawerHeaderServiceIcon);
        View findViewById = this.activity.findViewById(R.id.toolbar_search_container);
        this.searchToolbarContainer = findViewById;
        this.searchEditText = (EditText) findViewById.findViewById(R.id.toolbar_search_edit_text);
        this.searchClear = this.searchToolbarContainer.findViewById(R.id.toolbar_search_clear);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final void loadMoreItems() {
        if (Page.isValid(this.nextPage)) {
            this.isLoading.set(true);
            showListFooter(true);
            ConsumerSingleObserver consumerSingleObserver = this.searchDisposable;
            if (consumerSingleObserver != null) {
                DisposableHelper.dispose(consumerSingleObserver);
            }
            final int i = this.serviceId;
            final String str = this.searchString;
            final List asList = Arrays.asList(this.contentFilter);
            final String str2 = this.sortFilter;
            final Page page = this.nextPage;
            ExtractorHelper.checkServiceId(i);
            int i2 = 0;
            SingleDoOnEvent singleDoOnEvent = new SingleDoOnEvent(new SingleObserveOn(new SingleAmb(new Callable() { // from class: org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda10
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    int i3 = i;
                    return Utility.getService(i3).getSearchExtractor(Utility.getService(i3).getSearchQHFactory().fromQuery(str, str2, asList)).getPage(page);
                }
            }, 3).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i2), new SearchFragment$$ExternalSyntheticLambda1(this, 11), i2);
            ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new SearchFragment$$ExternalSyntheticLambda1(this, 4), new SearchFragment$$ExternalSyntheticLambda1(this, 10));
            singleDoOnEvent.subscribe(consumerSingleObserver2);
            this.searchDisposable = consumerSingleObserver2;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i, int i2, Intent intent) {
        String str = this.TAG;
        if (i != 10) {
            Log.e(str, "Request code from activity not supported [" + i + "]");
            return;
        }
        if (i2 != -1 || TextUtils.isEmpty(this.searchString)) {
            Log.e(str, "ReCaptcha failed");
        } else {
            search(this.searchString);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.activity);
        AppCompatActivity appCompatActivity = this.activity;
        Set<String> stringSet = defaultSharedPreferences.getStringSet(appCompatActivity.getString(R.string.show_search_suggestions_key), null);
        int i = 1;
        this.showLocalSuggestions = stringSet == null ? true : stringSet.contains(appCompatActivity.getString(R.string.show_local_search_suggestions_key));
        AppCompatActivity appCompatActivity2 = this.activity;
        Set<String> stringSet2 = defaultSharedPreferences.getStringSet(appCompatActivity2.getString(R.string.show_search_suggestions_key), null);
        this.showRemoteSuggestions = stringSet2 == null ? true : stringSet2.contains(appCompatActivity2.getString(R.string.show_remote_search_suggestions_key));
        this.suggestionListAdapter = new SuggestionListAdapter(new PeertubeInstanceListFragment.PeertubeInstanceCallback(i), 0);
        this.historyRecordManager = new PlaylistHeaderBinding(context);
    }

    @Override // org.schabi.newpipe.fragments.BackPressable
    public final boolean onBackPressed() {
        if (!this.suggestionsPanelVisible || this.infoListAdapter.infoItemList.isEmpty() || this.isLoading.get()) {
            return false;
        }
        hideSuggestionsPanel();
        hideKeyboardSearch();
        this.searchEditText.setText(this.lastSearchedString);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007c, code lost:
    
        if (r7.equals("music_videos") == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0152, code lost:
    
        r7 = r15.getString(org.schabi.newpipe.R.string.videos_string);
        r7.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x011f, code lost:
    
        if (r7.equals("videos") == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014f, code lost:
    
        if (r7.equals("sepia_videos") == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0163, code lost:
    
        if (r7.equals("music_playlists") == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x016f, code lost:
    
        r7 = r15.getString(org.schabi.newpipe.R.string.playlists);
        r7.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x016c, code lost:
    
        if (r7.equals("playlists") == false) goto L73;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0183 A[SYNTHETIC] */
    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onCreateOptionsMenu(android.view.Menu r14, android.view.MenuInflater r15) {
        /*
            Method dump skipped, instructions count: 470
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.schabi.newpipe.fragments.list.search.SearchFragment.onCreateOptionsMenu(android.view.Menu, android.view.MenuInflater):void");
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_search, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        ConsumerSingleObserver consumerSingleObserver = this.searchDisposable;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        LambdaObserver lambdaObserver = this.suggestionDisposable;
        if (lambdaObserver != null) {
            DisposableHelper.dispose(lambdaObserver);
        }
        this.disposables.clear();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.searchClear.setOnClickListener(null);
        this.searchClear.setOnLongClickListener(null);
        this.searchEditText.setOnClickListener(null);
        this.searchEditText.setOnFocusChangeListener(null);
        this.searchEditText.setOnEditorActionListener(null);
        TextInputLayout.AnonymousClass1 anonymousClass1 = this.textWatcher;
        if (anonymousClass1 != null) {
            this.searchEditText.removeTextChangedListener(anonymousClass1);
        }
        this.textWatcher = null;
        this.searchBinding = null;
        super.onDestroyView();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final void onItemSelected() {
        hideKeyboardSearch();
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        List singletonList = Collections.singletonList((String) this.menuItemToFilterName.get(menuItem.getItemId()));
        this.filterItemCheckedId = menuItem.getItemId();
        menuItem.setChecked(true);
        if (this.service != null) {
            if (singletonList.isEmpty() || TtmlNode.COMBINE_ALL.equals(singletonList.get(0))) {
                this.searchEditText.setHint(getString(R.string.search_with_service_name, this.service.serviceInfo.name));
            } else {
                this.searchEditText.setHint(getString(R.string.search_with_service_name_and_filter, this.service.serviceInfo.name, menuItem.getTitle()));
            }
        }
        this.contentFilter = (String[]) singletonList.toArray(new String[0]);
        if (!TextUtils.isEmpty(this.searchString)) {
            search(this.searchString);
        }
        return true;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        this.wasSearchFocused = this.searchEditText.hasFocus();
        ConsumerSingleObserver consumerSingleObserver = this.searchDisposable;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        LambdaObserver lambdaObserver = this.suggestionDisposable;
        if (lambdaObserver != null) {
            DisposableHelper.dispose(lambdaObserver);
        }
        this.disposables.clear();
        hideKeyboardSearch();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        LambdaObserver lambdaObserver = this.suggestionDisposable;
        if (lambdaObserver == null || lambdaObserver.isDisposed()) {
            initSuggestionObserver();
        }
        if (!TextUtils.isEmpty(this.searchString)) {
            if (this.wasLoading.getAndSet(false)) {
                search(this.searchString);
                return;
            }
            if (this.infoListAdapter.infoItemList.isEmpty()) {
                if (this.savedState == null) {
                    search(this.searchString);
                    return;
                } else if (!this.isLoading.get() && !this.wasSearchFocused && this.lastPanelError == null) {
                    this.infoListAdapter.clearStreamItemList();
                    showEmptyState();
                }
            }
        }
        handleSearchSuggestion();
        MetaInfo[] metaInfoArr = this.metaInfo;
        List asList = metaInfoArr == null ? null : Arrays.asList(metaInfoArr);
        DrawerHeaderBinding drawerHeaderBinding = this.searchBinding;
        ExtractorHelper.showMetaInfoInTextView(asList, (NewPipeTextView) drawerHeaderBinding.drawerHeaderServiceView, (View) drawerHeaderBinding.drawerArrow, this.disposables);
        if (TextUtils.isEmpty(this.searchString) || this.wasSearchFocused) {
            Jsoup.showKeyboard(this.activity, this.searchEditText);
            this.suggestionsPanelVisible = true;
            AppKt.animate$default((LinearLayout) this.searchBinding.drawerHeaderActionButton, true, 200L, AnimationType.LIGHT_SLIDE_AND_ALPHA, 0L, null, 24);
        } else {
            hideKeyboardSearch();
            hideSuggestionsPanel();
        }
        this.wasSearchFocused = false;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        this.searchString = this.searchEditText != null ? getSearchEditString().trim() : this.searchString;
        super.onSaveInstanceState(bundle);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        updateService();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        int i = R.id.correct_suggestion;
        NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.correct_suggestion, view);
        if (newPipeTextView != null) {
            i = R.id.empty_state_view;
            if (((LinearLayout) Options.Companion.findChildViewById(R.id.empty_state_view, view)) != null) {
                i = R.id.error_panel;
                View findChildViewById = Options.Companion.findChildViewById(R.id.error_panel, view);
                if (findChildViewById != null) {
                    ErrorPanelBinding.bind(findChildViewById);
                    i = R.id.items_list;
                    if (((RecyclerView) Options.Companion.findChildViewById(R.id.items_list, view)) != null) {
                        i = R.id.loading_progress_bar;
                        if (((ProgressBar) Options.Companion.findChildViewById(R.id.loading_progress_bar, view)) != null) {
                            i = R.id.search_meta_info_separator;
                            View findChildViewById2 = Options.Companion.findChildViewById(R.id.search_meta_info_separator, view);
                            if (findChildViewById2 != null) {
                                i = R.id.search_meta_info_text_view;
                                NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.search_meta_info_text_view, view);
                                if (newPipeTextView2 != null) {
                                    i = R.id.suggestions_list;
                                    RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.suggestions_list, view);
                                    if (recyclerView != null) {
                                        i = R.id.suggestions_panel;
                                        LinearLayout linearLayout = (LinearLayout) Options.Companion.findChildViewById(R.id.suggestions_panel, view);
                                        if (linearLayout != null) {
                                            this.searchBinding = new DrawerHeaderBinding((RelativeLayout) view, newPipeTextView, findChildViewById2, newPipeTextView2, recyclerView, linearLayout);
                                            super.onViewCreated(view, bundle);
                                            updateService();
                                            StreamingService streamingService = this.service;
                                            int i2 = 0;
                                            if (streamingService != null) {
                                                this.searchEditText.setHint(getString(R.string.search_with_service_name, streamingService.serviceInfo.name));
                                            }
                                            this.searchEditText.setText(this.searchString);
                                            if (TextUtils.isEmpty(this.searchString) || Utils.isBlank(getSearchEditString())) {
                                                this.searchToolbarContainer.setTranslationX(100.0f);
                                                this.searchToolbarContainer.setAlpha(0.0f);
                                                this.searchToolbarContainer.setVisibility(0);
                                                this.searchToolbarContainer.animate().translationX(0.0f).alpha(1.0f).setDuration(200L).setInterpolator(new DecelerateInterpolator()).start();
                                            } else {
                                                this.searchToolbarContainer.setTranslationX(0.0f);
                                                this.searchToolbarContainer.setAlpha(1.0f);
                                                this.searchToolbarContainer.setVisibility(0);
                                            }
                                            this.searchClear.setOnClickListener(new SearchFragment$$ExternalSyntheticLambda7(this, i2));
                                            OperationKt.setTooltipText(this.searchClear, getString(R.string.clear));
                                            int i3 = 2;
                                            this.searchEditText.setOnClickListener(new SearchFragment$$ExternalSyntheticLambda7(this, i3));
                                            this.searchEditText.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda9
                                                @Override // android.view.View.OnFocusChangeListener
                                                public final void onFocusChange(View view2, boolean z) {
                                                    SearchFragment searchFragment = SearchFragment.this;
                                                    if ((searchFragment.showLocalSuggestions || searchFragment.showRemoteSuggestions) && z && searchFragment.errorPanelHelper.errorPanelRoot.getVisibility() != 0) {
                                                        searchFragment.suggestionsPanelVisible = true;
                                                        AppKt.animate$default((LinearLayout) searchFragment.searchBinding.drawerHeaderActionButton, true, 200L, AnimationType.LIGHT_SLIDE_AND_ALPHA, 0L, null, 24);
                                                    }
                                                }
                                            });
                                            this.suggestionListAdapter.listener = new VideoPlayerUi.AnonymousClass1(this, i3);
                                            TextInputLayout.AnonymousClass1 anonymousClass1 = this.textWatcher;
                                            if (anonymousClass1 != null) {
                                                this.searchEditText.removeTextChangedListener(anonymousClass1);
                                            }
                                            TextInputLayout.AnonymousClass1 anonymousClass12 = new TextInputLayout.AnonymousClass1(this, 3);
                                            this.textWatcher = anonymousClass12;
                                            this.searchEditText.addTextChangedListener(anonymousClass12);
                                            this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda10
                                                @Override // android.widget.TextView.OnEditorActionListener
                                                public final boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
                                                    int i5 = SearchFragment.$r8$clinit;
                                                    SearchFragment searchFragment = SearchFragment.this;
                                                    if (i4 == 7) {
                                                        searchFragment.hideKeyboardSearch();
                                                        return false;
                                                    }
                                                    if (keyEvent == null || !(keyEvent.getKeyCode() == 66 || keyEvent.getAction() == 3)) {
                                                        return false;
                                                    }
                                                    searchFragment.searchEditText.setText(searchFragment.getSearchEditString().trim());
                                                    searchFragment.search(searchFragment.getSearchEditString());
                                                    return true;
                                                }
                                            });
                                            LambdaObserver lambdaObserver = this.suggestionDisposable;
                                            if (lambdaObserver == null || lambdaObserver.isDisposed()) {
                                                initSuggestionObserver();
                                                return;
                                            }
                                            return;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public final void readFrom(Queue queue) {
        super.readFrom(queue);
        this.nextPage = (Page) queue.poll();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void reloadContent() {
        if (!TextUtils.isEmpty(this.searchString) || (this.searchEditText != null && !Utils.isBlank(getSearchEditString()))) {
            search(!TextUtils.isEmpty(this.searchString) ? this.searchString : getSearchEditString());
            return;
        }
        EditText editText = this.searchEditText;
        if (editText != null) {
            editText.setText("");
            Jsoup.showKeyboard(this.activity, this.searchEditText);
        }
        hideErrorPanel();
    }

    public final void search(String str) {
        final String str2;
        Maybe subscribeOn;
        Transition.AnonymousClass1 anonymousClass1 = Functions.EMPTY_ACTION;
        CompositeDisposable compositeDisposable = this.disposables;
        if (str.isEmpty()) {
            return;
        }
        try {
            StreamingService serviceByUrl = Utility.getServiceByUrl(str);
            showLoading();
            ObservableObserveOn observeOn = new ObservableFromCallable(new Processor$$ExternalSyntheticLambda0(2, this, serviceByUrl, str)).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread());
            LambdaObserver lambdaObserver = new LambdaObserver(new SearchFragment$$ExternalSyntheticLambda1(this, 6), new SearchFragment$$ExternalSyntheticLambda1(this, 7));
            observeOn.subscribe(lambdaObserver);
            compositeDisposable.add(lambdaObserver);
        } catch (Exception unused) {
            this.lastSearchedString = this.searchString;
            this.searchString = str;
            this.infoListAdapter.clearStreamItemList();
            hideSuggestionsPanel();
            DrawerHeaderBinding drawerHeaderBinding = this.searchBinding;
            ExtractorHelper.showMetaInfoInTextView(null, (NewPipeTextView) drawerHeaderBinding.drawerHeaderServiceView, (View) drawerHeaderBinding.drawerArrow, compositeDisposable);
            hideKeyboardSearch();
            PlaylistHeaderBinding playlistHeaderBinding = this.historyRecordManager;
            int i = this.serviceId;
            int i2 = 0;
            if (((SharedPreferences) playlistHeaderBinding.playlistTitleView).getBoolean((String) playlistHeaderBinding.uploaderName, false)) {
                OffsetDateTime now = OffsetDateTime.now(ZoneOffset.UTC);
                str2 = str;
                subscribeOn = new MaybeFromCallable(new HistoryRecordManager$$ExternalSyntheticLambda0(playlistHeaderBinding, new SearchHistoryEntry(now, i, str2, 0L), now, i2)).subscribeOn(Schedulers.IO);
            } else {
                subscribeOn = MaybeEmpty.INSTANCE;
                str2 = str;
            }
            Scheduler mainThread = AndroidSchedulers.mainThread();
            MaybeCallbackObserver maybeCallbackObserver = new MaybeCallbackObserver(new Utils$$ExternalSyntheticBUOutline0(21), new Consumer() { // from class: org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda15
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    int i3 = SearchFragment.$r8$clinit;
                    SearchFragment searchFragment = SearchFragment.this;
                    searchFragment.showSnackBarError(new ErrorInfo((Throwable) obj, UserAction.SEARCHED, str2, Integer.valueOf(searchFragment.serviceId)));
                }
            }, anonymousClass1);
            try {
                subscribeOn.subscribe(new MaybeObserveOn.ObserveOnMaybeObserver(maybeCallbackObserver, mainThread));
                compositeDisposable.add(maybeCallbackObserver);
                this.suggestionPublisher.onNext(str2);
                startLoading(false);
            } catch (NullPointerException e) {
                throw e;
            } catch (Throwable th) {
                throw Owner.CC.m(th, "subscribeActual failed", th);
            }
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void startLoading(boolean z) {
        super.startLoading(z);
        this.disposables.clear();
        ConsumerSingleObserver consumerSingleObserver = this.searchDisposable;
        if (consumerSingleObserver != null) {
            DisposableHelper.dispose(consumerSingleObserver);
        }
        int i = this.serviceId;
        String str = this.searchString;
        List asList = Arrays.asList(this.contentFilter);
        String str2 = this.sortFilter;
        ExtractorHelper.checkServiceId(i);
        int i2 = 0;
        SingleDoOnEvent singleDoOnEvent = new SingleDoOnEvent(new SingleObserveOn(new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda2(i, str, asList, str2), 3).subscribeOn(Schedulers.IO), AndroidSchedulers.mainThread(), i2), new SearchFragment$$ExternalSyntheticLambda1(this, 5), i2);
        ConsumerSingleObserver consumerSingleObserver2 = new ConsumerSingleObserver(new SearchFragment$$ExternalSyntheticLambda1(this, i2), new SearchFragment$$ExternalSyntheticLambda1(this, 10));
        singleDoOnEvent.subscribe(consumerSingleObserver2);
        this.searchDisposable = consumerSingleObserver2;
    }

    public final void updateService() {
        try {
            this.service = Utility.getService(this.serviceId);
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Getting service for id " + this.serviceId, e);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.util.StateSaver.WriteRead
    public final void writeTo(LinkedList linkedList) {
        super.writeTo(linkedList);
        linkedList.add(this.nextPage);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
    }
}
