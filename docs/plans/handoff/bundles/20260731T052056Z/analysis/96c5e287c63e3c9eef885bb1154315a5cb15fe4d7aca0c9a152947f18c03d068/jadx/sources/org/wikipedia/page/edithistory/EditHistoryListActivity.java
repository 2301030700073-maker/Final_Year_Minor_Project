package org.wikipedia.page.edithistory;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.ActionMode;
import androidx.compose.animation.core.Animation;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.ColorUtils;
import androidx.fragment.app.FragmentManager$1;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.FastScroller;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import j$.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.ViewWatchlistSearchBarBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.main.MainActivity$$ExternalSyntheticLambda1;
import org.wikipedia.page.LinkMovementMethodExt;
import org.wikipedia.page.edithistory.EditHistoryItemView;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.settings.AppIconDialog;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.talk.TalkTopicActivity;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.SingleLiveData$sam$androidx_lifecycle_Observer$0;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.EditHistoryStatsView;
import org.wikipedia.views.ReadingListsOverflowView;
import org.wikipedia.views.SearchAndFilterActionProvider;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0007\u0018\u00002\u00020\u0001:\u000e\u0004\u0005\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0011"}, d2 = {"Lorg/wikipedia/page/edithistory/EditHistoryListActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "AppIconAdapter", "StatsItemAdapter", "LoadingItemAdapter", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "LoadingViewHolder", "StatsViewHolder", "SeparatorViewHolder", "SearchBarViewHolder", "EmptyMessagesViewHolder", "EditHistoryListItemHolder", "SearchCallback", "Companion", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EditHistoryListActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public ActionMode actionMode;
    public ActivityLoginBinding binding;
    public final StatsItemAdapter editHistoryEmptyMessagesAdapter;
    public final StatsItemAdapter editHistoryStatsAdapter;
    public final CategoryActivity.LoadingItemAdapter loadFooter;
    public final CategoryActivity.LoadingItemAdapter loadHeader;
    public final Request.Builder viewModel$delegate;
    public final CategoryActivity.CategoryMembersAdapter editHistoryListAdapter = new CategoryActivity.CategoryMembersAdapter(this);
    public final AppIconDialog.AppIconAdapter editHistorySearchBarAdapter = new AppIconDialog.AppIconAdapter(this);
    public final TalkTopicActivity.SearchCallback searchActionModeCallback = new TalkTopicActivity.SearchCallback(3, this);
    public final FragmentManager$1 onBackPressedCallback = new FragmentManager$1(9, this);

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EditHistoryListItemHolder extends RecyclerView.ViewHolder implements EditHistoryItemView.Listener {
        public MwQueryPage.Revision revision;
        public final EditHistoryItemView view;

        public EditHistoryListItemHolder(EditHistoryItemView editHistoryItemView) {
            super(editHistoryItemView);
            this.view = editHistoryItemView;
        }

        public final void toggleSelectState() {
            MwQueryPage.Revision revision;
            int i = EditHistoryListActivity.$r8$clinit;
            EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
            EditHistoryListViewModel viewModel = editHistoryListActivity.getViewModel();
            MwQueryPage.Revision revision2 = this.revision;
            if (revision2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("revision");
                throw null;
            }
            long j = revision2.revId;
            MwQueryPage.Revision revision3 = viewModel.selectedRevisionFrom;
            if (revision3 != null || ((revision = viewModel.selectedRevisionTo) != null && revision.revId == j)) {
                MwQueryPage.Revision revision4 = viewModel.selectedRevisionTo;
                if (revision4 == null && (revision3 == null || revision3.revId != j)) {
                    viewModel.selectedRevisionTo = revision2;
                } else if (revision3 != null && revision3.revId == j) {
                    viewModel.selectedRevisionFrom = null;
                } else {
                    if (revision4 == null || revision4.revId != j) {
                        ShareUtil.showMessage(editHistoryListActivity, R.string.revision_compare_two_only);
                        return;
                    }
                    viewModel.selectedRevisionTo = null;
                }
            } else {
                viewModel.selectedRevisionFrom = revision2;
            }
            updateSelectState();
            editHistoryListActivity.updateCompareStateItems();
        }

        public final void updateSelectState() {
            int i;
            int i2 = EditHistoryListActivity.$r8$clinit;
            EditHistoryListViewModel viewModel = EditHistoryListActivity.this.getViewModel();
            MwQueryPage.Revision revision = this.revision;
            if (revision == null) {
                Intrinsics.throwUninitializedPropertyAccessException("revision");
                throw null;
            }
            long j = revision.revId;
            if (viewModel.comparing) {
                MwQueryPage.Revision revision2 = viewModel.selectedRevisionFrom;
                if (revision2 == null || revision2.revId != j) {
                    MwQueryPage.Revision revision3 = viewModel.selectedRevisionTo;
                    i = (revision3 == null || revision3.revId != j) ? 1 : 3;
                } else {
                    i = 2;
                }
            } else {
                i = 0;
            }
            this.view.setSelectedState(i);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyMessagesViewHolder extends RecyclerView.ViewHolder {
        public final DefaultSocket binding;

        public EmptyMessagesViewHolder(DefaultSocket defaultSocket) {
            super((LinearLayout) defaultSocket.socket);
            this.binding = defaultSocket;
            ((TextView) defaultSocket.closeBits).setMovementMethod(new LinkMovementMethodExt(new EditHistoryListActivity$$ExternalSyntheticLambda6(EditHistoryListActivity.this)));
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingViewHolder extends RecyclerView.ViewHolder {
        public LoadingViewHolder(View view) {
            super(view);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SearchBarViewHolder extends RecyclerView.ViewHolder {
        public final ViewWatchlistSearchBarBinding binding;
        public final /* synthetic */ EditHistoryListActivity this$0;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public SearchBarViewHolder(org.wikipedia.page.edithistory.EditHistoryListActivity r5, org.wikipedia.databinding.ViewWatchlistSearchBarBinding r6) {
            /*
                r4 = this;
                android.widget.TextView r0 = r6.filterCount
                r4.this$0 = r5
                org.wikipedia.views.WikiCardView r1 = r6.rootView
                r4.<init>(r1)
                r4.binding = r6
                r4 = 8
                r1.setVisibility(r4)
                org.wikipedia.settings.Prefs r1 = org.wikipedia.settings.Prefs.INSTANCE
                java.lang.String r1 = org.wikipedia.settings.Prefs.getEditHistoryFilterType()
                int r1 = r1.length()
                r2 = 0
                if (r1 <= 0) goto L1f
                r1 = 1
                goto L20
            L1f:
                r1 = r2
            L20:
                if (r1 == 0) goto L26
                r3 = 2130969888(0x7f040520, float:1.754847E38)
                goto L29
            L26:
                r3 = 2130969882(0x7f04051a, float:1.7548458E38)
            L29:
                if (r1 == 0) goto L2c
                r4 = r2
            L2c:
                r0.setVisibility(r4)
                if (r1 == 0) goto L34
                java.lang.String r4 = "1"
                goto L36
            L34:
                java.lang.String r4 = "0"
            L36:
                r0.setText(r4)
                android.widget.ImageView r4 = r6.filterButton
                android.content.res.ColorStateList r5 = okhttp3.Cache.Companion.getThemedColorStateList(r5, r3)
                r4.setImageTintList(r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.page.edithistory.EditHistoryListActivity.SearchBarViewHolder.<init>(org.wikipedia.page.edithistory.EditHistoryListActivity, org.wikipedia.databinding.ViewWatchlistSearchBarBinding):void");
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class SeparatorViewHolder extends RecyclerView.ViewHolder {
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StatsItemAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ EditHistoryListActivity this$0;

        public /* synthetic */ StatsItemAdapter(EditHistoryListActivity editHistoryListActivity, int i) {
            this.$r8$classId = i;
            this.this$0 = editHistoryListActivity;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            switch (this.$r8$classId) {
            }
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            switch (this.$r8$classId) {
                case 0:
                    StatsViewHolder statsViewHolder = (StatsViewHolder) viewHolder;
                    EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                    int i2 = EditHistoryListActivity.$r8$clinit;
                    Resource resource = (Resource) editHistoryListActivity.getViewModel().editHistoryStatsData.getValue();
                    boolean z = resource instanceof Resource.Success;
                    EditHistoryStatsView editHistoryStatsView = statsViewHolder.view;
                    if (!z) {
                        editHistoryStatsView.setup(editHistoryListActivity.getViewModel().pageTitle, null);
                        break;
                    } else {
                        editHistoryStatsView.setup(editHistoryListActivity.getViewModel().pageTitle, (EditHistoryListViewModel.EditHistoryStats) ((Resource.Success) resource).data);
                        break;
                    }
                default:
                    EmptyMessagesViewHolder emptyMessagesViewHolder = (EmptyMessagesViewHolder) viewHolder;
                    DefaultSocket defaultSocket = emptyMessagesViewHolder.binding;
                    TextView textView = (TextView) defaultSocket.closeBits;
                    StringUtil stringUtil = StringUtil.INSTANCE;
                    EditHistoryListActivity editHistoryListActivity2 = EditHistoryListActivity.this;
                    textView.setText(StringUtil.fromHtml(editHistoryListActivity2.getString(R.string.page_edit_history_empty_search_message)));
                    ((TextView) defaultSocket.sink).setVisibility(editHistoryListActivity2.actionMode != null ? 0 : 8);
                    LinearLayout linearLayout = (LinearLayout) defaultSocket.source;
                    Prefs prefs = Prefs.INSTANCE;
                    linearLayout.setVisibility(Prefs.getEditHistoryFilterType().length() > 0 ? 0 : 8);
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            EditHistoryListActivity editHistoryListActivity = this.this$0;
            switch (i2) {
                case 0:
                    return editHistoryListActivity.new StatsViewHolder(new EditHistoryStatsView(editHistoryListActivity));
                default:
                    return editHistoryListActivity.new EmptyMessagesViewHolder(DefaultSocket.inflate(editHistoryListActivity.getLayoutInflater(), viewGroup));
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class StatsViewHolder extends RecyclerView.ViewHolder {
        public final EditHistoryStatsView view;

        public StatsViewHolder(EditHistoryStatsView editHistoryStatsView) {
            super(editHistoryStatsView);
            this.view = editHistoryStatsView;
        }
    }

    public EditHistoryListActivity() {
        final int i = 0;
        this.editHistoryStatsAdapter = new StatsItemAdapter(this, i);
        final int i2 = 1;
        this.editHistoryEmptyMessagesAdapter = new StatsItemAdapter(this, i2);
        this.loadHeader = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.page.edithistory.EditHistoryListActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ EditHistoryListActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i;
                Unit unit = Unit.INSTANCE;
                EditHistoryListActivity editHistoryListActivity = this.f$0;
                switch (i3) {
                    case 0:
                        editHistoryListActivity.editHistoryListAdapter.retry();
                        break;
                    default:
                        editHistoryListActivity.editHistoryListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i2);
        this.loadFooter = new CategoryActivity.LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.page.edithistory.EditHistoryListActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ EditHistoryListActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i3 = i2;
                Unit unit = Unit.INSTANCE;
                EditHistoryListActivity editHistoryListActivity = this.f$0;
                switch (i3) {
                    case 0:
                        editHistoryListActivity.editHistoryListAdapter.retry();
                        break;
                    default:
                        editHistoryListActivity.editHistoryListAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i2);
        final int i3 = 2;
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(EditHistoryListViewModel.class), new Function0(this) { // from class: org.wikipedia.page.edithistory.EditHistoryListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditHistoryListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i2;
                EditHistoryListActivity editHistoryListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editHistoryListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editHistoryListActivity.getViewModelStore();
                    default:
                        return editHistoryListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.page.edithistory.EditHistoryListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditHistoryListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i;
                EditHistoryListActivity editHistoryListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editHistoryListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editHistoryListActivity.getViewModelStore();
                    default:
                        return editHistoryListActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.page.edithistory.EditHistoryListActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ EditHistoryListActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i4 = i3;
                EditHistoryListActivity editHistoryListActivity = this.$this_viewModels;
                switch (i4) {
                    case 0:
                        return editHistoryListActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return editHistoryListActivity.getViewModelStore();
                    default:
                        return editHistoryListActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public final void enableCompareButton(TextView textView, boolean z) {
        TypedValue typedValue;
        if (z) {
            textView.setEnabled(true);
            TypedValue typedValue2 = new TypedValue();
            typedValue = getTheme().resolveAttribute(R.attr.progressive_color, typedValue2, true) ? typedValue2 : null;
            if (typedValue != null) {
                textView.setTextColor(typedValue.data);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                return;
            }
        }
        textView.setEnabled(false);
        TypedValue typedValue3 = new TypedValue();
        typedValue = getTheme().resolveAttribute(R.attr.secondary_color, typedValue3, true) ? typedValue3 : null;
        if (typedValue != null) {
            textView.setTextColor(typedValue.data);
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969935");
        }
    }

    public final EditHistoryListViewModel getViewModel() {
        return (EditHistoryListViewModel) this.viewModel$delegate.getValue();
    }

    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        int i = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_edit_history, (ViewGroup) null, false);
        int i2 = R.id.compareButton;
        Button button = (Button) Room.findChildViewById(inflate, R.id.compareButton);
        if (button != null) {
            i2 = R.id.compareConfirmButton;
            Button button2 = (Button) Room.findChildViewById(inflate, R.id.compareConfirmButton);
            if (button2 != null) {
                i2 = R.id.compareContainer;
                ConstraintLayout constraintLayout = (ConstraintLayout) Room.findChildViewById(inflate, R.id.compareContainer);
                if (constraintLayout != null) {
                    i2 = R.id.compareFromCard;
                    MaterialCardView materialCardView = (MaterialCardView) Room.findChildViewById(inflate, R.id.compareFromCard);
                    if (materialCardView != null) {
                        i2 = R.id.compareFromText;
                        TextView textView = (TextView) Room.findChildViewById(inflate, R.id.compareFromText);
                        if (textView != null) {
                            i2 = R.id.compareToCard;
                            MaterialCardView materialCardView2 = (MaterialCardView) Room.findChildViewById(inflate, R.id.compareToCard);
                            if (materialCardView2 != null) {
                                i2 = R.id.compareToText;
                                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.compareToText);
                                if (textView2 != null) {
                                    i2 = R.id.edit_history_coordinator;
                                    if (((CoordinatorLayout) Room.findChildViewById(inflate, R.id.edit_history_coordinator)) != null) {
                                        i2 = R.id.edit_history_empty_search_message;
                                        if (((TextView) Room.findChildViewById(inflate, R.id.edit_history_empty_search_message)) != null) {
                                            i2 = R.id.edit_history_recycler;
                                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.edit_history_recycler);
                                            if (recyclerView != null) {
                                                i2 = R.id.edit_history_refresh_container;
                                                WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.edit_history_refresh_container);
                                                if (wikiSwipeRefreshLayout != null) {
                                                    i2 = R.id.edit_history_search_empty_container;
                                                    if (((LinearLayout) Room.findChildViewById(inflate, R.id.edit_history_search_empty_container)) != null) {
                                                        i2 = R.id.edit_history_search_empty_text;
                                                        if (((TextView) Room.findChildViewById(inflate, R.id.edit_history_search_empty_text)) != null) {
                                                            i2 = R.id.toolbar;
                                                            MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                                                            if (materialToolbar != null) {
                                                                LinearLayout linearLayout = (LinearLayout) inflate;
                                                                this.binding = new ActivityLoginBinding(linearLayout, button, button2, constraintLayout, materialCardView, textView, materialCardView2, textView2, recyclerView, wikiSwipeRefreshLayout, materialToolbar);
                                                                setContentView(linearLayout);
                                                                ActivityLoginBinding activityLoginBinding = this.binding;
                                                                if (activityLoginBinding == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                                ContextsKt supportActionBar = getSupportActionBar();
                                                                int i3 = 1;
                                                                if (supportActionBar != null) {
                                                                    StringUtil stringUtil = StringUtil.INSTANCE;
                                                                    supportActionBar.setTitle(getString(R.string.page_edit_history_activity_title, StringUtil.fromHtml(getViewModel().pageTitle.getDisplayText())));
                                                                }
                                                                ContextsKt supportActionBar2 = getSupportActionBar();
                                                                if (supportActionBar2 != null) {
                                                                    supportActionBar2.setDisplayShowTitleEnabled(false);
                                                                }
                                                                getOnBackPressedDispatcher().addCallback(this.onBackPressedCallback, this);
                                                                int themedColor = Cache.Companion.getThemedColor(this, android.R.attr.colorBackground);
                                                                ActivityLoginBinding activityLoginBinding2 = this.binding;
                                                                if (activityLoginBinding2 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((MaterialCardView) activityLoginBinding2.footerContainer).setCardBackgroundColor(ColorUtils.blendARGB(themedColor, 0.05f, Cache.Companion.getThemedColor(this, R.attr.progressive_color)));
                                                                ActivityLoginBinding activityLoginBinding3 = this.binding;
                                                                if (activityLoginBinding3 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((MaterialCardView) activityLoginBinding3.loginPasswordInput).setCardBackgroundColor(ColorUtils.blendARGB(themedColor, 0.05f, Cache.Companion.getThemedColor(this, R.attr.warning_color)));
                                                                updateCompareState();
                                                                ActivityLoginBinding activityLoginBinding4 = this.binding;
                                                                if (activityLoginBinding4 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((Button) activityLoginBinding4.loginButton).setOnClickListener(new EditHistoryListActivity$$ExternalSyntheticLambda2(this, i));
                                                                ActivityLoginBinding activityLoginBinding5 = this.binding;
                                                                if (activityLoginBinding5 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((Button) activityLoginBinding5.loginCreateAccountButton).setOnClickListener(new EditHistoryListActivity$$ExternalSyntheticLambda2(this, i3));
                                                                ActivityLoginBinding activityLoginBinding6 = this.binding;
                                                                if (activityLoginBinding6 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((WikiSwipeRefreshLayout) activityLoginBinding6.viewProgressBar).setOnRefreshListener(new EditHistoryListActivity$$ExternalSyntheticLambda6(this));
                                                                ActivityLoginBinding activityLoginBinding7 = this.binding;
                                                                if (activityLoginBinding7 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((RecyclerView) activityLoginBinding7.viewLoginError).setLayoutManager(new LinearLayoutManager(1));
                                                                setupAdapters();
                                                                ActivityLoginBinding activityLoginBinding8 = this.binding;
                                                                if (activityLoginBinding8 == null) {
                                                                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                                                                    throw null;
                                                                }
                                                                ((RecyclerView) activityLoginBinding8.viewLoginError).addOnScrollListener(new FastScroller.AnonymousClass2(2, this));
                                                                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new EditHistoryListActivity$onCreate$5(this, continuation, i), 3);
                                                                getViewModel().editHistoryStatsData.observe(this, new SingleLiveData$sam$androidx_lifecycle_Observer$0(new MainActivity$$ExternalSyntheticLambda1(20, this), 5));
                                                                if (getViewModel().actionModeActive) {
                                                                    this.actionMode = startSupportActionMode(this.searchActionModeCallback);
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
                        }
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }

    public final void setupAdapters() {
        ActionMode actionMode = this.actionMode;
        ActivityLoginBinding activityLoginBinding = this.binding;
        CategoryActivity.LoadingItemAdapter loadingItemAdapter = this.loadFooter;
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = this.editHistoryListAdapter;
        if (actionMode != null) {
            if (activityLoginBinding != null) {
                ((RecyclerView) activityLoginBinding.viewLoginError).setAdapter(categoryMembersAdapter.withLoadStateFooter(loadingItemAdapter));
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
        }
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        RecyclerView recyclerView = (RecyclerView) activityLoginBinding.viewLoginError;
        ConcatAdapter withLoadStateHeaderAndFooter = categoryMembersAdapter.withLoadStateHeaderAndFooter(this.loadHeader, loadingItemAdapter);
        withLoadStateHeaderAndFooter.addAdapter(0, this.editHistoryStatsAdapter);
        withLoadStateHeaderAndFooter.addAdapter(1, this.editHistorySearchBarAdapter);
        recyclerView.setAdapter(withLoadStateHeaderAndFooter);
    }

    public final void showFilterOverflowMenu() {
        View view;
        SearchAndFilterActionProvider searchAndFilterActionProvider;
        Resource resource = (Resource) getViewModel().editHistoryStatsData.getValue();
        if (resource instanceof Resource.Success) {
            if (this.actionMode == null || (searchAndFilterActionProvider = (SearchAndFilterActionProvider) this.searchActionModeCallback.searchActionProvider) == null) {
                SearchBarViewHolder searchBarViewHolder = (SearchBarViewHolder) this.editHistorySearchBarAdapter.list;
                if (searchBarViewHolder != null) {
                    view = searchBarViewHolder.binding.filterButton;
                } else {
                    ActivityLoginBinding activityLoginBinding = this.binding;
                    if (activityLoginBinding == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        throw null;
                    }
                    view = (LinearLayout) activityLoginBinding.loginPrimaryContainer;
                    view.getClass();
                }
            } else {
                view = searchAndFilterActionProvider.filterIcon;
            }
            final ReadingListsOverflowView readingListsOverflowView = new ReadingListsOverflowView(this);
            View inflate = LayoutInflater.from(this).inflate(R.layout.view_edit_history_filter_overflow, (ViewGroup) readingListsOverflowView, false);
            readingListsOverflowView.addView(inflate);
            int i = R.id.filterByAll;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.filterByAll);
            if (textView != null) {
                i = R.id.filterByAllButton;
                LinearLayout linearLayout = (LinearLayout) Room.findChildViewById(inflate, R.id.filterByAllButton);
                if (linearLayout != null) {
                    i = R.id.filterByAllSelected;
                    ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.filterByAllSelected);
                    if (imageView != null) {
                        i = R.id.filterByAnon;
                        TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.filterByAnon);
                        if (textView2 != null) {
                            i = R.id.filterByAnonButton;
                            LinearLayout linearLayout2 = (LinearLayout) Room.findChildViewById(inflate, R.id.filterByAnonButton);
                            if (linearLayout2 != null) {
                                i = R.id.filterByAnonSelected;
                                ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.filterByAnonSelected);
                                if (imageView2 != null) {
                                    i = R.id.filterByBot;
                                    TextView textView3 = (TextView) Room.findChildViewById(inflate, R.id.filterByBot);
                                    if (textView3 != null) {
                                        i = R.id.filterByBotButton;
                                        if (((LinearLayout) Room.findChildViewById(inflate, R.id.filterByBotButton)) != null) {
                                            i = R.id.filterByBotSelected;
                                            ImageView imageView3 = (ImageView) Room.findChildViewById(inflate, R.id.filterByBotSelected);
                                            if (imageView3 != null) {
                                                i = R.id.filterByUser;
                                                TextView textView4 = (TextView) Room.findChildViewById(inflate, R.id.filterByUser);
                                                if (textView4 != null) {
                                                    LinearLayout linearLayout3 = (LinearLayout) Room.findChildViewById(inflate, R.id.filterByUserButton);
                                                    if (linearLayout3 != null) {
                                                        ImageView imageView4 = (ImageView) Room.findChildViewById(inflate, R.id.filterByUserSelected);
                                                        if (imageView4 != null) {
                                                            final int i2 = 0;
                                                            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.EditHistoryFilterOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i3 = i2;
                                                                    ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                                    switch (i3) {
                                                                        case 0:
                                                                            Prefs prefs = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        case 1:
                                                                            Prefs prefs2 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "editors");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        default:
                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "anonymous");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            final int i3 = 1;
                                                            linearLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.EditHistoryFilterOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i32 = i3;
                                                                    ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                                    switch (i32) {
                                                                        case 0:
                                                                            Prefs prefs = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        case 1:
                                                                            Prefs prefs2 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "editors");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        default:
                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "anonymous");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            final int i4 = 2;
                                                            linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: org.wikipedia.views.EditHistoryFilterOverflowView$$ExternalSyntheticLambda0
                                                                @Override // android.view.View.OnClickListener
                                                                public final void onClick(View view2) {
                                                                    int i32 = i4;
                                                                    ReadingListsOverflowView readingListsOverflowView2 = readingListsOverflowView;
                                                                    switch (i32) {
                                                                        case 0:
                                                                            Prefs prefs = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        case 1:
                                                                            Prefs prefs2 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "editors");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                        default:
                                                                            Prefs prefs3 = Prefs.INSTANCE;
                                                                            PrefsIoUtil.setString(R.string.preference_key_edit_history_filter_type, "anonymous");
                                                                            readingListsOverflowView2.onSelected();
                                                                            break;
                                                                    }
                                                                }
                                                            });
                                                            EditHistoryListViewModel.EditHistoryStats editHistoryStats = (EditHistoryListViewModel.EditHistoryStats) ((Resource.Success) resource).data;
                                                            EditHistoryListActivity$$ExternalSyntheticLambda6 editHistoryListActivity$$ExternalSyntheticLambda6 = new EditHistoryListActivity$$ExternalSyntheticLambda6(this);
                                                            editHistoryStats.getClass();
                                                            readingListsOverflowView.callback = editHistoryListActivity$$ExternalSyntheticLambda6;
                                                            PopupWindow popupWindow = new PopupWindow((View) readingListsOverflowView, -2, -2, true);
                                                            readingListsOverflowView.popupWindowHost = popupWindow;
                                                            popupWindow.setBackgroundDrawable(new ColorDrawable(0));
                                                            popupWindow.setOverlapAnchor(true);
                                                            popupWindow.showAsDropDown(view, 0, 0, 8388613);
                                                            PopupWindow popupWindow2 = readingListsOverflowView.popupWindowHost;
                                                            if (popupWindow2 != null) {
                                                                popupWindow2.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: org.wikipedia.views.EditHistoryFilterOverflowView$$ExternalSyntheticLambda3
                                                                    @Override // android.widget.PopupWindow.OnDismissListener
                                                                    public final void onDismiss() {
                                                                        ReadingListsOverflowView.this.popupWindowHost = null;
                                                                    }
                                                                });
                                                            }
                                                            Context context = readingListsOverflowView.getContext();
                                                            StringUtil stringUtil = StringUtil.INSTANCE;
                                                            Context context2 = readingListsOverflowView.getContext();
                                                            context2.getClass();
                                                            textView.setText(context.getString(R.string.page_edit_history_filter_by_all, StringUtil.getPageViewText(context2, editHistoryStats.allEdits.count)));
                                                            Context context3 = readingListsOverflowView.getContext();
                                                            Context context4 = readingListsOverflowView.getContext();
                                                            context4.getClass();
                                                            textView4.setText(context3.getString(R.string.page_edit_history_filter_by_user, StringUtil.getPageViewText(context4, editHistoryStats.userEdits.count)));
                                                            Context context5 = readingListsOverflowView.getContext();
                                                            Context context6 = readingListsOverflowView.getContext();
                                                            context6.getClass();
                                                            textView2.setText(context5.getString(R.string.page_edit_history_filter_by_anon, StringUtil.getPageViewText(context6, editHistoryStats.anonEdits.count)));
                                                            Context context7 = readingListsOverflowView.getContext();
                                                            Context context8 = readingListsOverflowView.getContext();
                                                            context8.getClass();
                                                            textView3.setText(context7.getString(R.string.page_edit_history_filter_by_bot, StringUtil.getPageViewText(context8, editHistoryStats.botEdits.count)));
                                                            imageView.setVisibility(4);
                                                            imageView2.setVisibility(4);
                                                            imageView4.setVisibility(4);
                                                            imageView3.setVisibility(4);
                                                            Prefs prefs = Prefs.INSTANCE;
                                                            String editHistoryFilterType = Prefs.getEditHistoryFilterType();
                                                            if (editHistoryFilterType.equals("anonymous")) {
                                                                imageView2.setVisibility(0);
                                                                return;
                                                            } else if (editHistoryFilterType.equals("editors")) {
                                                                imageView4.setVisibility(0);
                                                                return;
                                                            } else {
                                                                imageView.setVisibility(0);
                                                                return;
                                                            }
                                                        }
                                                        i = R.id.filterByUserSelected;
                                                    } else {
                                                        i = R.id.filterByUserButton;
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
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
        }
    }

    public final void updateCompareState() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((ConstraintLayout) activityLoginBinding.captchaContainer).setVisibility(getViewModel().comparing ? 0 : 8);
        ActivityLoginBinding activityLoginBinding2 = this.binding;
        if (activityLoginBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((Button) activityLoginBinding2.loginButton).setText(getString(!getViewModel().comparing ? R.string.revision_compare_button : android.R.string.cancel));
        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = this.editHistoryListAdapter;
        categoryMembersAdapter.notifyItemRangeChanged(0, categoryMembersAdapter.getItemCount());
        int i = getViewModel().comparing ? android.R.attr.colorBackground : R.attr.paper_color;
        TypedValue typedValue = new TypedValue();
        TypedValue typedValue2 = getTheme().resolveAttribute(i, typedValue, true) ? typedValue : null;
        if (typedValue2 == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m(i, "Attribute not found; ID="));
        } else {
            setNavigationBarColor(typedValue2.data);
            updateCompareStateItems();
        }
    }

    public final void updateCompareStateItems() {
        ActivityLoginBinding activityLoginBinding = this.binding;
        if (activityLoginBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        boolean z = false;
        ((MaterialCardView) activityLoginBinding.footerContainer).setVisibility(getViewModel().selectedRevisionFrom != null ? 0 : 8);
        if (getViewModel().selectedRevisionFrom != null) {
            ActivityLoginBinding activityLoginBinding2 = this.binding;
            if (activityLoginBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            TextView textView = (TextView) activityLoginBinding2.login2faText;
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            MwQueryPage.Revision revision = getViewModel().selectedRevisionFrom;
            revision.getClass();
            String str = revision.timeStamp;
            str.getClass();
            textView.setText(DateUtil.getDateStringWithSkeletonPattern("MMM d HH:mm", DateUtil.iso8601DateParse(str)));
        }
        ActivityLoginBinding activityLoginBinding3 = this.binding;
        if (activityLoginBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        ((MaterialCardView) activityLoginBinding3.loginPasswordInput).setVisibility(getViewModel().selectedRevisionTo != null ? 0 : 8);
        if (getViewModel().selectedRevisionTo != null) {
            ActivityLoginBinding activityLoginBinding4 = this.binding;
            if (activityLoginBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            TextView textView2 = (TextView) activityLoginBinding4.loginUsernameText;
            ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
            MwQueryPage.Revision revision2 = getViewModel().selectedRevisionTo;
            revision2.getClass();
            String str2 = revision2.timeStamp;
            str2.getClass();
            textView2.setText(DateUtil.getDateStringWithSkeletonPattern("MMM d HH:mm", DateUtil.iso8601DateParse(str2)));
        }
        ActivityLoginBinding activityLoginBinding5 = this.binding;
        if (activityLoginBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            throw null;
        }
        Button button = (Button) activityLoginBinding5.loginCreateAccountButton;
        if (getViewModel().selectedRevisionFrom != null && getViewModel().selectedRevisionTo != null) {
            z = true;
        }
        enableCompareButton(button, z);
    }
}
