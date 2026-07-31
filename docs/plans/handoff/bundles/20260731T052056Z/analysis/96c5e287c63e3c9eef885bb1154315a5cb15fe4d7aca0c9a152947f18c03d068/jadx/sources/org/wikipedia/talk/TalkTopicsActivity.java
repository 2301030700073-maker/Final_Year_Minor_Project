package org.wikipedia.talk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Spanned;
import android.text.format.DateFormat;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.node.NodeChain;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentManager$FragmentIntentSenderContract;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.BitmapsKt;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.sequences.SequencesKt;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.dataclient.discussiontools.ThreadItem;
import org.wikipedia.diff.DiffLineView$$ExternalSyntheticLambda0;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesActivity;
import org.wikipedia.staticdata.TalkAliasData;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.ImageUrlUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.StringUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.views.CabSearchView;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.FaceAndColorDetectImageView;
import org.wikipedia.views.NotificationButtonView;
import org.wikipedia.views.SearchActionProvider;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import org.wikipedia.watchlist.WatchlistExpiry;
import org.wikipedia.watchlist.WatchlistExpiryDialog;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0005\u0005\u0006\u0005\u0007\bB\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lorg/wikipedia/talk/TalkTopicsActivity;", "Lorg/wikipedia/activity/BaseActivity;", "Lorg/wikipedia/watchlist/WatchlistExpiryDialog$Callback;", "<init>", "()V", "HeaderItemAdapter", "HeaderViewHolder", "SearchCallback", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TalkTopicsActivity extends BaseActivity implements WatchlistExpiryDialog.Callback {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public NodeChain binding;
    public boolean goToTopic;
    public final HeaderItemAdapter headerAdapter;
    public Constants.InvokeSource invokeSource;
    public NotificationButtonView notificationButtonView;
    public final ActivityResultRegistry$register$2 requestEditSource;
    public final ActivityResultRegistry$register$2 requestGoToTopic;
    public final ActivityResultRegistry$register$2 requestLanguageChange;
    public final ActivityResultRegistry$register$2 requestNewTopic;
    public final HeaderItemAdapter talkTopicItemAdapter;
    public final Request.Builder viewModel$delegate;
    public final ConcatAdapter concatAdapter = new ConcatAdapter(new RecyclerView.Adapter[0]);
    public final TalkTopicActivity.SearchCallback searchActionModeCallback = new TalkTopicActivity.SearchCallback(5, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderItemAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ TalkTopicsActivity this$0;

        public /* synthetic */ HeaderItemAdapter(TalkTopicsActivity talkTopicsActivity, int i) {
            this.$r8$classId = i;
            this.this$0 = talkTopicsActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
                case 0:
                    return 1;
                default:
                    int i = TalkTopicsActivity.$r8$clinit;
                    return this.this$0.getViewModel().sortedThreadItems.size();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            Object next;
            int i2;
            String str;
            switch (this.$r8$classId) {
                case 0:
                    HeaderViewHolder headerViewHolder = (HeaderViewHolder) viewHolder;
                    Retrofit retrofit = headerViewHolder.binding;
                    FrameLayout frameLayout = (FrameLayout) retrofit.converterFactories;
                    FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) retrofit.baseUrl;
                    TalkTopicsActivity talkTopicsActivity = headerViewHolder.this$0;
                    int i3 = TalkTopicsActivity.$r8$clinit;
                    frameLayout.setVisibility(talkTopicsActivity.getViewModel().pageTitle.namespace() != Namespace.USER_TALK ? 0 : 8);
                    String str2 = talkTopicsActivity.getViewModel().pageTitle.thumbUrl;
                    if (str2 == null) {
                        ((FrameLayout) retrofit.converterFactories).setVisibility(8);
                        return;
                    }
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    faceAndColorDetectImageView.setContentDescription(StringsKt.substringAfter$default(talkTopicsActivity.getViewModel().pageTitle.getDisplayText(), ':'));
                    faceAndColorDetectImageView.loadImage(Uri.parse(ImageUrlUtil.getUrlForPreferredSize(960, str2)), null);
                    return;
                default:
                    if (viewHolder instanceof TalkTopicHolder) {
                        TalkTopicHolder talkTopicHolder = (TalkTopicHolder) viewHolder;
                        int i4 = TalkTopicsActivity.$r8$clinit;
                        ThreadItem threadItem = (ThreadItem) this.this$0.getViewModel().sortedThreadItems.get(i);
                        View view = talkTopicHolder.itemView;
                        AppCompatActivity appCompatActivity = talkTopicHolder.context;
                        ActivityLoginBinding activityLoginBinding = talkTopicHolder.binding;
                        TextView textView = (TextView) activityLoginBinding.toolbar;
                        threadItem.getClass();
                        TalkTopicsViewModel talkTopicsViewModel = talkTopicHolder.viewModel;
                        threadItem.seen = talkTopicsViewModel.topicSeen(threadItem);
                        talkTopicHolder.threadItem = threadItem;
                        String str3 = threadItem.html;
                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                        if (str3 == null) {
                            str3 = "";
                        }
                        String obj = StringsKt.trim(StringUtil.fromHtml(StringUtil.removeStyleTags(str3)).toString()).toString();
                        if (obj.length() == 0) {
                            obj = appCompatActivity.getString(R.string.talk_no_subject);
                            obj.getClass();
                        }
                        LinearLayout linearLayout = (LinearLayout) activityLoginBinding.loginPrimaryContainer;
                        ImageView imageView = (ImageView) activityLoginBinding.loginButton;
                        ImageView imageView2 = (ImageView) activityLoginBinding.viewLoginError;
                        TextView textView2 = (TextView) activityLoginBinding.login2faText;
                        TextView textView3 = (TextView) activityLoginBinding.loginPasswordInput;
                        TextView textView4 = (TextView) activityLoginBinding.loginCreateAccountButton;
                        TextView textView5 = (TextView) activityLoginBinding.viewProgressBar;
                        StringUtil.setHighlightedAndBoldenedText(textView, obj, talkTopicsViewModel.currentSearchQuery);
                        ThreadItem threadItem2 = talkTopicHolder.threadItem;
                        if (threadItem2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        textView.setTextColor(Cache.Companion.getThemedColor(appCompatActivity, threadItem2.seen ? 16843282 : R.attr.primary_color));
                        view.setOnClickListener(talkTopicHolder);
                        ThreadItem threadItem3 = talkTopicHolder.threadItem;
                        if (threadItem3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        if (threadItem3.seen) {
                            view.setTag(R.string.tag_text_key, appCompatActivity.getString(R.string.talk_list_item_swipe_mark_as_unread));
                            view.setTag(R.string.tag_icon_key, Integer.valueOf(R.drawable.ic_outline_email_24));
                        } else {
                            view.setTag(R.string.tag_text_key, appCompatActivity.getString(R.string.talk_list_item_swipe_mark_as_read));
                            view.setTag(R.string.tag_icon_key, Integer.valueOf(R.drawable.ic_outline_drafts_24));
                        }
                        ((ImageView) activityLoginBinding.loginUsernameText).setOnClickListener(new DiffLineView$$ExternalSyntheticLambda0(26, talkTopicHolder));
                        ThreadItem threadItem4 = talkTopicHolder.threadItem;
                        if (threadItem4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        List list = SequencesKt.toList(threadItem4.getAllReplies());
                        if (list.isEmpty()) {
                            imageView2.setVisibility(8);
                            textView5.setVisibility(8);
                            imageView.setVisibility(8);
                            textView4.setVisibility(8);
                            textView3.setVisibility(8);
                            textView2.setVisibility(8);
                            int i5 = TalkTopicActivity.$r8$clinit;
                            ThreadItem threadItem5 = talkTopicHolder.threadItem;
                            if (threadItem5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                                throw null;
                            }
                            boolean isHeaderTemplate = UriUtil.isHeaderTemplate(threadItem5);
                            linearLayout.setVisibility(isHeaderTemplate ? 0 : 8);
                            if (isHeaderTemplate) {
                                TextView textView6 = (TextView) activityLoginBinding.footerContainer;
                                ThreadItem threadItem6 = talkTopicHolder.threadItem;
                                if (threadItem6 != null) {
                                    StringUtil.setHighlightedAndBoldenedText(textView6, StringsKt__StringsJVMKt.replace$default(StringsKt.trim(StringUtil.fromHtml(StringUtil.removeStyleTags(StringUtil.removeStyleTags(threadItem6.othercontent))).toString()).toString(), "\n", " "), talkTopicsViewModel.currentSearchQuery);
                                    return;
                                } else {
                                    Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                                    throw null;
                                }
                            }
                            return;
                        }
                        linearLayout.setVisibility(8);
                        textView2.setVisibility(talkTopicsViewModel.pageTitle.namespace() == Namespace.USER_TALK ? 0 : 8);
                        String str4 = ((ThreadItem) CollectionsKt.last(list)).html;
                        if (str4 == null) {
                            str4 = "";
                        }
                        StringUtil.setHighlightedAndBoldenedText(textView2, StringsKt__StringsJVMKt.replace$default(StringsKt.trim(StringUtil.fromHtml(StringUtil.removeStyleTags(str4)).toString()).toString(), "\n", " "), talkTopicsViewModel.currentSearchQuery);
                        ThreadItem threadItem7 = talkTopicHolder.threadItem;
                        if (threadItem7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        textView2.setTextColor(Cache.Companion.getThemedColor(appCompatActivity, threadItem7.seen ? 16843282 : R.attr.primary_color));
                        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            arrayList.add(((ThreadItem) it.next()).author);
                        }
                        int size = CollectionsKt.toList(CollectionsKt.toMutableSet(arrayList)).size() - 1;
                        Iterator it2 = list.iterator();
                        if (it2.hasNext()) {
                            next = it2.next();
                            if (it2.hasNext()) {
                                Date date = ((ThreadItem) next).date;
                                if (date == null) {
                                    date = new Date();
                                }
                                do {
                                    Object next2 = it2.next();
                                    Date date2 = ((ThreadItem) next2).date;
                                    if (date2 == null) {
                                        date2 = new Date();
                                    }
                                    if (date.compareTo(date2) < 0) {
                                        date = date2;
                                        next = next2;
                                    }
                                } while (it2.hasNext());
                            }
                        } else {
                            next = null;
                        }
                        ThreadItem threadItem8 = (ThreadItem) next;
                        String str5 = threadItem8 != null ? threadItem8.author : null;
                        if (str5 == null) {
                            str5 = "";
                        }
                        String concat = str5.concat(size > 1 ? Animation.CC.m(size, " +") : "");
                        ThreadItem threadItem9 = talkTopicHolder.threadItem;
                        if (threadItem9 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        boolean z = threadItem9.seen;
                        int i6 = R.attr.inactive_color;
                        int i7 = z ? R.attr.inactive_color : R.attr.progressive_color;
                        StringUtil stringUtil3 = StringUtil.INSTANCE;
                        StringUtil.setHighlightedAndBoldenedText(textView5, concat, talkTopicsViewModel.currentSearchQuery);
                        Namespace namespace = talkTopicsViewModel.pageTitle.namespace();
                        Namespace namespace2 = Namespace.USER_TALK;
                        imageView2.setVisibility(namespace == namespace2 ? 0 : 8);
                        textView5.setVisibility(talkTopicsViewModel.pageTitle.namespace() == namespace2 ? 0 : 8);
                        textView5.setTextColor(Cache.Companion.getThemedColor(appCompatActivity, i7));
                        imageView2.setImageTintList(Cache.Companion.getThemedColorStateList(appCompatActivity, i7));
                        int size2 = list.size() - 1;
                        ThreadItem threadItem10 = talkTopicHolder.threadItem;
                        if (threadItem10 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        int i8 = threadItem10.seen ? R.attr.inactive_color : R.attr.placeholder_color;
                        textView4.setVisibility(size2 > 0 ? 0 : 8);
                        imageView.setVisibility(size2 > 0 ? 0 : 8);
                        textView4.setText(String.valueOf(size2));
                        textView4.setTextColor(Cache.Companion.getThemedColor(appCompatActivity, i8));
                        imageView.setImageTintList(Cache.Companion.getThemedColorStateList(appCompatActivity, i8));
                        ArrayList arrayList2 = new ArrayList();
                        Iterator it3 = list.iterator();
                        while (it3.hasNext()) {
                            Date date3 = ((ThreadItem) it3.next()).date;
                            if (date3 != null) {
                                arrayList2.add(date3);
                            }
                        }
                        Date date4 = (Date) CollectionsKt.maxOrNull(arrayList2);
                        if (date4 != null) {
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            String str6 = DateFormat.is24HourFormat(appCompatActivity) ? "MMM d, yyyy, HH:mm" : "MMM d, yyyy, hh:mm a";
                            Locale locale = Locale.getDefault();
                            locale.getClass();
                            i2 = 0;
                            str = DateUtil.getCachedDateFormat(str6, locale, false, false).format(date4);
                            str.getClass();
                        } else {
                            i2 = 0;
                            str = null;
                        }
                        ThreadItem threadItem11 = talkTopicHolder.threadItem;
                        if (threadItem11 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("threadItem");
                            throw null;
                        }
                        if (!threadItem11.seen) {
                            i6 = R.attr.placeholder_color;
                        }
                        textView3.setText(str);
                        textView3.setVisibility(str != null ? i2 : 8);
                        TypedValue typedValue = new TypedValue();
                        TypedValue typedValue2 = appCompatActivity.getTheme().resolveAttribute(i6, typedValue, true) ? typedValue : null;
                        if (typedValue2 != null) {
                            textView3.setTextColor(typedValue2.data);
                            return;
                        } else {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i6, "Attribute not found; ID="));
                            return;
                        }
                    }
                    return;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            TalkTopicsActivity talkTopicsActivity = this.this$0;
            switch (i2) {
                case 0:
                    View inflate = talkTopicsActivity.getLayoutInflater().inflate(R.layout.view_talk_topics_header, viewGroup, false);
                    int i3 = R.id.search_container;
                    WikiCardView wikiCardView = (WikiCardView) Room.findChildViewById(inflate, R.id.search_container);
                    if (wikiCardView != null) {
                        i3 = R.id.talkLeadImage;
                        FaceAndColorDetectImageView faceAndColorDetectImageView = (FaceAndColorDetectImageView) Room.findChildViewById(inflate, R.id.talkLeadImage);
                        if (faceAndColorDetectImageView != null) {
                            i3 = R.id.talkLeadImageContainer;
                            FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.talkLeadImageContainer);
                            if (frameLayout != null) {
                                i3 = R.id.talk_sort_button;
                                ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.talk_sort_button);
                                if (imageView != null) {
                                    return new HeaderViewHolder(talkTopicsActivity, new Retrofit((LinearLayout) inflate, wikiCardView, faceAndColorDetectImageView, frameLayout, imageView));
                                }
                            }
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
                    return null;
                default:
                    View inflate2 = talkTopicsActivity.getLayoutInflater().inflate(R.layout.item_talk_topic, viewGroup, false);
                    int i4 = R.id.otherContentContainer;
                    LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate2, R.id.otherContentContainer);
                    if (linearLayout != null) {
                        i4 = R.id.otherContentText;
                        TextView textView = (TextView) Room.findChildViewById(inflate2, R.id.otherContentText);
                        if (textView != null) {
                            i4 = R.id.topicContentContainer;
                            if (((ConstraintLayout) Room.findChildViewById(inflate2, R.id.topicContentContainer)) != null) {
                                i4 = R.id.topicContentText;
                                TextView textView2 = (TextView) Room.findChildViewById(inflate2, R.id.topicContentText);
                                if (textView2 != null) {
                                    i4 = R.id.topicLastCommentDate;
                                    TextView textView3 = (TextView) Room.findChildViewById(inflate2, R.id.topicLastCommentDate);
                                    if (textView3 != null) {
                                        i4 = R.id.topicOverflowMenu;
                                        ImageView imageView2 = (ImageView) Room.findChildViewById(inflate2, R.id.topicOverflowMenu);
                                        if (imageView2 != null) {
                                            i4 = R.id.topicReplyIcon;
                                            ImageView imageView3 = (ImageView) Room.findChildViewById(inflate2, R.id.topicReplyIcon);
                                            if (imageView3 != null) {
                                                i4 = R.id.topicReplyNumber;
                                                TextView textView4 = (TextView) Room.findChildViewById(inflate2, R.id.topicReplyNumber);
                                                if (textView4 != null) {
                                                    i4 = R.id.topicTitleText;
                                                    TextView textView5 = (TextView) Room.findChildViewById(inflate2, R.id.topicTitleText);
                                                    if (textView5 != null) {
                                                        i4 = R.id.topicUserIcon;
                                                        ImageView imageView4 = (ImageView) Room.findChildViewById(inflate2, R.id.topicUserIcon);
                                                        if (imageView4 != null) {
                                                            i4 = R.id.topicUsername;
                                                            TextView textView6 = (TextView) Room.findChildViewById(inflate2, R.id.topicUsername);
                                                            if (textView6 != null) {
                                                                ActivityLoginBinding activityLoginBinding = new ActivityLoginBinding((FrameLayout) inflate2, linearLayout, textView, textView2, textView3, imageView2, imageView3, textView4, textView5, imageView4, textView6);
                                                                TalkTopicsViewModel viewModel = talkTopicsActivity.getViewModel();
                                                                Constants.InvokeSource invokeSource = talkTopicsActivity.invokeSource;
                                                                if (invokeSource != null) {
                                                                    return new TalkTopicHolder(activityLoginBinding, talkTopicsActivity, viewModel, invokeSource);
                                                                }
                                                                Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                                                                throw null;
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
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i4)));
                    return null;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderViewHolder extends RecyclerView.ViewHolder {
        public final Retrofit binding;
        public final /* synthetic */ TalkTopicsActivity this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HeaderViewHolder(TalkTopicsActivity talkTopicsActivity, Retrofit retrofit) {
            super((LinearLayout) retrofit.serviceMethodCache);
            ImageView imageView = (ImageView) retrofit.callAdapterFactories;
            this.this$0 = talkTopicsActivity;
            this.binding = retrofit;
            WikiCardView wikiCardView = (WikiCardView) retrofit.callFactory;
            TypedValue typedValue = new TypedValue();
            typedValue = talkTopicsActivity.getTheme().resolveAttribute(R.attr.background_color, typedValue, true) ? typedValue : null;
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130968673");
                throw null;
            }
            wikiCardView.setCardBackgroundColor(typedValue.data);
            wikiCardView.setOnClickListener(new TalkTopicsActivity$$ExternalSyntheticLambda0(talkTopicsActivity, 4));
            imageView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(27, talkTopicsActivity, this));
            View view = new View[]{imageView}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
        }
    }

    public TalkTopicsActivity() {
        final int i = 0;
        final int i2 = 1;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(TalkTopicsViewModel.class), new Function0(this) { // from class: org.wikipedia.talk.TalkTopicsActivity$special$$inlined$viewModels$default$2
            public final /* synthetic */ TalkTopicsActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                TalkTopicsActivity talkTopicsActivity = this.$this_viewModels;
                switch (i3) {
                    case 0:
                        return talkTopicsActivity.getViewModelStore();
                    default:
                        return talkTopicsActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new TalkTopicsActivity$$ExternalSyntheticLambda4(i, this), new Function0(this) { // from class: org.wikipedia.talk.TalkTopicsActivity$special$$inlined$viewModels$default$2
            public final /* synthetic */ TalkTopicsActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                TalkTopicsActivity talkTopicsActivity = this.$this_viewModels;
                switch (i3) {
                    case 0:
                        return talkTopicsActivity.getViewModelStore();
                    default:
                        return talkTopicsActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
        this.headerAdapter = new HeaderItemAdapter(this, i);
        this.talkTopicItemAdapter = new HeaderItemAdapter(this, i2);
        int i3 = 3;
        this.requestLanguageChange = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 3), new FragmentManager$FragmentIntentSenderContract(i3));
        this.requestNewTopic = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 4), new FragmentManager$FragmentIntentSenderContract(i3));
        this.requestEditSource = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 5), new FragmentManager$FragmentIntentSenderContract(i3));
        this.requestGoToTopic = (ActivityResultRegistry$register$2) registerForActivityResult(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 6), new FragmentManager$FragmentIntentSenderContract(i3));
    }

    public final TalkTopicsViewModel getViewModel() {
        return (TalkTopicsViewModel) this.viewModel$delegate.getValue();
    }

    public final void goToPage() {
        HistoryEntry historyEntry = new HistoryEntry(31, Headers.Companion.getNonTalkPageTitle(getViewModel().pageTitle));
        Intent putExtra = new Intent("org.wikipedia.load_in_new_tab").setClass(this, PageActivity.class).putExtra("org.wikipedia.history.historyentry", historyEntry).putExtra("title", historyEntry.getTitle());
        putExtra.getClass();
        startActivity(putExtra);
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_talk_topics, (ViewGroup) null, false);
        int i2 = R.id.talkConditionContainer;
        FrameLayout frameLayout = (FrameLayout) Room.findChildViewById(inflate, R.id.talkConditionContainer);
        if (frameLayout != null) {
            i2 = R.id.talkContentsView;
            FrameLayout frameLayout2 = (FrameLayout) Room.findChildViewById(inflate, R.id.talkContentsView);
            if (frameLayout2 != null) {
                i2 = R.id.talkEmptyContainer;
                ScrollView scrollView = (ScrollView) Room.findChildViewById(inflate, R.id.talkEmptyContainer);
                if (scrollView != null) {
                    i2 = R.id.talkErrorView;
                    WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.talkErrorView);
                    if (wikiErrorView != null) {
                        i2 = R.id.talkNewTopicButton;
                        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) Room.findChildViewById(inflate, R.id.talkNewTopicButton);
                        if (extendedFloatingActionButton != null) {
                            i2 = R.id.talkProgressBar;
                            ProgressBar progressBar = (ProgressBar) Room.findChildViewById(inflate, R.id.talkProgressBar);
                            if (progressBar != null) {
                                i2 = R.id.talkRecyclerView;
                                RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.talkRecyclerView);
                                if (recyclerView != null) {
                                    WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) inflate;
                                    i2 = R.id.talkSearchNoResult;
                                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.talkSearchNoResult);
                                    if (textView != null) {
                                        i2 = R.id.talkTopicsSnackbar;
                                        if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.talkTopicsSnackbar)) != null) {
                                            i2 = R.id.toolbar;
                                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                            if (materialToolbar != null) {
                                                this.binding = new NodeChain(wikiSwipeRefreshLayout, frameLayout, frameLayout2, scrollView, wikiErrorView, extendedFloatingActionButton, progressBar, recyclerView, wikiSwipeRefreshLayout, textView, materialToolbar, 1);
                                                setContentView(wikiSwipeRefreshLayout);
                                                NodeChain nodeChain = this.binding;
                                                if (nodeChain == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                setSupportActionBar((MaterialToolbar) nodeChain.cachedDiffer);
                                                ContextsKt supportActionBar = getSupportActionBar();
                                                int i3 = 1;
                                                if (supportActionBar != null) {
                                                    supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                }
                                                this.goToTopic = getIntent().getBooleanExtra("goToTopic", false);
                                                NodeChain nodeChain2 = this.binding;
                                                if (nodeChain2 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((RecyclerView) nodeChain2.current).setLayoutManager(new LinearLayoutManager(1));
                                                NodeChain nodeChain3 = this.binding;
                                                if (nodeChain3 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((RecyclerView) nodeChain3.current).addItemDecoration(new DrawableItemDecoration((Context) this, false, false, true));
                                                NodeChain nodeChain4 = this.binding;
                                                if (nodeChain4 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((RecyclerView) nodeChain4.current).setItemAnimator(null);
                                                TypedValue typedValue = new TypedValue();
                                                if (!getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true)) {
                                                    typedValue = null;
                                                }
                                                if (typedValue == null) {
                                                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                                                    return;
                                                }
                                                int i4 = typedValue.resourceId;
                                                Integer valueOf = Integer.valueOf(android.R.color.white);
                                                NodeChain nodeChain5 = this.binding;
                                                if (nodeChain5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(this, i4, R.drawable.ic_outline_drafts_24, valueOf, true, (WikiSwipeRefreshLayout) nodeChain5.buffer);
                                                swipeableItemTouchHelperCallback.swipeableEnabled = true;
                                                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback);
                                                NodeChain nodeChain6 = this.binding;
                                                if (nodeChain6 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                itemTouchHelper.attachToRecyclerView((RecyclerView) nodeChain6.current);
                                                NodeChain nodeChain7 = this.binding;
                                                if (nodeChain7 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((WikiErrorView) nodeChain7.outerCoordinator).setBackClickListener(new TalkTopicsActivity$$ExternalSyntheticLambda0(this, i));
                                                NodeChain nodeChain8 = this.binding;
                                                if (nodeChain8 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((WikiErrorView) nodeChain8.outerCoordinator).setRetryClickListener(new TalkTopicsActivity$$ExternalSyntheticLambda0(this, i3));
                                                NodeChain nodeChain9 = this.binding;
                                                if (nodeChain9 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain9.tail).setOnClickListener(new TalkTopicsActivity$$ExternalSyntheticLambda0(this, 2));
                                                NodeChain nodeChain10 = this.binding;
                                                if (nodeChain10 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((WikiSwipeRefreshLayout) nodeChain10.buffer).setOnRefreshListener(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 2));
                                                Serializable serializableExtra = getIntent().getSerializableExtra("invokeSource");
                                                serializableExtra.getClass();
                                                this.invokeSource = (Constants.InvokeSource) serializableExtra;
                                                NodeChain nodeChain11 = this.binding;
                                                if (nodeChain11 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                    throw null;
                                                }
                                                ((ExtendedFloatingActionButton) nodeChain11.tail).setVisibility(8);
                                                this.notificationButtonView = new NotificationButtonView(this, null);
                                                Prefs prefs = Prefs.INSTANCE;
                                                PrefsIoUtil.setBoolean(R.string.preference_key_anon_user_has_notification, false);
                                                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new TalkTopicsActivity$onCreate$5(this, continuation, i), 3);
                                                resetViews();
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
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        if (!this.goToTopic) {
            getMenuInflater().inflate(R.menu.menu_talk, menu);
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // org.wikipedia.watchlist.WatchlistExpiryDialog.Callback
    public final void onExpiryChanged(WatchlistExpiry watchlistExpiry) {
        getViewModel().hasWatchlistExpiry = watchlistExpiry != WatchlistExpiry.NEVER;
        invalidateOptionsMenu();
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        Continuation continuation = null;
        if (itemId == R.id.menu_change_language) {
            Constants.InvokeSource invokeSource = Constants.InvokeSource.TALK_TOPICS_ACTIVITY;
            invokeSource.getClass();
            Intent putExtra = new Intent(this, (Class<?>) WikipediaLanguagesActivity.class).putExtra("invokeSource", invokeSource);
            putExtra.getClass();
            this.requestLanguageChange.launch(putExtra, null);
            return true;
        }
        if (itemId == R.id.menu_read_article || itemId == R.id.menu_view_user_page) {
            goToPage();
            return true;
        }
        if (itemId == R.id.menu_view_edit_history) {
            PageTitle pageTitle = getViewModel().pageTitle;
            pageTitle.getClass();
            Intent putExtra2 = new Intent(this, (Class<?>) EditHistoryListActivity.class).putExtra("title", pageTitle);
            putExtra2.getClass();
            startActivity(putExtra2);
            return true;
        }
        if (itemId == R.id.menu_talk_topic_share) {
            String string = getString(R.string.talk_share_talk_page);
            string.getClass();
            ShareUtil.shareText(this, string, getViewModel().pageTitle.getUri());
            return true;
        }
        if (itemId == R.id.menu_watch) {
            if (Headers.Companion.isLoggedIn()) {
                TalkTopicsViewModel viewModel = getViewModel();
                WatchlistExpiry watchlistExpiry = WatchlistExpiry.NEVER;
                boolean z = getViewModel().isWatched;
                watchlistExpiry.getClass();
                AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), viewModel.actionHandler, null, new TalkTopicsViewModel$watchOrUnwatch$1(viewModel, z, watchlistExpiry, continuation, 0), 2);
            }
            return true;
        }
        if (itemId == R.id.menu_edit_source) {
            this.requestEditSource.launch(LoginClient.newIntent$default(this, -1, null, getViewModel().pageTitle, Constants.InvokeSource.TALK_TOPICS_ACTIVITY, null, 480), null);
            return true;
        }
        if (itemId != R.id.menu_archive) {
            return super.onOptionsItemSelected(menuItem);
        }
        PageTitle pageTitle2 = getViewModel().pageTitle;
        pageTitle2.getClass();
        Intent putExtra3 = new Intent(this, (Class<?>) ArchivedTalkPagesActivity.class).putExtra("title", pageTitle2);
        putExtra3.getClass();
        startActivity(putExtra3);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0061  */
    @Override // android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onPrepareOptionsMenu(android.view.Menu r10) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.talk.TalkTopicsActivity.onPrepareOptionsMenu(android.view.Menu):boolean");
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        SearchActionProvider searchActionProvider = (SearchActionProvider) this.searchActionModeCallback.searchActionProvider;
        if (searchActionProvider != null) {
            ((CabSearchView) searchActionProvider.binding.this$0).searchSrcTextView.selectAll();
        }
    }

    @Override // org.wikipedia.activity.BaseActivity
    public final void onUnreadNotification() {
        updateNotificationDot(true);
    }

    public final void resetViews() {
        invalidateOptionsMenu();
        NodeChain nodeChain = this.binding;
        if (nodeChain == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        BitmapsKt.setLayoutDirectionByLang((FrameLayout) nodeChain.sentinelHead, getViewModel().pageTitle.wikiSite.languageCode);
        NodeChain nodeChain2 = this.binding;
        if (nodeChain2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ProgressBar) nodeChain2.head).setVisibility(0);
        NodeChain nodeChain3 = this.binding;
        if (nodeChain3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((WikiErrorView) nodeChain3.outerCoordinator).setVisibility(8);
        NodeChain nodeChain4 = this.binding;
        if (nodeChain4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ScrollView) nodeChain4.innerCoordinator).setVisibility(8);
        NodeChain nodeChain5 = this.binding;
        if (nodeChain5 != null) {
            ((FrameLayout) nodeChain5.layoutNode).setVisibility(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }

    public final void setToolbarTitle(PageTitle pageTitle) {
        TextView textView;
        StringUtil stringUtil = StringUtil.INSTANCE;
        String namespace = pageTitle.getNamespace();
        if (namespace.length() == 0) {
            namespace = TalkAliasData.valueFor(pageTitle.wikiSite.languageCode);
        }
        Spanned fromHtml = StringUtil.fromHtml(((Object) namespace) + ": <a href='#'>" + StringUtil.removeNamespace(StringUtil.removeHTMLTags(pageTitle.getDisplayText())) + "</a>");
        NodeChain nodeChain = this.binding;
        if (nodeChain == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        MaterialToolbar materialToolbar = (MaterialToolbar) nodeChain.cachedDiffer;
        int i = 0;
        while (true) {
            if (!(i < materialToolbar.getChildCount())) {
                textView = null;
                break;
            }
            int i2 = i + 1;
            View childAt = materialToolbar.getChildAt(i);
            if (childAt == null) {
                throw new IndexOutOfBoundsException();
            }
            if (childAt instanceof TextView) {
                textView = (TextView) childAt;
                break;
            }
            i = i2;
        }
        if (textView != null) {
            textView.setContentDescription(fromHtml);
            textView.setVisibility(!this.goToTopic ? 0 : 8);
            Constants.InvokeSource invokeSource = this.invokeSource;
            if (invokeSource == null) {
                Intrinsics.throwUninitializedPropertyAccessException("invokeSource");
                throw null;
            }
            if (invokeSource != Constants.InvokeSource.ARCHIVED_TALK_ACTIVITY) {
                textView.setMovementMethod(new LinkMovementMethodExt(new TalkTopicsActivity$HeaderViewHolder$$ExternalSyntheticLambda2(this, 1)));
            }
            View view = new View[]{textView}[0];
            RegexKt.setTooltipText(view, view.getContentDescription());
        }
        ContextsKt supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(fromHtml);
        }
    }

    public final void updateNotificationDot(boolean z) {
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

    public final void updateOnEmpty() {
        NodeChain nodeChain = this.binding;
        if (nodeChain == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ProgressBar) nodeChain.head).setVisibility(8);
        NodeChain nodeChain2 = this.binding;
        if (nodeChain2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((WikiSwipeRefreshLayout) nodeChain2.buffer).setRefreshing(false);
        NodeChain nodeChain3 = this.binding;
        if (nodeChain3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ScrollView) nodeChain3.innerCoordinator).setVisibility(0);
        NodeChain nodeChain4 = this.binding;
        if (nodeChain4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((FrameLayout) nodeChain4.layoutNode).setVisibility(0);
        NodeChain nodeChain5 = this.binding;
        if (nodeChain5 != null) {
            ((ExtendedFloatingActionButton) nodeChain5.tail).performMotion(0);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
    }
}
