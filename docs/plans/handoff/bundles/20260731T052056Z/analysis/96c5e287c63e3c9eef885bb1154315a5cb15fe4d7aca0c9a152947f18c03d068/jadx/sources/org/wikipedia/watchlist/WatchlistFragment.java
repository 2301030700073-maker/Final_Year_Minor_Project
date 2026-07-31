package org.wikipedia.watchlist;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.view.ActionMode;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import com.hcaptcha.sdk.HCaptcha;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.util.DateRetargetClass;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.RegexKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.databinding.ViewWatchlistSearchBarBinding;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.settings.Prefs;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.DateUtil;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistItemView;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0005\u0006\u0007\b\t\nB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u000b"}, d2 = {"Lorg/wikipedia/watchlist/WatchlistFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/watchlist/WatchlistItemView$Callback;", "Landroidx/core/view/MenuProvider;", "<init>", "()V", "WatchlistItemViewHolder", "WatchlistDateViewHolder", "WatchlistSearchBarHolder", "AppIconAdapter", "SearchCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WatchlistFragment extends Fragment implements WatchlistItemView.Callback, MenuProvider {
    public HCaptcha _binding;
    public ActionMode actionMode;
    public NotificationButtonView notificationButtonView;
    public final Fragment.AnonymousClass10 resultLauncher;
    public final TalkTopicActivity.SearchCallback searchActionModeCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistDateViewHolder extends RecyclerView.ViewHolder {
        public final void bindItem(Date date) {
            TextView textView = (TextView) this.itemView.findViewById(R.id.dateText);
            LocalDate localDate = LocalDateTime.ofInstant(DateRetargetClass.toInstant(date), ZoneId.systemDefault()).toLocalDate();
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            localDate.getClass();
            textView.setText(DateUtil.getShortDateString(localDate));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistItemViewHolder extends RecyclerView.ViewHolder {
        public WatchlistItemViewHolder(WatchlistItemView watchlistItemView) {
            super(watchlistItemView);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class WatchlistSearchBarHolder extends RecyclerView.ViewHolder {
        public final ViewWatchlistSearchBarBinding itemBinding;
        public final /* synthetic */ WatchlistFragment this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public WatchlistSearchBarHolder(org.wikipedia.watchlist.WatchlistFragment r5, org.wikipedia.databinding.ViewWatchlistSearchBarBinding r6) {
            /*
                r4 = this;
                android.widget.ImageView r0 = r6.filterButton
                r4.this$0 = r5
                org.wikipedia.views.WikiCardView r1 = r6.rootView
                r4.<init>(r1)
                r4.itemBinding = r6
                android.content.Context r4 = r5.requireContext()
                android.util.TypedValue r6 = new android.util.TypedValue
                r6.<init>()
                android.content.res.Resources$Theme r4 = r4.getTheme()
                r2 = 2130968673(0x7f040061, float:1.7546006E38)
                r3 = 1
                boolean r4 = r4.resolveAttribute(r2, r6, r3)
                r2 = 0
                if (r4 == 0) goto L24
                goto L25
            L24:
                r6 = r2
            L25:
                if (r6 == 0) goto L4d
                int r4 = r6.data
                r1.setCardBackgroundColor(r4)
                org.wikipedia.watchlist.WatchlistFragment$$ExternalSyntheticLambda1 r4 = new org.wikipedia.watchlist.WatchlistFragment$$ExternalSyntheticLambda1
                r6 = 2
                r4.<init>(r5, r6)
                r1.setOnClickListener(r4)
                org.wikipedia.watchlist.WatchlistFragment$$ExternalSyntheticLambda1 r4 = new org.wikipedia.watchlist.WatchlistFragment$$ExternalSyntheticLambda1
                r6 = 3
                r4.<init>(r5, r6)
                r0.setOnClickListener(r4)
                android.view.View[] r4 = new android.view.View[r3]
                r5 = 0
                r4[r5] = r0
                r4 = r4[r5]
                java.lang.CharSequence r5 = r4.getContentDescription()
                kotlin.text.RegexKt.setTooltipText(r4, r5)
                return
            L4d:
                java.lang.String r4 = "Attribute not found; ID=2130968673"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m(r4)
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.watchlist.WatchlistFragment.WatchlistSearchBarHolder.<init>(org.wikipedia.watchlist.WatchlistFragment, org.wikipedia.databinding.ViewWatchlistSearchBarBinding):void");
        }
    }

    public WatchlistFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new WatchlistFragment$special$$inlined$viewModels$default$1(21, new WatchlistFragment$special$$inlined$viewModels$default$1(0, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(WatchlistViewModel.class), new WatchlistFragment$special$$inlined$viewModels$default$3(lazy, 0), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 25), new WatchlistFragment$special$$inlined$viewModels$default$3(lazy, 1));
        this.searchActionModeCallback = new TalkTopicActivity.SearchCallback(7, this);
        this.resultLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new WatchlistFragment$$ExternalSyntheticLambda0(this), new FragmentManager$FragmentIntentSenderContract(3));
    }

    public final WatchlistViewModel getViewModel() {
        return (WatchlistViewModel) this.viewModel$delegate.getValue();
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        menuInflater.inflate(R.menu.menu_watchlist, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_watchlist, viewGroup, false);
        int i = R.id.watchlistEmptyContainer;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.watchlistEmptyContainer);
        if (linearLayout != null) {
            i = R.id.watchlistEmptySearchMessage;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.watchlistEmptySearchMessage);
            if (textView != null) {
                i = R.id.watchlistErrorView;
                WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.watchlistErrorView);
                if (wikiErrorView != null) {
                    i = R.id.watchlistProgressBar;
                    ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.watchlistProgressBar);
                    if (progressBar != null) {
                        i = R.id.watchlistRecyclerView;
                        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.watchlistRecyclerView);
                        if (recyclerView != null) {
                            WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                            i = R.id.watchlistSearchEmptyContainer;
                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.watchlistSearchEmptyContainer);
                            if (linearLayout2 != null) {
                                i = R.id.watchlistSearchEmptyText;
                                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.watchlistSearchEmptyText);
                                if (textView2 != null) {
                                    this._binding = new HCaptcha(wikiSwipeRefreshLayout, linearLayout, textView, wikiErrorView, progressBar, recyclerView, wikiSwipeRefreshLayout, linearLayout2, textView2);
                                    ContextsKt supportActionBar = requireActivity().getSupportActionBar();
                                    supportActionBar.getClass();
                                    supportActionBar.setTitle(getString(R.string.watchlist_title));
                                    HCaptcha hCaptcha = this._binding;
                                    hCaptcha.getClass();
                                    WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = (WikiSwipeRefreshLayout) hCaptcha.result;
                                    wikiSwipeRefreshLayout2.getClass();
                                    return wikiSwipeRefreshLayout2;
                                }
                            }
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        return false;
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        MenuItem findItem = menu.findItem(R.id.menu_notifications);
        if (Headers.Companion.isLoggedIn()) {
            int i = 1;
            findItem.setVisible(true);
            NotificationButtonView notificationButtonView = this.notificationButtonView;
            if (notificationButtonView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            Prefs prefs = Prefs.INSTANCE;
            notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
            NotificationButtonView notificationButtonView2 = this.notificationButtonView;
            if (notificationButtonView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView2.setOnClickListener(new WatchlistFragment$$ExternalSyntheticLambda1(this, i));
            NotificationButtonView notificationButtonView3 = this.notificationButtonView;
            if (notificationButtonView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            notificationButtonView3.setContentDescription(getString(R.string.notifications_activity_title));
            NotificationButtonView notificationButtonView4 = this.notificationButtonView;
            if (notificationButtonView4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            findItem.setActionView(notificationButtonView4);
            findItem.expandActionView();
            NotificationButtonView notificationButtonView5 = this.notificationButtonView;
            if (notificationButtonView5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                throw null;
            }
            View view = new View[]{notificationButtonView5}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
        } else {
            findItem.setVisible(false);
        }
        updateNotificationDot$1(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        SearchAndFilterActionProvider searchAndFilterActionProvider;
        this.mCalled = true;
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            getViewModel().updateList(false);
            if (!"searchActionMode".equals(actionMode.mTag) || (searchAndFilterActionProvider = (SearchAndFilterActionProvider) this.searchActionModeCallback.searchActionProvider) == null) {
                return;
            }
            searchAndFilterActionProvider.updateFilterIconAndText();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
        HCaptcha hCaptcha = this._binding;
        hCaptcha.getClass();
        ((WikiSwipeRefreshLayout) hCaptcha.activity).setOnRefreshListener(new WatchlistFragment$$ExternalSyntheticLambda0(this));
        HCaptcha hCaptcha2 = this._binding;
        hCaptcha2.getClass();
        int i = 0;
        ((WikiErrorView) hCaptcha2.onFailureListeners).setRetryClickListener(new WatchlistFragment$$ExternalSyntheticLambda1(this, i));
        HCaptcha hCaptcha3 = this._binding;
        hCaptcha3.getClass();
        RecyclerView recyclerView = (RecyclerView) hCaptcha3.handler;
        requireContext();
        recyclerView.setLayoutManager(new LinearLayoutManager(1));
        this.notificationButtonView = new NotificationButtonView(requireActivity(), null);
        updateDisplayLanguages();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new WatchlistFragment$onViewCreated$3(this, null, i), 3);
    }

    public final void updateDisplayLanguages() {
        WatchlistViewModel viewModel = getViewModel();
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        List m785m = ViewSizeResolver$CC.m785m();
        ArrayList arrayList = new ArrayList();
        Iterator it = ((ArrayList) m785m).iterator();
        while (it.hasNext()) {
            Object next = it.next();
            Prefs prefs = Prefs.INSTANCE;
            if (!Prefs.getWatchlistExcludedWikiCodes().contains((String) next)) {
                arrayList.add(next);
            }
        }
        viewModel.displayLanguages = arrayList;
    }

    public final void updateNotificationDot$1(boolean z) {
        if (Headers.Companion.isLoggedIn()) {
            Prefs prefs = Prefs.INSTANCE;
            if (Prefs.getNotificationUnreadCount() > 0) {
                NotificationButtonView notificationButtonView = this.notificationButtonView;
                if (notificationButtonView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                    throw null;
                }
                notificationButtonView.setUnreadCount(Prefs.getNotificationUnreadCount());
                if (z) {
                    NotificationButtonView notificationButtonView2 = this.notificationButtonView;
                    if (notificationButtonView2 != null) {
                        notificationButtonView2.runAnimation();
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
                        throw null;
                    }
                }
                return;
            }
        }
        NotificationButtonView notificationButtonView3 = this.notificationButtonView;
        if (notificationButtonView3 != null) {
            notificationButtonView3.setUnreadCount(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("notificationButtonView");
            throw null;
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
