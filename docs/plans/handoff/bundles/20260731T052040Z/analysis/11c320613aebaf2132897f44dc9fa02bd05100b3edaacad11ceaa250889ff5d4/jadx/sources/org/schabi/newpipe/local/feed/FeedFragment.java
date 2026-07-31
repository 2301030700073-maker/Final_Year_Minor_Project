package org.schabi.newpipe.local.feed;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.ui.node.Owner;
import androidx.core.app.NotificationCompatBuilder;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.preference.PreferenceManager;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.sqlite.SQLite;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.work.Data;
import androidx.work.impl.WorkerWrapper$launch$1$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import com.xwray.groupie.AsyncDiffUtil;
import com.xwray.groupie.DiffCallback;
import com.xwray.groupie.DiffTask;
import com.xwray.groupie.GroupieAdapter;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleObserveOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import j$.time.OffsetDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.rx3.RxAwaitKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import okio.Options;
import org.jsoup.Jsoup;
import org.schabi.newpipe.App;
import org.schabi.newpipe.R;
import org.schabi.newpipe.database.feed.dao.FeedDAO_Impl$$ExternalSyntheticLambda6;
import org.schabi.newpipe.databinding.ErrorPanelBinding;
import org.schabi.newpipe.databinding.FragmentFeedBinding;
import org.schabi.newpipe.databinding.ListEmptyViewBinding;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.exceptions.ContentNotAvailableException;
import org.schabi.newpipe.fragments.BaseStateFragment;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.local.feed.FeedFragment;
import org.schabi.newpipe.local.feed.FeedState;
import org.schabi.newpipe.local.feed.FeedViewModel;
import org.schabi.newpipe.local.feed.item.StreamItem;
import org.schabi.newpipe.local.feed.service.FeedLoadService;
import org.schabi.newpipe.util.Localization;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class FeedFragment extends BaseStateFragment<FeedState> {
    public static final Companion Companion = new Companion();
    public FragmentFeedBinding _feedBinding;
    public GroupieAdapter groupAdapter;
    public boolean isRefreshing;
    public int lastNewItemsCount;
    public Parcelable listState;
    public final FeedFragment$listenerStreamItem$1 listenerStreamItem;
    public OffsetDateTime oldestSubscriptionUpdate;
    public FeedFragment$$ExternalSyntheticLambda6 onSettingsChangeListener;
    public boolean updateListViewModeOnResume;
    public FeedViewModel viewModel;
    public final CompositeDisposable disposables = new CompositeDisposable();
    public long groupId = -1;
    public String groupName = "";

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Companion {
    }

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ItemViewMode.values().length];
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[3] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FeedFragment() {
        setHasOptionsMenu(true);
        this.listenerStreamItem = new FeedFragment$listenerStreamItem$1(this);
    }

    public static final FeedFragment newInstance(String str, long j) {
        Companion.getClass();
        FeedFragment feedFragment = new FeedFragment();
        feedFragment.setArguments(BundleKt.bundleOf(new Pair("ARG_GROUP_ID", Long.valueOf(j)), new Pair("ARG_GROUP_NAME", str)));
        return feedFragment;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void handleError() {
        super.handleError();
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        AppKt.animateHideRecyclerViewAllowingScrolling(fragmentFeedBinding.itemsList);
        FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
        fragmentFeedBinding2.getClass();
        AppKt.animate$default(fragmentFeedBinding2.refreshRootView, false, 0L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding3 = this._feedBinding;
        fragmentFeedBinding3.getClass();
        AppKt.animate$default(fragmentFeedBinding3.loadingProgressText, false, 0L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding4 = this._feedBinding;
        fragmentFeedBinding4.getClass();
        fragmentFeedBinding4.swipeRefreshLayout.setRefreshing(false);
        this.isRefreshing = false;
    }

    public final void handleItemsErrors(List list) {
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                Jsoup.throwIndexOverflow();
                throw null;
            }
            Throwable th = (Throwable) obj;
            if ((th instanceof FeedLoadService.RequestException) && (th.getCause() instanceof ContentNotAvailableException)) {
                FeedLoadService.RequestException requestException = (FeedLoadService.RequestException) th;
                SingleObserveOn subscribeOn = new SingleAmb(new WorkerWrapper$launch$1$$ExternalSyntheticLambda0(this, requestException, 4), 3).subscribeOn(Schedulers.IO);
                Scheduler mainThread = AndroidSchedulers.mainThread();
                ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(new NotificationCompatBuilder(this, requestException, list, i), new FeedFragment$listenerStreamItem$1(this));
                try {
                    subscribeOn.subscribe(new SingleObserveOn.ObserveOnSingleObserver(consumerSingleObserver, mainThread));
                    this.disposables.add(consumerSingleObserver);
                    return;
                } catch (NullPointerException e) {
                    throw e;
                } catch (Throwable th2) {
                    throw Owner.CC.m(th2, "subscribeActual failed", th2);
                }
            }
            i = i2;
        }
        if (list.isEmpty()) {
            return;
        }
        ErrorUtil.Companion companion = ErrorUtil.Companion;
        ErrorInfo errorInfo = new ErrorInfo(list, UserAction.REQUESTED_FEED, "", (Integer) null, (String) null);
        companion.getClass();
        ErrorUtil.Companion.showSnackbar(this, errorInfo);
    }

    public final void handleResult(FeedState feedState) {
        String string;
        feedState.getClass();
        boolean z = true;
        if (feedState instanceof FeedState.ProgressState) {
            FeedState.ProgressState progressState = (FeedState.ProgressState) feedState;
            showLoading();
            int i = progressState.currentProgress;
            int i2 = progressState.maxProgress;
            boolean z2 = i == -1 && i2 == -1;
            FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
            fragmentFeedBinding.getClass();
            NewPipeTextView newPipeTextView = fragmentFeedBinding.loadingProgressText;
            if (z2) {
                int i3 = progressState.progressMessage;
                string = i3 > 0 ? getString(i3) : "∞/∞";
            } else {
                string = i + "/" + i2;
            }
            newPipeTextView.setText(string);
            FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
            fragmentFeedBinding2.getClass();
            ProgressBar progressBar = fragmentFeedBinding2.loadingProgressBar;
            if (!z2 && (i2 <= 0 || i != 0)) {
                z = false;
            }
            progressBar.setIndeterminate(z);
            FragmentFeedBinding fragmentFeedBinding3 = this._feedBinding;
            fragmentFeedBinding3.getClass();
            fragmentFeedBinding3.loadingProgressBar.setProgress(i);
            FragmentFeedBinding fragmentFeedBinding4 = this._feedBinding;
            fragmentFeedBinding4.getClass();
            fragmentFeedBinding4.loadingProgressBar.setMax(i2);
        } else if (feedState instanceof FeedState.LoadedState) {
            FeedState.LoadedState loadedState = (FeedState.LoadedState) feedState;
            int i4 = WhenMappings.$EnumSwitchMapping$0[Options.Companion.getItemViewMode(requireContext()).ordinal()];
            StreamItem.ItemVersion itemVersion = i4 != 1 ? i4 != 2 ? StreamItem.ItemVersion.NORMAL : StreamItem.ItemVersion.CARD : StreamItem.ItemVersion.GRID;
            ArrayList arrayList = loadedState.items;
            long j = loadedState.notLoadedCount;
            OffsetDateTime offsetDateTime = loadedState.oldestUpdate;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                StreamItem streamItem = (StreamItem) it.next();
                streamItem.getClass();
                streamItem.itemVersion = itemVersion;
            }
            OffsetDateTime offsetDateTime2 = this.oldestSubscriptionUpdate;
            GroupieAdapter groupieAdapter = this.groupAdapter;
            if (groupieAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
                throw null;
            }
            ArrayList arrayList2 = groupieAdapter.groups;
            FeedFragment$$ExternalSyntheticLambda1 feedFragment$$ExternalSyntheticLambda1 = new FeedFragment$$ExternalSyntheticLambda1(offsetDateTime2, this);
            if (arrayList2.isEmpty()) {
                DiffUtil.DiffResult calculateDiff = DiffUtil.calculateDiff(new DiffCallback(new ArrayList(arrayList2), arrayList), false);
                groupieAdapter.setNewGroups(arrayList);
                calculateDiff.dispatchUpdatesTo(groupieAdapter.diffUtilCallbacks);
                feedFragment$$ExternalSyntheticLambda1.onUpdateComplete();
            } else {
                DiffCallback diffCallback = new DiffCallback(new ArrayList(arrayList2), arrayList);
                AsyncDiffUtil asyncDiffUtil = groupieAdapter.asyncDiffUtil;
                asyncDiffUtil.groups = arrayList;
                int i5 = asyncDiffUtil.maxScheduledGeneration + 1;
                asyncDiffUtil.maxScheduledGeneration = i5;
                new DiffTask(asyncDiffUtil, diffCallback, i5, feedFragment$$ExternalSyntheticLambda1).execute(new Void[0]);
            }
            if (this.listState != null) {
                FragmentFeedBinding fragmentFeedBinding5 = this._feedBinding;
                fragmentFeedBinding5.getClass();
                RecyclerView.LayoutManager layoutManager = fragmentFeedBinding5.itemsList.getLayoutManager();
                if (layoutManager != null) {
                    layoutManager.onRestoreInstanceState(this.listState);
                }
                this.listState = null;
            }
            boolean z3 = j > 0;
            FragmentFeedBinding fragmentFeedBinding6 = this._feedBinding;
            fragmentFeedBinding6.getClass();
            fragmentFeedBinding6.refreshSubtitleText.setVisibility(z3 ? 0 : 8);
            if (z3) {
                FragmentFeedBinding fragmentFeedBinding7 = this._feedBinding;
                fragmentFeedBinding7.getClass();
                fragmentFeedBinding7.refreshSubtitleText.setText(getString(R.string.feed_subscription_not_loaded_count, Long.valueOf(j)));
            }
            if (!Intrinsics.areEqual(this.oldestSubscriptionUpdate, offsetDateTime) || (this.oldestSubscriptionUpdate == null && offsetDateTime == null)) {
                handleItemsErrors(loadedState.itemsErrors);
            }
            this.oldestSubscriptionUpdate = offsetDateTime;
            if (arrayList.isEmpty()) {
                super.showEmptyState();
                FragmentFeedBinding fragmentFeedBinding8 = this._feedBinding;
                fragmentFeedBinding8.getClass();
                AppKt.animateHideRecyclerViewAllowingScrolling(fragmentFeedBinding8.itemsList);
                FragmentFeedBinding fragmentFeedBinding9 = this._feedBinding;
                fragmentFeedBinding9.getClass();
                AppKt.animate$default(fragmentFeedBinding9.refreshRootView, true, 200L, null, 0L, null, 28);
                FragmentFeedBinding fragmentFeedBinding10 = this._feedBinding;
                fragmentFeedBinding10.getClass();
                AppKt.animate$default(fragmentFeedBinding10.loadingProgressText, false, 0L, null, 0L, null, 28);
                FragmentFeedBinding fragmentFeedBinding11 = this._feedBinding;
                fragmentFeedBinding11.getClass();
                fragmentFeedBinding11.swipeRefreshLayout.setRefreshing(false);
            } else {
                hideLoading();
            }
        } else {
            if (!(feedState instanceof FeedState.ErrorState)) {
                DecodeUtils$$ExternalSyntheticBUOutline0.m();
                return;
            }
            Throwable th = ((FeedState.ErrorState) feedState).error;
            if (th != null) {
                showError(new ErrorInfo(th, UserAction.REQUESTED_FEED, "Loading feed", (Integer) null, 24));
                return;
            }
            hideLoading();
        }
        updateRefreshViewState();
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void hideLoading() {
        super.hideLoading();
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        AppKt.animate$default(fragmentFeedBinding.itemsList, true, 0L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
        fragmentFeedBinding2.getClass();
        AppKt.animate$default(fragmentFeedBinding2.refreshRootView, true, 200L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding3 = this._feedBinding;
        fragmentFeedBinding3.getClass();
        AppKt.animate$default(fragmentFeedBinding3.loadingProgressText, false, 0L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding4 = this._feedBinding;
        fragmentFeedBinding4.getClass();
        fragmentFeedBinding4.swipeRefreshLayout.setRefreshing(false);
        this.isRefreshing = false;
    }

    public final void hideNewItemsLoaded(long j, boolean z) {
        Button tryGetNewItemsLoadedButton = tryGetNewItemsLoadedButton();
        if (tryGetNewItemsLoadedButton != null) {
            tryGetNewItemsLoadedButton.clearAnimation();
        }
        if (z) {
            Button tryGetNewItemsLoadedButton2 = tryGetNewItemsLoadedButton();
            if (tryGetNewItemsLoadedButton2 != null) {
                AppKt.animate$default(tryGetNewItemsLoadedButton2, false, 200L, null, j, new FeedFragment$$ExternalSyntheticLambda13(this, 0), 4);
                return;
            }
            return;
        }
        Button tryGetNewItemsLoadedButton3 = tryGetNewItemsLoadedButton();
        if (tryGetNewItemsLoadedButton3 != null) {
            tryGetNewItemsLoadedButton3.setVisibility(8);
        }
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void initListeners() {
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        final int i = 0;
        fragmentFeedBinding.refreshRootView.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ FeedFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i2 = i;
                FeedFragment feedFragment = this.f$0;
                switch (i2) {
                    case 0:
                        FeedFragment.Companion companion = FeedFragment.Companion;
                        feedFragment.reloadContent();
                        break;
                    default:
                        FeedFragment.Companion companion2 = FeedFragment.Companion;
                        feedFragment.hideNewItemsLoaded(0L, true);
                        FragmentFeedBinding fragmentFeedBinding2 = feedFragment._feedBinding;
                        fragmentFeedBinding2.getClass();
                        fragmentFeedBinding2.itemsList.scrollToPosition(0);
                        break;
                }
            }
        });
        FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
        fragmentFeedBinding2.getClass();
        fragmentFeedBinding2.swipeRefreshLayout.setOnRefreshListener(new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(this, 14));
        FragmentFeedBinding fragmentFeedBinding3 = this._feedBinding;
        fragmentFeedBinding3.getClass();
        final int i2 = 1;
        fragmentFeedBinding3.newItemsLoadedButton.setOnClickListener(new View.OnClickListener(this) { // from class: org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda3
            public final /* synthetic */ FeedFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i22 = i2;
                FeedFragment feedFragment = this.f$0;
                switch (i22) {
                    case 0:
                        FeedFragment.Companion companion = FeedFragment.Companion;
                        feedFragment.reloadContent();
                        break;
                    default:
                        FeedFragment.Companion companion2 = FeedFragment.Companion;
                        feedFragment.hideNewItemsLoaded(0L, true);
                        FragmentFeedBinding fragmentFeedBinding22 = feedFragment._feedBinding;
                        fragmentFeedBinding22.getClass();
                        fragmentFeedBinding22.itemsList.scrollToPosition(0);
                        break;
                }
            }
        });
    }

    @Override // org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        String str;
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        this.groupId = arguments != null ? arguments.getLong("ARG_GROUP_ID", -1L) : -1L;
        Bundle arguments2 = getArguments();
        if (arguments2 == null || (str = arguments2.getString("ARG_GROUP_NAME")) == null) {
            str = "";
        }
        this.groupName = str;
        this.onSettingsChangeListener = new FeedFragment$$ExternalSyntheticLambda6(this, 0);
        PreferenceManager.getDefaultSharedPreferences(this.activity).registerOnSharedPreferenceChangeListener(this.onSettingsChangeListener);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        Options.Companion supportActionBar2 = this.activity.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setTitle(R.string.fragment_feed_title);
        }
        Options.Companion supportActionBar3 = this.activity.getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.setSubtitle(this.groupName);
        }
        menuInflater.inflate(R.menu.menu_feed_fragment, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        return layoutInflater.inflate(R.layout.fragment_feed, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroy() {
        AppCompatActivity appCompatActivity;
        Options.Companion supportActionBar;
        Options.Companion supportActionBar2;
        this.disposables.dispose();
        if (this.onSettingsChangeListener != null) {
            PreferenceManager.getDefaultSharedPreferences(this.activity).unregisterOnSharedPreferenceChangeListener(this.onSettingsChangeListener);
            this.onSettingsChangeListener = null;
        }
        super.onDestroy();
        if (Intrinsics.areEqual(this.groupName, "")) {
            return;
        }
        AppCompatActivity appCompatActivity2 = this.activity;
        if (!Intrinsics.areEqual((appCompatActivity2 == null || (supportActionBar2 = appCompatActivity2.getSupportActionBar()) == null) ? null : supportActionBar2.getSubtitle(), this.groupName) || (appCompatActivity = this.activity) == null || (supportActionBar = appCompatActivity.getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.setSubtitle(null);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyOptionsMenu() {
        AppCompatActivity appCompatActivity;
        Options.Companion supportActionBar;
        Options.Companion supportActionBar2;
        super.onDestroyOptionsMenu();
        if (Intrinsics.areEqual(this.groupName, "")) {
            return;
        }
        AppCompatActivity appCompatActivity2 = this.activity;
        if (!Intrinsics.areEqual((appCompatActivity2 == null || (supportActionBar2 = appCompatActivity2.getSupportActionBar()) == null) ? null : supportActionBar2.getSubtitle(), this.groupName) || (appCompatActivity = this.activity) == null || (supportActionBar = appCompatActivity.getSupportActionBar()) == null) {
            return;
        }
        supportActionBar.setSubtitle(null);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        Button tryGetNewItemsLoadedButton = tryGetNewItemsLoadedButton();
        if (tryGetNewItemsLoadedButton != null) {
            tryGetNewItemsLoadedButton.clearAnimation();
        }
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        fragmentFeedBinding.itemsList.setAdapter(null);
        this._feedBinding = null;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int i = 0;
        if (menuItem.getItemId() == R.id.menu_item_feed_help) {
            final SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(requireContext());
            final boolean z = defaultSharedPreferences.getBoolean(getString(R.string.feed_use_dedicated_fetch_method_key), false);
            int i2 = z ? R.string.feed_use_dedicated_fetch_method_disable_button : R.string.feed_use_dedicated_fetch_method_enable_button;
            AlertDialog.Builder builder = new AlertDialog.Builder(requireContext());
            builder.setMessage(R.string.feed_use_dedicated_fetch_method_help_text);
            builder.setNeutralButton(i2, new DialogInterface.OnClickListener() { // from class: org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda2
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    FeedFragment.Companion companion = FeedFragment.Companion;
                    SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                    edit.getClass();
                    edit.putBoolean(this.getString(R.string.feed_use_dedicated_fetch_method_key), !z);
                    edit.apply();
                }
            });
            String string = getResources().getString(R.string.ok);
            AlertController.AlertParams alertParams = builder.P;
            alertParams.mPositiveButtonText = string;
            alertParams.mPositiveButtonListener = null;
            builder.show();
            return true;
        }
        if (menuItem.getItemId() != R.id.menu_item_feed_toggle_played_items) {
            return false;
        }
        String[] strArr = {getString(R.string.feed_show_watched), getString(R.string.feed_show_partially_watched), getString(R.string.feed_show_upcoming)};
        FeedViewModel feedViewModel = this.viewModel;
        if (feedViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            throw null;
        }
        FeedViewModel.Companion companion = FeedViewModel.Companion;
        App app = feedViewModel.application;
        companion.getClass();
        boolean z2 = PreferenceManager.getDefaultSharedPreferences(app).getBoolean(app.getString(R.string.feed_show_watched_items_key), true);
        FeedViewModel feedViewModel2 = this.viewModel;
        if (feedViewModel2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            throw null;
        }
        App app2 = feedViewModel2.application;
        boolean z3 = PreferenceManager.getDefaultSharedPreferences(app2).getBoolean(app2.getString(R.string.feed_show_partially_watched_items_key), true);
        FeedViewModel feedViewModel3 = this.viewModel;
        if (feedViewModel3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            throw null;
        }
        App app3 = feedViewModel3.application;
        final boolean[] zArr = {z2, z3, PreferenceManager.getDefaultSharedPreferences(app3).getBoolean(app3.getString(R.string.feed_show_future_items_key), true)};
        AlertDialog.Builder builder2 = new AlertDialog.Builder(requireContext());
        builder2.setTitle(R.string.feed_hide_streams_title);
        DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener = new DialogInterface.OnMultiChoiceClickListener() { // from class: org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda8
            @Override // android.content.DialogInterface.OnMultiChoiceClickListener
            public final void onClick(DialogInterface dialogInterface, int i3, boolean z4) {
                FeedFragment.Companion companion2 = FeedFragment.Companion;
                zArr[i3] = z4;
            }
        };
        AlertController.AlertParams alertParams2 = builder2.P;
        alertParams2.mItems = strArr;
        alertParams2.mOnCheckboxClickListener = onMultiChoiceClickListener;
        alertParams2.mCheckedItems = zArr;
        alertParams2.mIsMultiChoice = true;
        builder2.setPositiveButton(R.string.ok, new FeedFragment$$ExternalSyntheticLambda9(this, zArr, i)).setNegativeButton(R.string.cancel, null).show();
        return false;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        RecyclerView.LayoutManager layoutManager = fragmentFeedBinding.itemsList.getLayoutManager();
        this.listState = layoutManager != null ? layoutManager.onSaveInstanceState() : null;
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        updateRefreshViewState();
        GroupieAdapter groupieAdapter = this.groupAdapter;
        if (groupieAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
            throw null;
        }
        groupieAdapter.notifyItemRangeChanged(0, SQLite.getItemCount(groupieAdapter.groups), 1);
        if (this.updateListViewModeOnResume) {
            this.updateListViewModeOnResume = false;
            setupListViewMode();
            FeedViewModel feedViewModel = this.viewModel;
            if (feedViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                throw null;
            }
            Object obj = feedViewModel.stateLiveData.mData;
            Object obj2 = LiveData.NOT_SET;
            if (obj == obj2) {
                obj = null;
            }
            if (obj != null) {
                FeedViewModel feedViewModel2 = this.viewModel;
                if (feedViewModel2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    throw null;
                }
                Object obj3 = feedViewModel2.stateLiveData.mData;
                Object obj4 = obj3 != obj2 ? obj3 : null;
                obj4.getClass();
                handleResult((FeedState) obj4);
            }
        }
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        int i = R.id.empty_state_view;
        View findChildViewById = Options.Companion.findChildViewById(R.id.empty_state_view, view);
        if (findChildViewById != null) {
            ListEmptyViewBinding.bind(findChildViewById);
            i = R.id.error_panel;
            View findChildViewById2 = Options.Companion.findChildViewById(R.id.error_panel, view);
            if (findChildViewById2 != null) {
                ErrorPanelBinding.bind(findChildViewById2);
                i = R.id.items_list;
                RecyclerView recyclerView = (RecyclerView) Options.Companion.findChildViewById(R.id.items_list, view);
                if (recyclerView != null) {
                    i = R.id.loading_progress_bar;
                    ProgressBar progressBar = (ProgressBar) Options.Companion.findChildViewById(R.id.loading_progress_bar, view);
                    if (progressBar != null) {
                        i = R.id.loading_progress_text;
                        NewPipeTextView newPipeTextView = (NewPipeTextView) Options.Companion.findChildViewById(R.id.loading_progress_text, view);
                        if (newPipeTextView != null) {
                            i = R.id.new_items_loaded_button;
                            Button button = (Button) Options.Companion.findChildViewById(R.id.new_items_loaded_button, view);
                            if (button != null) {
                                i = R.id.refreshIcon;
                                if (((ImageView) Options.Companion.findChildViewById(R.id.refreshIcon, view)) != null) {
                                    i = R.id.refresh_info_container;
                                    if (((LinearLayout) Options.Companion.findChildViewById(R.id.refresh_info_container, view)) != null) {
                                        i = R.id.refresh_root_view;
                                        RelativeLayout relativeLayout = (RelativeLayout) Options.Companion.findChildViewById(R.id.refresh_root_view, view);
                                        if (relativeLayout != null) {
                                            i = R.id.refresh_subtitle_text;
                                            NewPipeTextView newPipeTextView2 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.refresh_subtitle_text, view);
                                            if (newPipeTextView2 != null) {
                                                i = R.id.refresh_text;
                                                NewPipeTextView newPipeTextView3 = (NewPipeTextView) Options.Companion.findChildViewById(R.id.refresh_text, view);
                                                if (newPipeTextView3 != null) {
                                                    i = R.id.swipeRefreshLayout;
                                                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) Options.Companion.findChildViewById(R.id.swipeRefreshLayout, view);
                                                    if (swipeRefreshLayout != null) {
                                                        this._feedBinding = new FragmentFeedBinding((RelativeLayout) view, recyclerView, progressBar, newPipeTextView, button, relativeLayout, newPipeTextView2, newPipeTextView3, swipeRefreshLayout);
                                                        super.onViewCreated(view, bundle);
                                                        FeedViewModel.Companion companion = FeedViewModel.Companion;
                                                        Context requireContext = requireContext();
                                                        requireContext.getClass();
                                                        long j = this.groupId;
                                                        companion.getClass();
                                                        Data.Builder builder = new Data.Builder(2);
                                                        builder.addInitializer(Reflection.getOrCreateKotlinClass(FeedViewModel.class), new FeedDAO_Impl$$ExternalSyntheticLambda6(2, j, requireContext));
                                                        InitializerViewModelFactory build = builder.build();
                                                        ViewModelStore viewModelStore = getViewModelStore();
                                                        CreationExtras viewModelCreationExtras = ViewModelKt.getViewModelCreationExtras(this);
                                                        viewModelStore.getClass();
                                                        viewModelCreationExtras.getClass();
                                                        Dispatcher dispatcher = new Dispatcher(viewModelStore, build, viewModelCreationExtras);
                                                        ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FeedViewModel.class);
                                                        String qualifiedName = orCreateKotlinClass.getQualifiedName();
                                                        if (qualifiedName == null) {
                                                            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("Local and anonymous classes can not be ViewModels");
                                                            return;
                                                        }
                                                        FeedViewModel feedViewModel = (FeedViewModel) dispatcher.getViewModel$lifecycle_viewmodel("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(qualifiedName), orCreateKotlinClass);
                                                        this.viewModel = feedViewModel;
                                                        feedViewModel.stateLiveData.observe(getViewLifecycleOwner(), new FeedFragment$sam$androidx_lifecycle_Observer$0(new RxAwaitKt$$ExternalSyntheticLambda0(this, 13), 0));
                                                        GroupieAdapter groupieAdapter = new GroupieAdapter();
                                                        FeedFragment$listenerStreamItem$1 feedFragment$listenerStreamItem$1 = this.listenerStreamItem;
                                                        groupieAdapter.onItemClickListener = feedFragment$listenerStreamItem$1;
                                                        groupieAdapter.onItemLongClickListener = feedFragment$listenerStreamItem$1;
                                                        this.groupAdapter = groupieAdapter;
                                                        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
                                                        fragmentFeedBinding.getClass();
                                                        fragmentFeedBinding.itemsList.addOnScrollListener(new FastScroller.AnonymousClass2(this, 1));
                                                        FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
                                                        fragmentFeedBinding2.getClass();
                                                        RecyclerView recyclerView2 = fragmentFeedBinding2.itemsList;
                                                        GroupieAdapter groupieAdapter2 = this.groupAdapter;
                                                        if (groupieAdapter2 == null) {
                                                            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
                                                            throw null;
                                                        }
                                                        recyclerView2.setAdapter(groupieAdapter2);
                                                        setupListViewMode();
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
                }
            }
        }
        CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void reloadContent() {
        hideNewItemsLoaded(0L, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            Intent intent = new Intent(requireContext(), (Class<?>) FeedLoadService.class);
            intent.putExtra("FeedLoadService.EXTRA_GROUP_ID", this.groupId);
            activity.startService(intent);
        }
        this.listState = null;
    }

    public final void setupListViewMode() {
        GroupieAdapter groupieAdapter = this.groupAdapter;
        if (groupieAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
            throw null;
        }
        int i = 1;
        if (Options.Companion.getItemViewMode(getContext()) == ItemViewMode.GRID) {
            Context context = getContext();
            Resources resources = context.getResources();
            i = Math.max(1, context.getResources().getDisplayMetrics().widthPixels / ((resources.getDimensionPixelSize(R.dimen.video_item_search_padding) * 2) + resources.getDimensionPixelSize(R.dimen.video_item_grid_thumbnail_image_width)));
        }
        groupieAdapter.spanCount = i;
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        RecyclerView recyclerView = fragmentFeedBinding.itemsList;
        Context requireContext = requireContext();
        GroupieAdapter groupieAdapter2 = this.groupAdapter;
        if (groupieAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
            throw null;
        }
        GridLayoutManager gridLayoutManager = new GridLayoutManager(requireContext, groupieAdapter2.spanCount);
        GroupieAdapter groupieAdapter3 = this.groupAdapter;
        if (groupieAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("groupAdapter");
            throw null;
        }
        gridLayoutManager.mSpanSizeLookup = groupieAdapter3.spanSizeLookup;
        recyclerView.setLayoutManager(gridLayoutManager);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        AppKt.animateHideRecyclerViewAllowingScrolling(fragmentFeedBinding.itemsList);
        FragmentFeedBinding fragmentFeedBinding2 = this._feedBinding;
        fragmentFeedBinding2.getClass();
        AppKt.animate$default(fragmentFeedBinding2.refreshRootView, false, 0L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding3 = this._feedBinding;
        fragmentFeedBinding3.getClass();
        AppKt.animate$default(fragmentFeedBinding3.loadingProgressText, true, 200L, null, 0L, null, 28);
        FragmentFeedBinding fragmentFeedBinding4 = this._feedBinding;
        fragmentFeedBinding4.getClass();
        fragmentFeedBinding4.swipeRefreshLayout.setRefreshing(true);
        this.isRefreshing = true;
    }

    public final Button tryGetNewItemsLoadedButton() {
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        if (fragmentFeedBinding != null) {
            return fragmentFeedBinding.newItemsLoadedButton;
        }
        return null;
    }

    public final void updateRefreshViewState() {
        String str;
        FragmentFeedBinding fragmentFeedBinding = this._feedBinding;
        fragmentFeedBinding.getClass();
        NewPipeTextView newPipeTextView = fragmentFeedBinding.refreshText;
        OffsetDateTime offsetDateTime = this.oldestSubscriptionUpdate;
        if (offsetDateTime == null || (str = Localization.prettyTime.formatUnrounded(offsetDateTime)) == null) {
            str = "—";
        }
        newPipeTextView.setText(getString(R.string.feed_oldest_subscription_update, str));
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment
    public final void doInitialLoadLogic() {
    }
}
