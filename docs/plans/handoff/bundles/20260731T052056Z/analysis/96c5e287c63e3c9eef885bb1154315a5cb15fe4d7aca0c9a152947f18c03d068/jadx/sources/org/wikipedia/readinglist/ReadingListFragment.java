package org.wikipedia.readinglist;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.EasingKt$$ExternalSyntheticLambda0;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.ScrollNode$$ExternalSyntheticLambda0;
import androidx.compose.foundation.layout.Arrangement$End$1;
import androidx.compose.foundation.layout.Arrangement$SpacedAligned;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.foundation.text.TextLinkScope$$ExternalSyntheticLambda3;
import androidx.compose.material3.ButtonKt$$ExternalSyntheticLambda4;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.Typography;
import androidx.compose.material3.TypographyKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Latch;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsSortKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.unit.DpSize;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.MenuProvider;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.Lifecycle$State;
import androidx.lifecycle.ViewModelKt;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.work.Constraints;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import coil3.RealImageLoader$execute$2;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.appbar.ViewOffsetHelper;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.textfield.TextInputLayout;
import j$.util.concurrent.ConcurrentHashMap;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.ReversedListReadOnly;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.text.MatchGroup;
import kotlin.text.MatcherMatchResult;
import kotlin.text.MatcherMatchResult$groups$1;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import okhttp3.Cache;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.AsyncTimeout;
import okio.Okio__OkioKt;
import okio.PriorityQueue;
import org.jsoup.Jsoup;
import org.jsoup.nodes.NodeUtils;
import org.jsoup.select.NodeTraversor;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.activity.BaseActivity;
import org.wikipedia.analytics.eventplatform.AppInteractionEvent;
import org.wikipedia.analytics.eventplatform.BreadCrumbLogEvent;
import org.wikipedia.analytics.eventplatform.EventPlatformClient;
import org.wikipedia.analytics.eventplatform.WikiGamesEvent;
import org.wikipedia.categories.CategoryActivity;
import org.wikipedia.compose.theme.WikipediaColor;
import org.wikipedia.compose.theme.WikipediaColorKt;
import org.wikipedia.concurrency.FlowEventBus;
import org.wikipedia.databinding.ActivityLoginBinding;
import org.wikipedia.databinding.ItemNotificationBinding;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.diff.DiffUtil$DiffLinesAdapter;
import org.wikipedia.donate.DonateDialog$special$$inlined$viewModels$default$5;
import org.wikipedia.edit.richtext.SyntaxHighlighter;
import org.wikipedia.events.NewRecommendedReadingListEvent;
import org.wikipedia.feed.FeedComponentsKt$$ExternalSyntheticLambda5;
import org.wikipedia.feed.ForYouCardKt;
import org.wikipedia.feed.ForYouCardKt$$ExternalSyntheticLambda17;
import org.wikipedia.feed.HomeFragment$special$$inlined$viewModels$default$2;
import org.wikipedia.feed.HomeScreenKt$$ExternalSyntheticLambda3;
import org.wikipedia.feed.onthisday.OnThisDay;
import org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda6;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda0;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda2;
import org.wikipedia.feed.topread.TopReadModuleKt$$ExternalSyntheticLambda5;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.history.HistoryFragment;
import org.wikipedia.login.LoginClient;
import org.wikipedia.main.MainActivity;
import org.wikipedia.main.MainFragment$$ExternalSyntheticLambda5;
import org.wikipedia.notifications.NotificationActivity;
import org.wikipedia.notifications.NotificationListItemContainer;
import org.wikipedia.notifications.NotificationPollBroadcastReceiver;
import org.wikipedia.notifications.NotificationPresenter;
import org.wikipedia.notifications.db.Notification;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageActivity$onCreate$1$1$1;
import org.wikipedia.page.PageFragment$$ExternalSyntheticLambda28;
import org.wikipedia.page.PageTitle;
import org.wikipedia.places.PlacesFragment$special$$inlined$viewModels$default$3;
import org.wikipedia.readinglist.ReadingListFragment;
import org.wikipedia.readinglist.ReadingListItemActionsDialog;
import org.wikipedia.readinglist.ReadingListItemView;
import org.wikipedia.readinglist.database.ReadingList;
import org.wikipedia.readinglist.database.ReadingListPage;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSettingsActivity;
import org.wikipedia.readinglist.recommended.RecommendedReadingListSourceScreenKt;
import org.wikipedia.readinglist.sync.ReadingListSyncAdapter;
import org.wikipedia.savedpages.SavedPageSyncService;
import org.wikipedia.settings.Prefs;
import org.wikipedia.settings.PrefsIoUtil;
import org.wikipedia.settings.languages.WikipediaLanguagesFragment;
import org.wikipedia.talk.TalkTopicViewModel$undo$2;
import org.wikipedia.talk.db.TalkTemplate;
import org.wikipedia.talk.template.TalkTemplatesFragment;
import org.wikipedia.util.DateUtil;
import org.wikipedia.util.DeviceUtil;
import org.wikipedia.util.FileUtil;
import org.wikipedia.util.ShareUtil;
import org.wikipedia.util.UriUtil;
import org.wikipedia.util.log.L;
import org.wikipedia.views.DefaultViewHolder;
import org.wikipedia.views.DrawableItemDecoration;
import org.wikipedia.views.PageItemView;
import org.wikipedia.views.SearchEmptyView;
import org.wikipedia.views.SurveyDialog$$ExternalSyntheticLambda8;
import org.wikipedia.views.SwipeableItemTouchHelperCallback;
import org.wikipedia.views.TextInputDialog$$ExternalSyntheticLambda2;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\n\u0006\u0007\b\t\n\u000b\u000b\u000b\f\rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u000e"}, d2 = {"Lorg/wikipedia/readinglist/ReadingListFragment;", "Landroidx/fragment/app/Fragment;", "Landroidx/core/view/MenuProvider;", "Lorg/wikipedia/readinglist/ReadingListItemActionsDialog$Callback;", "<init>", "()V", "AppBarListener", "ReadingListItemHolder", "ReadingListPageItemHolder", "FooterViewHolder", "DiffLinesAdapter", "HeaderCallback", "HistorySearchCallback", "MultiSelectCallback", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ReadingListFragment extends Fragment implements MenuProvider, ReadingListItemActionsDialog.Callback {
    public ActivityLoginBinding _binding;
    public ActionMode actionMode;
    public final DiffUtil$DiffLinesAdapter adapter;
    public final AppBarListener appBarListener;
    public boolean articleLimitMessageShown;
    public String currentSearchQuery;
    public List displayedLists;
    public MainFragment$$ExternalSyntheticLambda5 exclusiveTooltipRunnable;
    public ReadingListItemView headerView;
    public Constants.InvokeSource invokeSource;
    public final MultiSelectCallback multiSelectActionModeCallback;
    public AlertDialog previewSaveDialog;
    public ReadingList readingList;
    public long readingListId;
    public final HeaderCallback readingListItemCallback;
    public ReadingListMode readingListMode;
    public final HeaderCallback readingListPageItemCallback;
    public final HistoryFragment.HistorySearchCallback searchActionModeCallback;
    public boolean showOverflowMenu;
    public boolean toolbarExpanded;
    public SwipeableItemTouchHelperCallback touchCallback;
    public final Request.Builder viewModel$delegate;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class AppBarListener implements AppBarLayout.OnOffsetChangedListener {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AppBarListener(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        @Override // com.google.android.material.appbar.AppBarLayout.OnOffsetChangedListener
        public final void onOffsetChanged(AppBarLayout appBarLayout, int i) {
            int i2 = this.$r8$classId;
            Object obj = this.this$0;
            boolean z = false;
            switch (i2) {
                case 0:
                    ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                    if (i > (-appBarLayout.getTotalScrollRange()) && readingListFragment.showOverflowMenu) {
                        readingListFragment.showOverflowMenu = false;
                        ActivityLoginBinding activityLoginBinding = readingListFragment._binding;
                        activityLoginBinding.getClass();
                        ((CollapsingToolbarLayout) activityLoginBinding.loginCreateAccountButton).setTitle("");
                        readingListFragment.requireActivity().invalidateOptionsMenu();
                        readingListFragment.toolbarExpanded = true;
                    } else if (i <= (-appBarLayout.getTotalScrollRange()) && !readingListFragment.showOverflowMenu) {
                        readingListFragment.showOverflowMenu = true;
                        ActivityLoginBinding activityLoginBinding2 = readingListFragment._binding;
                        activityLoginBinding2.getClass();
                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) activityLoginBinding2.loginCreateAccountButton;
                        ReadingList readingList = readingListFragment.readingList;
                        collapsingToolbarLayout.setTitle(readingList != null ? readingList.getTitle() : null);
                        readingListFragment.requireActivity().invalidateOptionsMenu();
                        readingListFragment.toolbarExpanded = false;
                    }
                    AppCompatActivity requireActivity = readingListFragment.requireActivity();
                    ActivityLoginBinding activityLoginBinding3 = readingListFragment._binding;
                    activityLoginBinding3.getClass();
                    DeviceUtil.updateStatusBarTheme(requireActivity, (MaterialToolbar) activityLoginBinding3.toolbar, readingListFragment.actionMode == null && appBarLayout.getTotalScrollRange() + i > appBarLayout.getTotalScrollRange() / 2);
                    ReadingListActivity readingListActivity = (ReadingListActivity) readingListFragment.requireActivity();
                    TypedValue typedValue = new TypedValue();
                    TypedValue typedValue2 = readingListActivity.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true) ? typedValue : null;
                    if (typedValue2 != null) {
                        readingListActivity.setNavigationBarColor(typedValue2.data);
                        ActivityLoginBinding activityLoginBinding4 = readingListFragment._binding;
                        activityLoginBinding4.getClass();
                        WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) activityLoginBinding4.loginButton;
                        if (i == 0 && !readingListFragment.isRecommendedList()) {
                            z = true;
                        }
                        wikiSwipeRefreshLayout.setEnabled(z);
                        break;
                    } else {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                        break;
                    }
                    break;
                default:
                    CollapsingToolbarLayout collapsingToolbarLayout2 = (CollapsingToolbarLayout) obj;
                    CollapsingTextHelper collapsingTextHelper = collapsingToolbarLayout2.collapsingSubtitleHelper;
                    CollapsingTextHelper collapsingTextHelper2 = collapsingToolbarLayout2.collapsingTitleHelper;
                    collapsingToolbarLayout2.currentOffset = i;
                    WindowInsetsCompat windowInsetsCompat = collapsingToolbarLayout2.lastInsets;
                    int systemWindowInsetTop = windowInsetsCompat != null ? windowInsetsCompat.getSystemWindowInsetTop() : 0;
                    int childCount = collapsingToolbarLayout2.getChildCount();
                    for (int i3 = 0; i3 < childCount; i3++) {
                        View childAt = collapsingToolbarLayout2.getChildAt(i3);
                        CollapsingToolbarLayout.LayoutParams layoutParams = (CollapsingToolbarLayout.LayoutParams) childAt.getLayoutParams();
                        ViewOffsetHelper viewOffsetHelper = CollapsingToolbarLayout.getViewOffsetHelper(childAt);
                        int i4 = layoutParams.collapseMode;
                        if (i4 == 1) {
                            viewOffsetHelper.setTopAndBottomOffset(RegexKt.clamp(-i, 0, ((collapsingToolbarLayout2.getHeight() - CollapsingToolbarLayout.getViewOffsetHelper(childAt).layoutTop) - childAt.getHeight()) - ((FrameLayout.LayoutParams) ((CollapsingToolbarLayout.LayoutParams) childAt.getLayoutParams())).bottomMargin));
                        } else if (i4 == 2) {
                            viewOffsetHelper.setTopAndBottomOffset(Math.round((-i) * layoutParams.parallaxMult));
                        }
                    }
                    collapsingToolbarLayout2.updateScrimVisibility();
                    if (collapsingToolbarLayout2.statusBarScrim != null && systemWindowInsetTop > 0) {
                        collapsingToolbarLayout2.postInvalidateOnAnimation();
                    }
                    int height = collapsingToolbarLayout2.getHeight();
                    int minimumHeight = (height - collapsingToolbarLayout2.getMinimumHeight()) - systemWindowInsetTop;
                    int scrimVisibleHeightTrigger = height - collapsingToolbarLayout2.getScrimVisibleHeightTrigger();
                    int i5 = collapsingToolbarLayout2.currentOffset + minimumHeight;
                    float f = minimumHeight;
                    float abs = Math.abs(i) / f;
                    float f2 = scrimVisibleHeightTrigger / f;
                    float min = Math.min(1.0f, f2);
                    collapsingTextHelper2.fadeModeStartFraction = min;
                    collapsingTextHelper2.fadeModeThresholdFraction = Animation.CC.m(1.0f, min, 0.5f, min);
                    collapsingTextHelper2.currentOffsetY = i5;
                    collapsingTextHelper2.setExpansionFraction(abs);
                    float min2 = Math.min(1.0f, f2);
                    collapsingTextHelper.fadeModeStartFraction = min2;
                    collapsingTextHelper.fadeModeThresholdFraction = Animation.CC.m(1.0f, min2, 0.5f, min2);
                    collapsingTextHelper.currentOffsetY = i5;
                    collapsingTextHelper.setExpansionFraction(abs);
                    break;
            }
        }
    }

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
    public final class ReadingListPageItemHolder extends DefaultViewHolder implements SwipeableItemTouchHelperCallback.Callback {
        public ReadingListPage page;
        public PageTitle pageTitle;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public abstract /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[ReadingListMode.values().length];
                try {
                    iArr[ReadingListMode.DEFAULT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[ReadingListMode.RECOMMENDED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[ReadingListMode.PREVIEW.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public ReadingListPageItemHolder(PageItemView pageItemView) {
            super(pageItemView);
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final boolean isSwipeable() {
            return ReadingListFragment.this.readingListMode == ReadingListMode.DEFAULT;
        }

        @Override // org.wikipedia.views.SwipeableItemTouchHelperCallback.Callback
        public final void onSwipe() {
            ReadingListFragment readingListFragment = ReadingListFragment.this;
            int i = WhenMappings.$EnumSwitchMapping$0[readingListFragment.readingListMode.ordinal()];
            if (i != 1) {
                if (i == 2 || i == 3) {
                    return;
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m();
                return;
            }
            ReadingList readingList = readingListFragment.readingList;
            if (readingList != null) {
                String str = readingListFragment.currentSearchQuery;
                if (str == null || str.length() == 0) {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    AppCompatActivity requireActivity = readingListFragment.requireActivity();
                    List listOf = Room.listOf(readingList);
                    ReadingListPage readingListPage = this.page;
                    if (readingListPage != null) {
                        ReadingListBehaviorsUtil.deletePages(requireActivity, listOf, readingListPage, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 15), new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 16));
                    } else {
                        Intrinsics.throwUninitializedPropertyAccessException("page");
                        throw null;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ReadingListMode.values().length];
            try {
                iArr[ReadingListMode.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReadingListMode.PREVIEW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ReadingListMode.RECOMMENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ReadingListFragment() {
        Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.NONE, new HomeFragment$special$$inlined$viewModels$default$2(25, new HomeFragment$special$$inlined$viewModels$default$2(24, this)));
        this.viewModel$delegate = new Request.Builder(Reflection.factory.getOrCreateKotlinClass(ReadingListFragmentViewModel.class), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 4), new DonateDialog$special$$inlined$viewModels$default$5(this, lazy, 12), new PlacesFragment$special$$inlined$viewModels$default$3(lazy, 5));
        this.readingListMode = ReadingListMode.DEFAULT;
        this.adapter = new DiffUtil$DiffLinesAdapter(7, this);
        int i = 0;
        this.appBarListener = new AppBarListener(i, this);
        int i2 = 1;
        this.readingListItemCallback = new HeaderCallback(this, i2);
        this.readingListPageItemCallback = new HeaderCallback(this, 2);
        this.searchActionModeCallback = new HistoryFragment.HistorySearchCallback(i2, this);
        this.multiSelectActionModeCallback = new MultiSelectCallback(i, this);
        this.toolbarExpanded = true;
        this.displayedLists = new ArrayList();
    }

    public final void beginMultiSelect$1() {
        ActionMode actionMode = this.actionMode;
        if ("searchActionMode".equals(actionMode != null ? actionMode.mTag : null)) {
            finishActionMode$2();
        }
        ActionMode actionMode2 = this.actionMode;
        if (actionMode2 == null || !"multiSelectActionMode".equals(actionMode2.mTag)) {
            requireActivity().startSupportActionMode(this.multiSelectActionModeCallback);
        }
    }

    public final void finishActionMode$2() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    public final ReadingListPage getPageById(long j) {
        ArrayList arrayList;
        ReadingList readingList = this.readingList;
        Object obj = null;
        if (readingList == null || (arrayList = readingList.pages) == null) {
            return null;
        }
        Iterator it = arrayList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ReadingListPage) next).id == j) {
                obj = next;
                break;
            }
        }
        return (ReadingListPage) obj;
    }

    public final int getSelectedPageCount() {
        List list = this.displayedLists;
        int i = 0;
        if (list != null && list.isEmpty()) {
            return 0;
        }
        for (Object obj : list) {
            if ((obj instanceof ReadingListPage) && ((ReadingListPage) obj).selected && (i = i + 1) < 0) {
                Room.throwCountOverflow();
                throw null;
            }
        }
        return i;
    }

    public final List getSelectedPages() {
        if (this.readingList == null) {
            return EmptyList.INSTANCE;
        }
        List list = this.displayedLists;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof ReadingListPage) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((ReadingListPage) obj2).selected) {
                arrayList2.add(obj2);
            }
        }
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            ((ReadingListPage) it.next()).selected = false;
        }
        return arrayList2;
    }

    public final ReadingListFragmentViewModel getViewModel() {
        return (ReadingListFragmentViewModel) this.viewModel$delegate.getValue();
    }

    public final boolean isRecommendedList() {
        return this.readingListMode == ReadingListMode.RECOMMENDED;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onAddItemToOther(long j) {
        ReadingListPage pageById = getPageById(j);
        if (pageById == null) {
            return;
        }
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        WikiSite wikiSite = pageById.wiki;
        String str = pageById.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        PageTitle pageTitle = new PageTitle(pageById.apiTitle, wikiSite, pageById.thumbUrl, pageById.description, pageById.displayTitle);
        Constants.InvokeSource invokeSource = Constants.InvokeSource.READING_LIST_ACTIVITY;
        invokeSource.getClass();
        List listOf = Room.listOf(pageTitle);
        AddToReadingListDialog addToReadingListDialog = new AddToReadingListDialog();
        addToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("showDefaultList", Boolean.TRUE)));
        addToReadingListDialog.dismissListener = null;
        Okio__OkioKt.show(childFragmentManager, addToReadingListDialog);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onCreateMenu(Menu menu, MenuInflater menuInflater) {
        menu.getClass();
        menuInflater.getClass();
        if (this.readingListMode != ReadingListMode.DEFAULT) {
            return;
        }
        menuInflater.inflate(R.menu.menu_reading_list, menu);
        if (this.showOverflowMenu) {
            menuInflater.inflate(R.menu.menu_reading_list_item, menu);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_reading_list, viewGroup, false);
        int i2 = R.id.errorView;
        WikiErrorView wikiErrorView = (WikiErrorView) Room.findChildViewById(inflate, R.id.errorView);
        if (wikiErrorView != null) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) inflate;
            i2 = R.id.progressBar;
            LinearProgressIndicator linearProgressIndicator = (LinearProgressIndicator) Room.findChildViewById(inflate, R.id.progressBar);
            if (linearProgressIndicator != null) {
                i2 = R.id.reading_list_app_bar;
                AppBarLayout appBarLayout = (AppBarLayout) Room.findChildViewById(inflate, R.id.reading_list_app_bar);
                if (appBarLayout != null) {
                    i2 = R.id.reading_list_empty_text;
                    TextView textView = (TextView) Room.findChildViewById(inflate, R.id.reading_list_empty_text);
                    if (textView != null) {
                        i2 = R.id.reading_list_header;
                        ReadingListHeaderView readingListHeaderView = (ReadingListHeaderView) Room.findChildViewById(inflate, R.id.reading_list_header);
                        if (readingListHeaderView != null) {
                            i2 = R.id.reading_list_recycler_view;
                            RecyclerView recyclerView = (RecyclerView) Room.findChildViewById(inflate, R.id.reading_list_recycler_view);
                            if (recyclerView != null) {
                                i2 = R.id.reading_list_swipe_refresh;
                                WikiSwipeRefreshLayout wikiSwipeRefreshLayout = (WikiSwipeRefreshLayout) Room.findChildViewById(inflate, R.id.reading_list_swipe_refresh);
                                if (wikiSwipeRefreshLayout != null) {
                                    i2 = R.id.reading_list_toolbar;
                                    MaterialToolbar materialToolbar = (MaterialToolbar) Room.findChildViewById(inflate, R.id.reading_list_toolbar);
                                    if (materialToolbar != null) {
                                        i2 = R.id.reading_list_toolbar_container;
                                        CollapsingToolbarLayout collapsingToolbarLayout = (CollapsingToolbarLayout) Room.findChildViewById(inflate, R.id.reading_list_toolbar_container);
                                        if (collapsingToolbarLayout != null) {
                                            i2 = R.id.search_empty_view;
                                            SearchEmptyView searchEmptyView = (SearchEmptyView) Room.findChildViewById(inflate, R.id.search_empty_view);
                                            if (searchEmptyView != null) {
                                                this._binding = new ActivityLoginBinding(coordinatorLayout, wikiErrorView, linearProgressIndicator, appBarLayout, textView, readingListHeaderView, recyclerView, wikiSwipeRefreshLayout, materialToolbar, collapsingToolbarLayout, searchEmptyView);
                                                AppCompatActivity requireActivity = requireActivity();
                                                ActivityLoginBinding activityLoginBinding = this._binding;
                                                activityLoginBinding.getClass();
                                                requireActivity.setSupportActionBar((MaterialToolbar) activityLoginBinding.toolbar);
                                                ContextsKt supportActionBar = requireActivity().getSupportActionBar();
                                                supportActionBar.getClass();
                                                boolean z = true;
                                                supportActionBar.setDisplayHomeAsUpEnabled(true);
                                                ContextsKt supportActionBar2 = requireActivity().getSupportActionBar();
                                                supportActionBar2.getClass();
                                                supportActionBar2.setTitle("");
                                                AppCompatActivity requireActivity2 = requireActivity();
                                                ActivityLoginBinding activityLoginBinding2 = this._binding;
                                                activityLoginBinding2.getClass();
                                                DeviceUtil.updateStatusBarTheme(requireActivity2, (MaterialToolbar) activityLoginBinding2.toolbar, true);
                                                ReadingListMode readingListMode = (ReadingListMode) requireArguments().getSerializable("readingListMode");
                                                if (readingListMode == null) {
                                                    readingListMode = ReadingListMode.DEFAULT;
                                                }
                                                this.readingListMode = readingListMode;
                                                this.readingListId = requireArguments().getLong("readingListId", -1L);
                                                this.invokeSource = (Constants.InvokeSource) requireArguments().getSerializable("invokeSource");
                                                SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = new SwipeableItemTouchHelperCallback(requireContext());
                                                this.touchCallback = swipeableItemTouchHelperCallback;
                                                ItemTouchHelper itemTouchHelper = new ItemTouchHelper(swipeableItemTouchHelperCallback);
                                                ActivityLoginBinding activityLoginBinding3 = this._binding;
                                                activityLoginBinding3.getClass();
                                                itemTouchHelper.attachToRecyclerView((RecyclerView) activityLoginBinding3.loginUsernameText);
                                                requireActivity().addMenuProvider(this, getViewLifecycleOwner(), Lifecycle$State.RESUMED);
                                                ActivityLoginBinding activityLoginBinding4 = this._binding;
                                                activityLoginBinding4.getClass();
                                                ((AppBarLayout) activityLoginBinding4.footerContainer).addOnOffsetChangedListener(this.appBarListener);
                                                ActivityLoginBinding activityLoginBinding5 = this._binding;
                                                activityLoginBinding5.getClass();
                                                ((CollapsingToolbarLayout) activityLoginBinding5.loginCreateAccountButton).setCollapsedTitleTextColor(Cache.Companion.getThemedColor(requireContext(), R.attr.primary_color));
                                                ActivityLoginBinding activityLoginBinding6 = this._binding;
                                                activityLoginBinding6.getClass();
                                                ((CollapsingToolbarLayout) activityLoginBinding6.loginCreateAccountButton).setStatusBarScrimColor(Cache.Companion.getThemedColor(requireContext(), R.attr.paper_color));
                                                ReadingListItemView readingListItemView = new ReadingListItemView(requireContext(), 0);
                                                this.headerView = readingListItemView;
                                                readingListItemView.setCallback(new HeaderCallback(this, i));
                                                ReadingListItemView readingListItemView2 = this.headerView;
                                                if (readingListItemView2 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                    throw null;
                                                }
                                                readingListItemView2.setClickable(false);
                                                ReadingListItemView readingListItemView3 = this.headerView;
                                                if (readingListItemView3 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                    throw null;
                                                }
                                                readingListItemView3.setThumbnailVisible(false);
                                                ReadingListItemView readingListItemView4 = this.headerView;
                                                if (readingListItemView4 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                    throw null;
                                                }
                                                readingListItemView4.setTitleTextAppearance(R.style.H2);
                                                ReadingListItemView readingListItemView5 = this.headerView;
                                                if (readingListItemView5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                    throw null;
                                                }
                                                readingListItemView5.setOverflowViewVisibility(true);
                                                ReadingListItemView readingListItemView6 = this.headerView;
                                                if (readingListItemView6 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                    throw null;
                                                }
                                                readingListItemView6.setMode(this.readingListMode);
                                                if (this.readingListMode == ReadingListMode.PREVIEW) {
                                                    ReadingListItemView readingListItemView7 = this.headerView;
                                                    if (readingListItemView7 == null) {
                                                        Intrinsics.throwUninitializedPropertyAccessException("headerView");
                                                        throw null;
                                                    }
                                                    readingListItemView7.setSaveClickListener(new ReadingListFragment$$ExternalSyntheticLambda1(this, objArr3 == true ? 1 : 0));
                                                } else {
                                                    Prefs prefs = Prefs.INSTANCE;
                                                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                                                    if (!ViewSizeResolver$CC.m(Jsoup.getInstance(), 0, ViewSizeResolver$CC.m(new Object[0], 0, Jsoup.getInstance().getResources(), R.string.preference_key_reading_lists_share_tooltip_shown), false)) {
                                                        MainFragment$$ExternalSyntheticLambda5 mainFragment$$ExternalSyntheticLambda5 = new MainFragment$$ExternalSyntheticLambda5(12, this);
                                                        if (this.exclusiveTooltipRunnable == null) {
                                                            this.exclusiveTooltipRunnable = mainFragment$$ExternalSyntheticLambda5;
                                                            ActivityLoginBinding activityLoginBinding7 = this._binding;
                                                            activityLoginBinding7.getClass();
                                                            ((WikiSwipeRefreshLayout) activityLoginBinding7.loginButton).postDelayed(new Processor$$ExternalSyntheticLambda2(27, this, mainFragment$$ExternalSyntheticLambda5), 500L);
                                                        }
                                                    }
                                                }
                                                ActivityLoginBinding activityLoginBinding8 = this._binding;
                                                activityLoginBinding8.getClass();
                                                RecyclerView recyclerView2 = (RecyclerView) activityLoginBinding8.loginUsernameText;
                                                requireContext();
                                                recyclerView2.setLayoutManager(new LinearLayoutManager(1));
                                                ActivityLoginBinding activityLoginBinding9 = this._binding;
                                                activityLoginBinding9.getClass();
                                                ((RecyclerView) activityLoginBinding9.loginUsernameText).setAdapter(this.adapter);
                                                ActivityLoginBinding activityLoginBinding10 = this._binding;
                                                activityLoginBinding10.getClass();
                                                DefaultItemAnimator defaultItemAnimator = (DefaultItemAnimator) ((RecyclerView) activityLoginBinding10.loginUsernameText).getItemAnimator();
                                                defaultItemAnimator.getClass();
                                                defaultItemAnimator.mSupportsChangeAnimations = false;
                                                ActivityLoginBinding activityLoginBinding11 = this._binding;
                                                activityLoginBinding11.getClass();
                                                ((RecyclerView) activityLoginBinding11.loginUsernameText).addItemDecoration(new DrawableItemDecoration(requireContext(), z, (boolean) (objArr2 == true ? 1 : 0), 16));
                                                if (!isRecommendedList()) {
                                                    ActivityLoginBinding activityLoginBinding12 = this._binding;
                                                    activityLoginBinding12.getClass();
                                                    ((WikiSwipeRefreshLayout) activityLoginBinding12.loginButton).setOnRefreshListener(new ReadingListFragment$$ExternalSyntheticLambda3(this, objArr == true ? 1 : 0));
                                                    if (PrefsIoUtil.getConfig().getDisableReadingListSync()) {
                                                        ActivityLoginBinding activityLoginBinding13 = this._binding;
                                                        activityLoginBinding13.getClass();
                                                        ((WikiSwipeRefreshLayout) activityLoginBinding13.loginButton).setEnabled(false);
                                                    }
                                                }
                                                if (isRecommendedList()) {
                                                    Constants.InvokeSource invokeSource = this.invokeSource;
                                                    WikiGamesEvent.submit$default("impression", "rrl_discover", null, null, null, null, null, invokeSource != null ? invokeSource.getValue() : null, 380);
                                                }
                                                ActivityLoginBinding activityLoginBinding14 = this._binding;
                                                activityLoginBinding14.getClass();
                                                CoordinatorLayout coordinatorLayout2 = (CoordinatorLayout) activityLoginBinding14.captchaContainer;
                                                coordinatorLayout2.getClass();
                                                return coordinatorLayout2;
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
        return null;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onDeleteItem(long j) {
        ReadingList readingList;
        List listOf;
        ReadingListPage pageById = getPageById(j);
        if (pageById == null || (readingList = this.readingList) == null) {
            return;
        }
        String str = this.currentSearchQuery;
        if (str == null || str.length() == 0) {
            listOf = Room.listOf(readingList);
        } else {
            List list = ReadingListBehaviorsUtil.allReadingLists;
            listOf = ReadingListBehaviorsUtil.getListsContainPage(pageById);
        }
        List list2 = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.deletePages(requireActivity(), listOf, pageById, new ReadingListFragment$$ExternalSyntheticLambda3(this, 1), new ReadingListFragment$$ExternalSyntheticLambda3(this, 2));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        AlertDialog alertDialog = this.previewSaveDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        ((RecyclerView) activityLoginBinding.loginUsernameText).setAdapter(null);
        ActivityLoginBinding activityLoginBinding2 = this._binding;
        activityLoginBinding2.getClass();
        ((AppBarLayout) activityLoginBinding2.footerContainer).removeOnOffsetChangedListener(this.appBarListener);
        this._binding = null;
        this.mCalled = true;
    }

    @Override // androidx.core.view.MenuProvider
    public final boolean onMenuItemSelected(MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_search_lists) {
            requireActivity().startSupportActionMode(this.searchActionModeCallback);
            return true;
        }
        int i = 0;
        if (itemId == R.id.menu_sort_by_name) {
            setSortMode(0, 1);
            return true;
        }
        int i2 = 3;
        if (itemId == R.id.menu_sort_by_recent) {
            setSortMode(3, 2);
            return true;
        }
        if (itemId == R.id.menu_reading_list_rename) {
            List list = ReadingListBehaviorsUtil.allReadingLists;
            ReadingListBehaviorsUtil.renameReadingList(requireActivity(), this.readingList, new ReadingListFragment$$ExternalSyntheticLambda3(this, i2));
            return true;
        }
        if (itemId == R.id.menu_reading_list_delete) {
            ReadingList readingList = this.readingList;
            if (readingList != null) {
                List list2 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.deleteReadingList(requireActivity(), readingList, true, new ReadingListFragment$$ExternalSyntheticLambda7(this, readingList, i));
                return true;
            }
        } else if (itemId == R.id.menu_reading_list_save_all_offline) {
            ReadingList readingList2 = this.readingList;
            if (readingList2 != null) {
                List list3 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.savePagesForOffline(requireActivity(), readingList2.pages, new ReadingListFragment$$ExternalSyntheticLambda3(this, 5));
                return true;
            }
        } else if (itemId == R.id.menu_reading_list_remove_all_offline) {
            ReadingList readingList3 = this.readingList;
            if (readingList3 != null) {
                List list4 = ReadingListBehaviorsUtil.allReadingLists;
                ReadingListBehaviorsUtil.removePagesFromOffline(requireActivity(), readingList3.pages, new ReadingListFragment$$ExternalSyntheticLambda3(this, 6));
                return true;
            }
        } else if (itemId == R.id.menu_reading_list_share) {
            ReadingList readingList4 = this.readingList;
            if (readingList4 != null) {
                AppCompatActivity requireActivity = requireActivity();
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(requireActivity), new ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(requireActivity, 0), null, new ReadingListsShareHelper$shareReadingList$2(readingList4, requireActivity, null), 2);
                return true;
            }
        } else {
            if (itemId != R.id.menu_reading_list_export) {
                if (itemId != R.id.menu_reading_list_select) {
                    return false;
                }
                beginMultiSelect$1();
                return true;
            }
            ReadingList readingList5 = this.readingList;
            if (readingList5 != null) {
                ReadingListsReceiveHelper.INSTANCE$1.exportLists((BaseActivity) requireActivity(), Room.listOf(readingList5));
            }
        }
        return true;
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onMoveItemToOther(long j) {
        ReadingListPage pageById = getPageById(j);
        if (pageById == null) {
            return;
        }
        FragmentManagerImpl childFragmentManager = getChildFragmentManager();
        childFragmentManager.getClass();
        long j2 = this.readingListId;
        WikiSite wikiSite = pageById.wiki;
        String str = pageById.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        PageTitle pageTitle = new PageTitle(pageById.apiTitle, wikiSite, pageById.thumbUrl, pageById.description, pageById.displayTitle);
        Constants.InvokeSource invokeSource = Constants.InvokeSource.READING_LIST_ACTIVITY;
        invokeSource.getClass();
        List listOf = Room.listOf(pageTitle);
        MoveToReadingListDialog moveToReadingListDialog = new MoveToReadingListDialog();
        moveToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(listOf)), new Pair("invokeSource", invokeSource), new Pair("sourceReadingListId", Long.valueOf(j2)), new Pair("showDefaultList", Boolean.TRUE)));
        moveToReadingListDialog.dismissListener = null;
        Okio__OkioKt.show(childFragmentManager, moveToReadingListDialog);
    }

    @Override // androidx.core.view.MenuProvider
    public final void onPrepareMenu(Menu menu) {
        menu.getClass();
        if (this.readingListMode != ReadingListMode.DEFAULT) {
            return;
        }
        MenuItem findItem = menu.findItem(R.id.menu_sort_by_name);
        MenuItem findItem2 = menu.findItem(R.id.menu_sort_by_recent);
        Prefs prefs = Prefs.INSTANCE;
        int i = PrefsIoUtil.getInt(R.string.preference_key_reading_list_page_sort_mode, 0);
        findItem.setTitle(i == 0 ? R.string.reading_list_sort_by_name_desc : R.string.reading_list_sort_by_name);
        findItem2.setTitle(i == 3 ? R.string.reading_list_sort_by_recent_desc : R.string.reading_list_sort_by_recent);
        MenuItem findItem3 = menu.findItem(R.id.menu_search_lists);
        MenuItem findItem4 = menu.findItem(R.id.menu_sort_options);
        ColorStateList colorStateList = this.toolbarExpanded ? FileUtil.getColorStateList(requireContext(), android.R.color.white) : Cache.Companion.getThemedColorStateList(requireContext(), R.attr.primary_color);
        ExceptionsKt.setIconTintList(findItem3, colorStateList);
        ExceptionsKt.setIconTintList(findItem4, colorStateList);
        ReadingList readingList = this.readingList;
        if (readingList == null || !readingList.isDefault()) {
            return;
        }
        MenuItem findItem5 = menu.findItem(R.id.menu_reading_list_rename);
        if (findItem5 != null) {
            findItem5.setVisible(false);
        }
        MenuItem findItem6 = menu.findItem(R.id.menu_reading_list_delete);
        if (findItem6 != null) {
            findItem6.setVisible(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        ArrayList arrayList;
        this.mCalled = true;
        updateReadingListData();
        Context requireContext = requireContext();
        ReadingList readingList = this.readingList;
        int size = (readingList == null || (arrayList = readingList.pages) == null) ? 0 : arrayList.size();
        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
        EventPlatformClient.submit(new BreadCrumbLogEvent(WikiGamesEvent.getReadableScreenName(requireContext, null), Animation.CC.m(size, "ReadingList.ListItemsCount:", ".shown")));
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onSelectItem(long j) {
        ReadingListPage pageById = getPageById(j);
        if (pageById == null) {
            return;
        }
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            if (!(actionMode != null && "multiSelectActionMode".equals(actionMode.mTag))) {
                return;
            }
        }
        beginMultiSelect$1();
        toggleSelectPage(pageById);
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onShareItem(long j) {
        ReadingListPage pageById = getPageById(j);
        if (pageById == null) {
            return;
        }
        Context requireContext = requireContext();
        WikiSite wikiSite = pageById.wiki;
        String str = pageById.lang;
        wikiSite.getClass();
        str.getClass();
        wikiSite.languageCode = str;
        ShareUtil.shareText$default(requireContext, new PageTitle(pageById.apiTitle, wikiSite, pageById.thumbUrl, pageById.description, pageById.displayTitle));
    }

    @Override // org.wikipedia.readinglist.ReadingListItemActionsDialog.Callback
    public final void onToggleItemOffline(long j) {
        ReadingListPage pageById = getPageById(j);
        if (pageById == null) {
            return;
        }
        List list = ReadingListBehaviorsUtil.allReadingLists;
        ReadingListBehaviorsUtil.togglePageOffline(requireActivity(), pageById, new ReadingListFragment$$ExternalSyntheticLambda3(this, 4));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ReadingListFragment$onViewCreated$1(this, null, 0), 3);
    }

    public final void previewSaveDialog() {
        ReadingList readingList = this.readingList;
        if (readingList != null) {
            ReadingListPreviewSaveDialogView readingListPreviewSaveDialogView = new ReadingListPreviewSaveDialogView(requireContext());
            readingListPreviewSaveDialogView.setReadingListMode(this.readingListMode);
            ArrayList mutableList = CollectionsKt.toMutableList((Collection) readingList.pages);
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            String string = getString(R.string.reading_list_name_sample);
            string.getClass();
            ref$ObjectRef.element = string;
            OkHttpCall.AnonymousClass1 anonymousClass1 = new OkHttpCall.AnonymousClass1(20, this, ref$ObjectRef);
            readingListPreviewSaveDialogView.readingList = readingList;
            readingListPreviewSaveDialogView.savedReadingListPages = mutableList;
            readingListPreviewSaveDialogView.callback = anonymousClass1;
            String string2 = readingListPreviewSaveDialogView.getContext().getString(readingListPreviewSaveDialogView.readingListMode == ReadingListMode.PREVIEW ? R.string.reading_lists_preview_header_title : R.string.recommended_reading_list_title);
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            String str = string2 + " " + DateUtil.getDateStringWithSkeletonPattern("MM/dd/yyyy HH:mm", new Date());
            MultipartBody.Builder builder = readingListPreviewSaveDialogView.binding;
            EditText editText = ((TextInputLayout) builder.type).getEditText();
            if (editText != null) {
                editText.setText(str);
            }
            readingListPreviewSaveDialogView.validateTitleAndList();
            ((RecyclerView) builder.parts).setAdapter(new DiffUtil$DiffLinesAdapter(8, readingListPreviewSaveDialogView));
            MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireContext(), 0);
            materialAlertDialogBuilder.setPositiveButton(R.string.reading_lists_preview_save_dialog_save, new ReadingListFragment$$ExternalSyntheticLambda9(this, readingList, mutableList, ref$ObjectRef, 0));
            materialAlertDialogBuilder.setNegativeButton(R.string.reading_lists_preview_save_dialog_cancel, (DialogInterface.OnClickListener) null);
            AlertDialog create = materialAlertDialogBuilder.create();
            this.previewSaveDialog = create;
            AlertController alertController = create.mAlert;
            alertController.mView = readingListPreviewSaveDialogView;
            alertController.mViewSpacingSpecified = false;
            create.show();
        }
    }

    public final void requestPermissionAndScheduleRecommendedReadingNotification$1() {
        if (Build.VERSION.SDK_INT < 33) {
            RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(requireActivity());
            Prefs prefs = Prefs.INSTANCE;
            Prefs.setRecommendedReadingListNotificationEnabled(true);
            update(this.readingList);
            return;
        }
        if (FileUtil.checkSelfPermission(requireActivity(), "android.permission.POST_NOTIFICATIONS") != 0) {
            ((ReadingListActivity) requireActivity()).requestPermissionLauncher.launch("android.permission.POST_NOTIFICATIONS", null);
            return;
        }
        RecommendedReadingListSourceScreenKt.scheduleRecommendedReadingListNotification(requireActivity());
        Prefs prefs2 = Prefs.INSTANCE;
        Prefs.setRecommendedReadingListNotificationEnabled(true);
        update(this.readingList);
    }

    public final void setSearchQuery$1(String str) {
        ReadingList readingList = this.readingList;
        if (readingList != null) {
            this.currentSearchQuery = str;
            Continuation continuation = null;
            if (str == null || str.length() == 0) {
                this.displayedLists.clear();
                this.displayedLists.addAll(readingList.pages);
                this.adapter.notifyDataSetChanged();
                updateEmptyState(str);
            } else {
                List list = ReadingListBehaviorsUtil.allReadingLists;
                AwaitKt.launch$default(ViewModelKt.getLifecycleScope(this), ReadingListBehaviorsUtil.exceptionHandler, null, new PageActivity$onCreate$1$1$1(str, new TextLinkScope$$ExternalSyntheticLambda3(11, this, str), continuation, 24), 2);
            }
            SwipeableItemTouchHelperCallback swipeableItemTouchHelperCallback = this.touchCallback;
            if (swipeableItemTouchHelperCallback != null) {
                swipeableItemTouchHelperCallback.swipeableEnabled = str == null || str.length() == 0;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("touchCallback");
                throw null;
            }
        }
    }

    public final void setSortMode(int i, int i2) {
        Prefs prefs = Prefs.INSTANCE;
        if (PrefsIoUtil.getInt(R.string.preference_key_reading_list_page_sort_mode, 0) == i) {
            i = i2;
        }
        PrefsIoUtil.setInt(R.string.preference_key_reading_list_page_sort_mode, i);
        requireActivity().invalidateOptionsMenu();
        update(this.readingList);
    }

    public final void setStatusBarActionMode(boolean z) {
        AppCompatActivity requireActivity = requireActivity();
        ActivityLoginBinding activityLoginBinding = this._binding;
        activityLoginBinding.getClass();
        int i = 0;
        DeviceUtil.updateStatusBarTheme(requireActivity, (MaterialToolbar) activityLoginBinding.toolbar, this.toolbarExpanded && !z);
        ReadingListActivity readingListActivity = (ReadingListActivity) requireActivity();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!readingListActivity.getTheme().resolveAttribute(R.attr.paper_color, typedValue, true)) {
                typedValue = null;
            }
            if (typedValue == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969831");
                return;
            }
            i = typedValue.data;
        }
        readingListActivity.setStatusBarColor(i);
    }

    public final void toggleSelectPage(ReadingListPage readingListPage) {
        if (readingListPage != null) {
            readingListPage.selected = !readingListPage.selected;
            if (getSelectedPageCount() == 0) {
                finishActionMode$2();
            } else {
                ActionMode actionMode = this.actionMode;
                if (actionMode != null) {
                    actionMode.setTitle(getResources().getQuantityString(R.plurals.multi_items_selected, getSelectedPageCount(), Integer.valueOf(getSelectedPageCount())));
                }
            }
            this.adapter.notifyDataSetChanged();
        }
    }

    public final void update(ReadingList readingList) {
        if (readingList != null) {
            ArrayList arrayList = readingList.pages;
            ActivityLoginBinding activityLoginBinding = this._binding;
            activityLoginBinding.getClass();
            int i = 8;
            ((TextView) activityLoginBinding.login2faText).setVisibility(arrayList.isEmpty() ? 0 : 8);
            ReadingListItemView readingListItemView = this.headerView;
            if (readingListItemView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("headerView");
                throw null;
            }
            ReadingListItemView.Description description = ReadingListItemView.Description.DETAIL;
            int i2 = ReadingListItemView.$r8$clinit;
            readingListItemView.setReadingList(readingList, description, false, false);
            ReadingListItemView readingListItemView2 = this.headerView;
            if (readingListItemView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("headerView");
                throw null;
            }
            readingListItemView2.setMode(this.readingListMode);
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            ((ReadingListHeaderView) activityLoginBinding2.loginPasswordInput).setReadingList(readingList);
            Prefs prefs = Prefs.INSTANCE;
            int i3 = PrefsIoUtil.getInt(R.string.preference_key_reading_list_page_sort_mode, 0);
            if (i3 == 0) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new SemanticsSortKt$$ExternalSyntheticLambda0(i, new ForYouCardKt$$ExternalSyntheticLambda17(14)));
            } else if (i3 == 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new SemanticsSortKt$$ExternalSyntheticLambda0(9, new ForYouCardKt$$ExternalSyntheticLambda17(19)));
            } else if (i3 == 2) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new SemanticsSortKt$$ExternalSyntheticLambda0(10, new ForYouCardKt$$ExternalSyntheticLambda17(20)));
            } else if (i3 == 3) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new SemanticsSortKt$$ExternalSyntheticLambda0(11, new ForYouCardKt$$ExternalSyntheticLambda17(21)));
            }
            setSearchQuery$1(this.currentSearchQuery);
            if (!this.toolbarExpanded) {
                ActivityLoginBinding activityLoginBinding3 = this._binding;
                activityLoginBinding3.getClass();
                ((CollapsingToolbarLayout) activityLoginBinding3.loginCreateAccountButton).setTitle(readingList.getTitle());
            }
            if (this.articleLimitMessageShown || arrayList.size() < 5000) {
                return;
            }
            String string = getString(R.string.reading_list_article_limit_message, readingList.getTitle(), 5000);
            string.getClass();
            ShareUtil.makeSnackbar$default(requireActivity(), string, 0, 12).show();
            this.articleLimitMessageShown = true;
        }
    }

    public final void updateEmptyState(String str) {
        if (str == null || str.length() == 0) {
            ActivityLoginBinding activityLoginBinding = this._binding;
            activityLoginBinding.getClass();
            ((SearchEmptyView) activityLoginBinding.loginPrimaryContainer).setVisibility(8);
            ActivityLoginBinding activityLoginBinding2 = this._binding;
            activityLoginBinding2.getClass();
            ((RecyclerView) activityLoginBinding2.loginUsernameText).setVisibility(0);
            ActivityLoginBinding activityLoginBinding3 = this._binding;
            activityLoginBinding3.getClass();
            ((TextView) activityLoginBinding3.login2faText).setVisibility(this.displayedLists.isEmpty() ? 0 : 8);
            return;
        }
        ActivityLoginBinding activityLoginBinding4 = this._binding;
        activityLoginBinding4.getClass();
        ((RecyclerView) activityLoginBinding4.loginUsernameText).setVisibility(this.displayedLists.isEmpty() ? 8 : 0);
        ActivityLoginBinding activityLoginBinding5 = this._binding;
        activityLoginBinding5.getClass();
        ((SearchEmptyView) activityLoginBinding5.loginPrimaryContainer).setVisibility(this.displayedLists.isEmpty() ? 0 : 8);
        ActivityLoginBinding activityLoginBinding6 = this._binding;
        activityLoginBinding6.getClass();
        ((TextView) activityLoginBinding6.login2faText).setVisibility(8);
    }

    public final void updateReadingListData() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.readingListMode.ordinal()];
        Continuation continuation = null;
        if (i == 1) {
            ReadingListFragmentViewModel viewModel = getViewModel();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 4), null, new TalkTopicViewModel$undo$2(this.readingListId, viewModel, continuation, 5), 2);
            return;
        }
        if (i == 2) {
            ReadingList readingList = this.readingList;
            if (readingList != null) {
                update(readingList);
                return;
            }
            String string = requireContext().getString(R.string.reading_lists_preview_header_title);
            string.getClass();
            ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
            Context requireContext = requireContext();
            String dateStringWithSkeletonPattern = DateUtil.getDateStringWithSkeletonPattern(DateFormat.is24HourFormat(requireContext) ? "HH:mm, MMM d, yyyy" : "hh:mm a, MMM d, yyyy", new Date());
            ReadingListFragmentViewModel viewModel2 = getViewModel();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel2), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel2, 0), null, new RealImageLoader$execute$2(string, dateStringWithSkeletonPattern, viewModel2, continuation, 26), 2);
            return;
        }
        if (i != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return;
        }
        Prefs prefs = Prefs.INSTANCE;
        if (!Prefs.isRecommendedReadingListEnabled()) {
            requireActivity().finish();
            return;
        }
        if (this.readingList == null || Prefs.isNewRecommendedReadingListGenerated()) {
            ReadingListFragmentViewModel viewModel3 = getViewModel();
            AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel3), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel3, 2), null, new SyntaxHighlighter.AnonymousClass2(9, viewModel3, continuation), 2);
        } else {
            update(this.readingList);
            PrefsIoUtil.setBoolean(R.string.preference_key_recommended_reading_list_new_list_generated, false);
            FlowEventBus.post(new NewRecommendedReadingListEvent());
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class HeaderCallback implements ReadingListItemView.Callback, PageItemView.Callback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ReadingListFragment this$0;

        public /* synthetic */ HeaderCallback(ReadingListFragment readingListFragment, int i) {
            this.$r8$classId = i;
            this.this$0 = readingListFragment;
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onAbout() {
            switch (this.$r8$classId) {
                case 0:
                    ReadingListFragment readingListFragment = this.this$0;
                    if (readingListFragment.isRecommendedList()) {
                        WikiGamesEvent.submit$default("about_click", "rrl_discover_menu", null, null, null, null, null, null, 508);
                    }
                    Context requireContext = readingListFragment.requireContext();
                    String string = readingListFragment.getString(R.string.recommended_reading_list_url);
                    string.getClass();
                    Uri parse = Uri.parse(string);
                    parse.getClass();
                    UriUtil.visitInExternalBrowser(requireContext, parse);
                    break;
            }
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
                ReadingListFragment readingListFragment = this.this$0;
                if (saving) {
                    Toast.makeText(readingListFragment.getContext(), R.string.reading_list_article_save_in_progress, 1).show();
                } else {
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.toggleOffline(readingListFragment.requireActivity(), readingListPage, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 14));
                }
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onChecked(ReadingList readingList) {
            switch (this.$r8$classId) {
                case 0:
                    readingList.getClass();
                    break;
                default:
                    readingList.getClass();
                    break;
            }
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public void onClick(Object obj) {
            ReadingListPage readingListPage = (ReadingListPage) obj;
            ReadingListFragment readingListFragment = this.this$0;
            ActionMode actionMode = readingListFragment.actionMode;
            if (actionMode != null && "multiSelectActionMode".equals(actionMode.mTag)) {
                readingListFragment.toggleSelectPage(readingListPage);
                return;
            }
            if (readingListPage != null) {
                WikiSite wikiSite = readingListPage.wiki;
                String str = readingListPage.lang;
                wikiSite.getClass();
                str.getClass();
                wikiSite.languageCode = str;
                HistoryEntry historyEntry = new HistoryEntry(readingListFragment.isRecommendedList() ? 44 : 11, new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle));
                List list = ReadingListBehaviorsUtil.allReadingLists;
                AwaitKt.launch$default(AwaitKt.MainScope(), ReadingListBehaviorsUtil.exceptionHandler, null, new SyntaxHighlighter.AnonymousClass2(8, readingListPage, (Continuation) null), 2);
                if (readingListFragment.isRecommendedList()) {
                    WikiGamesEvent.submit$default("reading_list_click", "rrl_discover", null, null, null, null, null, null, 508);
                }
                int i = PageActivity.$r8$clinit;
                readingListFragment.startActivity(LoginClient.newIntentForCurrentTab(readingListFragment.requireContext(), historyEntry, historyEntry.getTitle(), true), null);
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onCustomize() {
            switch (this.$r8$classId) {
                case 0:
                    WikiGamesEvent.submit$default("customize_click", "rrl_discover_menu", null, null, null, null, null, null, 508);
                    int i = RecommendedReadingListSettingsActivity.$r8$clinit;
                    ReadingListFragment readingListFragment = this.this$0;
                    readingListFragment.startActivity(new Intent(readingListFragment.requireContext(), (Class<?>) RecommendedReadingListSettingsActivity.class), null);
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onDelete(ReadingList readingList) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            readingList.getClass();
            switch (i) {
                case 0:
                    ReadingList readingList2 = readingListFragment.readingList;
                    if (readingList2 != null) {
                        List list = ReadingListBehaviorsUtil.allReadingLists;
                        ReadingListBehaviorsUtil.deleteReadingList(readingListFragment.requireActivity(), readingList2, true, new ReadingListFragment$$ExternalSyntheticLambda7(readingListFragment, readingList2, 0));
                        break;
                    }
                    break;
                default:
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.deleteReadingList(readingListFragment.requireActivity(), readingList, true, new ReadingListFragment$$ExternalSyntheticLambda7(readingListFragment, readingList, 2));
                    break;
            }
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public void onListChipClick(ReadingList readingList) {
            int i = ReadingListActivity.$r8$clinit;
            ReadingListFragment readingListFragment = this.this$0;
            readingListFragment.startActivity(NodeUtils.newIntent(readingListFragment.requireContext(), readingList), null);
        }

        @Override // org.wikipedia.views.PageItemView.Callback
        public boolean onLongClick(Object obj) {
            List listOf;
            ReadingListPage readingListPage = (ReadingListPage) obj;
            ReadingListFragment readingListFragment = this.this$0;
            if (readingListFragment.readingListMode != ReadingListMode.DEFAULT || readingListPage == null) {
                return false;
            }
            FragmentManagerImpl childFragmentManager = readingListFragment.getChildFragmentManager();
            childFragmentManager.getClass();
            String str = readingListFragment.currentSearchQuery;
            if (str == null || str.length() == 0) {
                ReadingList readingList = readingListFragment.readingList;
                readingList.getClass();
                listOf = Room.listOf(readingList);
            } else {
                List list = ReadingListBehaviorsUtil.allReadingLists;
                listOf = ReadingListBehaviorsUtil.getListsContainPage(readingListPage);
            }
            Okio__OkioKt.show(childFragmentManager, NodeTraversor.newInstance(readingListPage.id, listOf, readingListFragment.actionMode != null));
            return true;
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onNotification() {
            switch (this.$r8$classId) {
                case 0:
                    WikiGamesEvent.submit$default("notifications_click", "rrl_discover", null, null, null, null, null, null, 508);
                    Prefs prefs = Prefs.INSTANCE;
                    boolean isRecommendedReadingListNotificationEnabled = Prefs.isRecommendedReadingListNotificationEnabled();
                    final int i = 1;
                    final ReadingListFragment readingListFragment = this.this$0;
                    if (!isRecommendedReadingListNotificationEnabled) {
                        Prefs.setRecommendedReadingListNotificationEnabled(true);
                        readingListFragment.requestPermissionAndScheduleRecommendedReadingNotification$1();
                        readingListFragment.update(readingListFragment.readingList);
                        break;
                    } else {
                        final int i2 = 0;
                        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(readingListFragment.requireContext(), 0);
                        materialAlertDialogBuilder.setTitle(R.string.recommended_reading_list_settings_notifications_dialog_title);
                        materialAlertDialogBuilder.setMessage(R.string.recommended_reading_list_settings_notifications_dialog_message);
                        materialAlertDialogBuilder.setPositiveButton(R.string.recommended_reading_list_settings_notifications_dialog_negative_button, new DialogInterface.OnClickListener() { // from class: org.wikipedia.readinglist.ReadingListFragment$$ExternalSyntheticLambda14
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                int i4 = i2;
                                ReadingListFragment readingListFragment2 = readingListFragment;
                                switch (i4) {
                                    case 0:
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        if (!Prefs.isRecommendedReadingListNotificationEnabled()) {
                                            Prefs.setRecommendedReadingListNotificationEnabled(true);
                                            readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                        break;
                                    default:
                                        Prefs prefs3 = Prefs.INSTANCE;
                                        Prefs.setRecommendedReadingListNotificationEnabled(false);
                                        Context requireContext = readingListFragment2.requireContext();
                                        Object systemService = requireContext.getSystemService("alarm");
                                        systemService.getClass();
                                        Intent action = new Intent(requireContext, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                        action.getClass();
                                        ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(requireContext, 0, action, 67108864));
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                }
                            }
                        });
                        materialAlertDialogBuilder.setNegativeButton(R.string.recommended_reading_list_settings_notifications_dialog_positive_button, new DialogInterface.OnClickListener() { // from class: org.wikipedia.readinglist.ReadingListFragment$$ExternalSyntheticLambda14
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i3) {
                                int i4 = i;
                                ReadingListFragment readingListFragment2 = readingListFragment;
                                switch (i4) {
                                    case 0:
                                        Prefs prefs2 = Prefs.INSTANCE;
                                        if (!Prefs.isRecommendedReadingListNotificationEnabled()) {
                                            Prefs.setRecommendedReadingListNotificationEnabled(true);
                                            readingListFragment2.requestPermissionAndScheduleRecommendedReadingNotification$1();
                                            readingListFragment2.update(readingListFragment2.readingList);
                                            break;
                                        }
                                        break;
                                    default:
                                        Prefs prefs3 = Prefs.INSTANCE;
                                        Prefs.setRecommendedReadingListNotificationEnabled(false);
                                        Context requireContext = readingListFragment2.requireContext();
                                        Object systemService = requireContext.getSystemService("alarm");
                                        systemService.getClass();
                                        Intent action = new Intent(requireContext, (Class<?>) NotificationPollBroadcastReceiver.class).setAction("action_recommended_reading_list");
                                        action.getClass();
                                        ((AlarmManager) systemService).cancel(PendingIntent.getBroadcast(requireContext, 0, action, 67108864));
                                        readingListFragment2.update(readingListFragment2.readingList);
                                        break;
                                }
                            }
                        });
                        materialAlertDialogBuilder.show();
                        break;
                    }
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onRemoveAllOffline(ReadingList readingList) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            readingList.getClass();
            switch (i) {
                case 0:
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.removePagesFromOffline(readingListFragment.requireActivity(), readingList.pages, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 7));
                    break;
                default:
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.removePagesFromOffline(readingListFragment.requireActivity(), readingList.pages, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 11));
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onRename(ReadingList readingList) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            readingList.getClass();
            switch (i) {
                case 0:
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.renameReadingList(readingListFragment.requireActivity(), readingListFragment.readingList, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 3));
                    break;
                default:
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.renameReadingList(readingListFragment.requireActivity(), readingList, new ReadingListFragment$$ExternalSyntheticLambda7(readingListFragment, readingList, 1));
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSaveAllOffline(ReadingList readingList) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            readingList.getClass();
            switch (i) {
                case 0:
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.savePagesForOffline(readingListFragment.requireActivity(), readingList.pages, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 8));
                    break;
                default:
                    List list2 = ReadingListBehaviorsUtil.allReadingLists;
                    ReadingListBehaviorsUtil.savePagesForOffline(readingListFragment.requireActivity(), readingList.pages, new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 12));
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSaveToList(ReadingList readingList) {
            switch (this.$r8$classId) {
                case 0:
                    readingList.getClass();
                    ReadingListFragment readingListFragment = this.this$0;
                    if (readingListFragment.isRecommendedList()) {
                        WikiGamesEvent.submit$default("save_click", "rrl_discover", null, null, null, null, null, null, 508);
                    }
                    readingListFragment.previewSaveDialog();
                    break;
                default:
                    readingList.getClass();
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onSelectList(ReadingList readingList) {
            switch (this.$r8$classId) {
                case 0:
                    readingList.getClass();
                    break;
                default:
                    readingList.getClass();
                    break;
            }
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onShare(ReadingList readingList) {
            int i = this.$r8$classId;
            ReadingListFragment readingListFragment = this.this$0;
            readingList.getClass();
            switch (i) {
                case 0:
                    if (readingListFragment.isRecommendedList()) {
                        WikiGamesEvent.submit$default("share_click", "rrl_discover_menu", null, null, null, null, null, null, 508);
                    }
                    AppCompatActivity requireActivity = readingListFragment.requireActivity();
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope(requireActivity), new ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(requireActivity, 0), null, new ReadingListsShareHelper$shareReadingList$2(readingList, requireActivity, null), 2);
                    break;
                default:
                    AppCompatActivity requireActivity2 = readingListFragment.requireActivity();
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope(requireActivity2), new ReadingListsShareHelper$shareReadingList$$inlined$CoroutineExceptionHandler$1(requireActivity2, 0), null, new ReadingListsShareHelper$shareReadingList$2(readingList, requireActivity2, null), 2);
                    break;
            }
        }

        private final void onAbout$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback() {
        }

        private final void onCustomize$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback() {
        }

        private final void onNotification$org$wikipedia$readinglist$ReadingListFragment$ReadingListItemCallback() {
        }

        @Override // org.wikipedia.readinglist.ReadingListItemView.Callback
        public void onClick(ReadingList readingList) {
            switch (this.$r8$classId) {
                case 0:
                    readingList.getClass();
                    break;
                default:
                    readingList.getClass();
                    ReadingListFragment readingListFragment = this.this$0;
                    ActionMode actionMode = readingListFragment.actionMode;
                    if (actionMode != null) {
                        actionMode.finish();
                    }
                    int i = ReadingListActivity.$r8$clinit;
                    readingListFragment.startActivity(NodeUtils.newIntent(readingListFragment.requireContext(), readingList), null);
                    break;
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class MultiSelectCallback implements ActionMode.Callback {
        public static int totalEdits;
        public static int totalReverts;
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ MultiSelectCallback(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        public static final void EventRow(Context context, WikiSite wikiSite, OnThisDay.Event event, boolean z, ComposableLambdaImpl composableLambdaImpl, Function1 function1, Function2 function2, GapComposer gapComposer, int i) {
            ComposableLambdaImpl composableLambdaImpl2;
            OnThisDay.Event event2;
            Function2 function22;
            NeverEqualPolicy neverEqualPolicy;
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1;
            int i2;
            NeverEqualPolicy neverEqualPolicy2;
            Iterator it;
            GapComposer gapComposer2 = gapComposer;
            gapComposer2.startRestartGroup(322643700);
            int i3 = i | (gapComposer2.changedInstance(context) ? 4 : 2) | (gapComposer2.changedInstance(wikiSite) ? 32 : 16) | (gapComposer2.changedInstance(event) ? 256 : 128) | (gapComposer2.changed(z) ? 2048 : 1024) | (gapComposer2.changedInstance(function1) ? 131072 : 65536) | (gapComposer2.changedInstance(function2) ? 1048576 : 524288);
            if (gapComposer2.shouldExecute(i3 & 1, (i3 & 599187) != 599186)) {
                Object rememberedValue = gapComposer2.rememberedValue();
                NeverEqualPolicy neverEqualPolicy3 = Composer$Companion.Empty;
                if (rememberedValue == neverEqualPolicy3) {
                    rememberedValue = Updater.mutableStateOf$default(new DpSize(DpKt.m695DpSizeYgX7TsA(RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE)));
                    gapComposer2.updateRememberedValue(rememberedValue);
                }
                MutableState mutableState = (MutableState) rememberedValue;
                Density density = (Density) gapComposer2.consume(CompositionLocalsKt.LocalDensity);
                Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
                Modifier fillMaxWidth = SizeKt.fillMaxWidth(companion, 1.0f);
                boolean changed = gapComposer2.changed(density);
                Object rememberedValue2 = gapComposer2.rememberedValue();
                if (changed || rememberedValue2 == neverEqualPolicy3) {
                    rememberedValue2 = new OnThisDayModuleKt$$ExternalSyntheticLambda6(mutableState, density);
                    gapComposer2.updateRememberedValue(rememberedValue2);
                }
                Modifier onSizeChanged = RulerKt.onSizeChanged(fillMaxWidth, (Function1) rememberedValue2);
                BiasAlignment biasAlignment = Alignment.Companion.TopStart;
                MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                long j = gapComposer2.compositeKeyHashCode;
                int i4 = (int) (j ^ (j >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer2, onSizeChanged);
                ComposeUiNode.Companion.getClass();
                LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$12 = ComposeUiNode.Companion.SetMeasurePolicy;
                Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$13 = ComposeUiNode.Companion.SetResolvedCompositionLocals;
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope, composeUiNode$Companion$SetModifier$13);
                Integer valueOf = Integer.valueOf(i4);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$14 = ComposeUiNode.Companion.SetCompositeKeyHash;
                Updater.m327setimpl(gapComposer2, valueOf, composeUiNode$Companion$SetModifier$14);
                OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1 = ComposeUiNode.Companion.ApplyOnDeactivatedNodeAssertion;
                Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$15 = ComposeUiNode.Companion.SetModifier;
                Updater.m327setimpl(gapComposer2, materializeModifier, composeUiNode$Companion$SetModifier$15);
                Modifier matchParentSize = BoxScopeInstance.INSTANCE.matchParentSize();
                Arrangement$End$1 arrangement$End$1 = OffsetKt.Top;
                BiasAlignment.Horizontal horizontal = Alignment.Companion.Start;
                ColumnMeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, 0);
                long j2 = gapComposer2.compositeKeyHashCode;
                int i5 = (int) (j2 ^ (j2 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope2 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier2 = AbsoluteAlignment.materializeModifier(gapComposer2, matchParentSize);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy, composeUiNode$Companion$SetModifier$12);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope2, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i5, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier2, composeUiNode$Companion$SetModifier$15);
                Modifier then = SizeKt.m149width3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion, 21.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14), 1.0f).then(new LayoutWeightElement(1.0f, true));
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                long j3 = ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).borderColor;
                RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = ColorKt.RectangleShape;
                BoxKt.Box(ImageKt.m46backgroundbw27NRU(then, j3, rectangleShapeKt$RectangleShape$1), gapComposer2, 0);
                gapComposer2.end(true);
                if (z) {
                    gapComposer2.startReplaceGroup(-1981435662);
                    neverEqualPolicy = neverEqualPolicy3;
                    i2 = 0;
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12), 12.0f), RoundedCornerShapeKt.CircleShape), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, rectangleShapeKt$RectangleShape$1), gapComposer2, 0);
                    gapComposer2.end(false);
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$12;
                } else {
                    neverEqualPolicy = neverEqualPolicy3;
                    gapComposer2.startReplaceGroup(-1981144510);
                    Modifier m145size3ABfNKs = SizeKt.m145size3ABfNKs(OffsetKt.m136paddingqDBjuR0$default(companion, 16.0f, 24.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12), 11.0f);
                    RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.CircleShape;
                    Modifier m132padding3ABfNKs = OffsetKt.m132padding3ABfNKs(ImageKt.m48borderxT4_qwU(ClipKt.clip(m145size3ABfNKs, roundedCornerShape), 1.0f, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, roundedCornerShape), 3.0f);
                    MeasurePolicy maybeCachedBoxMeasurePolicy2 = BoxKt.maybeCachedBoxMeasurePolicy(biasAlignment, false);
                    long j4 = gapComposer2.compositeKeyHashCode;
                    int i6 = (int) (j4 ^ (j4 >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope3 = gapComposer2.currentCompositionLocalScope();
                    Modifier materializeModifier3 = AbsoluteAlignment.materializeModifier(gapComposer2, m132padding3ABfNKs);
                    gapComposer2.startReusableNode();
                    if (gapComposer2.inserting) {
                        gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer2.useNode();
                    }
                    composeUiNode$Companion$SetModifier$1 = composeUiNode$Companion$SetModifier$12;
                    Updater.m327setimpl(gapComposer2, maybeCachedBoxMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                    Updater.m327setimpl(gapComposer2, currentCompositionLocalScope3, composeUiNode$Companion$SetModifier$13);
                    Animation.CC.m(i6, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                    Updater.m327setimpl(gapComposer2, materializeModifier3, composeUiNode$Companion$SetModifier$15);
                    i2 = 0;
                    BoxKt.Box(ImageKt.m46backgroundbw27NRU(ClipKt.clip(SizeKt.FillWholeMaxSize, roundedCornerShape), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, rectangleShapeKt$RectangleShape$1), gapComposer2, 0);
                    gapComposer2.end(true);
                    gapComposer2.end(false);
                }
                Modifier fillMaxWidth2 = SizeKt.fillMaxWidth(companion, 1.0f);
                ColumnMeasurePolicy columnMeasurePolicy2 = ColumnKt.columnMeasurePolicy(arrangement$End$1, horizontal, gapComposer2, i2);
                long j5 = gapComposer2.compositeKeyHashCode;
                int i7 = (int) (j5 ^ (j5 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope4 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier4 = AbsoluteAlignment.materializeModifier(gapComposer2, fillMaxWidth2);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, columnMeasurePolicy2, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope4, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i7, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier4, composeUiNode$Companion$SetModifier$15);
                if (z) {
                    gapComposer2.startReplaceGroup(94268699);
                    gapComposer2.end(false);
                } else {
                    gapComposer2.startReplaceGroup(94198546);
                    OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion, 16.0f));
                    gapComposer2.end(false);
                }
                Modifier m136paddingqDBjuR0$default = OffsetKt.m136paddingqDBjuR0$default(companion, 36.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 14);
                event2 = event;
                Modifier.Companion companion2 = companion;
                String valueOf2 = String.valueOf(event2.year);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = TypographyKt.LocalTypography;
                TextKt.m308TextNvy7gAk(valueOf2, m136paddingqDBjuR0$default, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).progressiveColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleLarge, 0L, 0L, FontWeight.W500, null, 0L, 0L, null, 16777211), gapComposer2, 48, 0, 131064);
                Modifier m136paddingqDBjuR0$default2 = OffsetKt.m136paddingqDBjuR0$default(companion2, 36.0f, 8.0f, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, 12);
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                Context context2 = context;
                TextKt.m308TextNvy7gAk(DateUtil.getYearDifferenceString(event2.year, context2, wikiSite.languageCode), m136paddingqDBjuR0$default2, ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, TextStyle.m647copyp1EtxEg$default(((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).titleMedium, 0L, 0L, FontWeight.W600, null, 0L, 0L, null, 16777211), gapComposer, 48, 0, 131064);
                gapComposer2 = gapComposer;
                TextKt.m308TextNvy7gAk(event2.text, OffsetKt.m136paddingqDBjuR0$default(companion2, 36.0f, 8.0f, 16.0f, RecyclerView.DECELERATION_RATE, 8), ((WikipediaColor) gapComposer2.consume(staticProvidableCompositionLocal)).primaryColor, null, 0L, null, null, 0L, null, 0L, 0, false, 0, 0, null, ((Typography) gapComposer2.consume(staticProvidableCompositionLocal2)).bodyMedium, gapComposer, 0, 0, 131064);
                OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion2, 12.0f));
                Modifier scroll$default = ImageKt.scroll$default(companion2, ImageKt.rememberScrollState(gapComposer2), false);
                RowMeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(new Arrangement$SpacedAligned(16.0f, true, new EasingKt$$ExternalSyntheticLambda0(10)), Alignment.Companion.Top, gapComposer2, 6);
                long j6 = gapComposer2.compositeKeyHashCode;
                int i8 = (int) (j6 ^ (j6 >>> 32));
                PersistentCompositionLocalHashMap currentCompositionLocalScope5 = gapComposer2.currentCompositionLocalScope();
                Modifier materializeModifier5 = AbsoluteAlignment.materializeModifier(gapComposer2, scroll$default);
                gapComposer2.startReusableNode();
                if (gapComposer2.inserting) {
                    gapComposer2.createNode(layoutNode$Companion$Constructor$1);
                } else {
                    gapComposer2.useNode();
                }
                Updater.m327setimpl(gapComposer2, rowMeasurePolicy, composeUiNode$Companion$SetModifier$1);
                Updater.m327setimpl(gapComposer2, currentCompositionLocalScope5, composeUiNode$Companion$SetModifier$13);
                Animation.CC.m(i8, gapComposer2, composeUiNode$Companion$SetModifier$14, gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
                Updater.m327setimpl(gapComposer2, materializeModifier5, composeUiNode$Companion$SetModifier$15);
                OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion2, 20.0f));
                gapComposer2.startReplaceGroup(995298669);
                Iterator it2 = event2.pages.iterator();
                int i9 = 0;
                while (it2.hasNext()) {
                    Object next = it2.next();
                    int i10 = i9 + 1;
                    if (i9 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    PageSummary pageSummary = (PageSummary) next;
                    long j7 = ((DpSize) mutableState.getValue()).packedValue;
                    ComposableLambdaImpl rememberComposableLambda = Expect_jvmKt.rememberComposableLambda(-1409202647, new TopReadModuleKt$$ExternalSyntheticLambda2(composableLambdaImpl, i9, 2), gapComposer2);
                    boolean changedInstance = ((i3 & 3670016) == 1048576) | gapComposer2.changedInstance(pageSummary) | gapComposer2.changed(i9);
                    Object rememberedValue3 = gapComposer2.rememberedValue();
                    if (changedInstance) {
                        neverEqualPolicy2 = neverEqualPolicy;
                    } else {
                        neverEqualPolicy2 = neverEqualPolicy;
                        if (rememberedValue3 != neverEqualPolicy2) {
                            it = it2;
                            neverEqualPolicy = neverEqualPolicy2;
                            m911OnThisDayPageItemS8JMNoI(context2, j7, wikiSite, pageSummary, rememberComposableLambda, function1, (Function1) rememberedValue3, gapComposer2, (i3 & 14) | 24576 | ((i3 << 3) & 896) | (i3 & 458752));
                            companion2 = companion2;
                            i9 = i10;
                            it2 = it;
                            context2 = context;
                        }
                    }
                    it = it2;
                    rememberedValue3 = new ScrollNode$$ExternalSyntheticLambda0(function2, pageSummary, i9, 3);
                    gapComposer2.updateRememberedValue(rememberedValue3);
                    neverEqualPolicy = neverEqualPolicy2;
                    m911OnThisDayPageItemS8JMNoI(context2, j7, wikiSite, pageSummary, rememberComposableLambda, function1, (Function1) rememberedValue3, gapComposer2, (i3 & 14) | 24576 | ((i3 << 3) & 896) | (i3 & 458752));
                    companion2 = companion2;
                    i9 = i10;
                    it2 = it;
                    context2 = context;
                }
                composableLambdaImpl2 = composableLambdaImpl;
                function22 = function2;
                Modifier.Companion companion3 = companion2;
                gapComposer2.end(false);
                OffsetKt.Spacer(gapComposer2, SizeKt.m149width3ABfNKs(companion3, 16.0f));
                gapComposer2.end(true);
                OffsetKt.Spacer(gapComposer2, SizeKt.m140height3ABfNKs(companion3, 8.0f));
                gapComposer2.end(true);
                gapComposer2.end(true);
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                event2 = event;
                function22 = function2;
                gapComposer2.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new ButtonKt$$ExternalSyntheticLambda4(context, wikiSite, event2, z, composableLambdaImpl2, function1, function22, i);
            }
        }

        public static final void OnThisDayModule(WikiSite wikiSite, List list, ComposableLambdaImpl composableLambdaImpl, Function0 function0, Function0 function02, Function1 function1, Function3 function3, Function0 function03, Function0 function04, GapComposer gapComposer, int i) {
            wikiSite.getClass();
            gapComposer.startRestartGroup(398241206);
            int i2 = i | (gapComposer.changedInstance(wikiSite) ? 4 : 2) | (gapComposer.changedInstance(list) ? 32 : 16) | (gapComposer.changedInstance(function0) ? 2048 : 1024) | (gapComposer.changedInstance(function02) ? 16384 : 8192) | (gapComposer.changedInstance(function1) ? 131072 : 65536) | (gapComposer.changedInstance(function3) ? 1048576 : 524288) | (gapComposer.changedInstance(function03) ? 8388608 : 4194304) | (gapComposer.changedInstance(function04) ? 67108864 : 33554432);
            if (gapComposer.shouldExecute(i2 & 1, (38347923 & i2) != 38347922)) {
                int i3 = i2 << 9;
                ForYouCardKt.m906CommunityModuleContainerYod850M(null, wikiSite, R.string.on_this_day_card_title, R.string.explore_feed_on_this_day_subtitle, null, ((WikipediaColor) gapComposer.consume(WikipediaColorKt.LocalWikipediaColor)).backgroundColor, function0, function02, function04, Expect_jvmKt.rememberComposableLambda(-1668248728, new TopReadModuleKt$$ExternalSyntheticLambda0(list, function03, (Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext), wikiSite, function1, function3, composableLambdaImpl), gapComposer), gapComposer, (i2 & 234881024) | ((i2 << 3) & 112) | 805306368 | (3670016 & i3) | (i3 & 29360128), 17);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new HomeScreenKt$$ExternalSyntheticLambda3(wikiSite, list, composableLambdaImpl, function0, function02, function1, function3, function03, function04, i, 2);
            }
        }

        /* renamed from: OnThisDayPageItem-S8JMNoI, reason: not valid java name */
        public static final void m911OnThisDayPageItemS8JMNoI(final Context context, final long j, final WikiSite wikiSite, final PageSummary pageSummary, final ComposableLambdaImpl composableLambdaImpl, final Function1 function1, final Function1 function12, GapComposer gapComposer, final int i) {
            int i2;
            Object obj;
            gapComposer.startRestartGroup(-2067187223);
            if ((i & 6) == 0) {
                i2 = (gapComposer.changedInstance(context) ? 4 : 2) | i;
            } else {
                i2 = i;
            }
            if ((i & 48) == 0) {
                i2 |= gapComposer.changed(j) ? 32 : 16;
            }
            if ((i & 384) == 0) {
                i2 |= gapComposer.changedInstance(wikiSite) ? 256 : 128;
            }
            if ((i & 3072) == 0) {
                i2 |= gapComposer.changedInstance(pageSummary) ? 2048 : 1024;
            }
            if ((i & 24576) == 0) {
                i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 16384 : 8192;
            }
            if ((196608 & i) == 0) {
                i2 |= gapComposer.changedInstance(function1) ? 131072 : 65536;
            }
            if ((1572864 & i) == 0) {
                obj = function12;
                i2 |= gapComposer.changedInstance(obj) ? 1048576 : 524288;
            } else {
                obj = function12;
            }
            if (gapComposer.shouldExecute(i2 & 1, (599187 & i2) != 599186)) {
                RoundedCornerShape m177RoundedCornerShape0680j_4 = RoundedCornerShapeKt.m177RoundedCornerShape0680j_4(16.0f);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = WikipediaColorKt.LocalWikipediaColor;
                BorderStroke m45BorderStrokecXLIe8U = ImageKt.m45BorderStrokecXLIe8U(1.0f, ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).borderColor);
                long j2 = ((WikipediaColor) gapComposer.consume(staticProvidableCompositionLocal)).paperColor;
                Modifier m149width3ABfNKs = SizeKt.m149width3ABfNKs(Modifier.Companion.$$INSTANCE, Math.min(DpSize.m712getWidthD9Ej5fM(j) - 100.0f, 480.0f));
                boolean changedInstance = ((i2 & 458752) == 131072) | gapComposer.changedInstance(pageSummary);
                Object rememberedValue = gapComposer.rememberedValue();
                if (changedInstance || rememberedValue == Composer$Companion.Empty) {
                    rememberedValue = new TopReadModuleKt$$ExternalSyntheticLambda5(function1, pageSummary, 5);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                SurfaceKt.m298Surfaceo_FOJdg((Function0) rememberedValue, m149width3ABfNKs, false, m177RoundedCornerShape0680j_4, j2, 0L, RecyclerView.DECELERATION_RATE, m45BorderStrokecXLIe8U, null, Expect_jvmKt.rememberComposableLambda(-1476236172, new FeedComponentsKt$$ExternalSyntheticLambda5(pageSummary, obj, composableLambdaImpl, context, wikiSite, 7), gapComposer), gapComposer, 0, 740);
            } else {
                gapComposer.skipToGroupEnd();
            }
            RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
            if (endRestartGroup != null) {
                endRestartGroup.block = new Function2() { // from class: org.wikipedia.feed.onthisday.OnThisDayModuleKt$$ExternalSyntheticLambda11
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        ReadingListFragment.MultiSelectCallback.m911OnThisDayPageItemS8JMNoI(context, j, wikiSite, pageSummary, composableLambdaImpl, function1, function12, (GapComposer) obj2, Updater.updateChangedFlags(i | 1));
                        return Unit.INSTANCE;
                    }
                };
            }
        }

        public static AsyncTimeout awaitTimeout() {
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            AsyncTimeout asyncTimeout = ((AsyncTimeout[]) priorityQueue.array)[1];
            if (asyncTimeout == null) {
                long nanoTime = System.nanoTime();
                AsyncTimeout.condition.await(AsyncTimeout.IDLE_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
                if (((AsyncTimeout[]) priorityQueue.array)[1] != null || System.nanoTime() - nanoTime < AsyncTimeout.IDLE_TIMEOUT_NANOS) {
                    return null;
                }
                return AsyncTimeout.idleSentinel;
            }
            long nanoTime2 = asyncTimeout.timeoutAt - System.nanoTime();
            if (nanoTime2 > 0) {
                AsyncTimeout.condition.await(nanoTime2, TimeUnit.NANOSECONDS);
                return null;
            }
            priorityQueue.remove(asyncTimeout);
            asyncTimeout.state = 2;
            return asyncTimeout;
        }

        public static String colorToRgbaString(int i) {
            DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(Locale.US);
            decimalFormat.applyPattern("#.###");
            String format = decimalFormat.format(((i >> 24) & 255) / 255.0f);
            StringBuilder m = Animation.CC.m((i >> 16) & 255, (i >> 8) & 255, "rgba(", ", ", ", ");
            m.append(i & 255);
            m.append(", ");
            m.append(format);
            m.append(")");
            return m.toString();
        }

        public static void enqueue() {
            if (ReadingListSyncAdapter.IN_PROGRESS) {
                return;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            NetworkType networkType = NetworkType.CONNECTED;
            networkType.getClass();
            Constraints constraints = new Constraints(new NetworkRequestCompat(null), networkType, false, false, false, false, -1L, -1L, Build.VERSION.SDK_INT >= 24 ? CollectionsKt.toSet(linkedHashSet) : EmptySet.INSTANCE);
            Latch latch = new Latch(SavedPageSyncService.class);
            latch.setInitialDelay(2L, TimeUnit.SECONDS);
            ((WorkSpec) latch.awaiters).constraints = constraints;
            OneTimeWorkRequest build = latch.build();
            WikipediaApp wikipediaApp = WikipediaApp.instance;
            WorkManagerImpl.getInstance$1(Jsoup.getInstance()).enqueueUniqueWork("savePageSyncService", ExistingWorkPolicy.REPLACE, build);
        }

        public static MediaType get(String str) {
            str.getClass();
            MatcherMatchResult matchAt = MediaType.TYPE_SUBTYPE.matchAt(0, str);
            if (matchAt == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m(Animation.CC.m('\"', "No subtype found for: \"", str));
                return null;
            }
            String str2 = (String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(1);
            Locale locale = Locale.ROOT;
            String lowerCase = str2.toLowerCase(locale);
            lowerCase.getClass();
            String lowerCase2 = ((String) ((ReversedListReadOnly) matchAt.getGroupValues()).get(2)).toLowerCase(locale);
            lowerCase2.getClass();
            ArrayList arrayList = new ArrayList();
            int i = matchAt.getRange().last;
            while (true) {
                int i2 = i + 1;
                if (i2 >= str.length()) {
                    return new MediaType(str, lowerCase, lowerCase2, (String[]) arrayList.toArray(new String[0]));
                }
                MatcherMatchResult matchAt2 = MediaType.PARAMETER.matchAt(i2, str);
                if (matchAt2 == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("Parameter is not formatted correctly: \"", str.substring(i2), "\" for: \"", str, 34);
                    return null;
                }
                MatcherMatchResult$groups$1 matcherMatchResult$groups$1 = matchAt2.groups;
                MatchGroup matchGroup = matcherMatchResult$groups$1.get(1);
                String str3 = matchGroup != null ? matchGroup.value : null;
                if (str3 == null) {
                    i = matchAt2.getRange().last;
                } else {
                    MatchGroup matchGroup2 = matcherMatchResult$groups$1.get(2);
                    String str4 = matchGroup2 != null ? matchGroup2.value : null;
                    if (str4 == null) {
                        MatchGroup matchGroup3 = matcherMatchResult$groups$1.get(3);
                        matchGroup3.getClass();
                        str4 = matchGroup3.value;
                    } else if (str4.length() > 0 && UtilsKt.equals(str4.charAt(0), '\'', false) && StringsKt.endsWith$default((CharSequence) str4, '\'') && str4.length() > 2) {
                        str4 = str4.substring(1, str4.length() - 1);
                    }
                    arrayList.add(str3);
                    arrayList.add(str4);
                    i = matchAt2.getRange().last;
                }
            }
        }

        public static void insertIntoQueue(AsyncTimeout asyncTimeout) {
            if (AsyncTimeout.idleSentinel == null) {
                AsyncTimeout.idleSentinel = new AsyncTimeout();
                AsyncTimeout.Watchdog watchdog = new AsyncTimeout.Watchdog("Okio Watchdog");
                watchdog.setDaemon(true);
                watchdog.start();
            }
            long nanoTime = System.nanoTime();
            long j = asyncTimeout.timeoutNanos;
            boolean z = asyncTimeout.hasDeadline;
            if (j != 0 && z) {
                asyncTimeout.timeoutAt = Math.min(j, asyncTimeout.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                asyncTimeout.timeoutAt = nanoTime + j;
            } else {
                if (!z) {
                    throw new AssertionError();
                }
                asyncTimeout.timeoutAt = asyncTimeout.deadlineNanoTime();
            }
            PriorityQueue priorityQueue = AsyncTimeout.queue;
            int i = priorityQueue.size + 1;
            priorityQueue.size = i;
            AsyncTimeout[] asyncTimeoutArr = (AsyncTimeout[]) priorityQueue.array;
            if (i == asyncTimeoutArr.length) {
                AsyncTimeout[] asyncTimeoutArr2 = new AsyncTimeout[i * 2];
                ArraysKt___ArraysKt.copyInto$default(asyncTimeoutArr, asyncTimeoutArr2, 0, 0, 14);
                priorityQueue.array = asyncTimeoutArr2;
            }
            priorityQueue.heapifyUp(i, asyncTimeout);
            if (asyncTimeout.index == 1) {
                AsyncTimeout.condition.signal();
            }
        }

        public static Date maybePauseAndGetEndDate() {
            Date date;
            Prefs prefs = Prefs.INSTANCE;
            String string = PrefsIoUtil.getString(R.string.preference_key_suggested_edits_pause_date, "");
            if (string == null || string.length() == 0) {
                date = new Date(0L);
            } else {
                ConcurrentHashMap concurrentHashMap = DateUtil.DATE_FORMATS;
                date = DateUtil.dbDateParse(string);
            }
            Date date2 = null;
            if (date.getTime() != 0) {
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                calendar.add(6, 7);
                Date time = calendar.getTime();
                if (new Date().after(time)) {
                    Prefs.setSuggestedEditsPauseDate(new Date(0L));
                } else {
                    date2 = time;
                }
            }
            if ((totalEdits <= 100 ? totalReverts : (int) Math.ceil((totalReverts / r0) * 100.0f)) <= 5 || totalReverts <= PrefsIoUtil.getInt(R.string.preference_key_suggested_edits_pause_reverts, 0)) {
                return date2;
            }
            Calendar calendar2 = Calendar.getInstance();
            calendar2.setTime(new Date());
            Date time2 = calendar2.getTime();
            time2.getClass();
            Prefs.setSuggestedEditsPauseDate(time2);
            PrefsIoUtil.setInt(R.string.preference_key_suggested_edits_pause_reverts, totalReverts);
            calendar2.add(6, 7);
            return calendar2.getTime();
        }

        public static Intent newIntent(Context context, PageTitle pageTitle) {
            Intent putExtra = new Intent(context, (Class<?>) CategoryActivity.class).putExtra("title", pageTitle);
            putExtra.getClass();
            return putExtra;
        }

        public static void showSuggestedEditsLocalNotification(Context context, int i) {
            int i2 = MainActivity.$r8$clinit;
            Intent putExtra = UriUtil.newIntent(context).putExtra("goToSETab", true);
            putExtra.getClass();
            Intent addIntentExtras = NotificationPresenter.addIntentExtras(putExtra, 0L, "local");
            NotificationCompat$Builder defaultBuilder$default = NotificationPresenter.getDefaultBuilder$default(context, 0L, null, 12);
            String string = context.getString(R.string.suggested_edits_reactivation_notification_title);
            string.getClass();
            String string2 = context.getString(i);
            string2.getClass();
            NotificationPresenter.showNotification(context, defaultBuilder$default, 0, string, string2, context.getString(i), null, Integer.valueOf(R.drawable.ic_mode_edit_white_24dp), R.color.blue600, addIntentExtras);
        }

        public static void startPollTask(Context context) {
            int i;
            Object systemService = context.getSystemService("alarm");
            systemService.getClass();
            AlarmManager alarmManager = (AlarmManager) systemService;
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                TimeUnit timeUnit = TimeUnit.MINUTES;
                int integer = context.getResources().getInteger(R.integer.notification_poll_interval_minutes);
                Prefs prefs = Prefs.INSTANCE;
                if (Prefs.isSuggestedEditsReactivationTestEnabled()) {
                    if (!StringsKt.contains("org.wikipedia", "beta", false) && !StringsKt.contains("org.wikipedia", "alpha", false) && StringsKt.contains("org.wikipedia", "dev", false)) {
                    }
                    i = 10;
                    long millis = timeUnit.toMillis(integer / i);
                    Intent intent = new Intent(context, (Class<?>) NotificationPollBroadcastReceiver.class);
                    intent.setAction("action_notification_poll");
                    PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
                    broadcast.getClass();
                    alarmManager.setInexactRepeating(2, elapsedRealtime, millis, broadcast);
                }
                i = 1;
                long millis2 = timeUnit.toMillis(integer / i);
                Intent intent2 = new Intent(context, (Class<?>) NotificationPollBroadcastReceiver.class);
                intent2.setAction("action_notification_poll");
                PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 0, intent2, 201326592);
                broadcast2.getClass();
                alarmManager.setInexactRepeating(2, elapsedRealtime, millis2, broadcast2);
            } catch (Exception e) {
                L.e(e);
            }
        }

        public static void toggleSyntaxAroundCurrentSelection(EditText editText, InputConnection inputConnection, String str, String str2) {
            CharSequence charSequence;
            if (editText != null) {
                if (editText.getSelectionStart() == editText.getSelectionEnd()) {
                    CharSequence textBeforeCursor = inputConnection.getTextBeforeCursor(str.length(), 0);
                    CharSequence textAfterCursor = inputConnection.getTextAfterCursor(str2.length(), 0);
                    if (textBeforeCursor != null && Intrinsics.areEqual(textBeforeCursor.toString(), str) && textAfterCursor != null && Intrinsics.areEqual(textAfterCursor.toString(), str2)) {
                        inputConnection.deleteSurroundingText(str.length(), str2.length());
                        return;
                    } else {
                        inputConnection.commitText(str.concat(str2), 1);
                        inputConnection.commitText("", -str2.length());
                        return;
                    }
                }
                CharSequence selectedText = inputConnection.getSelectedText(0);
                if (selectedText == null) {
                    return;
                }
                if (StringsKt__StringsJVMKt.startsWith(selectedText.toString(), str, false) && StringsKt__StringsJVMKt.endsWith(selectedText.toString(), str2, false)) {
                    charSequence = selectedText.subSequence(str.length(), selectedText.length() - str2.length());
                } else {
                    charSequence = str + ((Object) selectedText) + str2;
                }
                inputConnection.commitText(charSequence, 1);
                inputConnection.setSelection(editText.getSelectionStart() - charSequence.length(), editText.getSelectionEnd());
            }
        }

        public void checkAllItems(ActionMode actionMode, boolean z) {
            NotificationActivity notificationActivity = (NotificationActivity) this.this$0;
            ArrayList arrayList = notificationActivity.notificationContainerList;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                if (((NotificationListItemContainer) next).type != 0) {
                    arrayList2.add(next);
                }
            }
            ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList2, 10));
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                ((NotificationListItemContainer) it2.next()).selected = z;
                arrayList3.add(Unit.INSTANCE);
            }
            actionMode.setTitle(String.valueOf(notificationActivity.getSelectedItemCount()));
            actionMode.getMenu().findItem(R.id.menu_check_all).setVisible(!z);
            actionMode.getMenu().findItem(R.id.menu_uncheck_all).setVisible(z);
            ItemNotificationBinding itemNotificationBinding = notificationActivity.binding;
            if (itemNotificationBinding == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                throw null;
            }
            RecyclerView.Adapter adapter = ((RecyclerView) itemNotificationBinding.notificationOverflowMenu).getAdapter();
            if (adapter != null) {
                adapter.notifyDataSetChanged();
            }
        }

        public boolean getAllSelected() {
            int i;
            ReadingListsFragment readingListsFragment = (ReadingListsFragment) this.this$0;
            int size = readingListsFragment.getSelectedLists().size();
            List list = readingListsFragment.displayedLists;
            if (list == null || !list.isEmpty()) {
                Iterator it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if ((it.next() instanceof ReadingList) && (i = i + 1) < 0) {
                        Room.throwCountOverflow();
                        throw null;
                    }
                }
            } else {
                i = 0;
            }
            return size == i;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                    menuItem.getClass();
                    int itemId = menuItem.getItemId();
                    if (itemId == R.id.menu_delete_selected) {
                        onDeleteSelected();
                        readingListFragment.finishActionMode$2();
                        return true;
                    }
                    if (itemId == R.id.menu_remove_from_offline) {
                        List list = ReadingListBehaviorsUtil.allReadingLists;
                        ReadingListBehaviorsUtil.removePagesFromOffline(readingListFragment.requireActivity(), readingListFragment.getSelectedPages(), new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, 9));
                        readingListFragment.finishActionMode$2();
                        return true;
                    }
                    int i2 = 10;
                    if (itemId == R.id.menu_save_for_offline) {
                        List list2 = ReadingListBehaviorsUtil.allReadingLists;
                        ReadingListBehaviorsUtil.savePagesForOffline(readingListFragment.requireActivity(), readingListFragment.getSelectedPages(), new ReadingListFragment$$ExternalSyntheticLambda3(readingListFragment, i2));
                        readingListFragment.finishActionMode$2();
                        return true;
                    }
                    if (itemId == R.id.menu_add_to_another_list) {
                        List<ReadingListPage> selectedPages = readingListFragment.getSelectedPages();
                        if (!selectedPages.isEmpty()) {
                            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(selectedPages, 10));
                            for (ReadingListPage readingListPage : selectedPages) {
                                readingListPage.getClass();
                                WikiSite wikiSite = readingListPage.wiki;
                                String str = readingListPage.lang;
                                wikiSite.getClass();
                                str.getClass();
                                wikiSite.languageCode = str;
                                arrayList.add(new PageTitle(readingListPage.apiTitle, wikiSite, readingListPage.thumbUrl, readingListPage.description, readingListPage.displayTitle));
                            }
                            FragmentManagerImpl childFragmentManager = readingListFragment.getChildFragmentManager();
                            childFragmentManager.getClass();
                            Constants.InvokeSource invokeSource = Constants.InvokeSource.READING_LIST_ACTIVITY;
                            invokeSource.getClass();
                            AddToReadingListDialog addToReadingListDialog = new AddToReadingListDialog();
                            addToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(arrayList)), new Pair("invokeSource", invokeSource), new Pair("showDefaultList", Boolean.TRUE)));
                            addToReadingListDialog.dismissListener = null;
                            Okio__OkioKt.show(childFragmentManager, addToReadingListDialog);
                            readingListFragment.update(readingListFragment.readingList);
                        }
                        readingListFragment.finishActionMode$2();
                        return true;
                    }
                    if (itemId != R.id.menu_move_to_another_list) {
                        return false;
                    }
                    List<ReadingListPage> selectedPages2 = readingListFragment.getSelectedPages();
                    if (!selectedPages2.isEmpty()) {
                        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(selectedPages2, 10));
                        for (ReadingListPage readingListPage2 : selectedPages2) {
                            readingListPage2.getClass();
                            WikiSite wikiSite2 = readingListPage2.wiki;
                            String str2 = readingListPage2.lang;
                            wikiSite2.getClass();
                            str2.getClass();
                            wikiSite2.languageCode = str2;
                            arrayList2.add(new PageTitle(readingListPage2.apiTitle, wikiSite2, readingListPage2.thumbUrl, readingListPage2.description, readingListPage2.displayTitle));
                        }
                        FragmentManagerImpl childFragmentManager2 = readingListFragment.getChildFragmentManager();
                        childFragmentManager2.getClass();
                        long j = readingListFragment.readingListId;
                        Constants.InvokeSource invokeSource2 = Constants.InvokeSource.READING_LIST_ACTIVITY;
                        invokeSource2.getClass();
                        MoveToReadingListDialog moveToReadingListDialog = new MoveToReadingListDialog();
                        moveToReadingListDialog.setArguments(UStringsKt.bundleOf(new Pair("pageTitleList", new ArrayList(arrayList2)), new Pair("invokeSource", invokeSource2), new Pair("sourceReadingListId", Long.valueOf(j)), new Pair("showDefaultList", Boolean.TRUE)));
                        moveToReadingListDialog.dismissListener = null;
                        Okio__OkioKt.show(childFragmentManager2, moveToReadingListDialog);
                        readingListFragment.update(readingListFragment.readingList);
                    }
                    readingListFragment.finishActionMode$2();
                    return true;
                case 1:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    menuItem.getClass();
                    int itemId2 = menuItem.getItemId();
                    if (itemId2 == R.id.menu_mark_as_read) {
                        int i3 = NotificationActivity.$r8$clinit;
                        NotificationActivity.markReadItems$default(notificationActivity, notificationActivity.getSelectedItems(), false, null, 12);
                        notificationActivity.finishActionMode$1();
                        return true;
                    }
                    if (itemId2 == R.id.menu_mark_as_unread) {
                        int i4 = NotificationActivity.$r8$clinit;
                        NotificationActivity.markReadItems$default(notificationActivity, notificationActivity.getSelectedItems(), true, null, 12);
                        notificationActivity.finishActionMode$1();
                        return true;
                    }
                    if (itemId2 == R.id.menu_check_all) {
                        checkAllItems(actionMode, true);
                        return true;
                    }
                    if (itemId2 != R.id.menu_uncheck_all) {
                        return false;
                    }
                    checkAllItems(actionMode, false);
                    int i5 = NotificationActivity.$r8$clinit;
                    notificationActivity.finishActionMode$1();
                    return true;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                    DiffUtil$DiffLinesAdapter diffUtil$DiffLinesAdapter = readingListsFragment.adapter;
                    menuItem.getClass();
                    int itemId3 = menuItem.getItemId();
                    if (itemId3 == R.id.menu_delete_selected) {
                        onDeleteSelected();
                        return true;
                    }
                    if (itemId3 == R.id.menu_export_selected) {
                        if (readingListsFragment.getSelectedLists().isEmpty()) {
                            Toast.makeText(readingListsFragment.getContext(), readingListsFragment.getString(R.string.reading_lists_export_select_lists_message), 0).show();
                            return true;
                        }
                        ReadingListsReceiveHelper readingListsReceiveHelper = ReadingListsReceiveHelper.INSTANCE$1;
                        AppCompatActivity activity = readingListsFragment.getActivity();
                        activity.getClass();
                        readingListsReceiveHelper.exportLists((BaseActivity) activity, readingListsFragment.getSelectedLists());
                        ActionMode actionMode2 = readingListsFragment.actionMode;
                        if (actionMode2 == null) {
                            return true;
                        }
                        actionMode2.finish();
                        return true;
                    }
                    if (itemId3 == R.id.menu_select) {
                        if (getAllSelected()) {
                            Iterator it = readingListsFragment.getSelectedLists().iterator();
                            while (it.hasNext()) {
                                ((ReadingList) it.next()).selected = false;
                            }
                            diffUtil$DiffLinesAdapter.notifyDataSetChanged();
                        } else {
                            List list3 = readingListsFragment.displayedLists;
                            ArrayList arrayList3 = new ArrayList();
                            for (Object obj2 : list3) {
                                if (obj2 instanceof ReadingList) {
                                    arrayList3.add(obj2);
                                }
                            }
                            ArrayList arrayList4 = new ArrayList();
                            Iterator it2 = arrayList3.iterator();
                            while (it2.hasNext()) {
                                Object next = it2.next();
                                if (!((ReadingList) next).selected) {
                                    arrayList4.add(next);
                                }
                            }
                            Iterator it3 = arrayList4.iterator();
                            while (it3.hasNext()) {
                                ((ReadingList) it3.next()).selected = true;
                            }
                            diffUtil$DiffLinesAdapter.notifyDataSetChanged();
                        }
                        actionMode.invalidate();
                    }
                    return false;
                case 3:
                default:
                    return onActionItemClicked$okhttp3$MediaType$Companion(actionMode, menuItem);
                case 4:
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    menuItem.getClass();
                    onActionItemClicked$okhttp3$MediaType$Companion(actionMode, menuItem);
                    int itemId4 = menuItem.getItemId();
                    if (itemId4 != R.id.menu_check_all) {
                        if (itemId4 != R.id.menu_uncheck_all) {
                            return false;
                        }
                        talkTemplatesFragment.unselectAllTalkTemplates();
                        menuItem.setVisible(false);
                        actionMode.getMenu().findItem(R.id.menu_check_all).setVisible(true);
                        return true;
                    }
                    EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                    WikipediaApp wikipediaApp = WikipediaApp.instance;
                    String m = ViewSizeResolver$CC.m();
                    Prefs prefs = Prefs.INSTANCE;
                    EventPlatformClient.submit(new AppInteractionEvent("delete_messages_init", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                    ArrayList arrayList5 = talkTemplatesFragment.selectedItems;
                    TalkTemplatesFragment.RecyclerAdapter recyclerAdapter = talkTemplatesFragment.adapter;
                    if (recyclerAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    ArrayList arrayList6 = recyclerAdapter.templatesList;
                    ArrayList arrayList7 = new ArrayList();
                    Iterator it4 = arrayList6.iterator();
                    while (it4.hasNext()) {
                        Object next2 = it4.next();
                        if (!arrayList5.contains((TalkTemplate) next2)) {
                            arrayList7.add(next2);
                        }
                    }
                    Iterator it5 = arrayList7.iterator();
                    while (it5.hasNext()) {
                        arrayList5.add((TalkTemplate) it5.next());
                    }
                    actionMode.setTitle(talkTemplatesFragment.getString(R.string.multi_select_items_selected, Integer.valueOf(arrayList5.size())));
                    talkTemplatesFragment.updateAndNotifyAdapter();
                    menuItem.setVisible(false);
                    actionMode.getMenu().findItem(R.id.menu_uncheck_all).setVisible(true);
                    return true;
            }
        }

        public final boolean onActionItemClicked$okhttp3$MediaType$Companion(ActionMode actionMode, MenuItem menuItem) {
            menuItem.getClass();
            if (menuItem.getItemId() != R.id.menu_delete_selected) {
                return false;
            }
            onDeleteSelected();
            return true;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    actionMode.mTag = "multiSelectActionMode";
                    actionMode.getMenuInflater().inflate(R.menu.menu_action_mode_reading_list, menu);
                    ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                    readingListFragment.actionMode = actionMode;
                    readingListFragment.setStatusBarActionMode(true);
                    break;
                case 1:
                    actionMode.mTag = "multiSelectActionMode";
                    actionMode.getMenuInflater().inflate(R.menu.menu_action_mode_notifications, menu);
                    ((NotificationActivity) obj).actionMode = actionMode;
                    break;
                case 2:
                    actionMode.mTag = "multiSelectActionMode";
                    actionMode.getMenuInflater().inflate(R.menu.menu_action_mode_reading_lists, menu);
                    ((ReadingListsFragment) obj).actionMode = actionMode;
                    ((MenuBuilder) menu).findItem(R.id.menu_delete_selected).setEnabled(false);
                    break;
                case 3:
                    actionMode.mTag = "multiSelectActionMode";
                    actionMode.setTitle(R.string.wikipedia_languages_remove_action_mode_title);
                    actionMode.getMenuInflater().inflate(R.menu.menu_action_mode_wikipedia_languages, menu);
                    WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                    wikipediaLanguagesFragment.actionMode = actionMode;
                    wikipediaLanguagesFragment.selectedCodes.clear();
                    actionMode.mTag = "multiSelectActionMode";
                    break;
                default:
                    actionMode.mTag = "multiSelectActionMode";
                    actionMode.setTitle(R.string.talk_templates_menu_remove_message);
                    actionMode.getMenuInflater().inflate(R.menu.menu_action_mode_talk_templates, menu);
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    talkTemplatesFragment.actionMode = actionMode;
                    talkTemplatesFragment.selectedItems.clear();
                    actionMode.mTag = "multiSelectActionMode";
                    break;
            }
            return true;
        }

        public final void onDeleteSelected() {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            switch (i) {
                case 0:
                    ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                    ReadingList readingList = readingListFragment.readingList;
                    if (readingList != null) {
                        ReadingListFragmentViewModel viewModel = readingListFragment.getViewModel();
                        AwaitKt.launch$default(ViewModelKt.getViewModelScope(viewModel), new ReadingListFragmentViewModel$updateList$$inlined$CoroutineExceptionHandler$1(viewModel, 1), null, new RealImageLoader$execute$2(readingListFragment.getSelectedPages(), readingList, viewModel, null, 24), 2);
                        break;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                    ArrayList selectedLists = readingListsFragment.getSelectedLists();
                    List list = ReadingListBehaviorsUtil.allReadingLists;
                    AppCompatActivity requireActivity = readingListsFragment.requireActivity();
                    TextLinkScope$$ExternalSyntheticLambda3 textLinkScope$$ExternalSyntheticLambda3 = new TextLinkScope$$ExternalSyntheticLambda3(12, readingListsFragment, selectedLists);
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(requireActivity, 0);
                    materialAlertDialogBuilder.setTitle(R.string.reading_list_delete_lists_confirm_dialog_title);
                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mMessage = requireActivity.getResources().getQuantityString(R.plurals.reading_list_delete_lists_confirm_dialog_message, selectedLists.size(), Integer.valueOf(selectedLists.size()));
                    materialAlertDialogBuilder.setPositiveButton(R.string.reading_list_delete_lists_dialog_delete_button_text, new SurveyDialog$$ExternalSyntheticLambda8(selectedLists, requireActivity, textLinkScope$$ExternalSyntheticLambda3, 4));
                    materialAlertDialogBuilder.setNegativeButton(R.string.reading_list_delete_dialog_cancel_button_text, (DialogInterface.OnClickListener) null);
                    materialAlertDialogBuilder.show();
                    break;
                case 3:
                    WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                    ArrayList arrayList = wikipediaLanguagesFragment.selectedCodes;
                    if (arrayList.size() > 0) {
                        MaterialAlertDialogBuilder materialAlertDialogBuilder2 = new MaterialAlertDialogBuilder(wikipediaLanguagesFragment.requireActivity(), 0);
                        if (arrayList.size() < wikipediaLanguagesFragment.wikipediaLanguages.size()) {
                            ((AlertController.AlertParams) materialAlertDialogBuilder2.array).mTitle = wikipediaLanguagesFragment.getResources().getQuantityString(R.plurals.wikipedia_languages_remove_dialog_title, arrayList.size());
                            materialAlertDialogBuilder2.setMessage(R.string.wikipedia_languages_remove_dialog_content);
                            materialAlertDialogBuilder2.setPositiveButton(R.string.remove_language_dialog_ok_button_text, new PageFragment$$ExternalSyntheticLambda28(11, wikipediaLanguagesFragment));
                            materialAlertDialogBuilder2.setNegativeButton(R.string.remove_language_dialog_cancel_button_text, (DialogInterface.OnClickListener) null);
                        } else {
                            materialAlertDialogBuilder2.setTitle(R.string.wikipedia_languages_remove_warning_dialog_title);
                            materialAlertDialogBuilder2.setMessage(R.string.wikipedia_languages_remove_warning_dialog_content);
                            materialAlertDialogBuilder2.setPositiveButton(R.string.remove_all_language_warning_dialog_ok_button_text, (DialogInterface.OnClickListener) null);
                        }
                        materialAlertDialogBuilder2.show();
                        break;
                    }
                    break;
                default:
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    ArrayList arrayList2 = talkTemplatesFragment.selectedItems;
                    if (arrayList2.size() <= 0) {
                        ActionMode actionMode = talkTemplatesFragment.actionMode;
                        if (actionMode != null) {
                            actionMode.finish();
                            break;
                        }
                    } else {
                        EventPlatformClient eventPlatformClient = EventPlatformClient.INSTANCE;
                        WikipediaApp wikipediaApp = WikipediaApp.instance;
                        String m = ViewSizeResolver$CC.m();
                        Prefs prefs = Prefs.INSTANCE;
                        EventPlatformClient.submit(new AppInteractionEvent("delete_messages_click", "pt_warning_messages", "", m, Prefs.getRecentEditsWikiCode(), "app_patroller_experience"));
                        String quantityString = talkTemplatesFragment.getResources().getQuantityString(R.plurals.talk_templates_message_delete_description, arrayList2.size());
                        quantityString.getClass();
                        MaterialAlertDialogBuilder materialAlertDialogBuilder3 = new MaterialAlertDialogBuilder(talkTemplatesFragment.requireContext(), R.style.AlertDialogTheme_Delete);
                        ((AlertController.AlertParams) materialAlertDialogBuilder3.array).mMessage = quantityString;
                        materialAlertDialogBuilder3.setPositiveButton(R.string.talk_templates_edit_message_dialog_delete, new PageFragment$$ExternalSyntheticLambda28(14, talkTemplatesFragment));
                        materialAlertDialogBuilder3.setNegativeButton(R.string.talk_templates_new_message_dialog_cancel, new TextInputDialog$$ExternalSyntheticLambda2(10));
                        materialAlertDialogBuilder3.show();
                        break;
                    }
                    break;
            }
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void onDestroyActionMode(ActionMode actionMode) {
            int i = this.$r8$classId;
            Object obj = this.this$0;
            actionMode.getClass();
            switch (i) {
                case 0:
                    ReadingListFragment readingListFragment = (ReadingListFragment) obj;
                    ReadingList readingList = readingListFragment.readingList;
                    if (readingList != null) {
                        Iterator it = readingList.pages.iterator();
                        while (it.hasNext()) {
                            ((ReadingListPage) it.next()).selected = false;
                        }
                        readingListFragment.adapter.notifyDataSetChanged();
                    }
                    readingListFragment.actionMode = null;
                    readingListFragment.setStatusBarActionMode(false);
                    return;
                case 1:
                    checkAllItems(actionMode, false);
                    ((NotificationActivity) obj).actionMode = null;
                    return;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                    readingListsFragment.selectMode = false;
                    Iterator it2 = readingListsFragment.getSelectedLists().iterator();
                    while (it2.hasNext()) {
                        ((ReadingList) it2.next()).selected = false;
                    }
                    readingListsFragment.adapter.notifyDataSetChanged();
                    readingListsFragment.actionMode = null;
                    return;
                case 3:
                    WikipediaLanguagesFragment wikipediaLanguagesFragment = (WikipediaLanguagesFragment) obj;
                    wikipediaLanguagesFragment.selectedCodes.clear();
                    WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter = wikipediaLanguagesFragment.adapter;
                    if (wikipediaLanguageItemAdapter == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    wikipediaLanguageItemAdapter.notifyDataSetChanged();
                    WikipediaLanguagesFragment.WikipediaLanguageItemAdapter wikipediaLanguageItemAdapter2 = wikipediaLanguagesFragment.adapter;
                    if (wikipediaLanguageItemAdapter2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("adapter");
                        throw null;
                    }
                    wikipediaLanguageItemAdapter2.checkboxEnabled = false;
                    wikipediaLanguageItemAdapter2.notifyDataSetChanged();
                    wikipediaLanguagesFragment.requireActivity().invalidateOptionsMenu();
                    wikipediaLanguagesFragment.actionMode = null;
                    return;
                default:
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    talkTemplatesFragment.unselectAllTalkTemplates();
                    talkTemplatesFragment.setMultiSelectEnabled$1(false);
                    talkTemplatesFragment.actionMode = null;
                    return;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.appcompat.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            Notification notification;
            int i = this.$r8$classId;
            Boolean bool = null;
            bool = null;
            Object obj = this.this$0;
            boolean z = false;
            menu.getClass();
            switch (i) {
                case 1:
                    NotificationActivity notificationActivity = (NotificationActivity) obj;
                    int i2 = NotificationActivity.$r8$clinit;
                    actionMode.setTitle(String.valueOf(notificationActivity.getSelectedItemCount()));
                    NotificationListItemContainer notificationListItemContainer = (NotificationListItemContainer) CollectionsKt.firstOrNull((List) notificationActivity.getSelectedItems());
                    if (notificationListItemContainer != null && (notification = notificationListItemContainer.notification) != null) {
                        bool = Boolean.valueOf(notification.isUnread());
                    }
                    menu.findItem(R.id.menu_mark_as_read).setVisible(Intrinsics.areEqual(bool, Boolean.TRUE));
                    menu.findItem(R.id.menu_mark_as_unread).setVisible(Intrinsics.areEqual(bool, Boolean.FALSE));
                    menu.findItem(R.id.menu_check_all).setVisible(true);
                    menu.findItem(R.id.menu_uncheck_all).setVisible(false);
                    break;
                case 2:
                    ReadingListsFragment readingListsFragment = (ReadingListsFragment) obj;
                    ArrayList selectedLists = readingListsFragment.getSelectedLists();
                    Object[] objArr = selectedLists.size() == 1 && ((ReadingList) selectedLists.get(0)).isDefault();
                    String str = "";
                    actionMode.setTitle(selectedLists.isEmpty() ? "" : readingListsFragment.getString(R.string.multi_select_items_selected, Integer.valueOf(selectedLists.size())));
                    MenuItem findItem = menu.findItem(R.id.menu_delete_selected);
                    MenuItem findItem2 = menu.findItem(R.id.menu_export_selected);
                    Context requireContext = readingListsFragment.requireContext();
                    TypedValue typedValue = new TypedValue();
                    TypedValue typedValue2 = requireContext.getTheme().resolveAttribute(R.attr.progressive_color, typedValue, true) ? typedValue : null;
                    if (typedValue2 == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m("Attribute not found; ID=2130969888");
                        break;
                    } else {
                        int i3 = typedValue2.data;
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        ForegroundColorSpan foregroundColorSpan = new ForegroundColorSpan(ColorUtils.setAlphaComponent(i3, selectedLists.isEmpty() ? 80 : 255));
                        int length = spannableStringBuilder.length();
                        spannableStringBuilder.append(findItem2.getTitle());
                        spannableStringBuilder.setSpan(foregroundColorSpan, length, spannableStringBuilder.length(), 17);
                        findItem2.setTitle(new SpannedString(spannableStringBuilder));
                        Drawable icon = findItem.getIcon();
                        if (icon != null) {
                            icon.setAlpha((selectedLists.isEmpty() || objArr == true) ? 80 : 255);
                        }
                        findItem2.setEnabled(!selectedLists.isEmpty());
                        if (!selectedLists.isEmpty() && objArr == false) {
                            z = true;
                        }
                        findItem.setEnabled(z);
                        MenuItem findItem3 = menu.findItem(R.id.menu_select);
                        findItem3.setIcon(readingListsFragment.getSelectedLists().isEmpty() ? R.drawable.ic_outline_library_add_check_24 : getAllSelected() ? R.drawable.ic_deselect_all : R.drawable.ic_select_indeterminate);
                        if (readingListsFragment.getSelectedLists().isEmpty()) {
                            str = readingListsFragment.getString(R.string.notifications_menu_check_all);
                        } else if (getAllSelected()) {
                            str = readingListsFragment.getString(R.string.notifications_menu_uncheck_all);
                        }
                        findItem3.setTitle(str);
                        break;
                    }
                    break;
                case 4:
                    TalkTemplatesFragment talkTemplatesFragment = (TalkTemplatesFragment) obj;
                    ArrayList arrayList = talkTemplatesFragment.selectedItems;
                    actionMode.setTitle(talkTemplatesFragment.getString(R.string.multi_select_items_selected, Integer.valueOf(arrayList.size())));
                    String.valueOf(arrayList.size());
                    menu.findItem(R.id.menu_check_all).setVisible(true);
                    menu.findItem(R.id.menu_uncheck_all).setVisible(false);
                    break;
            }
            return true;
        }

        private final void onDeleteSelected$org$wikipedia$notifications$NotificationActivity$MultiSelectCallback() {
        }
    }

    @Override // androidx.core.view.MenuProvider
    public final void onMenuClosed(Menu menu) {
    }
}
