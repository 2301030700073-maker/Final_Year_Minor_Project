package org.wikipedia.readinglist;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.ComposeView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.ReadingListBehaviorsUtil;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListItemActionsDialog;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListUpdateFrequency;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicViewModel$getDiffResult$1;
import org.wikipedia.talk.UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.FeedbackUtil$$ExternalSyntheticLambda0;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.MessageCardView;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.SearchEmptyView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\b\u0005\u0006\u0007\b\u0005\u0005\t\nB\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0010²\u0006\u0012\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u000f\u001a\u00020\u000e8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lorg/wikipedia/readinglist/ReadingListsFragment;", "Landroidx/fragment/app/Fragment;", "Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;", "<init>", "()V", "OverflowCallback", "ReadingListItemHolder", "ReadingListPageItemHolder", "DiffLinesAdapter", "MultiSelectCallback", "HistorySearchCallback", "", "", "images", "", "isNewListGenerated", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListsFragment extends Fragment implements ReadingListItemActionsDialog.Callback {
    public NodeChain _binding;
    public ActionMode actionMode;
    public String currentSearchQuery;
    public boolean importMode;
    public final ReadingListFragment.MultiSelectCallback multiSelectModeCallback;
    public ReadingList recentPreviewSavedReadingList;
    public final HistoryFragment.HistorySearchCallback searchActionModeCallback;
    public boolean selectMode;
    public boolean shouldShowImportedSnackbar;
    public List displayedLists = EmptyList.INSTANCE;
    public final DiffUtil$DiffLinesAdapter adapter = new DiffUtil$DiffLinesAdapter(9, this);
    public final OverflowCallback readingListItemCallback = new OverflowCallback();
    public final OverflowCallback readingListPageItemCallback = new OverflowCallback();
    public final OverflowCallback overflowCallback = new OverflowCallback();
    public final Fragment.AnonymousClass10 filePickerLauncher = (Fragment.AnonymousClass10) registerForActivityResult(new ReadingListsFragment$$ExternalSyntheticLambda1(this, 5), new FragmentManager$FragmentIntentSenderContract(3));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingListItemHolder extends DefaultViewHolder {
        public ReadingListItemHolder(ReadingListItemView readingListItemView) {
            super(readingListItemView);
        }

        @Override // org.wikipedia.views.DefaultViewHolder
        public final ReadingListItemView getView() {
            View view = this.itemView;
            view.getClass();
            return (ReadingListItemView) view;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ReadingListPageItemHolder extends DefaultViewHolder {
        public ReadingListPageItemHolder(PageItemView pageItemView) {
            super(pageItemView);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RecommendedReadingListUpdateFrequency.values().length];
            try {
                iArr[RecommendedReadingListUpdateFrequency.DAILY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RecommendedReadingListUpdateFrequency.WEEKLY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RecommendedReadingListUpdateFrequency.MONTHLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ReadingListsFragment() {
        int i = 2;
        this.searchActionModeCallback = new HistoryFragment.HistorySearchCallback(i, this);
        this.multiSelectModeCallback = new ReadingListFragment.MultiSelectCallback(i, this);
    }

    public final void beginMultiSelect$2() {
        ActionMode actionMode = this.actionMode;
        if (actionMode == null || !"multiSelectActionMode".equals(actionMode.mTag)) {
            this.selectMode = true;
            requireActivity().startSupportActionMode(this.multiSelectModeCallback);
        }
    }

    public final void enableLayoutTransition(boolean z) {
        NodeChain nodeChain = this._binding;
        if (z) {
            nodeChain.getClass();
            ((LinearLayout) nodeChain.sentinelHead).getLayoutTransition().enableTransitionType(4);
            NodeChain nodeChain2 = this._binding;
            nodeChain2.getClass();
            ((ScrollView) nodeChain2.outerCoordinator).getLayoutTransition().enableTransitionType(4);
            return;
        }
        nodeChain.getClass();
        ((LinearLayout) nodeChain.sentinelHead).getLayoutTransition().disableTransitionType(4);
        NodeChain nodeChain3 = this._binding;
        nodeChain3.getClass();
        ((ScrollView) nodeChain3.outerCoordinator).getLayoutTransition().disableTransitionType(4);
    }

    public final ReadingListPage getPageById$1(long j) {
        Object obj;
        Iterator it = this.displayedLists.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if ((obj instanceof ReadingListPage) && ((ReadingListPage) obj).id == j) {
                break;
            }
        }
        return (ReadingListPage) obj;
    }

    public final ArrayList getSelectedLists() {
        List list = this.displayedLists;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof ReadingList) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((ReadingList) next).selected) {
                arrayList2.add(next);
            }
        }
        return arrayList2;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onAddItemToOther(long j) {
        ReadingListPage pageById$1 = getPageById$1(j);
        if (pageById$1 == null) {
            return;
        }
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        WikiSite wikiSite = pageById$1.wiki;
        String str = pageById$1.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        PageTitle pageTitle = new PageTitle(pageById$1.apiTitle, wikiSite, pageById$1.thumbUrl, pageById$1.description, pageById$1.displayTitle);
        Constants.InvokeSource invokeSource = Constants.InvokeSource.READING_LIST_ACTIVITY;
        invokeSource.getClass();
        List listOf = Room.listOf(pageTitle);
        AddToReadingListDialog addToReadingListDialog = new AddToReadingListDialog();
        addToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("showDefaultList", Boolean.TRUE)));
        addToReadingListDialog.dismissListener = null;
        Okio__OkioKt.show(childFragmentManager, addToReadingListDialog);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        WikiGamesEvent.submit$default("impression", "rrl_saved", null, null, null, null, null, null, 508);
        setRetainInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        boolean z = false;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_reading_lists, viewGroup, false);
        int i = R.id.content_container;
        LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.content_container);
        Continuation continuation = null;
        if (linearLayout != null) {
            i = R.id.discoverCardView;
            ComposeView composeView = (ComposeView) Room.findChildViewById(inflate, R.id.discoverCardView);
            if (composeView != null) {
                i = R.id.empty_container;
                ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.empty_container);
                if (scrollView != null) {
                    i = R.id.empty_message;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.empty_message);
                    if (textView != null) {
                        i = R.id.empty_title;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.empty_title);
                        if (textView2 != null) {
                            i = R.id.onboarding_view;
                            MessageCardView messageCardView = (MessageCardView) Room.findChildViewById(inflate, R.id.onboarding_view);
                            if (messageCardView != null) {
                                i = R.id.recycler_view;
                                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.recycler_view);
                                if (recyclerView != null) {
                                    i = R.id.search_empty_view;
                                    SearchEmptyView searchEmptyView = (SearchEmptyView) Room.findChildViewById(inflate, R.id.search_empty_view);
                                    if (searchEmptyView != null) {
                                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                                        this._binding = new NodeChain(wikiSwipeRefreshLayout, linearLayout, composeView, scrollView, textView, textView2, messageCardView, recyclerView, searchEmptyView, wikiSwipeRefreshLayout, 4);
                                        searchEmptyView.setEmptyText(R.string.search_reading_lists_no_results);
                                        NodeChain nodeChain = this._binding;
                                        nodeChain.getClass();
                                        ((RecyclerView) nodeChain.buffer).setLayoutManager(new LinearLayoutManager(1));
                                        NodeChain nodeChain2 = this._binding;
                                        nodeChain2.getClass();
                                        ((RecyclerView) nodeChain2.buffer).setAdapter(this.adapter);
                                        NodeChain nodeChain3 = this._binding;
                                        nodeChain3.getClass();
                                        ((RecyclerView) nodeChain3.buffer).addItemDecoration(new DrawableItemDecoration(requireContext(), z, (boolean) (objArr3 == true ? 1 : 0), 28));
                                        NodeChain nodeChain4 = this._binding;
                                        nodeChain4.getClass();
                                        ((RecyclerView) nodeChain4.buffer).addOnScrollListener(new FastScroller.AnonymousClass2(3, this));
                                        NodeChain nodeChain5 = this._binding;
                                        nodeChain5.getClass();
                                        ((WikiSwipeRefreshLayout) nodeChain5.cachedDiffer).setOnRefreshListener(new ReadingListsFragment$$ExternalSyntheticLambda1(this, objArr2 == true ? 1 : 0));
                                        if (PrefsIoUtil.getConfig().getDisableReadingListSync()) {
                                            NodeChain nodeChain6 = this._binding;
                                            nodeChain6.getClass();
                                            ((WikiSwipeRefreshLayout) nodeChain6.cachedDiffer).setEnabled(false);
                                        }
                                        NodeChain nodeChain7 = this._binding;
                                        nodeChain7.getClass();
                                        ((SearchEmptyView) nodeChain7.stack).setVisibility(8);
                                        enableLayoutTransition(true);
                                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ReadingListsFragment$onCreateView$2(this, continuation, objArr == true ? 1 : 0), 3);
                                        NodeChain nodeChain8 = this._binding;
                                        nodeChain8.getClass();
                                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout2 = (WikiSwipeRefreshLayout) nodeChain8.layoutNode;
                                        wikiSwipeRefreshLayout2.getClass();
                                        return wikiSwipeRefreshLayout2;
                                    }
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

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onDeleteItem(long j) {
        ReadingListPage pageById$1 = getPageById$1(j);
        if (pageById$1 == null) {
            return;
        }
        List list = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.deletePages(requireActivity(), ReadingListBehaviorsUtil.getListsContainPage(pageById$1), pageById$1, new ReadingListsFragment$$ExternalSyntheticLambda1(this, 1), new ReadingListsFragment$$ExternalSyntheticLambda1(this, 2));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        NodeChain nodeChain = this._binding;
        nodeChain.getClass();
        ((RecyclerView) nodeChain.buffer).setAdapter(null);
        NodeChain nodeChain2 = this._binding;
        nodeChain2.getClass();
        ArrayList arrayList = ((RecyclerView) nodeChain2.buffer).mScrollListeners;
        if (arrayList != null) {
            arrayList.clear();
        }
        this._binding = null;
        this.mCalled = true;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onMoveItemToOther(long j) {
        ReadingListPage pageById$1 = getPageById$1(j);
        if (pageById$1 == null) {
            return;
        }
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        long j2 = pageById$1.listId;
        WikiSite wikiSite = pageById$1.wiki;
        String str = pageById$1.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        PageTitle pageTitle = new PageTitle(pageById$1.apiTitle, wikiSite, pageById$1.thumbUrl, pageById$1.description, pageById$1.displayTitle);
        Constants.InvokeSource invokeSource = Constants.InvokeSource.READING_LIST_ACTIVITY;
        invokeSource.getClass();
        List listOf = Room.listOf(pageTitle);
        MoveToReadingListDialog moveToReadingListDialog = new MoveToReadingListDialog();
        moveToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("sourceReadingListId", Long.valueOf(j2)), new Pair("showDefaultList", Boolean.TRUE)));
        moveToReadingListDialog.dismissListener = null;
        Okio__OkioKt.show(childFragmentManager, moveToReadingListDialog);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        updateLists();
        Context requireContext = requireContext();
        int size = this.displayedLists.size();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(size, "ReadingLists.ListsCount:", ".shown")));
        requireActivity().invalidateOptionsMenu();
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onShareItem(long j) {
        ReadingListPage pageById$1 = getPageById$1(j);
        if (pageById$1 == null) {
            return;
        }
        AppCompatActivity requireActivity = requireActivity();
        WikiSite wikiSite = pageById$1.wiki;
        String str = pageById$1.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        ShareUtil.shareText$default(requireActivity, new PageTitle(pageById$1.apiTitle, wikiSite, pageById$1.thumbUrl, pageById$1.description, pageById$1.displayTitle));
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onToggleItemOffline(long j) {
        ReadingListPage pageById$1 = getPageById$1(j);
        if (pageById$1 == null) {
            return;
        }
        List list = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.togglePageOffline(requireActivity(), pageById$1, new ReadingListsFragment$$ExternalSyntheticLambda1(this, 3));
    }

    public final void setEmptyContainerVisibility(boolean z) {
        NodeChain nodeChain = this._binding;
        if (!z) {
            nodeChain.getClass();
            ((ScrollView) nodeChain.outerCoordinator).setVisibility(8);
        } else {
            nodeChain.getClass();
            ((ScrollView) nodeChain.outerCoordinator).setVisibility(0);
            requireActivity().getWindow().setSoftInputMode(32);
        }
    }

    public final void toggleSelectList(ReadingList readingList) {
        if (readingList != null) {
            List list = this.displayedLists;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (obj instanceof ReadingList) {
                    arrayList.add(obj);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ReadingList readingList2 = (ReadingList) it.next();
                if (readingList2.getTitle().equals(readingList.getTitle())) {
                    readingList2.selected = !readingList2.selected;
                }
            }
            ActionMode actionMode = this.actionMode;
            if (actionMode != null) {
                actionMode.invalidate();
            }
            this.adapter.notifyDataSetChanged();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00bd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateEmptyState$1(java.lang.String r4) {
        /*
            r3 = this;
            r0 = 8
            r1 = 0
            if (r4 == 0) goto L25
            int r4 = r4.length()
            if (r4 != 0) goto Lc
            goto L25
        Lc:
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.stack
            org.wikipedia.views.SearchEmptyView r4 = (org.wikipedia.views.SearchEmptyView) r4
            java.util.List r2 = r3.displayedLists
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L1e
            r0 = r1
        L1e:
            r4.setVisibility(r0)
            r3.setEmptyContainerVisibility(r1)
            return
        L25:
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.stack
            org.wikipedia.views.SearchEmptyView r4 = (org.wikipedia.views.SearchEmptyView) r4
            r4.setVisibility(r0)
            java.util.List r4 = r3.displayedLists
            int r4 = r4.size()
            r0 = 1
            if (r4 != r0) goto L8f
            java.util.List r4 = r3.displayedLists
            java.lang.Object r4 = r4.get(r1)
            boolean r4 = r4 instanceof org.wikipedia.readinglist.database.ReadingList
            if (r4 == 0) goto L8f
            java.util.List r4 = r3.displayedLists
            java.lang.Object r4 = r4.get(r1)
            r4.getClass()
            org.wikipedia.readinglist.database.ReadingList r4 = (org.wikipedia.readinglist.database.ReadingList) r4
            boolean r4 = r4.isDefault()
            if (r4 == 0) goto L8f
            java.util.List r4 = r3.displayedLists
            java.lang.Object r4 = r4.get(r1)
            r4.getClass()
            org.wikipedia.readinglist.database.ReadingList r4 = (org.wikipedia.readinglist.database.ReadingList) r4
            java.util.ArrayList r4 = r4.pages
            boolean r4 = r4.isEmpty()
            if (r4 != 0) goto L8f
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.head
            android.widget.TextView r4 = (android.widget.TextView) r4
            r2 = 2131887211(0x7f12046b, float:1.9409023E38)
            java.lang.String r2 = r3.getString(r2)
            r4.setText(r2)
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.tail
            android.widget.TextView r4 = (android.widget.TextView) r4
            r2 = 2131887210(0x7f12046a, float:1.940902E38)
            java.lang.String r2 = r3.getString(r2)
            r4.setText(r2)
            goto Lb5
        L8f:
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.head
            android.widget.TextView r4 = (android.widget.TextView) r4
            r2 = 2131888190(0x7f12083e, float:1.9411008E38)
            java.lang.String r2 = r3.getString(r2)
            r4.setText(r2)
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.tail
            android.widget.TextView r4 = (android.widget.TextView) r4
            r2 = 2131888053(0x7f1207b5, float:1.941073E38)
            java.lang.String r2 = r3.getString(r2)
            r4.setText(r2)
        Lb5:
            java.util.List r4 = r3.displayedLists
            boolean r4 = r4.isEmpty()
            if (r4 == 0) goto Lce
            androidx.compose.ui.node.NodeChain r4 = r3._binding
            r4.getClass()
            java.lang.Object r4 = r4.current
            org.wikipedia.views.MessageCardView r4 = (org.wikipedia.views.MessageCardView) r4
            int r4 = r4.getVisibility()
            if (r4 != 0) goto Lcd
            goto Lce
        Lcd:
            r1 = r0
        Lce:
            r3.setEmptyContainerVisibility(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.readinglist.ReadingListsFragment.updateEmptyState$1(java.lang.String):void");
    }

    public final void updateLists(final String str, final boolean z) {
        int i = 2;
        Continuation continuation = null;
        if (str == null || str.length() == 0) {
            Prefs prefs = Prefs.INSTANCE;
            int i2 = 0;
            if (Prefs.isRecommendedReadingListOnboardingShown()) {
                if (Headers.Companion.isLoggedIn() && !Headers.Companion.isTemporaryAccount() && !Prefs.isReadingListSyncEnabled()) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_list_sync_reminder_enabled), true) && !PrefsIoUtil.getConfig().getDisableReadingListSync()) {
                        NodeChain nodeChain = this._binding;
                        nodeChain.getClass();
                        ((MessageCardView) nodeChain.current).setMessageLabel(null);
                        NodeChain nodeChain2 = this._binding;
                        nodeChain2.getClass();
                        MessageCardView messageCardView = (MessageCardView) nodeChain2.current;
                        String string = getString(R.string.reading_lists_sync_reminder_title);
                        string.getClass();
                        messageCardView.setMessageTitle(string);
                        NodeChain nodeChain3 = this._binding;
                        nodeChain3.getClass();
                        MessageCardView messageCardView2 = (MessageCardView) nodeChain3.current;
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        messageCardView2.setMessageText(StringUtil.fromHtml(getString(R.string.reading_lists_sync_reminder_text)).toString());
                        NodeChain nodeChain4 = this._binding;
                        nodeChain4.getClass();
                        MessageCardView messageCardView3 = (MessageCardView) nodeChain4.current;
                        Context requireContext = requireContext();
                        TypedValue typedValue = new TypedValue();
                        if (!requireContext.getTheme().resolveAttribute(R.attr.sync_reading_list_prompt_drawable, typedValue, true)) {
                            typedValue = null;
                        }
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130970085");
                            return;
                        }
                        messageCardView3.setImageResource(typedValue.resourceId, true);
                        NodeChain nodeChain5 = this._binding;
                        nodeChain5.getClass();
                        int i3 = 3;
                        ((MessageCardView) nodeChain5.current).setPositiveButton(R.string.reading_lists_sync_reminder_action, new FeedbackUtil$$ExternalSyntheticLambda0(i3));
                        NodeChain nodeChain6 = this._binding;
                        nodeChain6.getClass();
                        ((MessageCardView) nodeChain6.current).setNegativeButton(R.string.reading_lists_ignore_button, new ReadingListsFragment$$ExternalSyntheticLambda4(this, i3));
                        NodeChain nodeChain7 = this._binding;
                        nodeChain7.getClass();
                        ((MessageCardView) nodeChain7.current).setVisibility(0);
                    }
                }
                if (!Headers.Companion.isLoggedIn() || Headers.Companion.isTemporaryAccount()) {
                    WikipediaApp wikipediaApp2 = WikipediaApp.instance;
                    if (ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_list_login_reminder_enabled), true) && !PrefsIoUtil.getConfig().getDisableReadingListSync()) {
                        NodeChain nodeChain8 = this._binding;
                        nodeChain8.getClass();
                        ((MessageCardView) nodeChain8.current).setMessageLabel(null);
                        NodeChain nodeChain9 = this._binding;
                        nodeChain9.getClass();
                        MessageCardView messageCardView4 = (MessageCardView) nodeChain9.current;
                        String string2 = getString(R.string.reading_list_login_reminder_title);
                        string2.getClass();
                        messageCardView4.setMessageTitle(string2);
                        NodeChain nodeChain10 = this._binding;
                        nodeChain10.getClass();
                        MessageCardView messageCardView5 = (MessageCardView) nodeChain10.current;
                        String string3 = getString(R.string.reading_lists_login_reminder_text);
                        string3.getClass();
                        messageCardView5.setMessageText(string3);
                        NodeChain nodeChain11 = this._binding;
                        nodeChain11.getClass();
                        MessageCardView messageCardView6 = (MessageCardView) nodeChain11.current;
                        Context requireContext2 = requireContext();
                        TypedValue typedValue2 = new TypedValue();
                        if (!requireContext2.getTheme().resolveAttribute(R.attr.sync_reading_list_prompt_drawable, typedValue2, true)) {
                            typedValue2 = null;
                        }
                        if (typedValue2 == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130970085");
                            return;
                        }
                        messageCardView6.setImageResource(typedValue2.resourceId, true);
                        NodeChain nodeChain12 = this._binding;
                        nodeChain12.getClass();
                        ((MessageCardView) nodeChain12.current).setPositiveButton(R.string.reading_lists_login_button, new ReadingListsFragment$$ExternalSyntheticLambda4(this, 4));
                        NodeChain nodeChain13 = this._binding;
                        nodeChain13.getClass();
                        ((MessageCardView) nodeChain13.current).setNegativeButton(R.string.reading_lists_ignore_button, new ReadingListsFragment$$ExternalSyntheticLambda4(this, 5));
                        NodeChain nodeChain14 = this._binding;
                        nodeChain14.getClass();
                        ((MessageCardView) nodeChain14.current).setVisibility(0);
                    }
                }
                NodeChain nodeChain15 = this._binding;
                nodeChain15.getClass();
                ((MessageCardView) nodeChain15.current).setVisibility(8);
            } else {
                WikiGamesEvent.submit$default("impression", "rrl_saved_prompt", null, null, null, null, null, null, 508);
                NodeChain nodeChain16 = this._binding;
                nodeChain16.getClass();
                ((MessageCardView) nodeChain16.current).setMessageLabel(getString(R.string.recommended_reading_list_onboarding_card_new));
                NodeChain nodeChain17 = this._binding;
                nodeChain17.getClass();
                MessageCardView messageCardView7 = (MessageCardView) nodeChain17.current;
                String string4 = getString(R.string.recommended_reading_list_onboarding_card_title);
                string4.getClass();
                messageCardView7.setMessageTitle(string4);
                NodeChain nodeChain18 = this._binding;
                nodeChain18.getClass();
                MessageCardView messageCardView8 = (MessageCardView) nodeChain18.current;
                String string5 = getString(R.string.recommended_reading_list_onboarding_card_message);
                string5.getClass();
                messageCardView8.setMessageText(string5);
                NodeChain nodeChain19 = this._binding;
                nodeChain19.getClass();
                ((MessageCardView) nodeChain19.current).setImageResource(-1, false);
                NodeChain nodeChain20 = this._binding;
                nodeChain20.getClass();
                ((MessageCardView) nodeChain20.current).setPositiveButton(R.string.recommended_reading_list_onboarding_card_positive_button, new ReadingListsFragment$$ExternalSyntheticLambda4(this, i2));
                NodeChain nodeChain21 = this._binding;
                nodeChain21.getClass();
                ((MessageCardView) nodeChain21.current).setNegativeButton(R.string.recommended_reading_list_onboarding_card_negative_button, new ReadingListsFragment$$ExternalSyntheticLambda4(this, i));
                NodeChain nodeChain22 = this._binding;
                nodeChain22.getClass();
                ((MessageCardView) nodeChain22.current).setVisibility(0);
            }
        } else {
            NodeChain nodeChain23 = this._binding;
            nodeChain23.getClass();
            ((MessageCardView) nodeChain23.current).setVisibility(8);
        }
        List list = ReadingListBehaviorsUtil.allReadingLists;
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), ReadingListBehaviorsUtil.exceptionHandler, null, new PageActivity$onCreate$1$1$1(str, new ReadingListBehaviorsUtil.SearchCallback() { // from class: org.wikipedia.readinglist.ReadingListsFragment$$ExternalSyntheticLambda0
            @Override // org.wikipedia.readinglist.ReadingListBehaviorsUtil.SearchCallback
            public final void onCompleted(List list2) {
                String str2;
                list2.getClass();
                ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
                DiffUtil.DiffResult calculateDiff$1 = DiffUtil.calculateDiff$1(new TalkTopicViewModel$getDiffResult$1(list2, readingListsFragment));
                if (list2.size() == 1 && (list2.get(0) instanceof ReadingList)) {
                    Object obj = list2.get(0);
                    obj.getClass();
                    if (((ReadingList) obj).isDefault()) {
                        Object obj2 = list2.get(0);
                        obj2.getClass();
                        if (((ReadingList) obj2).pages.isEmpty()) {
                            list2.remove(0);
                        }
                    }
                }
                boolean z2 = readingListsFragment.importMode;
                String str3 = str;
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(readingListsFragment), null, null, new ReadingListsFragment$updateLists$1$1(readingListsFragment, list2, z2 || z || readingListsFragment.displayedLists.size() != list2.size() || !((str2 = readingListsFragment.currentSearchQuery) == null || str2.length() == 0 || str3 == null || str3.length() == 0 || Intrinsics.areEqual(readingListsFragment.currentSearchQuery, str3)), calculateDiff$1, str3, null), 3);
            }
        }, continuation, 24), 2);
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OverflowCallback implements ReadingListTitleDialog$Callback, ReadingListItemView.Callback, PageItemView.Callback {
        public /* synthetic */ OverflowCallback() {
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public void onActionClick(View view, Object obj) {
            ReadingListPage readingListPage = (ReadingListPage) obj;
            if (readingListPage != null) {
                Prefs prefs = Prefs.INSTANCE;
                if (Prefs.isDownloadOnlyOverWiFiEnabled()) {
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    Object systemService = Jsoup.getInstance().getSystemService("connectivity");
                    systemService.getClass();
                    NetworkInfo networkInfo = ((ConnectivityManager) systemService).getNetworkInfo(1);
                    if ((networkInfo == null || !networkInfo.isConnected()) && readingListPage.status == 0) {
                        readingListPage.offline = false;
                    }
                }
                boolean saving = readingListPage.getSaving();
                ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
                if (saving) {
                    Toast.makeText(readingListsFragment.getContext(), R.string.reading_list_article_save_in_progress, 1).show();
                } else {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.toggleOffline(readingListsFragment.requireActivity(), readingListPage, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 11));
                }
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onChecked(ReadingList readingList) {
            readingList.getClass();
            ReadingListsFragment.this.toggleSelectList(readingList);
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onClick(ReadingList readingList) {
            readingList.getClass();
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ActionMode actionMode = readingListsFragment.actionMode;
            if (actionMode != null && "multiSelectActionMode".equals(actionMode.mTag)) {
                readingListsFragment.toggleSelectList(readingList);
                return;
            }
            ActionMode actionMode2 = readingListsFragment.actionMode;
            if (actionMode2 != null) {
                actionMode2.finish();
            }
            if (readingListsFragment.recentPreviewSavedReadingList != null) {
                readingListsFragment.recentPreviewSavedReadingList = null;
                Prefs prefs = Prefs.INSTANCE;
                PrefsIoUtil.setLong(-1L, R.string.preference_key_reading_lists_recent_receive_id);
                Iterator it = readingListsFragment.displayedLists.iterator();
                int i = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i = -1;
                        break;
                    }
                    Object next = it.next();
                    if ((next instanceof ReadingList) && ((ReadingList) next).id == readingList.id) {
                        break;
                    } else {
                        i++;
                    }
                }
                if (i != -1) {
                    readingListsFragment.adapter.notifyItemChanged(i);
                }
            }
            WikiGamesEvent.submit$default("open_list_click", "rrl_saved", null, null, null, null, null, null, 508);
            int i2 = ReadingListActivity.$r8$clinit;
            readingListsFragment.startActivity(NodeUtils.newIntent(readingListsFragment.requireContext(), readingList), null);
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onDelete(ReadingList readingList) {
            readingList.getClass();
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ReadingListBehaviorsUtil.deleteReadingList(readingListsFragment.requireActivity(), readingList, true, new ReadingListsFragment$$ExternalSyntheticLambda11(readingListsFragment, readingList, 1));
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public void onListChipClick(ReadingList readingList) {
            int i = ReadingListActivity.$r8$clinit;
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            readingListsFragment.startActivity(NodeUtils.newIntent(readingListsFragment.requireContext(), readingList), null);
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public boolean onLongClick(Object obj) {
            ReadingListPage readingListPage = (ReadingListPage) obj;
            if (readingListPage == null) {
                return false;
            }
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            FragmentManagerImpl childFragmentManager = readingListsFragment.getChildFragmentManager();
            childFragmentManager.getClass();
            List list = ReadingListBehaviorsUtil.allReadingLists;
            Okio__OkioKt.show(childFragmentManager, NodeTraversor.newInstance(readingListPage.id, ReadingListBehaviorsUtil.getListsContainPage(readingListPage), readingListsFragment.actionMode != null));
            return true;
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onRemoveAllOffline(ReadingList readingList) {
            readingList.getClass();
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ReadingListBehaviorsUtil.removePagesFromOffline(readingListsFragment.requireActivity(), readingList.pages, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 8));
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onRename(ReadingList readingList) {
            readingList.getClass();
            if (readingList.isDefault()) {
                L.LEVEL_W.log("Attempted to rename default list.", null);
                return;
            }
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ReadingListBehaviorsUtil.renameReadingList(readingListsFragment.requireActivity(), readingList, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 9));
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSaveAllOffline(ReadingList readingList) {
            readingList.getClass();
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ReadingListBehaviorsUtil.savePagesForOffline(readingListsFragment.requireActivity(), readingList.pages, new ReadingListsFragment$$ExternalSyntheticLambda1(readingListsFragment, 7));
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSaveToList(ReadingList readingList) {
            readingList.getClass();
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSelectList(ReadingList readingList) {
            readingList.getClass();
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            ActionMode actionMode = readingListsFragment.actionMode;
            if (actionMode == null || !"multiSelectActionMode".equals(actionMode.mTag)) {
                readingListsFragment.beginMultiSelect$2();
            }
            readingListsFragment.toggleSelectList(readingList);
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onShare(ReadingList readingList) {
            readingList.getClass();
            AppCompatActivity requireActivity = ReadingListsFragment.this.requireActivity();
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(requireActivity), new ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(requireActivity, 0), null, new ReadingListsShareHelper$shareReadingList$2(readingList, requireActivity, null), 2);
        }

        @Override // org.wikipedia.readinglist.ReadingListTitleDialog$Callback
        public void onSuccess(String str, String str2) {
            str.getClass();
            str2.getClass();
            ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(readingListsFragment.getViewLifecycleOwner()), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 4), null, new RealImageLoader$execute$2(str, str2, readingListsFragment, null, 27), 2);
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onAbout() {
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onCustomize() {
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onNotification() {
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public void onClick(Object obj) {
            ReadingListPage readingListPage = (ReadingListPage) obj;
            if (readingListPage != null) {
                WikiSite wikiSite = readingListPage.wiki;
                String str = readingListPage.lang;
                wikiSite.getClass();
                str.getClass();
                wikiSite.languageCode = str;
                HistoryEntry historyEntry = new HistoryEntry(11, new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle));
                List list = ReadingListBehaviorsUtil.allReadingLists;
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new SyntaxHighlighter.AnonymousClass2(8, readingListPage, (Continuation) null), 2);
                int i = PageActivity.$r8$clinit;
                ReadingListsFragment readingListsFragment = ReadingListsFragment.this;
                readingListsFragment.startActivity(LoginClient.newIntentForCurrentTab(readingListsFragment.requireContext(), historyEntry, historyEntry.getTitle(), true), null);
            }
        }
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onSelectItem(long j) {
    }

    public final void updateLists() {
        String str = this.currentSearchQuery;
        updateLists(str, true ^ (str == null || str.length() == 0));
    }
}
