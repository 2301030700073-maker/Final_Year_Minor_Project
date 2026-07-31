package org.wikipedia.categories;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.compose.animation.core.Animation;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavController$$ExternalSyntheticLambda3;
import androidx.paging.AsyncPagingDataDiffer;
import androidx.paging.AsyncPagingDataDiffer$presenter$1;
import androidx.paging.CombinedLoadStates;
import androidx.paging.LoadState;
import androidx.paging.LoadStateAdapter;
import androidx.paging.PageStore;
import androidx.paging.PagingData;
import androidx.paging.PagingDataAdapter$1;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.disk.DiskLruCache$$ExternalSyntheticLambda0;
import coil3.memory.MemoryCacheService;
import coil3.util.ContextsKt;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.tabs.TabLayout;
import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.IndexingIterable;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okhttp3.Cache;
import okhttp3.ConnectionPool;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio__OkioKt;
import okio.internal.DefaultSocket;
import org.wikipedia.R;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.databinding.ItemSuggestedEditsRecentEditsBinding;
import org.wikipedia.dataclient.mwapi.MwQueryPage;
import org.wikipedia.dataclient.mwapi.MwQueryResult;
import org.wikipedia.dataclient.mwapi.UserContribution;
import org.wikipedia.edit.insertmedia.InsertMediaActivity;
import org.wikipedia.edit.insertmedia.InsertMediaActivity$$ExternalSyntheticLambda4;
import org.wikipedia.edit.insertmedia.InsertMediaActivity.InsertMediaItemHolder;
import org.wikipedia.edit.templates.TemplatesSearchActivity;
import org.wikipedia.edit.templates.TemplatesSearchActivity.TemplatesSearchItemHolder;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda8;
import org.wikipedia.page.Namespace;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryItemView;
import org.wikipedia.page.edithistory.EditHistoryListActivity;
import org.wikipedia.page.edithistory.EditHistoryListActivity.EditHistoryListItemHolder;
import org.wikipedia.page.edithistory.EditHistoryListActivity.LoadingViewHolder;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsFragment;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsItemView;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsViewModel;
import org.wikipedia.talk.ArchivedTalkPagesActivity;
import org.wikipedia.talk.ArchivedTalkPagesViewModel;
import org.wikipedia.usercontrib.UserContribItemView;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.usercontrib.UserContribListActivity.UserContribListItemHolder;
import org.wikipedia.usercontrib.UserContribListViewModel;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.ShareUtil$shareImage$2$uri$1;
import org.wikipedia.util.StringUtil;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.GoneIfEmptyTextView;
import org.wikipedia.views.LanguageScrollView;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.ViewUtil;
import org.wikipedia.views.WikiCardView;
import org.wikipedia.views.WikiErrorView;
import retrofit2.Retrofit;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001:\t\u0004\u0005\u0006\u0007\b\t\n\u000b\fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\r"}, d2 = {"Lorg/wikipedia/categories/CategoryActivity;", "Lorg/wikipedia/activity/BaseActivity;", "<init>", "()V", "LoadingItemAdapter", "EmptyItemAdapter", "CategoryMemberDiffCallback", "CategoryMembersAdapter", "LoadingViewHolder", "EmptyViewHolder", "CategoryItemHolder", "okhttp3/ConnectionPool", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CategoryActivity extends BaseActivity {
    public static final /* synthetic */ int $r8$clinit = 0;
    public DefaultSocket binding;
    public final CategoryMembersAdapter categoryMembersAdapter;
    public final ConcatAdapter categoryMembersConcatAdapter;
    public final LoadingItemAdapter categoryMembersLoadFooter;
    public final LoadingItemAdapter categoryMembersLoadHeader;
    public final ConnectionPool itemCallback;
    public final CategoryMembersAdapter subcategoriesAdapter;
    public final ConcatAdapter subcategoriesConcatAdapter;
    public final LoadingItemAdapter subcategoriesLoadFooter;
    public final LoadingItemAdapter subcategoriesLoadHeader;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CategoryItemHolder extends RecyclerView.ViewHolder {
        public final PageItemView view;

        public CategoryItemHolder(PageItemView pageItemView) {
            super(pageItemView);
            this.view = pageItemView;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyItemAdapter extends RecyclerView.Adapter {
        public final int text;

        public EmptyItemAdapter(int i) {
            this.text = i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            return 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            EmptyViewHolder emptyViewHolder = (EmptyViewHolder) viewHolder;
            View view = emptyViewHolder.itemView;
            WikiErrorView wikiErrorView = (WikiErrorView) view.findViewById(R.id.errorView);
            View findViewById = view.findViewById(R.id.progressBar);
            TextView textView = (TextView) view.findViewById(R.id.emptyMessage);
            findViewById.getClass();
            findViewById.setVisibility(8);
            wikiErrorView.getClass();
            wikiErrorView.setVisibility(8);
            textView.setText(CategoryActivity.this.getString(this.text));
            textView.setVisibility(0);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            CategoryActivity categoryActivity = CategoryActivity.this;
            View inflate = categoryActivity.getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
            inflate.getClass();
            return categoryActivity.new EmptyViewHolder(inflate);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EmptyViewHolder extends RecyclerView.ViewHolder {
        public EmptyViewHolder(View view) {
            super(view);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingItemAdapter extends LoadStateAdapter {
        public final /* synthetic */ int $r8$classId;
        public final Function0 retry;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ LoadingItemAdapter(Object obj, Function0 function0, int i) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.retry = function0;
        }

        @Override // androidx.paging.LoadStateAdapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, LoadState loadState) {
            int i = this.$r8$classId;
            final Function0 function0 = this.retry;
            final int i2 = 0;
            switch (i) {
                case 0:
                    LoadingViewHolder loadingViewHolder = (LoadingViewHolder) viewHolder;
                    loadState.getClass();
                    View view = loadingViewHolder.itemView;
                    WikiErrorView wikiErrorView = (WikiErrorView) view.findViewById(R.id.errorView);
                    View findViewById = view.findViewById(R.id.progressBar);
                    findViewById.getClass();
                    findViewById.setVisibility(loadState instanceof LoadState.Loading ? 0 : 8);
                    wikiErrorView.getClass();
                    boolean z = loadState instanceof LoadState.Error;
                    wikiErrorView.setVisibility(z ? 0 : 8);
                    wikiErrorView.setRetryClickListener(new View.OnClickListener() { // from class: org.wikipedia.categories.CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            int i3 = i2;
                            Function0 function02 = function0;
                            switch (i3) {
                                case 0:
                                    function02.invoke();
                                    break;
                                case 1:
                                    function02.invoke();
                                    break;
                                case 2:
                                    function02.invoke();
                                    break;
                                case 3:
                                    function02.invoke();
                                    break;
                                default:
                                    function02.invoke();
                                    break;
                            }
                        }
                    });
                    if (z) {
                        Exception exc = ((LoadState.Error) loadState).error;
                        CategoryActivity categoryActivity = CategoryActivity.this;
                        int i3 = CategoryActivity.$r8$clinit;
                        wikiErrorView.setError(exc, categoryActivity.getViewModel().pageTitle);
                        break;
                    }
                    break;
                case 1:
                    EditHistoryListActivity.LoadingViewHolder loadingViewHolder2 = (EditHistoryListActivity.LoadingViewHolder) viewHolder;
                    loadState.getClass();
                    View view2 = loadingViewHolder2.itemView;
                    WikiErrorView wikiErrorView2 = (WikiErrorView) view2.findViewById(R.id.errorView);
                    View findViewById2 = view2.findViewById(R.id.progressBar);
                    findViewById2.getClass();
                    findViewById2.setVisibility(loadState instanceof LoadState.Loading ? 0 : 8);
                    wikiErrorView2.getClass();
                    boolean z2 = loadState instanceof LoadState.Error;
                    wikiErrorView2.setVisibility(z2 ? 0 : 8);
                    final int i4 = 1;
                    wikiErrorView2.setRetryClickListener(new View.OnClickListener() { // from class: org.wikipedia.categories.CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view22) {
                            int i32 = i4;
                            Function0 function02 = function0;
                            switch (i32) {
                                case 0:
                                    function02.invoke();
                                    break;
                                case 1:
                                    function02.invoke();
                                    break;
                                case 2:
                                    function02.invoke();
                                    break;
                                case 3:
                                    function02.invoke();
                                    break;
                                default:
                                    function02.invoke();
                                    break;
                            }
                        }
                    });
                    if (z2) {
                        Exception exc2 = ((LoadState.Error) loadState).error;
                        EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                        int i5 = EditHistoryListActivity.$r8$clinit;
                        wikiErrorView2.setError(exc2, editHistoryListActivity.getViewModel().pageTitle);
                        break;
                    }
                    break;
                case 2:
                    loadState.getClass();
                    View view3 = ((SuggestedEditsRecentEditsFragment.LoadingViewHolder) viewHolder).itemView;
                    WikiErrorView wikiErrorView3 = (WikiErrorView) view3.findViewById(R.id.errorView);
                    View findViewById3 = view3.findViewById(R.id.progressBar);
                    findViewById3.getClass();
                    findViewById3.setVisibility(loadState instanceof LoadState.Loading ? 0 : 8);
                    wikiErrorView3.getClass();
                    boolean z3 = loadState instanceof LoadState.Error;
                    wikiErrorView3.setVisibility(z3 ? 0 : 8);
                    final int i6 = 2;
                    wikiErrorView3.setRetryClickListener(new View.OnClickListener() { // from class: org.wikipedia.categories.CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view22) {
                            int i32 = i6;
                            Function0 function02 = function0;
                            switch (i32) {
                                case 0:
                                    function02.invoke();
                                    break;
                                case 1:
                                    function02.invoke();
                                    break;
                                case 2:
                                    function02.invoke();
                                    break;
                                case 3:
                                    function02.invoke();
                                    break;
                                default:
                                    function02.invoke();
                                    break;
                            }
                        }
                    });
                    if (z3) {
                        wikiErrorView3.setError(((LoadState.Error) loadState).error, null);
                        break;
                    }
                    break;
                case 3:
                    ArchivedTalkPagesActivity.LoadingViewHolder loadingViewHolder3 = (ArchivedTalkPagesActivity.LoadingViewHolder) viewHolder;
                    loadState.getClass();
                    View view4 = loadingViewHolder3.itemView;
                    WikiErrorView wikiErrorView4 = (WikiErrorView) view4.findViewById(R.id.errorView);
                    View findViewById4 = view4.findViewById(R.id.progressBar);
                    findViewById4.getClass();
                    findViewById4.setVisibility(loadState instanceof LoadState.Loading ? 0 : 8);
                    wikiErrorView4.getClass();
                    boolean z4 = loadState instanceof LoadState.Error;
                    wikiErrorView4.setVisibility(z4 ? 0 : 8);
                    final int i7 = 3;
                    wikiErrorView4.setRetryClickListener(new View.OnClickListener() { // from class: org.wikipedia.categories.CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view22) {
                            int i32 = i7;
                            Function0 function02 = function0;
                            switch (i32) {
                                case 0:
                                    function02.invoke();
                                    break;
                                case 1:
                                    function02.invoke();
                                    break;
                                case 2:
                                    function02.invoke();
                                    break;
                                case 3:
                                    function02.invoke();
                                    break;
                                default:
                                    function02.invoke();
                                    break;
                            }
                        }
                    });
                    if (z4) {
                        Exception exc3 = ((LoadState.Error) loadState).error;
                        ArchivedTalkPagesActivity archivedTalkPagesActivity = loadingViewHolder3.this$0;
                        int i8 = ArchivedTalkPagesActivity.$r8$clinit;
                        wikiErrorView4.setError(exc3, ((ArchivedTalkPagesViewModel) archivedTalkPagesActivity.viewModel$delegate.getValue()).pageTitle);
                        break;
                    }
                    break;
                default:
                    loadState.getClass();
                    View view5 = ((UserContribListActivity.LoadingViewHolder) viewHolder).itemView;
                    WikiErrorView wikiErrorView5 = (WikiErrorView) view5.findViewById(R.id.errorView);
                    View findViewById5 = view5.findViewById(R.id.progressBar);
                    findViewById5.getClass();
                    findViewById5.setVisibility(loadState instanceof LoadState.Loading ? 0 : 8);
                    wikiErrorView5.getClass();
                    boolean z5 = loadState instanceof LoadState.Error;
                    wikiErrorView5.setVisibility(z5 ? 0 : 8);
                    final int i9 = 4;
                    wikiErrorView5.setRetryClickListener(new View.OnClickListener() { // from class: org.wikipedia.categories.CategoryActivity$LoadingViewHolder$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view22) {
                            int i32 = i9;
                            Function0 function02 = function0;
                            switch (i32) {
                                case 0:
                                    function02.invoke();
                                    break;
                                case 1:
                                    function02.invoke();
                                    break;
                                case 2:
                                    function02.invoke();
                                    break;
                                case 3:
                                    function02.invoke();
                                    break;
                                default:
                                    function02.invoke();
                                    break;
                            }
                        }
                    });
                    if (z5) {
                        wikiErrorView5.setError(((LoadState.Error) loadState).error, null);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.paging.LoadStateAdapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, LoadState loadState) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    loadState.getClass();
                    CategoryActivity categoryActivity = (CategoryActivity) obj;
                    View inflate = categoryActivity.getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                    inflate.getClass();
                    return categoryActivity.new LoadingViewHolder(inflate);
                case 1:
                    loadState.getClass();
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj;
                    View inflate2 = editHistoryListActivity.getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                    inflate2.getClass();
                    return editHistoryListActivity.new LoadingViewHolder(inflate2);
                case 2:
                    loadState.getClass();
                    View inflate3 = ((SuggestedEditsRecentEditsFragment) obj).getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                    inflate3.getClass();
                    return new SuggestedEditsRecentEditsFragment.LoadingViewHolder(inflate3);
                case 3:
                    loadState.getClass();
                    ArchivedTalkPagesActivity archivedTalkPagesActivity = (ArchivedTalkPagesActivity) obj;
                    View inflate4 = archivedTalkPagesActivity.getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                    inflate4.getClass();
                    return new ArchivedTalkPagesActivity.LoadingViewHolder(archivedTalkPagesActivity, inflate4);
                default:
                    loadState.getClass();
                    View inflate5 = ((UserContribListActivity) obj).getLayoutInflater().inflate(R.layout.item_list_progress, viewGroup, false);
                    inflate5.getClass();
                    return new UserContribListActivity.LoadingViewHolder(inflate5);
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class LoadingViewHolder extends RecyclerView.ViewHolder {
        public LoadingViewHolder(View view) {
            super(view);
        }
    }

    public CategoryActivity() {
        CategoryMembersAdapter categoryMembersAdapter = new CategoryMembersAdapter(this);
        this.categoryMembersAdapter = categoryMembersAdapter;
        final int i = 0;
        LoadingItemAdapter loadingItemAdapter = new LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                Unit unit = Unit.INSTANCE;
                CategoryActivity categoryActivity = this.f$0;
                switch (i2) {
                    case 0:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 1:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 2:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                    default:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i);
        this.categoryMembersLoadHeader = loadingItemAdapter;
        final int i2 = 1;
        LoadingItemAdapter loadingItemAdapter2 = new LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                Unit unit = Unit.INSTANCE;
                CategoryActivity categoryActivity = this.f$0;
                switch (i22) {
                    case 0:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 1:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 2:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                    default:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i);
        this.categoryMembersLoadFooter = loadingItemAdapter2;
        this.categoryMembersConcatAdapter = categoryMembersAdapter.withLoadStateHeaderAndFooter(loadingItemAdapter, loadingItemAdapter2);
        CategoryMembersAdapter categoryMembersAdapter2 = new CategoryMembersAdapter(this);
        this.subcategoriesAdapter = categoryMembersAdapter2;
        final int i3 = 2;
        LoadingItemAdapter loadingItemAdapter3 = new LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i3;
                Unit unit = Unit.INSTANCE;
                CategoryActivity categoryActivity = this.f$0;
                switch (i22) {
                    case 0:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 1:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 2:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                    default:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i);
        this.subcategoriesLoadHeader = loadingItemAdapter3;
        final int i4 = 3;
        LoadingItemAdapter loadingItemAdapter4 = new LoadingItemAdapter(this, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivity f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i4;
                Unit unit = Unit.INSTANCE;
                CategoryActivity categoryActivity = this.f$0;
                switch (i22) {
                    case 0:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 1:
                        categoryActivity.categoryMembersAdapter.retry();
                        break;
                    case 2:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                    default:
                        categoryActivity.subcategoriesAdapter.retry();
                        break;
                }
                return unit;
            }
        }, i);
        this.subcategoriesLoadFooter = loadingItemAdapter4;
        this.subcategoriesConcatAdapter = categoryMembersAdapter2.withLoadStateHeaderAndFooter(loadingItemAdapter3, loadingItemAdapter4);
        this.itemCallback = new ConnectionPool(22, this);
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(CategoryActivityViewModel.class), new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CategoryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i2;
                CategoryActivity categoryActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return categoryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return categoryActivity.getViewModelStore();
                    default:
                        return categoryActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CategoryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i;
                CategoryActivity categoryActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return categoryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return categoryActivity.getViewModelStore();
                    default:
                        return categoryActivity.getDefaultViewModelCreationExtras();
                }
            }
        }, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivity$special$$inlined$viewModels$default$1
            public final /* synthetic */ CategoryActivity $this_viewModels;

            {
                this.$this_viewModels = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i5 = i3;
                CategoryActivity categoryActivity = this.$this_viewModels;
                switch (i5) {
                    case 0:
                        return categoryActivity.getDefaultViewModelProviderFactory();
                    case 1:
                        return categoryActivity.getViewModelStore();
                    default:
                        return categoryActivity.getDefaultViewModelCreationExtras();
                }
            }
        });
    }

    public final CategoryActivityViewModel getViewModel() {
        return (CategoryActivityViewModel) this.viewModel$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.wikipedia.activity.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Continuation continuation = null;
        boolean z = false;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        View inflate = getLayoutInflater().inflate(R.layout.activity_category, (ViewGroup) null, false);
        int i = R.id.category_recycler;
        RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.category_recycler);
        if (recyclerView != null) {
            i = R.id.category_tab_layout;
            TabLayout tabLayout = (TabLayout) Room.findChildViewById(inflate, R.id.category_tab_layout);
            if (tabLayout != null) {
                i = R.id.toolbar;
                MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.toolbar);
                if (materialToolbar != null) {
                    i = R.id.toolbar_title;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.toolbar_title);
                    if (textView != null) {
                        FrameLayout frameLayout = (FrameLayout) inflate;
                        this.binding = new DefaultSocket(frameLayout, recyclerView, tabLayout, materialToolbar, textView, 9);
                        setContentView(frameLayout);
                        TypedValue typedValue = new TypedValue();
                        if (!getTheme().resolveAttribute(android.R.attr.windowBackground, typedValue, true)) {
                            typedValue = null;
                        }
                        if (typedValue == null) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=16842836");
                            return;
                        }
                        setStatusBarColor(typedValue.data);
                        DefaultSocket defaultSocket = this.binding;
                        if (defaultSocket == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        setSupportActionBar((MaterialToolbar) defaultSocket.source);
                        ContextsKt supportActionBar = getSupportActionBar();
                        if (supportActionBar != null) {
                            supportActionBar.setDisplayHomeAsUpEnabled(true);
                        }
                        ContextsKt supportActionBar2 = getSupportActionBar();
                        if (supportActionBar2 != null) {
                            supportActionBar2.setDisplayShowTitleEnabled(false);
                        }
                        DefaultSocket defaultSocket2 = this.binding;
                        if (defaultSocket2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        TextView textView2 = (TextView) defaultSocket2.sink;
                        StringUtil stringUtil = StringUtil.INSTANCE;
                        textView2.setText(StringUtil.removeHTMLTags(getViewModel().pageTitle.getDisplayText()));
                        DefaultSocket defaultSocket3 = this.binding;
                        if (defaultSocket3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) defaultSocket3.socket).setLayoutManager(new LinearLayoutManager(1));
                        DefaultSocket defaultSocket4 = this.binding;
                        if (defaultSocket4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) defaultSocket4.socket).addItemDecoration(new DrawableItemDecoration((Context) this, z, (boolean) (objArr2 == true ? 1 : 0), 16));
                        DefaultSocket defaultSocket5 = this.binding;
                        if (defaultSocket5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((RecyclerView) defaultSocket5.socket).setAdapter(this.categoryMembersConcatAdapter);
                        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), null, null, new CategoryActivity$onCreate$1(this, continuation, objArr == true ? 1 : 0), 3);
                        DefaultSocket defaultSocket6 = this.binding;
                        if (defaultSocket6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        ((TabLayout) defaultSocket6.closeBits).addOnTabSelectedListener(new LanguageScrollView.AnonymousClass1(2, this));
                        DefaultSocket defaultSocket7 = this.binding;
                        if (defaultSocket7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            throw null;
                        }
                        TabLayout tabLayout2 = (TabLayout) defaultSocket7.closeBits;
                        tabLayout2.selectTab(tabLayout2.getTabAt(getViewModel().showSubcategories ? 1 : 0), true);
                        return;
                    }
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i)));
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        menu.getClass();
        getMenuInflater().inflate(R.menu.menu_category, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // org.wikipedia.activity.BaseActivity, android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        if (menuItem.getItemId() != R.id.menu_categories) {
            return super.onOptionsItemSelected(menuItem);
        }
        FragmentManagerImpl supportFragmentManager = getSupportFragmentManager();
        PageTitle pageTitle = getViewModel().pageTitle;
        pageTitle.getClass();
        CategoryDialog categoryDialog = new CategoryDialog();
        categoryDialog.setArguments(UStringsKt.bundleOf(new Pair("title", pageTitle)));
        Okio__OkioKt.show(supportFragmentManager, categoryDialog);
        return true;
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CategoryMembersAdapter extends RecyclerView.Adapter {
        public final /* synthetic */ int $r8$classId;
        public final AsyncPagingDataDiffer differ;
        public final Flow loadStateFlow;
        public boolean submitCompleted;
        public final /* synthetic */ Object this$0;
        public boolean userSetRestorationPolicy;

        public CategoryMembersAdapter(DiffUtil diffUtil) {
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            HandlerContext handlerContext = MainDispatcherLoader.dispatcher;
            DefaultScheduler defaultScheduler2 = Dispatchers.Default;
            handlerContext.getClass();
            defaultScheduler2.getClass();
            AsyncPagingDataDiffer asyncPagingDataDiffer = new AsyncPagingDataDiffer(diffUtil, new MemoryCacheService(1, this), handlerContext, defaultScheduler2);
            this.differ = asyncPagingDataDiffer;
            this.mStateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.PREVENT;
            this.mObservable.notifyStateRestorationPolicyChanged();
            registerAdapterDataObserver(new PagingDataAdapter$1(0, this));
            addLoadStateListener(new Function1() { // from class: androidx.paging.PagingDataAdapter$2
                public boolean ignoreNextEvent = true;

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    Function1 function1;
                    CombinedLoadStates combinedLoadStates = (CombinedLoadStates) obj;
                    combinedLoadStates.getClass();
                    if (this.ignoreNextEvent) {
                        this.ignoreNextEvent = false;
                    } else if (combinedLoadStates.source.refresh instanceof LoadState.NotLoading) {
                        CategoryActivity.CategoryMembersAdapter categoryMembersAdapter = CategoryActivity.CategoryMembersAdapter.this;
                        CategoryActivity.CategoryMembersAdapter._init_$considerAllowingStateRestoration(categoryMembersAdapter);
                        AsyncPagingDataDiffer asyncPagingDataDiffer2 = categoryMembersAdapter.differ;
                        asyncPagingDataDiffer2.getClass();
                        CopyOnWriteArrayList copyOnWriteArrayList = asyncPagingDataDiffer2.childLoadStateListeners;
                        copyOnWriteArrayList.remove(this);
                        if (copyOnWriteArrayList.isEmpty() && (function1 = (Function1) asyncPagingDataDiffer2.parentLoadStateListener.get()) != null) {
                            AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = asyncPagingDataDiffer2.presenter;
                            asyncPagingDataDiffer$presenter$1.getClass();
                            SVG svg = asyncPagingDataDiffer$presenter$1.combinedLoadStatesCollection;
                            svg.getClass();
                            ((CopyOnWriteArrayList) ((IndexingIterable) svg.rootElement).iteratorFactory).remove(function1);
                        }
                    }
                    return Unit.INSTANCE;
                }
            });
            this.loadStateFlow = asyncPagingDataDiffer.loadStateFlow;
            this.submitCompleted = true;
        }

        public static final void _init_$considerAllowingStateRestoration(CategoryMembersAdapter categoryMembersAdapter) {
            if (categoryMembersAdapter.mStateRestorationPolicy != RecyclerView.Adapter.StateRestorationPolicy.PREVENT || categoryMembersAdapter.userSetRestorationPolicy) {
                return;
            }
            RecyclerView.Adapter.StateRestorationPolicy stateRestorationPolicy = RecyclerView.Adapter.StateRestorationPolicy.ALLOW;
            stateRestorationPolicy.getClass();
            categoryMembersAdapter.userSetRestorationPolicy = true;
            categoryMembersAdapter.mStateRestorationPolicy = stateRestorationPolicy;
            categoryMembersAdapter.mObservable.notifyStateRestorationPolicyChanged();
        }

        public final void addLoadStateListener(Function1 function1) {
            AsyncPagingDataDiffer asyncPagingDataDiffer = this.differ;
            asyncPagingDataDiffer.getClass();
            AtomicReference atomicReference = asyncPagingDataDiffer.parentLoadStateListener;
            if (atomicReference.get() == null) {
                DiskLruCache$$ExternalSyntheticLambda0 diskLruCache$$ExternalSyntheticLambda0 = asyncPagingDataDiffer.internalLoadStateListener;
                diskLruCache$$ExternalSyntheticLambda0.getClass();
                atomicReference.set(diskLruCache$$ExternalSyntheticLambda0);
                AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = asyncPagingDataDiffer.presenter;
                asyncPagingDataDiffer$presenter$1.getClass();
                SVG svg = asyncPagingDataDiffer$presenter$1.combinedLoadStatesCollection;
                svg.getClass();
                ((CopyOnWriteArrayList) ((IndexingIterable) svg.rootElement).iteratorFactory).add(diskLruCache$$ExternalSyntheticLambda0);
                CombinedLoadStates combinedLoadStates = (CombinedLoadStates) ((StateFlowImpl) svg.cssRules).getValue();
                if (combinedLoadStates != null) {
                    diskLruCache$$ExternalSyntheticLambda0.invoke(combinedLoadStates);
                }
            }
            asyncPagingDataDiffer.childLoadStateListeners.add(function1);
        }

        public final Object getItem(int i) {
            Object value;
            Object value2;
            Object obj;
            Object value3;
            AsyncPagingDataDiffer asyncPagingDataDiffer = this.differ;
            StateFlowImpl stateFlowImpl = asyncPagingDataDiffer.inGetItem;
            do {
                try {
                    value2 = stateFlowImpl.getValue();
                    ((Boolean) value2).getClass();
                } catch (Throwable th) {
                    do {
                        value = stateFlowImpl.getValue();
                        ((Boolean) value).getClass();
                    } while (!stateFlowImpl.compareAndSet(value, Boolean.FALSE));
                    throw th;
                }
            } while (!stateFlowImpl.compareAndSet(value2, Boolean.TRUE));
            asyncPagingDataDiffer.lastAccessedIndex = i;
            PageStore pageStore = (PageStore) asyncPagingDataDiffer.previousPresenter.get();
            if (pageStore != null) {
                obj = null;
                if (i < 0 || i >= pageStore.getSize()) {
                    TimeSource$Companion$$ExternalSyntheticLambda0.m(pageStore.getSize(), Animation.CC.m20m(i, "Index: ", ", Size: "));
                } else {
                    int i2 = i - pageStore.placeholdersBefore;
                    if (i2 >= 0 && i2 < pageStore.dataCount) {
                        obj = pageStore.getItem(i2);
                    }
                }
            } else {
                obj = asyncPagingDataDiffer.presenter.get(i);
            }
            do {
                value3 = stateFlowImpl.getValue();
                ((Boolean) value3).getClass();
            } while (!stateFlowImpl.compareAndSet(value3, Boolean.FALSE));
            return obj;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final int getItemCount() {
            AsyncPagingDataDiffer asyncPagingDataDiffer = this.differ;
            PageStore pageStore = (PageStore) asyncPagingDataDiffer.previousPresenter.get();
            return pageStore != null ? pageStore.getSize() : asyncPagingDataDiffer.presenter.pageStore.getSize();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final long getItemId(int i) {
            return -1L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            boolean z;
            switch (this.$r8$classId) {
                case 3:
                    z = getItem(i) instanceof EditHistoryListViewModel.EditHistorySeparator;
                    break;
                case 4:
                    z = getItem(i) instanceof SuggestedEditsRecentEditsViewModel.RecentEditsSeparator;
                    break;
                case 5:
                default:
                    return super.getItemViewType(i);
                case 6:
                    z = getItem(i) instanceof UserContribListViewModel.UserContribSeparator;
                    break;
            }
            return !z;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String replace$default;
            boolean z;
            boolean z2;
            switch (this.$r8$classId) {
                case 0:
                    PageTitle pageTitle = (PageTitle) getItem(i);
                    if (pageTitle != null) {
                        PageItemView pageItemView = ((CategoryItemHolder) viewHolder).view;
                        pageItemView.setItem(pageTitle);
                        if (pageTitle.namespace() != Namespace.CATEGORY) {
                            replace$default = pageTitle.getDisplayText();
                        } else {
                            StringUtil stringUtil = StringUtil.INSTANCE;
                            replace$default = StringsKt__StringsJVMKt.replace$default(pageTitle.getText(), "_", " ");
                        }
                        pageItemView.setTitle(replace$default);
                        pageItemView.setImageUrl(pageTitle.thumbUrl);
                        String str = pageTitle.thumbUrl;
                        pageItemView.setImageVisible(!(str == null || str.length() == 0));
                        pageItemView.setDescription(pageTitle.description);
                        break;
                    }
                    break;
                case 1:
                    PageTitle pageTitle2 = (PageTitle) getItem(i);
                    if (pageTitle2 != null) {
                        InsertMediaActivity.InsertMediaItemHolder insertMediaItemHolder = (InsertMediaActivity.InsertMediaItemHolder) viewHolder;
                        InsertMediaActivity insertMediaActivity = InsertMediaActivity.this;
                        DefaultSocket defaultSocket = insertMediaItemHolder.binding;
                        ViewUtil.loadImage$default((ImageView) defaultSocket.source, pageTitle2.thumbUrl, null, 28);
                        TextView textView = (TextView) defaultSocket.closeBits;
                        StringUtil stringUtil2 = StringUtil.INSTANCE;
                        String str2 = pageTitle2.description;
                        if (str2 == null) {
                            str2 = "";
                        }
                        if (str2.length() == 0) {
                            str2 = pageTitle2.getDisplayText();
                        }
                        textView.setText(StringUtil.removeHTMLTags(str2));
                        ((ImageView) defaultSocket.sink).setVisibility(pageTitle2.equals(insertMediaActivity.getViewModel().selectedImage) ? 0 : 8);
                        ((FrameLayout) defaultSocket.socket).setOnClickListener(new InsertMediaActivity$$ExternalSyntheticLambda4(insertMediaActivity, pageTitle2));
                        break;
                    }
                    break;
                case 2:
                    PageTitle pageTitle3 = (PageTitle) getItem(i);
                    if (pageTitle3 != null) {
                        TemplatesSearchActivity.TemplatesSearchItemHolder templatesSearchItemHolder = (TemplatesSearchActivity.TemplatesSearchItemHolder) viewHolder;
                        TemplatesSearchActivity templatesSearchActivity = TemplatesSearchActivity.this;
                        MultipartBody.Builder builder = templatesSearchItemHolder.binding;
                        TextView textView2 = (TextView) builder.parts;
                        TextView textView3 = (TextView) builder.type;
                        StringUtil stringUtil3 = StringUtil.INSTANCE;
                        textView2.setText(StringsKt.substringAfter$default(pageTitle3.getDisplayText(), ':'));
                        String str3 = pageTitle3.description;
                        textView3.setVisibility((str3 == null || str3.length() == 0) ? 8 : 0);
                        textView3.setText(pageTitle3.description);
                        StringUtil.boldenKeywordText(textView2, textView2.getText().toString(), templatesSearchActivity.getViewModel().searchQuery);
                        String str4 = templatesSearchActivity.getViewModel().searchQuery;
                        if (str4 == null || str4.length() == 0) {
                            textView2.setTypeface(Typeface.DEFAULT_BOLD);
                        } else {
                            textView2.setTypeface(Typeface.DEFAULT);
                        }
                        templatesSearchItemHolder.itemView.setOnClickListener(new HomeFragment$$ExternalSyntheticLambda8(9, templatesSearchActivity, pageTitle3));
                        break;
                    }
                    break;
                case 3:
                    EditHistoryListViewModel.EditHistoryItemModel editHistoryItemModel = (EditHistoryListViewModel.EditHistoryItemModel) getItem(i);
                    if (!(viewHolder instanceof EditHistoryListActivity.SeparatorViewHolder)) {
                        if (viewHolder instanceof EditHistoryListActivity.EditHistoryListItemHolder) {
                            EditHistoryListActivity.EditHistoryListItemHolder editHistoryListItemHolder = (EditHistoryListActivity.EditHistoryListItemHolder) viewHolder;
                            editHistoryItemModel.getClass();
                            MwQueryPage.Revision revision = ((EditHistoryListViewModel.EditHistoryItem) editHistoryItemModel).item;
                            revision.getClass();
                            editHistoryListItemHolder.revision = revision;
                            EditHistoryItemView editHistoryItemView = editHistoryListItemHolder.view;
                            EditHistoryListActivity editHistoryListActivity = EditHistoryListActivity.this;
                            int i2 = EditHistoryListActivity.$r8$clinit;
                            String str5 = editHistoryListActivity.getViewModel().currentQuery;
                            String str6 = revision.comment;
                            int i3 = revision.diffSize;
                            StringUtil stringUtil4 = StringUtil.INSTANCE;
                            SVGAndroidRenderer sVGAndroidRenderer = editHistoryItemView.binding;
                            TextView textView4 = (TextView) sVGAndroidRenderer.document;
                            MaterialButton materialButton = (MaterialButton) sVGAndroidRenderer.matrixStack;
                            TextView textView5 = (TextView) sVGAndroidRenderer.stateStack;
                            Context context = editHistoryItemView.getContext();
                            context.getClass();
                            StringUtil.setHighlightedAndBoldenedText(textView4, StringUtil.getDiffBytesText(context, i3), str5);
                            if (i3 >= 0) {
                                int i4 = i3 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                Context context2 = editHistoryItemView.getContext();
                                context2.getClass();
                                textView4.setTextColor(Cache.Companion.getThemedColor(context2, i4));
                            } else {
                                Context context3 = editHistoryItemView.getContext();
                                context3.getClass();
                                textView4.setTextColor(Cache.Companion.getThemedColor(context3, R.attr.destructive_color));
                            }
                            materialButton.setIconResource(revision.isAnon ? R.drawable.ic_anonymous_ooui : revision.isTemp ? R.drawable.ic_temp_account : R.drawable.ic_user_avatar);
                            if (str6.length() == 0) {
                                textView5.setTypeface(Typeface.SANS_SERIF, 2);
                                Context context4 = editHistoryItemView.getContext();
                                context4.getClass();
                                textView5.setTextColor(Cache.Companion.getThemedColor(context4, R.attr.secondary_color));
                                textView5.setText(editHistoryItemView.getContext().getString(R.string.page_edit_history_comment_placeholder));
                            } else {
                                textView5.setTypeface(Typeface.SANS_SERIF, 0);
                                Context context5 = editHistoryItemView.getContext();
                                context5.getClass();
                                textView5.setTextColor(Cache.Companion.getThemedColor(context5, R.attr.primary_color));
                                CharSequence charSequence = str6;
                                if (revision.minor) {
                                    charSequence = StringUtil.fromHtml(editHistoryItemView.getContext().getString(R.string.page_edit_history_minor_edit, str6));
                                }
                                StringUtil.setHighlightedAndBoldenedText(textView5, charSequence, str5);
                            }
                            StringUtil.setHighlightedAndBoldenedText(materialButton, revision.user, str5);
                            TextView textView6 = (TextView) sVGAndroidRenderer.state;
                            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                            Context context6 = editHistoryItemView.getContext();
                            context6.getClass();
                            textView6.setText(DateUtil.getDateStringWithSkeletonPattern(DateFormat.is24HourFormat(context6) ? "HH:mm" : "hh:mm a", DateUtil.iso8601DateParse(revision.timeStamp)));
                            editHistoryListItemHolder.updateSelectState();
                            editHistoryItemView.setListener(editHistoryListItemHolder);
                            break;
                        }
                    } else {
                        editHistoryItemModel.getClass();
                        ((TextView) ((EditHistoryListActivity.SeparatorViewHolder) viewHolder).itemView.findViewById(R.id.date_text)).setText(((EditHistoryListViewModel.EditHistorySeparator) editHistoryItemModel).date);
                        break;
                    }
                    break;
                case 4:
                    SuggestedEditsRecentEditsViewModel.RecentEditsItemModel recentEditsItemModel = (SuggestedEditsRecentEditsViewModel.RecentEditsItemModel) getItem(i);
                    if (!(viewHolder instanceof SuggestedEditsRecentEditsFragment.SeparatorViewHolder)) {
                        if (viewHolder instanceof SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) {
                            SuggestedEditsRecentEditsFragment.RecentEditsItemHolder recentEditsItemHolder = (SuggestedEditsRecentEditsFragment.RecentEditsItemHolder) viewHolder;
                            recentEditsItemModel.getClass();
                            MwQueryResult.RecentChange recentChange = ((SuggestedEditsRecentEditsViewModel.RecentEditsItem) recentEditsItemModel).item;
                            recentChange.getClass();
                            SuggestedEditsRecentEditsItemView suggestedEditsRecentEditsItemView = recentEditsItemHolder.view;
                            String str7 = recentEditsItemHolder.this$0.getViewModel().currentQuery;
                            String str8 = recentChange.user;
                            suggestedEditsRecentEditsItemView.item = recentChange;
                            StringUtil stringUtil5 = StringUtil.INSTANCE;
                            ItemSuggestedEditsRecentEditsBinding itemSuggestedEditsRecentEditsBinding = suggestedEditsRecentEditsItemView.binding;
                            TextView textView7 = itemSuggestedEditsRecentEditsBinding.titleText;
                            WikiCardView wikiCardView = itemSuggestedEditsRecentEditsBinding.containerView;
                            GoneIfEmptyTextView goneIfEmptyTextView = itemSuggestedEditsRecentEditsBinding.tagsText;
                            MaterialButton materialButton2 = itemSuggestedEditsRecentEditsBinding.diffText;
                            MaterialButton materialButton3 = itemSuggestedEditsRecentEditsBinding.userNameText;
                            StringUtil.setHighlightedAndBoldenedText(textView7, recentChange.title, str7);
                            GoneIfEmptyTextView goneIfEmptyTextView2 = itemSuggestedEditsRecentEditsBinding.summaryText;
                            CharSequence fromHtml = StringUtil.fromHtml(recentChange.parsedComment);
                            if (fromHtml.length() == 0) {
                                fromHtml = suggestedEditsRecentEditsItemView.getContext().getString(R.string.page_edit_history_comment_placeholder);
                                fromHtml.getClass();
                                z = true;
                            } else {
                                z = false;
                            }
                            goneIfEmptyTextView2.setText(fromHtml);
                            Typeface typeface = Typeface.SANS_SERIF;
                            goneIfEmptyTextView2.setTypeface(typeface, z ? 2 : 0);
                            Context context7 = suggestedEditsRecentEditsItemView.getContext();
                            context7.getClass();
                            goneIfEmptyTextView2.setTextColor(Cache.Companion.getThemedColor(context7, z ? R.attr.secondary_color : R.attr.primary_color));
                            String str9 = (String) recentChange.joinedTags$delegate.getValue();
                            if (str9.length() == 0) {
                                str9 = suggestedEditsRecentEditsItemView.getContext().getString(R.string.patroller_tasks_edits_list_card_tags_text_none);
                                str9.getClass();
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            String string = suggestedEditsRecentEditsItemView.getContext().getString(R.string.patroller_tasks_edits_list_card_tags_text, str9);
                            string.getClass();
                            StringUtil.setHighlightedAndBoldenedText(goneIfEmptyTextView, string, str7);
                            goneIfEmptyTextView.setTypeface(typeface, z2 ? 2 : 0);
                            Context context8 = suggestedEditsRecentEditsItemView.getContext();
                            context8.getClass();
                            goneIfEmptyTextView.setTextColor(Cache.Companion.getThemedColor(context8, z2 ? R.attr.secondary_color : R.attr.primary_color));
                            TextView textView8 = itemSuggestedEditsRecentEditsBinding.timeText;
                            ConcurrentHashMap concurrentHashMap2 = DateUtil.DATE_FORMATS;
                            Context context9 = suggestedEditsRecentEditsItemView.getContext();
                            context9.getClass();
                            LocalDateTime parsedDateTime = recentChange.getParsedDateTime();
                            String str10 = DateFormat.is24HourFormat(context9) ? "HH:mm" : "hh:mm a";
                            Locale locale = Locale.getDefault();
                            locale.getClass();
                            String format = DateUtil.getCachedDateTimeFormatter(str10, locale, true).format(parsedDateTime);
                            format.getClass();
                            StringUtil.setHighlightedAndBoldenedText(textView8, format, str7);
                            materialButton3.setText(str8);
                            StringUtil.setHighlightedAndBoldenedText(materialButton3, str8, str7);
                            materialButton3.setContentDescription(suggestedEditsRecentEditsItemView.getContext().getString(R.string.talk_user_title, str8));
                            materialButton3.setIconResource(recentChange.anon ? R.drawable.ic_anonymous_ooui : R.drawable.ic_user_avatar);
                            int i5 = recentChange.newlen - recentChange.oldlen;
                            Context context10 = suggestedEditsRecentEditsItemView.getContext();
                            context10.getClass();
                            String diffBytesText = StringUtil.getDiffBytesText(context10, i5);
                            Context context11 = suggestedEditsRecentEditsItemView.getContext();
                            context11.getClass();
                            ColorStateList themedColorStateList = Cache.Companion.getThemedColorStateList(context11, R.attr.border_color);
                            materialButton2.setText(diffBytesText);
                            materialButton2.setTextColor(themedColorStateList);
                            materialButton2.setIconResource(0);
                            materialButton2.setIconTint(themedColorStateList);
                            if (i5 >= 0) {
                                int i6 = i5 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                Context context12 = suggestedEditsRecentEditsItemView.getContext();
                                context12.getClass();
                                materialButton2.setTextColor(Cache.Companion.getThemedColor(context12, i6));
                            } else {
                                Context context13 = suggestedEditsRecentEditsItemView.getContext();
                                context13.getClass();
                                materialButton2.setTextColor(Cache.Companion.getThemedColor(context13, R.attr.destructive_color));
                            }
                            materialButton2.setVisibility(0);
                            wikiCardView.setAlpha(1.0f);
                            wikiCardView.setClickable(true);
                            suggestedEditsRecentEditsItemView.setCallback(recentEditsItemHolder);
                            break;
                        }
                    } else {
                        recentEditsItemModel.getClass();
                        ((TextView) ((SuggestedEditsRecentEditsFragment.SeparatorViewHolder) viewHolder).itemView.findViewById(R.id.date_text)).setText(((SuggestedEditsRecentEditsViewModel.RecentEditsSeparator) recentEditsItemModel).date);
                        break;
                    }
                    break;
                case 5:
                    PageTitle pageTitle4 = (PageTitle) getItem(i);
                    if (pageTitle4 != null) {
                        PageItemView pageItemView2 = ((ArchivedTalkPagesActivity.ArchivedTalkPageItemHolder) viewHolder).view;
                        pageItemView2.setItem(pageTitle4);
                        pageItemView2.setTitle(pageTitle4.getDisplayText());
                        pageItemView2.setImageUrl(pageTitle4.thumbUrl);
                        String str11 = pageTitle4.thumbUrl;
                        pageItemView2.setImageVisible(!(str11 == null || str11.length() == 0));
                        pageItemView2.setDescription(pageTitle4.description);
                        break;
                    }
                    break;
                default:
                    UserContribListViewModel.UserContribItemModel userContribItemModel = (UserContribListViewModel.UserContribItemModel) getItem(i);
                    if (!(viewHolder instanceof UserContribListActivity.SeparatorViewHolder)) {
                        if (viewHolder instanceof UserContribListActivity.UserContribListItemHolder) {
                            UserContribListActivity.UserContribListItemHolder userContribListItemHolder = (UserContribListActivity.UserContribListItemHolder) viewHolder;
                            userContribItemModel.getClass();
                            UserContribution userContribution = ((UserContribListViewModel.UserContribItem) userContribItemModel).item;
                            userContribution.getClass();
                            userContribListItemHolder.contrib = userContribution;
                            UserContribItemView userContribItemView = userContribListItemHolder.view;
                            UserContribListActivity userContribListActivity = UserContribListActivity.this;
                            int i7 = UserContribListActivity.$r8$clinit;
                            String str12 = userContribListActivity.getViewModel().currentQuery;
                            String str13 = userContribution.comment;
                            StringUtil stringUtil6 = StringUtil.INSTANCE;
                            Context context14 = userContribItemView.getContext();
                            context14.getClass();
                            int i8 = userContribution.sizediff;
                            String diffBytesText2 = StringUtil.getDiffBytesText(context14, i8);
                            Retrofit retrofit = userContribItemView.binding;
                            TextView textView9 = (TextView) retrofit.baseUrl;
                            TextView textView10 = (TextView) retrofit.callAdapterFactories;
                            StringUtil.setHighlightedAndBoldenedText(textView9, diffBytesText2, str12);
                            if (i8 >= 0) {
                                int i9 = i8 > 0 ? R.attr.success_color : R.attr.secondary_color;
                                Context context15 = userContribItemView.getContext();
                                context15.getClass();
                                textView9.setTextColor(Cache.Companion.getThemedColor(context15, i9));
                            } else {
                                Context context16 = userContribItemView.getContext();
                                context16.getClass();
                                textView9.setTextColor(Cache.Companion.getThemedColor(context16, R.attr.destructive_color));
                            }
                            StringUtil.setHighlightedAndBoldenedText((TextView) retrofit.serviceMethodCache, StringUtil.fromHtml(userContribution.title), str12);
                            if (str13.length() == 0) {
                                textView10.setTypeface(Typeface.SANS_SERIF, 2);
                                Context context17 = userContribItemView.getContext();
                                context17.getClass();
                                textView10.setTextColor(Cache.Companion.getThemedColor(context17, R.attr.secondary_color));
                                textView10.setText(userContribItemView.getContext().getString(R.string.page_edit_history_comment_placeholder));
                            } else {
                                textView10.setTypeface(Typeface.SANS_SERIF, 0);
                                Context context18 = userContribItemView.getContext();
                                context18.getClass();
                                textView10.setTextColor(Cache.Companion.getThemedColor(context18, R.attr.primary_color));
                                CharSequence charSequence2 = str13;
                                if (userContribution.minor) {
                                    charSequence2 = StringUtil.fromHtml(userContribItemView.getContext().getString(R.string.page_edit_history_minor_edit, str13));
                                }
                                StringUtil.setHighlightedAndBoldenedText(textView10, charSequence2, str12);
                            }
                            ((TextView) retrofit.callFactory).setVisibility(userContribution.top ? 0 : 8);
                            TextView textView11 = (TextView) retrofit.converterFactories;
                            ConcurrentHashMap concurrentHashMap3 = DateUtil.DATE_FORMATS;
                            Context context19 = userContribItemView.getContext();
                            context19.getClass();
                            LocalDateTime localDateTime = (LocalDateTime) userContribution.parsedDateTime$delegate.getValue();
                            localDateTime.getClass();
                            String str14 = DateFormat.is24HourFormat(context19) ? "HH:mm" : "hh:mm a";
                            Locale locale2 = Locale.getDefault();
                            locale2.getClass();
                            String format2 = DateUtil.getCachedDateTimeFormatter(str14, locale2, true).format(localDateTime);
                            format2.getClass();
                            textView11.setText(format2);
                            userContribItemView.setListener(userContribListItemHolder);
                            break;
                        }
                    } else {
                        userContribItemModel.getClass();
                        ((TextView) ((UserContribListActivity.SeparatorViewHolder) viewHolder).itemView.findViewById(R.id.date_text)).setText(((UserContribListViewModel.UserContribSeparator) userContribItemModel).date);
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            switch (i2) {
                case 0:
                    CategoryActivity categoryActivity = (CategoryActivity) obj;
                    PageItemView pageItemView = new PageItemView(categoryActivity);
                    pageItemView.setCallback(categoryActivity.itemCallback);
                    return new CategoryItemHolder(pageItemView);
                case 1:
                    InsertMediaActivity insertMediaActivity = (InsertMediaActivity) obj;
                    View inflate = insertMediaActivity.getLayoutInflater().inflate(R.layout.item_insert_media, (ViewGroup) null, false);
                    int i3 = R.id.imageDescription;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.imageDescription);
                    if (textView != null) {
                        i3 = R.id.imageView;
                        ImageView imageView = (ImageView) Room.findChildViewById(inflate, R.id.imageView);
                        if (imageView != null) {
                            i3 = R.id.selectedIcon;
                            ImageView imageView2 = (ImageView) Room.findChildViewById(inflate, R.id.selectedIcon);
                            if (imageView2 != null) {
                                return insertMediaActivity.new InsertMediaItemHolder(new DefaultSocket((FrameLayout) inflate, textView, imageView, imageView2, 19));
                            }
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i3)));
                    return null;
                case 2:
                    TemplatesSearchActivity templatesSearchActivity = (TemplatesSearchActivity) obj;
                    View inflate2 = templatesSearchActivity.getLayoutInflater().inflate(R.layout.item_templates_search, viewGroup, false);
                    int i4 = R.id.itemDescription;
                    TextView textView2 = (TextView) Room.findChildViewById(inflate2, R.id.itemDescription);
                    if (textView2 != null) {
                        i4 = R.id.itemTitle;
                        TextView textView3 = (TextView) Room.findChildViewById(inflate2, R.id.itemTitle);
                        if (textView3 != null) {
                            return templatesSearchActivity.new TemplatesSearchItemHolder(new MultipartBody.Builder((LinearLayout) inflate2, textView2, textView3));
                        }
                    }
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i4)));
                    return null;
                case 3:
                    EditHistoryListActivity editHistoryListActivity = (EditHistoryListActivity) obj;
                    if (i != 0) {
                        return editHistoryListActivity.new EditHistoryListItemHolder(new EditHistoryItemView(editHistoryListActivity));
                    }
                    View inflate3 = editHistoryListActivity.getLayoutInflater().inflate(R.layout.item_edit_history_separator, viewGroup, false);
                    inflate3.getClass();
                    return new EditHistoryListActivity.SeparatorViewHolder(inflate3);
                case 4:
                    SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment = (SuggestedEditsRecentEditsFragment) obj;
                    if (i != 0) {
                        return new SuggestedEditsRecentEditsFragment.RecentEditsItemHolder(suggestedEditsRecentEditsFragment, new SuggestedEditsRecentEditsItemView(suggestedEditsRecentEditsFragment.requireContext()));
                    }
                    View inflate4 = suggestedEditsRecentEditsFragment.getLayoutInflater().inflate(R.layout.item_edit_history_separator, viewGroup, false);
                    inflate4.getClass();
                    return new SuggestedEditsRecentEditsFragment.SeparatorViewHolder(inflate4);
                case 5:
                    ArchivedTalkPagesActivity archivedTalkPagesActivity = (ArchivedTalkPagesActivity) obj;
                    PageItemView pageItemView2 = new PageItemView(archivedTalkPagesActivity);
                    pageItemView2.setCallback(archivedTalkPagesActivity.itemCallback);
                    return new ArchivedTalkPagesActivity.ArchivedTalkPageItemHolder(pageItemView2);
                default:
                    UserContribListActivity userContribListActivity = (UserContribListActivity) obj;
                    if (i != 0) {
                        return userContribListActivity.new UserContribListItemHolder(new UserContribItemView(userContribListActivity));
                    }
                    View inflate5 = userContribListActivity.getLayoutInflater().inflate(R.layout.item_edit_history_separator, viewGroup, false);
                    inflate5.getClass();
                    return new UserContribListActivity.SeparatorViewHolder(inflate5);
            }
        }

        public final void refresh() {
            this.differ.presenter.refresh();
        }

        public final void retry() {
            AsyncPagingDataDiffer$presenter$1 asyncPagingDataDiffer$presenter$1 = this.differ.presenter;
            asyncPagingDataDiffer$presenter$1.getClass();
            if (Build.ID != null && Log.isLoggable("Paging", 3)) {
                Log.d("Paging", "Retry signal received", null);
            }
            asyncPagingDataDiffer$presenter$1.uiReceiver.retry();
        }

        public final void submitData(LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl, PagingData pagingData) {
            pagingData.getClass();
            AwaitKt.launch$default(lifecycleCoroutineScopeImpl, null, null, new ShareUtil$shareImage$2$uri$1(this, pagingData, (Continuation) null, 5), 3);
        }

        public final ConcatAdapter withLoadStateFooter(LoadStateAdapter loadStateAdapter) {
            loadStateAdapter.getClass();
            addLoadStateListener(new DiskLruCache$$ExternalSyntheticLambda0(16, loadStateAdapter));
            return new ConcatAdapter(this, loadStateAdapter);
        }

        public final ConcatAdapter withLoadStateHeaderAndFooter(LoadStateAdapter loadStateAdapter, LoadStateAdapter loadStateAdapter2) {
            loadStateAdapter.getClass();
            loadStateAdapter2.getClass();
            addLoadStateListener(new NavController$$ExternalSyntheticLambda3(24, loadStateAdapter, loadStateAdapter2));
            return new ConcatAdapter(loadStateAdapter, this, loadStateAdapter2);
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(ArchivedTalkPagesActivity archivedTalkPagesActivity) {
            this(new CategoryMemberDiffCallback(5));
            this.$r8$classId = 5;
            this.this$0 = archivedTalkPagesActivity;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(CategoryActivity categoryActivity) {
            this(new CategoryMemberDiffCallback(0));
            this.$r8$classId = 0;
            this.this$0 = categoryActivity;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(TemplatesSearchActivity templatesSearchActivity) {
            this(new CategoryMemberDiffCallback(2));
            this.$r8$classId = 2;
            this.this$0 = templatesSearchActivity;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(UserContribListActivity userContribListActivity) {
            this(new CategoryMemberDiffCallback(6));
            this.$r8$classId = 6;
            this.this$0 = userContribListActivity;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(SuggestedEditsRecentEditsFragment suggestedEditsRecentEditsFragment) {
            this(new CategoryMemberDiffCallback(4));
            this.$r8$classId = 4;
            this.this$0 = suggestedEditsRecentEditsFragment;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(EditHistoryListActivity editHistoryListActivity) {
            this(new CategoryMemberDiffCallback(3));
            this.$r8$classId = 3;
            this.this$0 = editHistoryListActivity;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public CategoryMembersAdapter(InsertMediaActivity insertMediaActivity) {
            this(new CategoryMemberDiffCallback(1));
            this.$r8$classId = 1;
            this.this$0 = insertMediaActivity;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CategoryMemberDiffCallback extends DiffUtil {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ CategoryMemberDiffCallback(int i) {
            this.$r8$classId = i;
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areContentsTheSame(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    PageTitle pageTitle = (PageTitle) obj;
                    PageTitle pageTitle2 = (PageTitle) obj2;
                    pageTitle.getClass();
                    pageTitle2.getClass();
                    return areItemsTheSame(pageTitle, pageTitle2);
                case 1:
                    PageTitle pageTitle3 = (PageTitle) obj;
                    PageTitle pageTitle4 = (PageTitle) obj2;
                    pageTitle3.getClass();
                    pageTitle4.getClass();
                    return pageTitle3.getPrefixedText().equals(pageTitle4.getPrefixedText()) && pageTitle3.getNamespace().equals(pageTitle4.getNamespace());
                case 2:
                    PageTitle pageTitle5 = (PageTitle) obj;
                    PageTitle pageTitle6 = (PageTitle) obj2;
                    pageTitle5.getClass();
                    pageTitle6.getClass();
                    return pageTitle5.getPrefixedText().equals(pageTitle6.getPrefixedText()) && pageTitle5.getNamespace().equals(pageTitle6.getNamespace());
                case 3:
                    EditHistoryListViewModel.EditHistoryItemModel editHistoryItemModel = (EditHistoryListViewModel.EditHistoryItemModel) obj;
                    EditHistoryListViewModel.EditHistoryItemModel editHistoryItemModel2 = (EditHistoryListViewModel.EditHistoryItemModel) obj2;
                    editHistoryItemModel.getClass();
                    editHistoryItemModel2.getClass();
                    return ((editHistoryItemModel instanceof EditHistoryListViewModel.EditHistorySeparator) && (editHistoryItemModel2 instanceof EditHistoryListViewModel.EditHistorySeparator)) ? ((EditHistoryListViewModel.EditHistorySeparator) editHistoryItemModel).date.equals(((EditHistoryListViewModel.EditHistorySeparator) editHistoryItemModel2).date) : (editHistoryItemModel instanceof EditHistoryListViewModel.EditHistoryItem) && (editHistoryItemModel2 instanceof EditHistoryListViewModel.EditHistoryItem) && ((EditHistoryListViewModel.EditHistoryItem) editHistoryItemModel).item.revId == ((EditHistoryListViewModel.EditHistoryItem) editHistoryItemModel2).item.revId;
                case 4:
                    SuggestedEditsRecentEditsViewModel.RecentEditsItemModel recentEditsItemModel = (SuggestedEditsRecentEditsViewModel.RecentEditsItemModel) obj;
                    SuggestedEditsRecentEditsViewModel.RecentEditsItemModel recentEditsItemModel2 = (SuggestedEditsRecentEditsViewModel.RecentEditsItemModel) obj2;
                    recentEditsItemModel.getClass();
                    recentEditsItemModel2.getClass();
                    return ((recentEditsItemModel instanceof SuggestedEditsRecentEditsViewModel.RecentEditsSeparator) && (recentEditsItemModel2 instanceof SuggestedEditsRecentEditsViewModel.RecentEditsSeparator)) ? ((SuggestedEditsRecentEditsViewModel.RecentEditsSeparator) recentEditsItemModel).date.equals(((SuggestedEditsRecentEditsViewModel.RecentEditsSeparator) recentEditsItemModel2).date) : (recentEditsItemModel instanceof SuggestedEditsRecentEditsViewModel.RecentEditsItem) && (recentEditsItemModel2 instanceof SuggestedEditsRecentEditsViewModel.RecentEditsItem) && ((SuggestedEditsRecentEditsViewModel.RecentEditsItem) recentEditsItemModel).item.curRev == ((SuggestedEditsRecentEditsViewModel.RecentEditsItem) recentEditsItemModel2).item.curRev;
                case 5:
                    PageTitle pageTitle7 = (PageTitle) obj;
                    PageTitle pageTitle8 = (PageTitle) obj2;
                    pageTitle7.getClass();
                    pageTitle8.getClass();
                    return areItemsTheSame(pageTitle7, pageTitle8);
                default:
                    UserContribListViewModel.UserContribItemModel userContribItemModel = (UserContribListViewModel.UserContribItemModel) obj;
                    UserContribListViewModel.UserContribItemModel userContribItemModel2 = (UserContribListViewModel.UserContribItemModel) obj2;
                    userContribItemModel.getClass();
                    userContribItemModel2.getClass();
                    return ((userContribItemModel instanceof UserContribListViewModel.UserContribSeparator) && (userContribItemModel2 instanceof UserContribListViewModel.UserContribSeparator)) ? ((UserContribListViewModel.UserContribSeparator) userContribItemModel).date.equals(((UserContribListViewModel.UserContribSeparator) userContribItemModel2).date) : (userContribItemModel instanceof UserContribListViewModel.UserContribItem) && (userContribItemModel2 instanceof UserContribListViewModel.UserContribItem) && ((UserContribListViewModel.UserContribItem) userContribItemModel).item.revid == ((UserContribListViewModel.UserContribItem) userContribItemModel2).item.revid;
            }
        }

        @Override // androidx.recyclerview.widget.DiffUtil
        public final boolean areItemsTheSame(Object obj, Object obj2) {
            switch (this.$r8$classId) {
                case 0:
                    return areItemsTheSame((PageTitle) obj, (PageTitle) obj2);
                case 1:
                    PageTitle pageTitle = (PageTitle) obj;
                    PageTitle pageTitle2 = (PageTitle) obj2;
                    pageTitle.getClass();
                    pageTitle2.getClass();
                    return pageTitle.equals(pageTitle2);
                case 2:
                    PageTitle pageTitle3 = (PageTitle) obj;
                    PageTitle pageTitle4 = (PageTitle) obj2;
                    pageTitle3.getClass();
                    pageTitle4.getClass();
                    return pageTitle3.equals(pageTitle4);
                case 3:
                    EditHistoryListViewModel.EditHistoryItemModel editHistoryItemModel = (EditHistoryListViewModel.EditHistoryItemModel) obj;
                    EditHistoryListViewModel.EditHistoryItemModel editHistoryItemModel2 = (EditHistoryListViewModel.EditHistoryItemModel) obj2;
                    editHistoryItemModel.getClass();
                    editHistoryItemModel2.getClass();
                    return editHistoryItemModel.equals(editHistoryItemModel2);
                case 4:
                    SuggestedEditsRecentEditsViewModel.RecentEditsItemModel recentEditsItemModel = (SuggestedEditsRecentEditsViewModel.RecentEditsItemModel) obj;
                    SuggestedEditsRecentEditsViewModel.RecentEditsItemModel recentEditsItemModel2 = (SuggestedEditsRecentEditsViewModel.RecentEditsItemModel) obj2;
                    recentEditsItemModel.getClass();
                    recentEditsItemModel2.getClass();
                    return recentEditsItemModel.equals(recentEditsItemModel2);
                case 5:
                    return areItemsTheSame((PageTitle) obj, (PageTitle) obj2);
                default:
                    UserContribListViewModel.UserContribItemModel userContribItemModel = (UserContribListViewModel.UserContribItemModel) obj;
                    UserContribListViewModel.UserContribItemModel userContribItemModel2 = (UserContribListViewModel.UserContribItemModel) obj2;
                    userContribItemModel.getClass();
                    userContribItemModel2.getClass();
                    return userContribItemModel.equals(userContribItemModel2);
            }
        }

        public boolean areItemsTheSame(PageTitle pageTitle, PageTitle pageTitle2) {
            int i = this.$r8$classId;
            pageTitle.getClass();
            pageTitle2.getClass();
            switch (i) {
                case 0:
                    if (pageTitle.getPrefixedText().equals(pageTitle2.getPrefixedText()) && pageTitle.getNamespace().equals(pageTitle2.getNamespace())) {
                        break;
                    }
                    break;
                default:
                    if (pageTitle.getPrefixedText().equals(pageTitle2.getPrefixedText()) && pageTitle.getNamespace().equals(pageTitle2.getNamespace())) {
                        break;
                    }
                    break;
            }
            return true;
        }
    }
}
