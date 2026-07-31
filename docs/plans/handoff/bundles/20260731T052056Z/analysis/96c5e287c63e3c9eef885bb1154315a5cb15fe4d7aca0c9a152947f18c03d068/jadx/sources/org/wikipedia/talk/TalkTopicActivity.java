package org.wikipedia.talk;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.NodeChain;
import androidx.core.view.ActionProvider;
import androidx.core.view.WindowInsetsControllerCompat$Impl23;
import androidx.core.view.WindowInsetsControllerCompat$Impl26;
import androidx.core.view.WindowInsetsControllerCompat$Impl30;
import androidx.core.view.WindowInsetsControllerCompat$Impl35;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.memory.MemoryCacheService;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.airbnb.lottie.LottieDrawable$$ExternalSyntheticLambda1;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.UnsignedKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.SequenceBuilderIterator;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.ByteString;
import okio.Path;
import okio.internal.DefaultSocket;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.commons.FilePageActivity;
import org.wikipedia.databinding.FragmentPlacesBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.diff.ArticleEditDetailsActivity;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.insertmedia.InsertMediaViewModel;
import org.wikipedia.login.LoginClient;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationViewModel;
import org.wikipedia.notifications.NotificationViewModel$updateSearchQuery$1;
import org.wikipedia.page.LinkHandler;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.richtext.CustomHtmlParser;
import org.wikipedia.search.SearchFragment$$ExternalSyntheticLambda1;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.talk.TalkThreadHeaderView;
import org.wikipedia.talk.TalkThreadItemView;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.SearchActionProvider;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistFragment;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001:\u0007\u0004\u0005\u0006\u0007\u0005\b\tB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\n"}, d2 = {"Lorg/wikipedia/talk/TalkTopicActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "SearchCallback", "HeaderItemAdapter", "HeaderViewHolder", "TalkReplyHolder", "TalkLinkHandler", "org/wikipedia/util/UriUtil", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkTopicActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public Request.Builder binding;
    public final HeaderItemAdapter headerAdapter;
    public TalkLinkHandler linkHandler;
    public final LinkMovementMethodExt linkMovementMethod;
    public final ActivityResultRegistry$register$2 replyResult;
    public final ActivityResultRegistry$register$2 requestEditSource;
    public final ActivityResultRegistry$register$2 requestLogin;
    public final SearchCallback searchActionModeCallback;
    public final HeaderItemAdapter threadAdapter;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderItemAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ TalkTopicActivity this$0;

        public /* synthetic */ HeaderItemAdapter(TalkTopicActivity talkTopicActivity, int i) {
            this.$r8$classId = i;
            this.this$0 = talkTopicActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
                case 0:
                    return 1;
                default:
                    int i = TalkTopicActivity.$r8$clinit;
                    return this.this$0.getViewModel().flattenedThreadItems.size();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            switch (this.$r8$classId) {
                case 0:
                    HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
                    TalkThreadHeaderView talkThreadHeaderView = headerViewHolder.view;
                    TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
                    int i2 = TalkTopicActivity.$r8$clinit;
                    PageTitle pageTitle = talkTopicActivity.getViewModel().pageTitle;
                    ThreadItem threadItem = talkTopicActivity.getViewModel().topic;
                    boolean z = talkTopicActivity.getViewModel().subscribed;
                    LinkMovementMethodExt linkMovementMethodExt = talkTopicActivity.linkMovementMethod;
                    String str = talkTopicActivity.getViewModel().currentSearchQuery;
                    pageTitle.getClass();
                    linkMovementMethodExt.getClass();
                    DefaultSocket defaultSocket = talkThreadHeaderView.binding;
                    TextView textView = (TextView) defaultSocket.closeBits;
                    TextView textView2 = (TextView) defaultSocket.socket;
                    TextView textView3 = (TextView) defaultSocket.sink;
                    MaterialButton materialButton = (MaterialButton) defaultSocket.source;
                    textView.setMovementMethod(linkMovementMethodExt);
                    int i3 = TalkTopicsActivity.$r8$clinit;
                    PageTitle nonTalkPageTitle = Headers.Companion.getNonTalkPageTitle(pageTitle);
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    String namespace = pageTitle.getNamespace();
                    if (namespace.length() == 0) {
                        namespace = TalkAliasData.valueFor(pageTitle.wikiSite.languageCode);
                    }
                    StringUtil.setHighlightedAndBoldenedText((TextView) defaultSocket.closeBits, StringUtil.fromHtml(((Object) namespace) + ": <a href='" + nonTalkPageTitle.getUri() + "'>" + StringUtil.removeNamespace(StringUtil.removeHTMLTags(pageTitle.getDisplayText())) + "</a>"), str);
                    textView3.setVisibility(!UriUtil.isHeaderTemplate(threadItem) ? 0 : 8);
                    textView3.setMovementMethod(linkMovementMethodExt);
                    CharSequence fromHtml = StringUtil.fromHtml(threadItem != null ? threadItem.html : null);
                    if (StringsKt.isBlank(fromHtml)) {
                        fromHtml = talkThreadHeaderView.getContext().getString(R.string.talk_no_subject);
                        fromHtml.getClass();
                    }
                    StringUtil.setHighlightedAndBoldenedText(textView3, fromHtml, str);
                    if (UriUtil.isSubscribable(threadItem)) {
                        materialButton.setText(talkThreadHeaderView.getContext().getString(z ? R.string.talk_list_item_overflow_subscribed : R.string.talk_list_item_overflow_subscribe));
                        Context context = talkThreadHeaderView.getContext();
                        context.getClass();
                        int i4 = z ? R.attr.secondary_color : R.attr.progressive_color;
                        TypedValue typedValue = new TypedValue();
                        if (!context.getTheme().resolveAttribute(i4, typedValue, true)) {
                            typedValue = null;
                        }
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i4, "Attribute not found; ID="));
                            break;
                        } else {
                            materialButton.setTextColor(typedValue.data);
                            materialButton.setIconResource(z ? R.drawable.ic_notifications_active : R.drawable.ic_notifications_black_24dp);
                            materialButton.setIconTint(materialButton.getTextColors());
                            materialButton.setVisibility(0);
                        }
                    } else {
                        materialButton.setVisibility(8);
                    }
                    textView2.setMovementMethod(linkMovementMethodExt);
                    String str2 = threadItem != null ? threadItem.othercontent : null;
                    textView2.setVisibility((str2 == null || str2.length() == 0) ? 8 : 0);
                    String str3 = threadItem != null ? threadItem.othercontent : null;
                    if (str3 == null) {
                        str3 = "";
                    }
                    String removeStyleTags = StringUtil.removeStyleTags(str3);
                    LinkedHashMap linkedHashMap = CustomHtmlParser.contextBmpMap;
                    textView2.setText(StringsKt.trim(Headers.Companion.fromHtml(textView2, removeStyleTags)));
                    talkThreadHeaderView.setCallback(headerViewHolder);
                    break;
                default:
                    TalkReplyHolder talkReplyHolder = (TalkReplyHolder) viewHolder;
                    int i5 = TalkTopicActivity.$r8$clinit;
                    ThreadItem threadItem2 = (ThreadItem) this.this$0.getViewModel().flattenedThreadItems.get(i);
                    threadItem2.getClass();
                    View view = talkReplyHolder.itemView;
                    view.getClass();
                    TalkThreadItemView talkThreadItemView = (TalkThreadItemView) view;
                    TalkTopicActivity talkTopicActivity2 = TalkTopicActivity.this;
                    int i6 = 4;
                    TalkThreadItemView.bindItem$default(talkThreadItemView, threadItem2, talkTopicActivity2.linkMovementMethod, talkTopicActivity2.getViewModel().currentSearchQuery, 4);
                    if (Intrinsics.areEqual(threadItem2.id, talkTopicActivity2.getViewModel().scrollTargetId)) {
                        talkTopicActivity2.getViewModel().scrollTargetId = null;
                        Context context2 = talkThreadItemView.getContext();
                        context2.getClass();
                        int themedColor = Cache.Companion.getThemedColor(context2, R.attr.placeholder_color);
                        Context context3 = talkThreadItemView.getContext();
                        context3.getClass();
                        ValueAnimator ofObject = ValueAnimator.ofObject(new ArgbEvaluator(), Integer.valueOf(themedColor), Integer.valueOf(Cache.Companion.getThemedColor(context3, R.attr.paper_color)));
                        ofObject.setDuration(1000L);
                        ofObject.addUpdateListener(new LottieDrawable$$ExternalSyntheticLambda1(i6, talkThreadItemView));
                        ofObject.start();
                    }
                    talkThreadItemView.setCallback(talkReplyHolder);
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            TalkTopicActivity talkTopicActivity = this.this$0;
            switch (i2) {
                case 0:
                    return talkTopicActivity.new HeaderViewHolder(new TalkThreadHeaderView(talkTopicActivity));
                default:
                    Context context = viewGroup.getContext();
                    context.getClass();
                    return talkTopicActivity.new TalkReplyHolder(new TalkThreadItemView(context, null));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderViewHolder extends RecyclerView.ViewHolder implements TalkThreadHeaderView.Callback {
        public final TalkThreadHeaderView view;

        public HeaderViewHolder(TalkThreadHeaderView talkThreadHeaderView) {
            super(talkThreadHeaderView);
            this.view = talkThreadHeaderView;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchCallback extends NodeTraversor {
        public final /* synthetic */ int $r8$classId;
        public ActionProvider searchActionProvider;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ SearchCallback(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // org.jsoup.select.NodeTraversor
        public final Context getParentContext() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    return (TalkTopicActivity) obj;
                case 1:
                    return (InsertMediaActivity) obj;
                case 2:
                    return (NotificationActivity) obj;
                case 3:
                    return (EditHistoryListActivity) obj;
                case 4:
                    return ((SuggestedEditsRecentEditsFragment) obj).requireContext();
                case 5:
                    return (TalkTopicsActivity) obj;
                case 6:
                    return (UserContribListActivity) obj;
                default:
                    return ((WatchlistFragment) obj).requireContext();
            }
        }

        @Override // org.jsoup.select.NodeTraversor
        public final String getSearchHintString() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    String string = ((TalkTopicActivity) obj).getString(R.string.talk_search_find_in_talk_topics_hint);
                    string.getClass();
                    return string;
                case 1:
                    return ((InsertMediaActivity) obj).getViewModel().searchQuery;
                case 2:
                    String string2 = ((NotificationActivity) obj).getString(R.string.notifications_search);
                    string2.getClass();
                    return string2;
                case 3:
                    String string3 = ((EditHistoryListActivity) obj).getString(R.string.page_edit_history_search_or_filter_edits_hint);
                    string3.getClass();
                    return string3;
                case 4:
                    String string4 = ((SuggestedEditsRecentEditsFragment) obj).getString(R.string.patroller_tasks_edits_list_search_hint);
                    string4.getClass();
                    return string4;
                case 5:
                    String string5 = ((TalkTopicsActivity) obj).getString(R.string.talk_search_topics_hint);
                    string5.getClass();
                    return string5;
                case 6:
                    String string6 = ((UserContribListActivity) obj).getString(R.string.page_edit_history_search_or_filter_edits_hint);
                    string6.getClass();
                    return string6;
                default:
                    String string7 = ((WatchlistFragment) obj).getString(R.string.watchlist_search);
                    string7.getClass();
                    return string7;
            }
        }

        @Override // org.jsoup.select.NodeTraversor, androidx.appcompat.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                    this.searchActionProvider = new SearchActionProvider(talkTopicActivity, getSearchHintString(), new SearchFragment$$ExternalSyntheticLambda1(10, this));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchActionProvider) this.searchActionProvider);
                    SearchActionProvider searchActionProvider = (SearchActionProvider) this.searchActionProvider;
                    if (searchActionProvider != null) {
                        int i2 = TalkTopicActivity.$r8$clinit;
                        ((CabSearchView) searchActionProvider.binding.this$0).setQuery(talkTopicActivity.getViewModel().currentSearchQuery, false);
                    }
                    Request.Builder builder = talkTopicActivity.binding;
                    if (builder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    RecyclerView.Adapter adapter = ((RecyclerView) builder.headers).getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                    }
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 1:
                    InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                    SearchActionProvider searchActionProvider2 = new SearchActionProvider(insertMediaActivity, getSearchHintString(), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(15, this));
                    this.searchActionProvider = searchActionProvider2;
                    ((CabSearchView) searchActionProvider2.binding.this$0).setQuery(insertMediaActivity.getViewModel().searchQuery, false);
                    SearchActionProvider searchActionProvider3 = (SearchActionProvider) this.searchActionProvider;
                    if (searchActionProvider3 != null) {
                        ((CabSearchView) searchActionProvider3.binding.this$0).searchSrcTextView.selectAll();
                    }
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchActionProvider) this.searchActionProvider);
                    insertMediaActivity.actionMode = actionMode;
                    FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                    if (fragmentPlacesBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding.rootView.setVisibility(8);
                    FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding2.searchContainer.setVisibility(8);
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 2:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    int i3 = NotificationActivity.$r8$clinit;
                    notificationActivity.adjustRefreshViewLayoutParams$1(true);
                    this.searchActionProvider = new SearchAndFilterActionProvider(notificationActivity, getSearchHintString(), new OkHttpCall.AnonymousClass1(17, this, notificationActivity));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchAndFilterActionProvider) this.searchActionProvider);
                    notificationActivity.actionMode = actionMode;
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 3:
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj;
                    this.searchActionProvider = new SearchAndFilterActionProvider(editHistoryListActivity, getSearchHintString(), new OkHttpCall.AnonymousClass1(18, this, editHistoryListActivity));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchAndFilterActionProvider) this.searchActionProvider);
                    editHistoryListActivity.actionMode = actionMode;
                    SearchAndFilterActionProvider searchAndFilterActionProvider = (SearchAndFilterActionProvider) this.searchActionProvider;
                    if (searchAndFilterActionProvider != null) {
                        ((CabSearchView) searchAndFilterActionProvider.binding.sink).setQuery(editHistoryListActivity.getViewModel().currentQuery, false);
                    }
                    editHistoryListActivity.setupAdapters();
                    editHistoryListActivity.getViewModel().actionModeActive = true;
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 4:
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) obj;
                    this.searchActionProvider = new SearchAndFilterActionProvider(suggestedEditsRecentEditsFragment.requireContext(), getSearchHintString(), new OkHttpCall.AnonymousClass1(22, this, suggestedEditsRecentEditsFragment));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchAndFilterActionProvider) this.searchActionProvider);
                    suggestedEditsRecentEditsFragment.actionMode = actionMode;
                    SearchAndFilterActionProvider searchAndFilterActionProvider2 = (SearchAndFilterActionProvider) this.searchActionProvider;
                    if (searchAndFilterActionProvider2 != null) {
                        ((CabSearchView) searchAndFilterActionProvider2.binding.sink).setQuery(suggestedEditsRecentEditsFragment.getViewModel().currentQuery, false);
                    }
                    suggestedEditsRecentEditsFragment.setupAdapters$2();
                    suggestedEditsRecentEditsFragment.getViewModel().actionModeActive = true;
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 5:
                    TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) obj;
                    this.searchActionProvider = new SearchActionProvider(talkTopicsActivity, getSearchHintString(), new SearchFragment$$ExternalSyntheticLambda1(11, this));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchActionProvider) this.searchActionProvider);
                    talkTopicsActivity.actionMode = actionMode;
                    NodeChain nodeChain = talkTopicsActivity.binding;
                    if (nodeChain == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((ExtendedFloatingActionButton) nodeChain.tail).performMotion(1);
                    TalkTopicsActivity.HeaderItemAdapter headerItemAdapter = talkTopicsActivity.headerAdapter;
                    ActionMode actionMode2 = talkTopicsActivity.actionMode;
                    ConcatAdapter concatAdapter = talkTopicsActivity.concatAdapter;
                    if (actionMode2 == null) {
                        concatAdapter.addAdapter(0, headerItemAdapter);
                    } else {
                        concatAdapter.removeAdapter(headerItemAdapter);
                    }
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                case 6:
                    UserContribListActivity userContribListActivity = (UserContribListActivity) obj;
                    this.searchActionProvider = new SearchAndFilterActionProvider(userContribListActivity, getSearchHintString(), new OkHttpCall.AnonymousClass1(24, this, userContribListActivity));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchAndFilterActionProvider) this.searchActionProvider);
                    userContribListActivity.actionMode = actionMode;
                    SearchAndFilterActionProvider searchAndFilterActionProvider3 = (SearchAndFilterActionProvider) this.searchActionProvider;
                    if (searchAndFilterActionProvider3 != null) {
                        ((CabSearchView) searchAndFilterActionProvider3.binding.sink).setQuery(userContribListActivity.getViewModel().currentQuery, false);
                    }
                    userContribListActivity.setupAdapters$1();
                    userContribListActivity.getViewModel().actionModeActive = true;
                    super.onCreateActionMode(actionMode, menu);
                    return true;
                default:
                    WatchlistFragment watchlistFragment = (WatchlistFragment) obj;
                    this.searchActionProvider = new SearchAndFilterActionProvider(watchlistFragment.requireContext(), getSearchHintString(), new OkHttpCall.AnonymousClass1(25, this, watchlistFragment));
                    ExceptionsKt.setActionProvider(((MenuBuilder) menu).addInternal(0, 0, 0, getSearchHintString()), (SearchAndFilterActionProvider) this.searchActionProvider);
                    watchlistFragment.actionMode = actionMode;
                    super.onCreateActionMode(actionMode, menu);
                    return true;
            }
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            int i = this.$r8$classId;
            int i2 = 0;
            Continuation continuation = null;
            Object obj = this.this$0;
            actionMode.getClass();
            switch (i) {
                case 0:
                    TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                    talkTopicActivity.actionMode = null;
                    talkTopicActivity.getViewModel().currentSearchQuery = null;
                    Request.Builder builder = talkTopicActivity.binding;
                    if (builder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    RecyclerView.Adapter adapter = ((RecyclerView) builder.headers).getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 1:
                    InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                    insertMediaActivity.actionMode = null;
                    FragmentPlacesBinding fragmentPlacesBinding = insertMediaActivity.binding;
                    if (fragmentPlacesBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding.rootView.setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding2 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    fragmentPlacesBinding2.searchContainer.setVisibility(0);
                    FragmentPlacesBinding fragmentPlacesBinding3 = insertMediaActivity.binding;
                    if (fragmentPlacesBinding3 != null) {
                        fragmentPlacesBinding3.searchTextView.setText(insertMediaActivity.getViewModel().searchQuery);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                case 2:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    int i3 = NotificationActivity.$r8$clinit;
                    notificationActivity.adjustRefreshViewLayoutParams$1(false);
                    notificationActivity.actionMode = null;
                    NotificationViewModel viewModel = notificationActivity.getViewModel();
                    viewModel.currentSearchQuery = null;
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.handler, null, new NotificationViewModel$updateSearchQuery$1(viewModel, continuation, i2), 2);
                    notificationActivity.postprocessAndDisplay(null);
                    return;
                case 3:
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj;
                    editHistoryListActivity.actionMode = null;
                    editHistoryListActivity.getViewModel().currentQuery = "";
                    editHistoryListActivity.editHistoryListAdapter.refresh();
                    editHistoryListActivity.getViewModel().actionModeActive = false;
                    editHistoryListActivity.setupAdapters();
                    return;
                case 4:
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) obj;
                    suggestedEditsRecentEditsFragment.actionMode = null;
                    suggestedEditsRecentEditsFragment.getViewModel().currentQuery = "";
                    suggestedEditsRecentEditsFragment.recentEditsListAdapter.refresh();
                    suggestedEditsRecentEditsFragment.getViewModel().actionModeActive = false;
                    suggestedEditsRecentEditsFragment.setupAdapters$2();
                    return;
                case 5:
                    TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) obj;
                    talkTopicsActivity.actionMode = null;
                    TalkTopicsViewModel viewModel2 = talkTopicsActivity.getViewModel();
                    viewModel2.currentSearchQuery = null;
                    viewModel2.sortAndFilterThreadItems();
                    NodeChain nodeChain = talkTopicsActivity.binding;
                    if (nodeChain == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((ExtendedFloatingActionButton) nodeChain.tail).performMotion(0);
                    NodeChain nodeChain2 = talkTopicsActivity.binding;
                    if (nodeChain2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((FrameLayout) nodeChain2.layoutNode).setVisibility(8);
                    NodeChain nodeChain3 = talkTopicsActivity.binding;
                    if (nodeChain3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    ((TextView) nodeChain3.stack).setVisibility(8);
                    talkTopicsActivity.talkTopicItemAdapter.notifyDataSetChanged();
                    TalkTopicsActivity.HeaderItemAdapter headerItemAdapter = talkTopicsActivity.headerAdapter;
                    ActionMode actionMode2 = talkTopicsActivity.actionMode;
                    ConcatAdapter concatAdapter = talkTopicsActivity.concatAdapter;
                    if (actionMode2 == null) {
                        concatAdapter.addAdapter(0, headerItemAdapter);
                        return;
                    } else {
                        concatAdapter.removeAdapter(headerItemAdapter);
                        return;
                    }
                case 6:
                    UserContribListActivity userContribListActivity = (UserContribListActivity) obj;
                    userContribListActivity.actionMode = null;
                    userContribListActivity.getViewModel().currentQuery = "";
                    userContribListActivity.userContribListAdapter.refresh();
                    userContribListActivity.getViewModel().actionModeActive = false;
                    userContribListActivity.setupAdapters$1();
                    return;
                default:
                    WatchlistFragment watchlistFragment = (WatchlistFragment) obj;
                    watchlistFragment.actionMode = null;
                    watchlistFragment.getViewModel().currentSearchQuery = null;
                    watchlistFragment.getViewModel().updateList(true);
                    return;
            }
        }

        @Override // org.jsoup.select.NodeTraversor
        public final void onQueryChange(String str) {
            int i = this.$r8$classId;
            Continuation continuation = null;
            Object obj = this.this$0;
            str.getClass();
            switch (i) {
                case 0:
                    TalkTopicActivity talkTopicActivity = (TalkTopicActivity) obj;
                    int i2 = TalkTopicActivity.$r8$clinit;
                    talkTopicActivity.getViewModel().currentSearchQuery = str;
                    Request.Builder builder = talkTopicActivity.binding;
                    if (builder == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    RecyclerView.Adapter adapter = ((RecyclerView) builder.headers).getAdapter();
                    if (adapter != null) {
                        adapter.notifyDataSetChanged();
                        return;
                    }
                    return;
                case 1:
                    InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                    InsertMediaViewModel viewModel = insertMediaActivity.getViewModel();
                    if (str.length() == 0) {
                        str = insertMediaActivity.getViewModel().originalSearchQuery;
                    }
                    str.getClass();
                    viewModel.searchQuery = str;
                    CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = insertMediaActivity.insertMediaAdapter;
                    if (categoryMembersAdapter != null) {
                        categoryMembersAdapter.refresh();
                        return;
                    }
                    return;
                case 2:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    int i3 = NotificationActivity.$r8$clinit;
                    NotificationViewModel viewModel2 = notificationActivity.getViewModel();
                    viewModel2.currentSearchQuery = StringsKt.trim(str).toString();
                    AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), viewModel2.handler, null, new NotificationViewModel$updateSearchQuery$1(viewModel2, continuation, r3), 2);
                    notificationActivity.postprocessAndDisplay(null);
                    return;
                case 3:
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj;
                    int i4 = EditHistoryListActivity.$r8$clinit;
                    editHistoryListActivity.getViewModel().currentQuery = str;
                    editHistoryListActivity.setupAdapters();
                    editHistoryListActivity.editHistoryListAdapter.refresh();
                    return;
                case 4:
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) obj;
                    suggestedEditsRecentEditsFragment.getViewModel().currentQuery = str;
                    suggestedEditsRecentEditsFragment.setupAdapters$2();
                    suggestedEditsRecentEditsFragment.recentEditsListAdapter.refresh();
                    return;
                case 5:
                    TalkTopicsActivity talkTopicsActivity = (TalkTopicsActivity) obj;
                    int i5 = TalkTopicsActivity.$r8$clinit;
                    TalkTopicsViewModel viewModel3 = talkTopicsActivity.getViewModel();
                    viewModel3.currentSearchQuery = str;
                    viewModel3.sortAndFilterThreadItems();
                    talkTopicsActivity.talkTopicItemAdapter.notifyDataSetChanged();
                    NodeChain nodeChain = talkTopicsActivity.binding;
                    if (nodeChain == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    TextView textView = (TextView) nodeChain.stack;
                    if (nodeChain == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    RecyclerView.Adapter adapter2 = ((RecyclerView) nodeChain.current).getAdapter();
                    textView.setVisibility((adapter2 == null || adapter2.getItemCount() != 0) ? 8 : 0);
                    NodeChain nodeChain2 = talkTopicsActivity.binding;
                    if (nodeChain2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    FrameLayout frameLayout = (FrameLayout) nodeChain2.layoutNode;
                    if (nodeChain2 != null) {
                        frameLayout.setVisibility(((TextView) nodeChain2.stack).getVisibility() != 0 ? 8 : 0);
                        return;
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                case 6:
                    UserContribListActivity userContribListActivity = (UserContribListActivity) obj;
                    int i6 = UserContribListActivity.$r8$clinit;
                    userContribListActivity.getViewModel().currentQuery = str;
                    userContribListActivity.setupAdapters$1();
                    userContribListActivity.userContribListAdapter.refresh();
                    return;
                default:
                    WatchlistFragment watchlistFragment = (WatchlistFragment) obj;
                    watchlistFragment.getViewModel().currentSearchQuery = StringsKt.trim(str).toString();
                    watchlistFragment.getViewModel().updateList(false);
                    return;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TalkLinkHandler extends LinkHandler {
        public int lastX;
        public int lastY;
        public WikiSite wikiSite;

        public TalkLinkHandler(TalkTopicActivity talkTopicActivity) {
            super(talkTopicActivity);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final WikiSite getWikiSite() {
            WikiSite wikiSite = this.wikiSite;
            if (wikiSite != null) {
                return wikiSite;
            }
            Intrinsics.throwUninitializedPropertyAccessException("wikiSite");
            throw null;
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onDiffLinkClicked(PageTitle pageTitle, long j) {
            ByteString.Companion companion = ArticleEditDetailsActivity.Companion;
            TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
            talkTopicActivity.startActivity(ByteString.Companion.newIntent$default(companion, talkTopicActivity, pageTitle, -1, -1L, j, null, 32));
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onInternalLinkClicked(PageTitle pageTitle) {
            UserTalkPopupHelper.show$default(UserTalkPopupHelper.INSTANCE, TalkTopicActivity.this, pageTitle, false, this.lastX, this.lastY, Constants.InvokeSource.TALK_TOPICS_ACTIVITY, 31, false, null, null, 1920);
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onMediaLinkClicked(PageTitle pageTitle) {
            int i = FilePageActivity.$r8$clinit;
            TalkTopicActivity talkTopicActivity = TalkTopicActivity.this;
            talkTopicActivity.startActivity(Path.Companion.newIntent((Context) talkTopicActivity, pageTitle, true));
        }

        @Override // org.wikipedia.page.LinkHandler
        public final void onPageLinkClicked(String str, String str2) {
            str2.getClass();
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class TalkReplyHolder extends RecyclerView.ViewHolder implements TalkThreadItemView.Callback {
        public TalkReplyHolder(TalkThreadItemView talkThreadItemView) {
            super(talkThreadItemView);
        }
    }

    public TalkTopicActivity() {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TalkTopicViewModel.class), new Function0(this) { // from class: org.wikipedia.talk.TalkTopicActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkTopicActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                TalkTopicActivity talkTopicActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkTopicActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkTopicActivity.getViewModelStore();
                    default:
                        return talkTopicActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.TalkTopicActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkTopicActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                TalkTopicActivity talkTopicActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkTopicActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkTopicActivity.getViewModelStore();
                    default:
                        return talkTopicActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.talk.TalkTopicActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ TalkTopicActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                TalkTopicActivity talkTopicActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return talkTopicActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return talkTopicActivity.getViewModelStore();
                    default:
                        return talkTopicActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.threadAdapter = new HeaderItemAdapter(this, i2);
        this.headerAdapter = new HeaderItemAdapter(this, i);
        this.searchActionModeCallback = new SearchCallback(i, this);
        this.linkMovementMethod = new LinkMovementMethodExt(new TalkTopicActivity$$ExternalSyntheticLambda2(this, i2));
        int i4 = 3;
        this.requestEditSource = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicActivity$$ExternalSyntheticLambda2(this, i3), new FragmentManager$FragmentIntentSenderContract(i4));
        this.requestLogin = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicActivity$$ExternalSyntheticLambda2(this, i4), new FragmentManager$FragmentIntentSenderContract(i4));
        this.replyResult = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicActivity$$ExternalSyntheticLambda2(this, 4), new FragmentManager$FragmentIntentSenderContract(i4));
    }

    public final void expandOrCollapseAll(boolean z) {
        Prefs prefs = Prefs.INSTANCE;
        PrefsIoUtil.setBoolean(R.string.preference_key_talk_topic_expand_all, z);
        DiffUtil.DiffResult expandOrCollapseAll = getViewModel().expandOrCollapseAll();
        HeaderItemAdapter headerItemAdapter = this.threadAdapter;
        expandOrCollapseAll.dispatchUpdatesTo(new MemoryCacheService(1, headerItemAdapter));
        headerItemAdapter.notifyItemRangeChanged(0, headerItemAdapter.getItemCount());
        invalidateOptionsMenu();
    }

    public final TalkTopicViewModel getViewModel() {
        return (TalkTopicViewModel) this.viewModel$delegate.getValue();
    }

    public final void loadTopics() {
        Request.Builder builder = this.binding;
        Continuation continuation = null;
        if (builder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        int i = 0;
        ((LinearProgressIndicator) builder.method).setVisibility(0);
        Request.Builder builder2 = this.binding;
        if (builder2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((WikiErrorView) builder2.url).setVisibility(8);
        TalkTopicViewModel viewModel = getViewModel();
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new TalkTopicViewModel$undo$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new TalkTopicViewModel$loadTopic$2(viewModel, continuation, i), 2);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TextView textView;
        super.onCreate(bundle);
        final int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_talk_topic, (ViewGroup) null, false);
        int i2 = R.id.talkErrorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.talkErrorView);
        if (wikiErrorView != null) {
            i2 = R.id.talkProgressBar;
            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.talkProgressBar);
            if (linearProgressIndicator != null) {
                i2 = R.id.talkRecyclerView;
                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.talkRecyclerView);
                if (recyclerView != null) {
                    WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                    i2 = R.id.toolbar;
                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                    if (materialToolbar != null) {
                        this.binding = new Request.Builder(wikiSwipeRefreshLayout, wikiErrorView, linearProgressIndicator, recyclerView, wikiSwipeRefreshLayout, materialToolbar);
                        setContentView(wikiSwipeRefreshLayout);
                        Request.Builder builder = this.binding;
                        if (builder == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) builder.tags);
                        ContextsKt supportActionBar = getSupportActionBar();
                        final int i3 = 1;
                        if (supportActionBar != null) {
                            supportActionBar.setDisplayHomeAsUpEnabled(true);
                        }
                        setTitle("");
                        TalkLinkHandler talkLinkHandler = new TalkLinkHandler(this);
                        this.linkHandler = talkLinkHandler;
                        WikiSite wikiSite = getViewModel().pageTitle.wikiSite;
                        wikiSite.getClass();
                        talkLinkHandler.wikiSite = wikiSite;
                        Request.Builder builder2 = this.binding;
                        if (builder2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        BitmapsKt.setLayoutDirectionByLang((RecyclerView) builder2.headers, getViewModel().pageTitle.wikiSite.languageCode);
                        Request.Builder builder3 = this.binding;
                        if (builder3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        BitmapsKt.setLayoutDirectionByLang((WikiErrorView) builder3.url, getViewModel().pageTitle.wikiSite.languageCode);
                        Request.Builder builder4 = this.binding;
                        if (builder4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        MaterialToolbar materialToolbar2 = (MaterialToolbar) builder4.tags;
                        int i4 = 0;
                        while (true) {
                            if (!(i4 < materialToolbar2.getChildCount())) {
                                textView = null;
                                break;
                            }
                            int i5 = i4 + 1;
                            View childAt = materialToolbar2.getChildAt(i4);
                            if (childAt == null) {
                                throw new IndexOutOfBoundsException();
                            }
                            if (childAt instanceof TextView) {
                                textView = (TextView) childAt;
                                break;
                            }
                            i4 = i5;
                        }
                        if (textView != null) {
                            textView.setMovementMethod(this.linkMovementMethod);
                        }
                        Request.Builder builder5 = this.binding;
                        if (builder5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) builder5.headers).setLayoutManager(new LinearLayoutManager(1));
                        Request.Builder builder6 = this.binding;
                        if (builder6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((WikiErrorView) builder6.url).setBackClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda0
                            public final /* synthetic */ TalkTopicActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i6 = i;
                                TalkTopicActivity talkTopicActivity = this.f$0;
                                switch (i6) {
                                    case 0:
                                        int i7 = TalkTopicActivity.$r8$clinit;
                                        talkTopicActivity.finish();
                                        break;
                                    default:
                                        int i8 = TalkTopicActivity.$r8$clinit;
                                        talkTopicActivity.loadTopics();
                                        break;
                                }
                            }
                        });
                        Request.Builder builder7 = this.binding;
                        if (builder7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((WikiErrorView) builder7.url).setRetryClickListener(new View.OnClickListener(this) { // from class: org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda0
                            public final /* synthetic */ TalkTopicActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                int i6 = i3;
                                TalkTopicActivity talkTopicActivity = this.f$0;
                                switch (i6) {
                                    case 0:
                                        int i7 = TalkTopicActivity.$r8$clinit;
                                        talkTopicActivity.finish();
                                        break;
                                    default:
                                        int i8 = TalkTopicActivity.$r8$clinit;
                                        talkTopicActivity.loadTopics();
                                        break;
                                }
                            }
                        });
                        Request.Builder builder8 = this.binding;
                        if (builder8 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((WikiSwipeRefreshLayout) builder8.body).setOnRefreshListener(new TalkTopicActivity$$ExternalSyntheticLambda2(this, i));
                        Request.Builder builder9 = this.binding;
                        if (builder9 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) builder9.headers).addOnScrollListener(new FastScroller.AnonymousClass2(4, this));
                        getViewModel().threadItemsData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda3
                            public final /* synthetic */ TalkTopicActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i6 = i;
                                Object obj2 = null;
                                ThreadItem threadItem = null;
                                Unit unit = Unit.INSTANCE;
                                TalkTopicActivity talkTopicActivity = this.f$0;
                                int i7 = 0;
                                Resource resource = (Resource) obj;
                                switch (i6) {
                                    case 0:
                                        int i8 = TalkTopicActivity.$r8$clinit;
                                        if (resource instanceof Resource.Success) {
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter = talkTopicActivity.threadAdapter;
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter2 = talkTopicActivity.headerAdapter;
                                            Request.Builder builder10 = talkTopicActivity.binding;
                                            if (builder10 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder10.method).setVisibility(8);
                                            Request.Builder builder11 = talkTopicActivity.binding;
                                            if (builder11 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder11.body).setRefreshing(false);
                                            Request.Builder builder12 = talkTopicActivity.binding;
                                            if (builder12 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            if (((RecyclerView) builder12.headers).getAdapter() == null) {
                                                Request.Builder builder13 = talkTopicActivity.binding;
                                                if (builder13 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                RecyclerView recyclerView2 = (RecyclerView) builder13.headers;
                                                ConcatAdapter concatAdapter = new ConcatAdapter(new RecyclerView.Adapter[0]);
                                                concatAdapter.addAdapter(headerItemAdapter2);
                                                concatAdapter.addAdapter(headerItemAdapter);
                                                recyclerView2.setAdapter(concatAdapter);
                                            } else {
                                                headerItemAdapter2.notifyItemChanged(0);
                                                headerItemAdapter.notifyDataSetChanged();
                                            }
                                            String str = talkTopicActivity.getViewModel().scrollTargetId;
                                            if (str != null && str.length() != 0) {
                                                Iterator it = talkTopicActivity.getViewModel().flattenedThreadItems.iterator();
                                                int i9 = 0;
                                                while (true) {
                                                    if (!it.hasNext()) {
                                                        i9 = -1;
                                                    } else if (!Intrinsics.areEqual(((ThreadItem) it.next()).id, talkTopicActivity.getViewModel().scrollTargetId)) {
                                                        i9++;
                                                    }
                                                }
                                                int i10 = 1 + i9;
                                                if (i10 >= 0) {
                                                    Request.Builder builder14 = talkTopicActivity.binding;
                                                    if (builder14 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) builder14.headers).post(new TalkTopicActivity$$ExternalSyntheticLambda10(i10, i7, talkTopicActivity));
                                                }
                                            }
                                            ContextsKt supportActionBar2 = talkTopicActivity.getSupportActionBar();
                                            if (supportActionBar2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                ThreadItem threadItem2 = talkTopicActivity.getViewModel().topic;
                                                supportActionBar2.setTitle(StringUtil.fromHtml(threadItem2 != null ? threadItem2.html : null));
                                            }
                                            talkTopicActivity.invalidateOptionsMenu();
                                        } else if (resource instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource).throwable;
                                            Request.Builder builder15 = talkTopicActivity.binding;
                                            if (builder15 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder15.method).setVisibility(8);
                                            Request.Builder builder16 = talkTopicActivity.binding;
                                            if (builder16 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder16.body).setRefreshing(false);
                                            Request.Builder builder17 = talkTopicActivity.binding;
                                            if (builder17 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder17.url).setVisibility(0);
                                            Request.Builder builder18 = talkTopicActivity.binding;
                                            if (builder18 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder18.url).setError(th, null);
                                        }
                                        return unit;
                                    case 1:
                                        int i11 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            int i12 = ((Boolean) ((Resource.Success) resource).data).booleanValue() ? R.string.talk_thread_subscribed_to : R.string.talk_thread_unsubscribed_from;
                                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                                            ThreadItem threadItem3 = talkTopicActivity.getViewModel().topic;
                                            threadItem3.getClass();
                                            CharSequence trim = StringsKt.trim(StringUtil.fromHtml(threadItem3.html));
                                            int length = trim.length();
                                            CharSequence charSequence = trim;
                                            if (length == 0) {
                                                String string = talkTopicActivity.getString(R.string.talk_no_subject);
                                                string.getClass();
                                                charSequence = string;
                                            }
                                            String string2 = talkTopicActivity.getString(i12, charSequence);
                                            string2.getClass();
                                            ShareUtil.showMessage(talkTopicActivity, string2, 0);
                                            talkTopicActivity.headerAdapter.notifyItemChanged(0);
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                    default:
                                        int i13 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            Request.Builder builder19 = talkTopicActivity.binding;
                                            if (builder19 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder19.method).setVisibility(8);
                                            TalkTopicViewModel viewModel = talkTopicActivity.getViewModel();
                                            String str2 = talkTopicActivity.getViewModel().undoTopicId;
                                            ThreadItem threadItem4 = viewModel.topic;
                                            if (threadItem4 != null) {
                                                SequenceBuilderIterator it2 = UnsignedKt.iterator((Function2) threadItem4.getAllReplies().reader);
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        Object next = it2.next();
                                                        if (Intrinsics.areEqual(((ThreadItem) next).id, str2)) {
                                                            obj2 = next;
                                                        }
                                                    }
                                                }
                                                threadItem = (ThreadItem) obj2;
                                            }
                                            if (threadItem != null) {
                                                talkTopicActivity.startReplyActivity(threadItem, talkTopicActivity.getViewModel().undoSubject, talkTopicActivity.getViewModel().undoBody);
                                            }
                                            talkTopicActivity.loadTopics();
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                }
                            }
                        }, 3));
                        getViewModel().subscribeData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda3
                            public final /* synthetic */ TalkTopicActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i6 = i3;
                                Object obj2 = null;
                                ThreadItem threadItem = null;
                                Unit unit = Unit.INSTANCE;
                                TalkTopicActivity talkTopicActivity = this.f$0;
                                int i7 = 0;
                                Resource resource = (Resource) obj;
                                switch (i6) {
                                    case 0:
                                        int i8 = TalkTopicActivity.$r8$clinit;
                                        if (resource instanceof Resource.Success) {
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter = talkTopicActivity.threadAdapter;
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter2 = talkTopicActivity.headerAdapter;
                                            Request.Builder builder10 = talkTopicActivity.binding;
                                            if (builder10 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder10.method).setVisibility(8);
                                            Request.Builder builder11 = talkTopicActivity.binding;
                                            if (builder11 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder11.body).setRefreshing(false);
                                            Request.Builder builder12 = talkTopicActivity.binding;
                                            if (builder12 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            if (((RecyclerView) builder12.headers).getAdapter() == null) {
                                                Request.Builder builder13 = talkTopicActivity.binding;
                                                if (builder13 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                RecyclerView recyclerView2 = (RecyclerView) builder13.headers;
                                                ConcatAdapter concatAdapter = new ConcatAdapter(new RecyclerView.Adapter[0]);
                                                concatAdapter.addAdapter(headerItemAdapter2);
                                                concatAdapter.addAdapter(headerItemAdapter);
                                                recyclerView2.setAdapter(concatAdapter);
                                            } else {
                                                headerItemAdapter2.notifyItemChanged(0);
                                                headerItemAdapter.notifyDataSetChanged();
                                            }
                                            String str = talkTopicActivity.getViewModel().scrollTargetId;
                                            if (str != null && str.length() != 0) {
                                                Iterator it = talkTopicActivity.getViewModel().flattenedThreadItems.iterator();
                                                int i9 = 0;
                                                while (true) {
                                                    if (!it.hasNext()) {
                                                        i9 = -1;
                                                    } else if (!Intrinsics.areEqual(((ThreadItem) it.next()).id, talkTopicActivity.getViewModel().scrollTargetId)) {
                                                        i9++;
                                                    }
                                                }
                                                int i10 = 1 + i9;
                                                if (i10 >= 0) {
                                                    Request.Builder builder14 = talkTopicActivity.binding;
                                                    if (builder14 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) builder14.headers).post(new TalkTopicActivity$$ExternalSyntheticLambda10(i10, i7, talkTopicActivity));
                                                }
                                            }
                                            ContextsKt supportActionBar2 = talkTopicActivity.getSupportActionBar();
                                            if (supportActionBar2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                ThreadItem threadItem2 = talkTopicActivity.getViewModel().topic;
                                                supportActionBar2.setTitle(StringUtil.fromHtml(threadItem2 != null ? threadItem2.html : null));
                                            }
                                            talkTopicActivity.invalidateOptionsMenu();
                                        } else if (resource instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource).throwable;
                                            Request.Builder builder15 = talkTopicActivity.binding;
                                            if (builder15 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder15.method).setVisibility(8);
                                            Request.Builder builder16 = talkTopicActivity.binding;
                                            if (builder16 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder16.body).setRefreshing(false);
                                            Request.Builder builder17 = talkTopicActivity.binding;
                                            if (builder17 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder17.url).setVisibility(0);
                                            Request.Builder builder18 = talkTopicActivity.binding;
                                            if (builder18 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder18.url).setError(th, null);
                                        }
                                        return unit;
                                    case 1:
                                        int i11 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            int i12 = ((Boolean) ((Resource.Success) resource).data).booleanValue() ? R.string.talk_thread_subscribed_to : R.string.talk_thread_unsubscribed_from;
                                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                                            ThreadItem threadItem3 = talkTopicActivity.getViewModel().topic;
                                            threadItem3.getClass();
                                            CharSequence trim = StringsKt.trim(StringUtil.fromHtml(threadItem3.html));
                                            int length = trim.length();
                                            CharSequence charSequence = trim;
                                            if (length == 0) {
                                                String string = talkTopicActivity.getString(R.string.talk_no_subject);
                                                string.getClass();
                                                charSequence = string;
                                            }
                                            String string2 = talkTopicActivity.getString(i12, charSequence);
                                            string2.getClass();
                                            ShareUtil.showMessage(talkTopicActivity, string2, 0);
                                            talkTopicActivity.headerAdapter.notifyItemChanged(0);
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                    default:
                                        int i13 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            Request.Builder builder19 = talkTopicActivity.binding;
                                            if (builder19 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder19.method).setVisibility(8);
                                            TalkTopicViewModel viewModel = talkTopicActivity.getViewModel();
                                            String str2 = talkTopicActivity.getViewModel().undoTopicId;
                                            ThreadItem threadItem4 = viewModel.topic;
                                            if (threadItem4 != null) {
                                                SequenceBuilderIterator it2 = UnsignedKt.iterator((Function2) threadItem4.getAllReplies().reader);
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        Object next = it2.next();
                                                        if (Intrinsics.areEqual(((ThreadItem) next).id, str2)) {
                                                            obj2 = next;
                                                        }
                                                    }
                                                }
                                                threadItem = (ThreadItem) obj2;
                                            }
                                            if (threadItem != null) {
                                                talkTopicActivity.startReplyActivity(threadItem, talkTopicActivity.getViewModel().undoSubject, talkTopicActivity.getViewModel().undoBody);
                                            }
                                            talkTopicActivity.loadTopics();
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                }
                            }
                        }, 3));
                        final int i6 = 2;
                        getViewModel().undoResponseData.observe(this, new TalkReplyActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: org.wikipedia.talk.TalkTopicActivity$$ExternalSyntheticLambda3
                            public final /* synthetic */ TalkTopicActivity f$0;

                            {
                                this.f$0 = this;
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                int i62 = i6;
                                Object obj2 = null;
                                ThreadItem threadItem = null;
                                Unit unit = Unit.INSTANCE;
                                TalkTopicActivity talkTopicActivity = this.f$0;
                                int i7 = 0;
                                Resource resource = (Resource) obj;
                                switch (i62) {
                                    case 0:
                                        int i8 = TalkTopicActivity.$r8$clinit;
                                        if (resource instanceof Resource.Success) {
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter = talkTopicActivity.threadAdapter;
                                            TalkTopicActivity.HeaderItemAdapter headerItemAdapter2 = talkTopicActivity.headerAdapter;
                                            Request.Builder builder10 = talkTopicActivity.binding;
                                            if (builder10 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder10.method).setVisibility(8);
                                            Request.Builder builder11 = talkTopicActivity.binding;
                                            if (builder11 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder11.body).setRefreshing(false);
                                            Request.Builder builder12 = talkTopicActivity.binding;
                                            if (builder12 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            if (((RecyclerView) builder12.headers).getAdapter() == null) {
                                                Request.Builder builder13 = talkTopicActivity.binding;
                                                if (builder13 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                RecyclerView recyclerView2 = (RecyclerView) builder13.headers;
                                                ConcatAdapter concatAdapter = new ConcatAdapter(new RecyclerView.Adapter[0]);
                                                concatAdapter.addAdapter(headerItemAdapter2);
                                                concatAdapter.addAdapter(headerItemAdapter);
                                                recyclerView2.setAdapter(concatAdapter);
                                            } else {
                                                headerItemAdapter2.notifyItemChanged(0);
                                                headerItemAdapter.notifyDataSetChanged();
                                            }
                                            String str = talkTopicActivity.getViewModel().scrollTargetId;
                                            if (str != null && str.length() != 0) {
                                                Iterator it = talkTopicActivity.getViewModel().flattenedThreadItems.iterator();
                                                int i9 = 0;
                                                while (true) {
                                                    if (!it.hasNext()) {
                                                        i9 = -1;
                                                    } else if (!Intrinsics.areEqual(((ThreadItem) it.next()).id, talkTopicActivity.getViewModel().scrollTargetId)) {
                                                        i9++;
                                                    }
                                                }
                                                int i10 = 1 + i9;
                                                if (i10 >= 0) {
                                                    Request.Builder builder14 = talkTopicActivity.binding;
                                                    if (builder14 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                        throw null;
                                                    }
                                                    ((RecyclerView) builder14.headers).post(new TalkTopicActivity$$ExternalSyntheticLambda10(i10, i7, talkTopicActivity));
                                                }
                                            }
                                            ContextsKt supportActionBar2 = talkTopicActivity.getSupportActionBar();
                                            if (supportActionBar2 != null) {
                                                StringUtil stringUtil = StringUtil.INSTANCE;
                                                ThreadItem threadItem2 = talkTopicActivity.getViewModel().topic;
                                                supportActionBar2.setTitle(StringUtil.fromHtml(threadItem2 != null ? threadItem2.html : null));
                                            }
                                            talkTopicActivity.invalidateOptionsMenu();
                                        } else if (resource instanceof Resource.Error) {
                                            Throwable th = ((Resource.Error) resource).throwable;
                                            Request.Builder builder15 = talkTopicActivity.binding;
                                            if (builder15 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder15.method).setVisibility(8);
                                            Request.Builder builder16 = talkTopicActivity.binding;
                                            if (builder16 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiSwipeRefreshLayout) builder16.body).setRefreshing(false);
                                            Request.Builder builder17 = talkTopicActivity.binding;
                                            if (builder17 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder17.url).setVisibility(0);
                                            Request.Builder builder18 = talkTopicActivity.binding;
                                            if (builder18 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((WikiErrorView) builder18.url).setError(th, null);
                                        }
                                        return unit;
                                    case 1:
                                        int i11 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            int i12 = ((Boolean) ((Resource.Success) resource).data).booleanValue() ? R.string.talk_thread_subscribed_to : R.string.talk_thread_unsubscribed_from;
                                            StringUtil stringUtil2 = StringUtil.INSTANCE;
                                            ThreadItem threadItem3 = talkTopicActivity.getViewModel().topic;
                                            threadItem3.getClass();
                                            CharSequence trim = StringsKt.trim(StringUtil.fromHtml(threadItem3.html));
                                            int length = trim.length();
                                            CharSequence charSequence = trim;
                                            if (length == 0) {
                                                String string = talkTopicActivity.getString(R.string.talk_no_subject);
                                                string.getClass();
                                                charSequence = string;
                                            }
                                            String string2 = talkTopicActivity.getString(i12, charSequence);
                                            string2.getClass();
                                            ShareUtil.showMessage(talkTopicActivity, string2, 0);
                                            talkTopicActivity.headerAdapter.notifyItemChanged(0);
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                    default:
                                        int i13 = TalkTopicActivity.$r8$clinit;
                                        resource.getClass();
                                        if (resource instanceof Resource.Success) {
                                            Request.Builder builder19 = talkTopicActivity.binding;
                                            if (builder19 == null) {
                                                Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                throw null;
                                            }
                                            ((LinearProgressIndicator) builder19.method).setVisibility(8);
                                            TalkTopicViewModel viewModel = talkTopicActivity.getViewModel();
                                            String str2 = talkTopicActivity.getViewModel().undoTopicId;
                                            ThreadItem threadItem4 = viewModel.topic;
                                            if (threadItem4 != null) {
                                                SequenceBuilderIterator it2 = UnsignedKt.iterator((Function2) threadItem4.getAllReplies().reader);
                                                while (true) {
                                                    if (it2.hasNext()) {
                                                        Object next = it2.next();
                                                        if (Intrinsics.areEqual(((ThreadItem) next).id, str2)) {
                                                            obj2 = next;
                                                        }
                                                    }
                                                }
                                                threadItem = (ThreadItem) obj2;
                                            }
                                            if (threadItem != null) {
                                                talkTopicActivity.startReplyActivity(threadItem, talkTopicActivity.getViewModel().undoSubject, talkTopicActivity.getViewModel().undoBody);
                                            }
                                            talkTopicActivity.loadTopics();
                                        } else if (resource instanceof Resource.Error) {
                                            ShareUtil.showError$default(talkTopicActivity, ((Resource.Error) resource).throwable);
                                        }
                                        return unit;
                                }
                            }
                        }, 3));
                        Request.Builder builder10 = this.binding;
                        if (builder10 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((LinearProgressIndicator) builder10.method).setVisibility(0);
                        Request.Builder builder11 = this.binding;
                        if (builder11 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((WikiErrorView) builder11.url).setVisibility(8);
                        Window window = getWindow();
                        window.getClass();
                        HintHandler hintHandler = new HintHandler(window.getDecorView());
                        int i7 = Build.VERSION.SDK_INT;
                        (i7 >= 35 ? new WindowInsetsControllerCompat$Impl35(window, hintHandler) : i7 >= 30 ? new WindowInsetsControllerCompat$Impl30(window, hintHandler) : i7 >= 26 ? new WindowInsetsControllerCompat$Impl26(window, hintHandler) : new WindowInsetsControllerCompat$Impl23(window, hintHandler)).hide();
                        if (getViewModel().currentSearchQuery == null || this.actionMode != null) {
                            return;
                        }
                        this.actionMode = startSupportActionMode(this.searchActionModeCallback);
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_talk_topic, menu);
        return true;
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        String str;
        menuItem.getClass();
        super.onOptionsItemSelected(menuItem);
        int itemId = menuItem.getItemId();
        if (itemId != R.id.menu_talk_topic_share) {
            if (itemId == R.id.menu_edit_source) {
                TalkTopicViewModel viewModel = getViewModel();
                ArrayList arrayList = viewModel.threadItems;
                ThreadItem threadItem = viewModel.topic;
                arrayList.getClass();
                this.requestEditSource.launch(LoginClient.newIntent$default(this, arrayList.indexOf(threadItem), null, getViewModel().pageTitle, Constants.InvokeSource.TALK_TOPIC_ACTIVITY, null, 480), null);
                return true;
            }
            if (itemId == R.id.menu_talk_topic_expand) {
                expandOrCollapseAll(true);
                return true;
            }
            if (itemId == R.id.menu_talk_topic_collapse) {
                expandOrCollapseAll(false);
                return true;
            }
            if (itemId != R.id.menu_find_in_page) {
                return super.onOptionsItemSelected(menuItem);
            }
            expandOrCollapseAll(true);
            if (this.actionMode == null) {
                this.actionMode = startSupportActionMode(this.searchActionModeCallback);
            }
            return true;
        }
        ThreadItem threadItem2 = getViewModel().topic;
        if (threadItem2 == null || (str = threadItem2.html) == null) {
            str = null;
        } else if (str.length() == 0) {
            str = getString(R.string.talk_no_subject);
            str.getClass();
        }
        String string = getString(R.string.talk_share_discussion_subject, str);
        string.getClass();
        String uri = getViewModel().pageTitle.getUri();
        StringUtil stringUtil = StringUtil.INSTANCE;
        ThreadItem threadItem3 = getViewModel().topic;
        try {
            String encode = URLEncoder.encode(StringUtil.addUnderscores(StringUtil.fromHtml(threadItem3 != null ? threadItem3.html : null).toString()), "UTF-8");
            encode.getClass();
            ShareUtil.shareText(this, string, uri + "#" + StringsKt__StringsJVMKt.replace$default(encode, "+", "%20"));
            return true;
        } catch (UnsupportedEncodingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        if (r0.flattenedThreadItems.size() == kotlin.sequences.SequencesKt.count(r1.getAllReplies())) goto L34;
     */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPrepareOptionsMenu(android.view.Menu r7) {
        /*
            r6 = this;
            r7.getClass()
            r0 = 2131297200(0x7f0903b0, float:1.8212338E38)
            android.view.MenuItem r0 = r7.findItem(r0)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L26
            org.wikipedia.talk.TalkTopicViewModel r3 = r6.getViewModel()
            org.wikipedia.dataclient.discussiontools.ThreadItem r3 = r3.topic
            if (r3 == 0) goto L19
            java.util.List r3 = r3.replies
            goto L1a
        L19:
            r3 = r1
        L1a:
            if (r3 != 0) goto L1e
            kotlin.collections.EmptyList r3 = kotlin.collections.EmptyList.INSTANCE
        L1e:
            boolean r3 = r3.isEmpty()
            r3 = r3 ^ r2
            r0.setVisible(r3)
        L26:
            r0 = 2131297187(0x7f0903a3, float:1.8212312E38)
            android.view.MenuItem r0 = r7.findItem(r0)
            if (r0 == 0) goto L36
            boolean r3 = okhttp3.Headers.Companion.isLoggedIn()
            r0.setVisible(r3)
        L36:
            org.wikipedia.talk.TalkTopicViewModel r0 = r6.getViewModel()
            org.wikipedia.dataclient.discussiontools.ThreadItem r0 = r0.topic
            if (r0 == 0) goto L42
            kotlin.io.LinesSequence r1 = r0.getAllReplies()
        L42:
            if (r1 != 0) goto L46
            kotlin.sequences.EmptySequence r1 = kotlin.sequences.EmptySequence.INSTANCE
        L46:
            java.util.Iterator r0 = r1.iterator()
        L4a:
            boolean r1 = r0.hasNext()
            r3 = 2131297267(0x7f0903f3, float:1.8212474E38)
            r4 = 2131297268(0x7f0903f4, float:1.8212476E38)
            r5 = 0
            if (r1 == 0) goto L9a
            java.lang.Object r1 = r0.next()
            org.wikipedia.dataclient.discussiontools.ThreadItem r1 = (org.wikipedia.dataclient.discussiontools.ThreadItem) r1
            int r1 = r1.level
            if (r1 <= r2) goto L4a
            org.wikipedia.talk.TalkTopicViewModel r0 = r6.getViewModel()
            java.lang.String r1 = r0.currentSearchQuery
            if (r1 == 0) goto L6f
            int r1 = r1.length()
            if (r1 != 0) goto L85
        L6f:
            org.wikipedia.dataclient.discussiontools.ThreadItem r1 = r0.topic
            if (r1 == 0) goto L84
            kotlin.io.LinesSequence r1 = r1.getAllReplies()
            java.util.ArrayList r0 = r0.flattenedThreadItems
            int r0 = r0.size()
            int r1 = kotlin.sequences.SequencesKt.count(r1)
            if (r0 != r1) goto L84
            goto L85
        L84:
            r2 = r5
        L85:
            android.view.MenuItem r0 = r7.findItem(r4)
            if (r0 == 0) goto L90
            r1 = r2 ^ 1
            r0.setVisible(r1)
        L90:
            android.view.MenuItem r0 = r7.findItem(r3)
            if (r0 == 0) goto Lac
            r0.setVisible(r2)
            goto Lac
        L9a:
            android.view.MenuItem r0 = r7.findItem(r4)
            if (r0 == 0) goto La3
            r0.setVisible(r5)
        La3:
            android.view.MenuItem r0 = r7.findItem(r3)
            if (r0 == 0) goto Lac
            r0.setVisible(r5)
        Lac:
            boolean r6 = super.onPrepareOptionsMenu(r7)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }

    public final void startReplyActivity(ThreadItem threadItem, CharSequence charSequence, CharSequence charSequence2) {
        TalkReplyActivity$special$$inlined$lruCache$default$1 talkReplyActivity$special$$inlined$lruCache$default$1 = TalkReplyActivity.draftReplies;
        PageTitle pageTitle = getViewModel().pageTitle;
        ThreadItem threadItem2 = getViewModel().topic;
        this.replyResult.launch(UserTalkPopupHelper.newIntent$default(this, pageTitle, threadItem2 != null ? threadItem2.html : null, threadItem, Constants.InvokeSource.TALK_TOPIC_ACTIVITY, charSequence, charSequence2, null, 0L, 0L, false, false, 8064), null);
    }
}
