package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.SearchView;
import androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda3;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.constraintlayout.core.widgets.analyzer.DependencyGraph;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentKt$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.internal.NavContext;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import app.k9mail.core.android.common.contact.ContactRepository;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditIncomingSettings;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditOutgoingSettings;
import app.k9mail.feature.launcher.FeatureLauncherTarget$Changelog;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper;
import app.k9mail.ui.utils.linearlayoutmanager.LinearLayoutManager;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.K9;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.contacts.ContactPictureLoader;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda8;
import com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda9;
import com.fsck.k9.controller.MessagingControllerCommands$PendingMarkAllAsRead;
import com.fsck.k9.controller.MessagingControllerWrapper;
import com.fsck.k9.fragment.ConfirmationDialogFragment;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.base.BaseActivity$sam$androidx_lifecycle_Observer$0;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.choosefolder.ChooseFolderResultContract;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListViewItem;
import com.fsck.k9.ui.messagelist.item.MessageViewHolder;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.Snackbar$$ExternalSyntheticLambda0;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.google.android.material.textview.MaterialTextView;
import com.skydoves.landscapist.ImageLoadKt$ImageLoad$2$1$1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntriesList;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.math.MathKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.internal.LockFreeLinkedListNode$toString$1;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.common.action.SwipeAction;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.featureflag.FeatureFlagResult;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.core.ui.theme.api.FeatureThemeProvider;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.avatar.DefaultAvatarMonogramCreator;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.navigation.changelog.api.ChangeLogMode;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogFragmentActionListener;
import net.thunderbird.feature.notification.api.ui.style.SnackbarDuration;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import net.thunderbird.feature.search.legacy.serialization.LocalMessageSearchSerializer;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LegacyMessageListFragment extends Fragment implements MessageListFragmentBridgeContract, ConfirmationDialogFragment.ConfirmationDialogFragmentListener, MessageListItemActionListener, ErrorNotificationsDialogFragmentActionListener {
    public LegacyAccount account;
    public final Lazy accountManager$delegate;
    public String[] accountUuids;
    public List accounts;
    public ActionMode actionMode;
    public final DependencyGraph actionModeCallback;
    public MessageReference activeMessage;
    public List activeMessages;
    public final MessageListFragment.MessageListActivityListener activityListener;
    public MessageListAdapter adapter;
    public boolean allAccounts;
    public final Lazy avatarMonogramCreator$delegate;
    public final Lazy buildSwipeActions$delegate;
    public final Fragment.AnonymousClass10 chooseFolderForCopyLauncher;
    public final Fragment.AnonymousClass10 chooseFolderForMoveLauncher;
    public final Lazy connectivityManager$delegate;
    public final Lazy contactRepository$delegate;
    public CoordinatorLayout coordinatorLayout;
    public FolderInfoHolder currentFolder;
    public Error error;
    public final Lazy errorNotificationsDialogFragmentFactory$delegate;
    public List extraSearchResults;
    public final Lazy featureFlagProvider$delegate;
    public final Lazy featureThemeProvider$delegate;
    public FloatingActionButton floatingActionButton;
    public final Lazy folderNameFormatter$delegate;
    public MessageHomeActivity fragmentListener;
    public final Lazy generalSettingsManager$delegate;
    public final MessageListHandler handler;
    public Boolean hasConnectivity;
    public boolean initialMessageListLoad;
    public boolean initialSearchViewIconified;
    public String initialSearchViewQuery;
    public boolean isActive;
    public boolean isInitialized;
    public boolean isRemoteSearch;
    public boolean isShowFloatingActionButton;
    public boolean isSingleAccountMode;
    public boolean isSingleFolderMode;
    public boolean isThreadDisplay;
    public boolean itemSelectedOnSwipeStart;
    public ItemTouchHelper itemTouchHelper;
    public long lastMessageClick;
    public final Lazy legacyViewModel$delegate;
    public LocalMessageSearch localSearch;
    public final Lazy localStoreProvider$delegate;
    public final String logTag = "BaseMessageListFragment";
    public final Lazy logger$delegate;
    public final Lazy messagingController$delegate;
    public final Lazy messagingControllerRegistry$delegate;
    public final Lazy outboxFolderManager$delegate;
    public Snackbar recentChangesSnackbar;
    public final Lazy recentChangesViewModel$delegate;
    public RecyclerView recyclerView;
    public final Lazy relativeDateTimeFormatter$delegate;
    public Set rememberedSelected;
    public Future remoteSearchFuture;
    public SearchView searchView;
    public final Lazy setupArchiveFolderDialogFragmentFactory$delegate;
    public final LiveDataObservable$$ExternalSyntheticLambda3 shouldShowRecentChangesHintObserver;
    public boolean showingThreadedList;
    public boolean sortAscending;
    public boolean sortDateAscending;
    public SortType sortType;
    public final Lazy sortTypeToastProvider$delegate;
    public final LegacyMessageListFragment$$ExternalSyntheticLambda7 swipeActionSupportProvider;
    public final LegacyMessageListFragment$swipeListener$1 swipeListener;
    public SwipeRefreshLayout swipeRefreshLayout;
    public String threadTitle;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Error {
        public static final /* synthetic */ Error[] $VALUES;
        public static final Error FolderNotFound;

        static {
            Error error = new Error("FolderNotFound", 0);
            FolderNotFound = error;
            $VALUES = new Error[]{error};
        }

        public static Error valueOf(String str) {
            return (Error) Enum.valueOf(Error.class, str);
        }

        public static Error[] values() {
            return (Error[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class FolderOperation {
        public static final /* synthetic */ FolderOperation[] $VALUES;
        public static final FolderOperation COPY;
        public static final FolderOperation MOVE;

        static {
            FolderOperation folderOperation = new FolderOperation("COPY", 0);
            COPY = folderOperation;
            FolderOperation folderOperation2 = new FolderOperation("MOVE", 1);
            MOVE = folderOperation2;
            $VALUES = new FolderOperation[]{folderOperation, folderOperation2};
        }

        public static FolderOperation valueOf(String str) {
            return (FolderOperation) Enum.valueOf(FolderOperation.class, str);
        }

        public static FolderOperation[] values() {
            return (FolderOperation[]) $VALUES.clone();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SnackbarDuration.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[2] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[FolderOperation.values().length];
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[SwipeAction.values().length];
            try {
                iArr3[0] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[1] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[2] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[3] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[4] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr3[5] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr3[6] = 7;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr3[7] = 8;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr3[9] = 9;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr3[8] = 10;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public LegacyMessageListFragment() {
        int i = 18;
        int i2 = 14;
        Http2Connection.ReaderRunnable readerRunnable = new Http2Connection.ReaderRunnable(i2, this, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i));
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.legacyViewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode, readerRunnable);
        int i3 = 15;
        this.recentChangesViewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(i3, this, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 19)));
        final int i4 = 0;
        LegacyMessageListFragment$special$$inlined$inject$default$1 legacyMessageListFragment$special$$inlined$inject$default$1 = new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i4);
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.SYNCHRONIZED;
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode2, legacyMessageListFragment$special$$inlined$inject$default$1);
        this.sortTypeToastProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 11));
        int i5 = 13;
        this.folderNameFormatter$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new Http2Connection.ReaderRunnable(i5, this, new K9$$ExternalSyntheticLambda0(i, this)));
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 12));
        this.messagingControllerRegistry$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i5));
        this.accountManager$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i2));
        this.connectivityManager$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i3));
        this.localStoreProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 16));
        this.setupArchiveFolderDialogFragmentFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 17));
        final int i6 = 1;
        this.buildSwipeActions$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, i6));
        this.featureFlagProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 2));
        this.featureThemeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 3));
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 4));
        this.outboxFolderManager$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 5));
        ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 6));
        this.errorNotificationsDialogFragmentFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 7));
        this.handler = new MessageListHandler(this);
        this.activityListener = new MessageListFragment.MessageListActivityListener(this);
        DependencyGraph dependencyGraph = new DependencyGraph();
        dependencyGraph.mMeasure = this;
        this.actionModeCallback = dependencyGraph;
        this.contactRepository$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 8));
        this.avatarMonogramCreator$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 9));
        this.relativeDateTimeFormatter$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new LegacyMessageListFragment$special$$inlined$inject$default$1(this, 10));
        this.chooseFolderForMoveLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ LegacyMessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i7 = i4;
                LegacyMessageListFragment legacyMessageListFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                switch (i7) {
                    case 0:
                        legacyMessageListFragment.handleChooseFolderResult(result, new LegacyMessageListFragment$$ExternalSyntheticLambda11(legacyMessageListFragment, 2));
                        break;
                    default:
                        legacyMessageListFragment.handleChooseFolderResult(result, new LegacyMessageListFragment$$ExternalSyntheticLambda11(legacyMessageListFragment, 1));
                        break;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.MOVE));
        this.chooseFolderForCopyLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda4
            public final /* synthetic */ LegacyMessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i7 = i6;
                LegacyMessageListFragment legacyMessageListFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                switch (i7) {
                    case 0:
                        legacyMessageListFragment.handleChooseFolderResult(result, new LegacyMessageListFragment$$ExternalSyntheticLambda11(legacyMessageListFragment, 2));
                        break;
                    default:
                        legacyMessageListFragment.handleChooseFolderResult(result, new LegacyMessageListFragment$$ExternalSyntheticLambda11(legacyMessageListFragment, 1));
                        break;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.COPY));
        this.initialSearchViewIconified = true;
        this.accounts = EmptyList.INSTANCE;
        this.sortType = SortType.SORT_DATE;
        this.sortAscending = true;
        this.isShowFloatingActionButton = true;
        this.initialMessageListLoad = true;
        this.shouldShowRecentChangesHintObserver = new LiveDataObservable$$ExternalSyntheticLambda3(2, this);
        this.swipeListener = new LegacyMessageListFragment$swipeListener$1(this);
        this.swipeActionSupportProvider = new LegacyMessageListFragment$$ExternalSyntheticLambda7(this, i4);
    }

    public static final ArrayList access$getSelectedMessages(LegacyMessageListFragment legacyMessageListFragment) {
        MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        ArrayList selectedMessages = messageListAdapter.getSelectedMessages();
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(selectedMessages, 10));
        Iterator it = selectedMessages.iterator();
        while (it.hasNext()) {
            arrayList.add(((MessageListItem) it.next()).getMessageReference());
        }
        return arrayList;
    }

    public static final boolean access$isMessageSelected(LegacyMessageListFragment legacyMessageListFragment, MessageListItem messageListItem) {
        MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
        if (messageListAdapter != null) {
            return messageListAdapter.isSelected(messageListItem);
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void access$onSnackbarInAppNotificationEvent(com.fsck.k9.ui.messagelist.LegacyMessageListFragment r4, kotlin.coroutines.Continuation r5) {
        /*
            r4.getClass()
            boolean r0 = r5 instanceof com.fsck.k9.ui.messagelist.LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1
            if (r0 == 0) goto L16
            r0 = r5
            com.fsck.k9.ui.messagelist.LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1 r0 = (com.fsck.k9.ui.messagelist.LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L16
            int r1 = r1 - r2
            r0.label = r1
            goto L1b
        L16:
            com.fsck.k9.ui.messagelist.LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1 r0 = new com.fsck.k9.ui.messagelist.LegacyMessageListFragment$onSnackbarInAppNotificationEvent$1
            r0.<init>(r4, r5)
        L1b:
            java.lang.Object r4 = r0.result
            int r5 = r0.label
            r0 = 0
            if (r5 == 0) goto L33
            r1 = 1
            if (r5 != r1) goto L2b
            kotlin.ResultKt.throwOnFailure(r4)
            java.lang.CharSequence r4 = (java.lang.CharSequence) r4
            throw r0
        L2b:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L33:
            kotlin.ResultKt.throwOnFailure(r4)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagelist.LegacyMessageListFragment.access$onSnackbarInAppNotificationEvent(com.fsck.k9.ui.messagelist.LegacyMessageListFragment, kotlin.coroutines.Continuation):void");
    }

    public static final void access$setFlagForSelected(LegacyMessageListFragment legacyMessageListFragment, Flag flag, boolean z) {
        MessageListAdapter messageListAdapter = legacyMessageListFragment.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (messageListAdapter.selected.isEmpty()) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashSet<LegacyAccount> linkedHashSet = new LinkedHashSet();
        MessageListAdapter messageListAdapter2 = legacyMessageListFragment.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Iterator it = messageListAdapter2.getSelectedMessages().iterator();
        while (it.hasNext()) {
            MessageListItem messageListItem = (MessageListItem) it.next();
            LegacyAccount legacyAccount = messageListItem.account;
            linkedHashSet.add(legacyAccount);
            if (!legacyMessageListFragment.showingThreadedList || messageListItem.threadCount <= 1) {
                Object obj = linkedHashMap.get(legacyAccount);
                if (obj == null) {
                    obj = new ArrayList();
                    linkedHashMap.put(legacyAccount, obj);
                }
                ((List) obj).add(Long.valueOf(messageListItem.databaseId));
            } else {
                Object obj2 = linkedHashMap2.get(legacyAccount);
                if (obj2 == null) {
                    obj2 = new ArrayList();
                    linkedHashMap2.put(legacyAccount, obj2);
                }
                ((List) obj2).add(Long.valueOf(messageListItem.threadRoot));
            }
        }
        for (LegacyAccount legacyAccount2 : linkedHashSet) {
            List list = (List) linkedHashMap.get(legacyAccount2);
            if (list != null) {
                legacyMessageListFragment.getMessagingController().setFlag(legacyAccount2.id, list, flag, z);
            }
            List list2 = (List) linkedHashMap2.get(legacyAccount2);
            if (list2 != null) {
                legacyMessageListFragment.getMessagingController().setFlagForThreads(legacyAccount2.id, list2, flag, z);
            }
        }
        legacyMessageListFragment.computeBatchDirection();
    }

    public final void changeSort(SortType sortType) {
        Boolean valueOf = this.sortType == sortType ? Boolean.valueOf(!this.sortAscending) : null;
        this.sortType = sortType;
        LegacyAccount legacyAccount = this.account;
        SortType sortType2 = SortType.SORT_DATE;
        if (legacyAccount != null) {
            Map map = legacyAccount.sortAscending;
            boolean booleanValue = (valueOf == null && (valueOf = (Boolean) map.get(sortType)) == null) ? sortType.isDefaultAscending : valueOf.booleanValue();
            this.sortAscending = booleanValue;
            LinkedHashMap mutableMap = MapsKt__MapsKt.toMutableMap(map);
            mutableMap.put(sortType, Boolean.valueOf(booleanValue));
            Boolean bool = (Boolean) mutableMap.get(sortType2);
            this.sortDateAscending = bool != null ? bool.booleanValue() : false;
            LegacyAccount copy$default = LegacyAccount.copy$default(legacyAccount, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, sortType, mutableMap, null, false, null, 0, 0, 0, 0, false, false, false, 0, null, null, false, null, -1, -1537, 8388607);
            LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(this);
            DefaultScheduler defaultScheduler = Dispatchers.Default;
            JobKt.launch$default(lifecycleScope, DefaultIoScheduler.INSTANCE, null, new InterruptibleKt$runInterruptible$2(this, copy$default, null, 5), 2);
        } else {
            K9.setSortType(sortType);
            if (valueOf == null) {
                this.sortAscending = K9.isSortAscending(this.sortType);
            } else {
                this.sortAscending = valueOf.booleanValue();
            }
            K9.setSortAscending(this.sortType, this.sortAscending);
            this.sortDateAscending = K9.isSortAscending(sortType2);
            K9.saveSettingsAsync();
        }
        SortTypeToastProvider sortTypeToastProvider = (SortTypeToastProvider) this.sortTypeToastProvider$delegate.getValue();
        SortType sortType3 = this.sortType;
        boolean z = this.sortAscending;
        sortTypeToastProvider.getClass();
        Toast.makeText(getActivity(), SortTypeToastProvider.getToast(sortType3, z), 0).show();
        loadMessageList(false);
    }

    public final boolean checkCopyOrMovePossible(List list, FolderOperation folderOperation) {
        LegacyAccount account;
        FolderOperation folderOperation2;
        if (!list.isEmpty() && (account = getAccountManager$1().getAccount(((MessageReference) CollectionsKt.first(list)).accountUuid)) != null) {
            AccountId accountId = account.id;
            FolderOperation folderOperation3 = FolderOperation.MOVE;
            if ((folderOperation != folderOperation3 || getMessagingController().isMoveCapable(accountId)) && (folderOperation != (folderOperation2 = FolderOperation.COPY) || getMessagingController().isCopyCapable(accountId))) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    MessageReference messageReference = (MessageReference) it.next();
                    if (folderOperation == folderOperation3) {
                        MessagingControllerWrapper messagingController = getMessagingController();
                        messagingController.getClass();
                        messageReference.getClass();
                        if (!messagingController.messagingController.isMoveCapable(messageReference)) {
                            Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
                            return false;
                        }
                    }
                    if (folderOperation == folderOperation2) {
                        MessagingControllerWrapper messagingController2 = getMessagingController();
                        messagingController2.getClass();
                        messageReference.getClass();
                        if (!messagingController2.messagingController.isMoveCapable(messageReference)) {
                            Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void collapseSearchView$1() {
        SearchView searchView = this.searchView;
        if (searchView != null) {
            searchView.setQuery$1(null);
            searchView.setIconified(true);
        }
    }

    public final void computeBatchDirection() {
        boolean z;
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        ArrayList selectedMessages = messageListAdapter.getSelectedMessages();
        boolean z2 = false;
        if (!selectedMessages.isEmpty()) {
            Iterator it = selectedMessages.iterator();
            while (it.hasNext()) {
                if (!((MessageListItem) it.next()).isRead) {
                    z = false;
                    break;
                }
            }
        }
        z = true;
        boolean z3 = !z;
        if (!selectedMessages.isEmpty()) {
            Iterator it2 = selectedMessages.iterator();
            while (it2.hasNext()) {
                if (!((MessageListItem) it2.next()).isStarred) {
                    break;
                }
            }
        }
        z2 = true;
        boolean z4 = !z2;
        DependencyGraph dependencyGraph = this.actionModeCallback;
        if (!dependencyGraph.mNeedBuildGraph) {
            MenuItem menuItem = (MenuItem) dependencyGraph.mContainer;
            if (menuItem != null) {
                menuItem.setVisible(z3);
            }
            MenuItem menuItem2 = (MenuItem) dependencyGraph.mRuns;
            if (menuItem2 != null) {
                menuItem2.setVisible(z);
            }
        }
        if (dependencyGraph.mNeedRedoMeasures) {
            return;
        }
        MenuItem menuItem3 = (MenuItem) dependencyGraph.mGroups;
        if (menuItem3 != null) {
            menuItem3.setVisible(z4);
        }
        MenuItem menuItem4 = (MenuItem) dependencyGraph.mMeasurer;
        if (menuItem4 != null) {
            menuItem4.setVisible(z2);
        }
    }

    public final void copyOrMove(List list, long j, FolderOperation folderOperation) {
        if (checkCopyOrMovePossible(list, folderOperation)) {
            int i = 2;
            FilteringSequence filteringSequence = new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i, list), false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(5, j));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(filteringSequence);
            while (filteringSequence$iterator$1.hasNext()) {
                Object next = filteringSequence$iterator$1.next();
                Long valueOf = Long.valueOf(((MessageReference) next).folderId);
                Object obj = linkedHashMap.get(valueOf);
                if (obj == null) {
                    obj = new ArrayList();
                    linkedHashMap.put(valueOf, obj);
                }
                ((List) obj).add(next);
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                long longValue = ((Number) entry.getKey()).longValue();
                List list2 = (List) entry.getValue();
                LegacyAccount account = getAccountManager$1().getAccount(((MessageReference) CollectionsKt.first(list2)).accountUuid);
                if (account == null) {
                    Sink$CC.debug$default((Logger) this.logger$delegate.getValue(), this.logTag, null, new Handshake$Companion$$ExternalSyntheticLambda0(i, list2), 2);
                } else {
                    AccountId accountId = account.id;
                    int i2 = WhenMappings.$EnumSwitchMapping$1[folderOperation.ordinal()];
                    if (i2 == 2 && this.showingThreadedList) {
                        getMessagingController().moveMessagesInThread(account.id, longValue, list2, j);
                    } else {
                        long j2 = j;
                        if (i2 == 2) {
                            MessagingControllerWrapper messagingController = getMessagingController();
                            messagingController.getClass();
                            accountId.getClass();
                            messagingController.messagingController.moveMessages(messagingController.getAccountDtoOrThrow(accountId), longValue, list2, j2);
                        } else if (i2 == 1 && this.showingThreadedList) {
                            getMessagingController().copyMessagesInThread(account.id, longValue, list2, j2);
                        } else {
                            if (i2 != 1) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return;
                            }
                            MessagingControllerWrapper messagingController2 = getMessagingController();
                            messagingController2.getClass();
                            accountId.getClass();
                            messagingController2.messagingController.copyMessages(messagingController2.getAccountDtoOrThrow(accountId), longValue, list2, j2);
                        }
                        j = j2;
                    }
                }
            }
        }
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void dialogCancelled(int i) {
        doNegativeClick(i);
    }

    public final void displayFolderChoice(FolderOperation folderOperation, Long l, String str, List list) {
        this.activeMessages = list;
        ChooseFolderResultContract.Input input = new ChooseFolderResultContract.Input(8, l, str);
        int ordinal = folderOperation.ordinal();
        if (ordinal == 0) {
            this.chooseFolderForCopyLauncher.launch(input);
        } else if (ordinal == 1) {
            this.chooseFolderForMoveLauncher.launch(input);
        } else {
            UriKt$$ExternalSyntheticBUOutline0.m857m();
        }
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doNegativeClick(int i) {
        List list;
        if ((i == R.id.dialog_confirm_spam || i == R.id.dialog_confirm_delete) && (list = this.activeMessages) != null) {
            if (list.size() == 1) {
                resetSwipedView((MessageReference) CollectionsKt.first(list));
            }
            this.activeMessages = null;
        }
    }

    @Override // com.fsck.k9.fragment.ConfirmationDialogFragment.ConfirmationDialogFragmentListener
    public final void doPositiveClick(int i) {
        LegacyAccount legacyAccount;
        AccountId accountId;
        AccountId accountId2;
        LegacyAccount legacyAccount2;
        AccountId accountId3;
        if (i == R.id.dialog_confirm_spam) {
            List list = this.activeMessages;
            list.getClass();
            onSpamConfirmed(list);
            this.activeMessages = null;
            return;
        }
        if (i == R.id.dialog_confirm_delete) {
            List list2 = this.activeMessages;
            list2.getClass();
            if (this.showingThreadedList) {
                MessagingControllerWrapper messagingController = getMessagingController();
                messagingController.getClass();
                MessagingController messagingController2 = messagingController.messagingController;
                messagingController2.actOnMessagesGroupedByAccountAndFolder(list2, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, messagingController2));
            } else {
                MessagingControllerWrapper messagingController3 = getMessagingController();
                messagingController3.getClass();
                MessagingController messagingController4 = messagingController3.messagingController;
                messagingController4.actOnMessagesGroupedByAccountAndFolder(list2, new MessagingController$$ExternalSyntheticLambda9(messagingController4, false));
            }
            this.activeMessage = null;
            MessageListAdapter messageListAdapter = this.adapter;
            if (messageListAdapter != null) {
                messageListAdapter.setActiveMessage(null);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
        }
        if (i == R.id.dialog_confirm_mark_all_as_read) {
            if (!this.isSingleAccountMode || !this.isSingleFolderMode || isOutbox() || (legacyAccount2 = this.account) == null || (accountId3 = legacyAccount2.id) == null) {
                return;
            }
            MessagingControllerWrapper messagingController5 = getMessagingController();
            FolderInfoHolder folderInfoHolder = this.currentFolder;
            folderInfoHolder.getClass();
            long j = folderInfoHolder.databaseId;
            messagingController5.getClass();
            LegacyAccountDto accountDtoOrThrow = messagingController5.getAccountDtoOrThrow(accountId3);
            MessagingController messagingController6 = messagingController5.messagingController;
            messagingController6.queuePendingCommand(accountDtoOrThrow, MessagingControllerCommands$PendingMarkAllAsRead.create(j));
            messagingController6.processPendingCommands(accountDtoOrThrow);
            return;
        }
        if (i == R.id.dialog_confirm_empty_spam) {
            LegacyAccount legacyAccount3 = this.account;
            if (legacyAccount3 == null || (accountId2 = legacyAccount3.id) == null) {
                return;
            }
            MessagingControllerWrapper messagingController7 = getMessagingController();
            messagingController7.getClass();
            LegacyAccountDto accountDtoOrThrow2 = messagingController7.getAccountDtoOrThrow(accountId2);
            MessagingController messagingController8 = messagingController7.messagingController;
            messagingController8.putBackground("emptySpam", new MessagingController.AnonymousClass3(messagingController8, accountDtoOrThrow2, 3));
            return;
        }
        if (i != R.id.dialog_confirm_empty_trash || (legacyAccount = this.account) == null || (accountId = legacyAccount.id) == null) {
            return;
        }
        MessagingControllerWrapper messagingController9 = getMessagingController();
        messagingController9.getClass();
        LegacyAccountDto accountDtoOrThrow3 = messagingController9.getAccountDtoOrThrow(accountId);
        MessagingController messagingController10 = messagingController9.messagingController;
        messagingController10.putBackground("emptyTrash", new MessagingController.AnonymousClass3(messagingController10, accountDtoOrThrow3, 4));
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void expandSearchView() {
        SearchView searchView = this.searchView;
        if (searchView != null) {
            searchView.setIconified(false);
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListItemActionListener
    public final boolean filterInAppNotificationEvents(InAppNotification inAppNotification) {
        inAppNotification.getClass();
        String accountUuid = inAppNotification.getAccountUuid();
        if ((inAppNotification instanceof SentFolderNotFoundNotification) || accountUuid == null) {
            return false;
        }
        String[] strArr = this.accountUuids;
        if (strArr != null) {
            return ArraysKt___ArraysKt.contains(strArr, accountUuid);
        }
        Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
        throw null;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void finishActionMode() {
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void folderLoading(long j, boolean z) {
        FolderInfoHolder folderInfoHolder = this.currentFolder;
        if (folderInfoHolder == null || folderInfoHolder.databaseId != j) {
            return;
        }
        folderInfoHolder.loading = z;
        updateFooterText();
    }

    public final DefaultLegacyAccountManager getAccountManager$1() {
        return (DefaultLegacyAccountManager) this.accountManager$delegate.getValue();
    }

    public final GeneralSettingsManager getGeneralSettingsManager$2() {
        return (GeneralSettingsManager) this.generalSettingsManager$delegate.getValue();
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final MessageListViewModel getLegacyViewModel() {
        return (MessageListViewModel) this.legacyViewModel$delegate.getValue();
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final LocalMessageSearch getLocalSearch() {
        LocalMessageSearch localMessageSearch = this.localSearch;
        if (localMessageSearch != null) {
            return localMessageSearch;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localSearch");
        throw null;
    }

    public final DisplayMessageListSettings getMessageListSettings() {
        return ((DefaultGeneralSettingsManager) getGeneralSettingsManager$2()).getConfig().display.visualSettings.messageListSettings;
    }

    public final MessagingControllerWrapper getMessagingController() {
        return (MessagingControllerWrapper) this.messagingController$delegate.getValue();
    }

    public final MessageListItem getSelectedMessageListItem() {
        View focusedChild;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null) {
            return null;
        }
        View findContainingItemView = recyclerView.findContainingItemView(focusedChild);
        RecyclerView.ViewHolder childViewHolder = findContainingItemView == null ? null : recyclerView.getChildViewHolder(findContainingItemView);
        MessageViewHolder messageViewHolder = childViewHolder instanceof MessageViewHolder ? (MessageViewHolder) childViewHolder : null;
        if (messageViewHolder == null) {
            return null;
        }
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter != null) {
            return messageListAdapter.getItemById(messageViewHolder.uniqueId);
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        throw null;
    }

    public final void handleChooseFolderResult(ChooseFolderResultContract.Result result, Function2 function2) {
        MessageReference messageReference;
        LegacyAccount account;
        if (result == null) {
            return;
        }
        long j = result.folderId;
        List list = this.activeMessages;
        list.getClass();
        if (j != -1) {
            this.activeMessages = null;
            if (!list.isEmpty() && (messageReference = (MessageReference) CollectionsKt.firstOrNull(list)) != null && (account = getAccountManager$1().getAccount(messageReference.accountUuid)) != null) {
                DefaultLegacyAccountManager accountManager$1 = getAccountManager$1();
                LegacyAccount copy$default = LegacyAccount.copy$default(account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, Long.valueOf(j), null, false, null, -1, -1, 8355839);
                accountManager$1.getClass();
                accountManager$1.saveAccount(copy$default);
            }
            function2.invoke(Long.valueOf(j), list);
        }
    }

    public final boolean isOutbox() {
        AccountId accountId;
        LegacyAccount legacyAccount = this.account;
        return isSpecialFolder((legacyAccount == null || (accountId = legacyAccount.id) == null) ? null : Long.valueOf(Sink$CC.getOutboxFolderIdSync$default((DefaultOutboxFolderManager) this.outboxFolderManager$delegate.getValue(), accountId)));
    }

    public final boolean isRemoteFolder() {
        if (getLocalSearch().isManualSearch || isOutbox()) {
            return false;
        }
        LegacyAccount legacyAccount = this.account;
        AccountId accountId = legacyAccount != null ? legacyAccount.id : null;
        if (accountId != null && getMessagingController().isMoveCapable(accountId)) {
            return true;
        }
        LegacyAccount legacyAccount2 = this.account;
        return isSpecialFolder(legacyAccount2 != null ? legacyAccount2.inboxFolderId : null);
    }

    public final boolean isRemoteSearchAllowed() {
        LegacyAccount legacyAccount;
        AccountId accountId;
        if (getLocalSearch().isManualSearch && !this.isRemoteSearch && this.isSingleFolderMode && (legacyAccount = this.account) != null && (accountId = legacyAccount.id) != null) {
            MessagingControllerWrapper messagingController = getMessagingController();
            messagingController.getClass();
            LegacyAccountDto accountDtoOrNull = messagingController.getAccountDtoOrNull(accountId);
            if (accountDtoOrNull == null ? false : messagingController.messagingController.getBackend(accountDtoOrNull).isPushCapable()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final boolean isSearchViewCollapsed$1() {
        SearchView searchView = this.searchView;
        boolean z = false;
        if (searchView != null && !searchView.mIconified) {
            z = true;
        }
        return !z;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final boolean isShowAccountIndicator$1() {
        return Intrinsics.areEqual(getLocalSearch().id, "unified_folders") || !this.isSingleAccountMode;
    }

    public final boolean isShowingSpamFolder() {
        if (!this.isSingleFolderMode) {
            return false;
        }
        FolderInfoHolder folderInfoHolder = this.currentFolder;
        folderInfoHolder.getClass();
        long j = folderInfoHolder.databaseId;
        LegacyAccount legacyAccount = this.account;
        legacyAccount.getClass();
        Long l = legacyAccount.spamFolderId;
        return l != null && j == l.longValue();
    }

    public final boolean isShowingTrashFolder() {
        if (!this.isSingleFolderMode) {
            return false;
        }
        FolderInfoHolder folderInfoHolder = this.currentFolder;
        folderInfoHolder.getClass();
        long j = folderInfoHolder.databaseId;
        LegacyAccount legacyAccount = this.account;
        legacyAccount.getClass();
        Long l = legacyAccount.trashFolderId;
        return l != null && j == l.longValue();
    }

    public final boolean isSpecialFolder(Long l) {
        if (l != null) {
            long longValue = l.longValue();
            FolderInfoHolder folderInfoHolder = this.currentFolder;
            if (folderInfoHolder != null && folderInfoHolder.databaseId == longValue) {
                return true;
            }
        }
        return false;
    }

    public final void loadMessageList(boolean z) {
        LocalMessageSearch localSearch = getLocalSearch();
        MessageListConfig messageListConfig = new MessageListConfig(localSearch, this.showingThreadedList, this.sortType, this.sortAscending, this.sortDateAscending, this.activeMessage, MapsKt__MapsKt.toMap(getLegacyViewModel().messageSortOverrides));
        if (z) {
            this.accounts = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(localSearch, getAccountManager$1());
        }
        getLegacyViewModel().loadMessageList(messageListConfig, z);
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onArchive() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        MessageReference messageReference = selectedMessageListItem != null ? selectedMessageListItem.getMessageReference() : null;
        if (messageReference != null) {
            List listOf = IntOffsetKt.listOf(messageReference);
            if (checkCopyOrMovePossible(listOf, FolderOperation.MOVE)) {
                if (!this.showingThreadedList) {
                    getMessagingController().messagingController.archiveOperations.archiveMessages(listOf);
                    return;
                }
                Base64Util base64Util = getMessagingController().messagingController.archiveOperations;
                base64Util.getClass();
                ((MessagingController) base64Util.alphabet).actOnMessagesGroupedByAccountAndFolder(listOf, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(20, new ArchiveOperations$$ExternalSyntheticLambda2(base64Util, "archiveThreads", new ArchiveOperations$$ExternalSyntheticLambda0(base64Util, 1), 0)));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        context.getClass();
        super.onAttach(context);
        try {
            this.fragmentListener = (MessageHomeActivity) context;
        } catch (ClassCastException unused) {
            throw new IllegalStateException((context.getClass() + " must implement MessageListFragmentListener").toString());
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onCompose() {
        boolean z = this.isSingleAccountMode;
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (!z) {
            if (messageHomeActivity != null) {
                SchemaInfoUtilKt.actionCompose(messageHomeActivity, null);
                return;
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                throw null;
            }
        }
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        LegacyAccount legacyAccount = this.account;
        SchemaInfoUtilKt.actionCompose(messageHomeActivity, legacyAccount != null ? (LegacyAccountDto) ((DefaultLegacyAccountDataMapper) messageHomeActivity.legacyAccountDataMapper$delegate.getValue()).toDto(legacyAccount) : null);
    }

    public final void onCopy(List list) {
        Long l;
        FolderOperation folderOperation = FolderOperation.COPY;
        if (checkCopyOrMovePossible(list, folderOperation)) {
            if (this.isThreadDisplay) {
                l = Long.valueOf(((MessageReference) CollectionsKt.first(list)).folderId);
            } else if (this.isSingleFolderMode) {
                FolderInfoHolder folderInfoHolder = this.currentFolder;
                folderInfoHolder.getClass();
                l = Long.valueOf(folderInfoHolder.databaseId);
            } else {
                l = null;
            }
            displayFolderChoice(folderOperation, l, ((MessageReference) CollectionsKt.first(list)).accountUuid, list);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        Error error;
        ArrayList arrayList;
        super.onCreate(bundle);
        int i = 0;
        Continuation continuation = null;
        int i2 = 1;
        if (bundle != null) {
            String[] stringArray = bundle.getStringArray("activeMessages");
            if (stringArray != null) {
                arrayList = new ArrayList(stringArray.length);
                for (String str : stringArray) {
                    MessageReference parse = MathKt.parse(str);
                    parse.getClass();
                    arrayList.add(parse);
                }
            } else {
                arrayList = null;
            }
            this.activeMessages = arrayList;
            long[] longArray = bundle.getLongArray("selectedMessages");
            this.rememberedSelected = longArray != null ? ArraysKt___ArraysKt.toSet(longArray) : null;
            this.isRemoteSearch = bundle.getBoolean("remoteSearchPerformed");
            this.initialSearchViewQuery = bundle.getString("searchViewQuery");
            this.initialSearchViewIconified = bundle.getBoolean("searchViewIconified", true);
            this.activeMessage = MathKt.parse(bundle.getString("activeMessage"));
        }
        Bundle requireArguments = requireArguments();
        this.showingThreadedList = requireArguments.getBoolean("showingThreadedList", false);
        this.isThreadDisplay = requireArguments.getBoolean("isThreadedDisplay", false);
        byte[] byteArray = requireArguments.getByteArray("searchObject");
        LocalMessageSearch deserialize = byteArray != null ? LocalMessageSearchSerializer.deserialize(byteArray) : null;
        deserialize.getClass();
        this.localSearch = deserialize;
        this.allAccounts = getLocalSearch().accountUuidSet.isEmpty();
        ArrayList legacyAccountsFromLocalSearch = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(getLocalSearch(), getAccountManager$1());
        this.accounts = legacyAccountsFromLocalSearch;
        if (legacyAccountsFromLocalSearch.size() == 1) {
            this.isSingleAccountMode = true;
            LegacyAccount legacyAccount = (LegacyAccount) legacyAccountsFromLocalSearch.get(0);
            this.account = legacyAccount;
            this.accountUuids = new String[]{legacyAccount.uuid};
        } else {
            this.isSingleAccountMode = false;
            this.account = null;
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(legacyAccountsFromLocalSearch, 10));
            Iterator it = legacyAccountsFromLocalSearch.iterator();
            while (it.hasNext()) {
                arrayList2.add(((LegacyAccount) it.next()).uuid);
            }
            this.accountUuids = (String[]) arrayList2.toArray(new String[0]);
        }
        this.isSingleFolderMode = false;
        if (this.isSingleAccountMode && getLocalSearch().getFolderIds().size() == 1) {
            try {
                LegacyAccount legacyAccount2 = this.account;
                if (legacyAccount2 == null) {
                    throw new IllegalStateException("Required value was null.");
                }
                LocalFolder localFolder = new LocalFolder(((LocalStoreProvider) this.localStoreProvider$delegate.getValue()).getInstanceByLegacyAccount(legacyAccount2), ((Number) getLocalSearch().getFolderIds().get(0)).longValue());
                localFolder.open();
                this.currentFolder = new FolderInfoHolder((FolderNameFormatter) this.folderNameFormatter$delegate.getValue(), (DefaultOutboxFolderManager) this.outboxFolderManager$delegate.getValue(), localFolder, legacyAccount2);
                this.isSingleFolderMode = true;
            } catch (MessagingException unused) {
                error = Error.FolderNotFound;
            }
        }
        error = null;
        if (error != null) {
            this.error = error;
            return;
        }
        int i3 = 5;
        getLegacyViewModel().messageListLiveData.observe(this, new BaseActivity$sam$androidx_lifecycle_Observer$0(i3, new LegacyMessageListFragment$$ExternalSyntheticLambda1(this, i)));
        Resources.Theme theme = requireActivity().getTheme();
        theme.getClass();
        Resources resources = getResources();
        resources.getClass();
        LayoutInflater layoutInflater = getLayoutInflater();
        layoutInflater.getClass();
        MessageListAdapter messageListAdapter = new MessageListAdapter(theme, resources, layoutInflater, (ContactPictureLoader) CloseableKt.get$default(ContactPictureLoader.class), this, new LockFreeLinkedListNode$toString$1(0, 5, LegacyMessageListFragment.class, this, "messageListAppearance", "getMessageListAppearance()Lcom/fsck/k9/ui/messagelist/MessageListAppearance;"), (FeatureThemeProvider) this.featureThemeProvider$delegate.getValue(), (InMemoryFeatureFlagProvider) this.featureFlagProvider$delegate.getValue(), (ContactRepository) this.contactRepository$delegate.getValue(), (DefaultAvatarMonogramCreator) this.avatarMonogramCreator$delegate.getValue(), new LegacyMessageListFragment$$ExternalSyntheticLambda1(this, i2));
        messageListAdapter.setActiveMessage(this.activeMessage);
        this.adapter = messageListAdapter;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = getMessageListSettings().dateTimeFormat;
        FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(((DefaultGeneralSettingsManager) getGeneralSettingsManager$2()).generalSettings, i), new ImageLoadKt$ImageLoad$2$1$1(this, ref$ObjectRef, continuation, i3), 2), ViewModelKt.getLifecycleScope(this));
        this.isInitialized = true;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        int i = 0;
        if (this.error != null) {
            return layoutInflater.inflate(R.layout.message_list_error, viewGroup, false);
        }
        View inflate = layoutInflater.inflate(R.layout.message_list_fragment, viewGroup, false);
        getParentFragmentManager().setFragmentResultListener("SetupArchiveFolderDialogFragmentFactory_dialog_dismiss", this, new FragmentKt$$ExternalSyntheticLambda0(i, new LegacyMessageListFragment$$ExternalSyntheticLambda11(this, i)));
        return inflate;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onCycleSort() {
        SortType sortType = this.sortType;
        EnumEntriesList enumEntriesList = SortType.$ENTRIES;
        int indexOf = enumEntriesList.indexOf(sortType);
        changeSort((SortType) enumEntriesList.get(indexOf == enumEntriesList.getSize() + (-1) ? 0 : indexOf + 1));
    }

    public final void onDelete(List list) {
        if (((DefaultGeneralSettingsManager) getGeneralSettingsManager$2()).getConfig().interaction.isConfirmDelete) {
            this.activeMessages = list;
            showDialog$1(R.id.dialog_confirm_delete);
        } else {
            if (this.showingThreadedList) {
                MessagingControllerWrapper messagingController = getMessagingController();
                messagingController.getClass();
                MessagingController messagingController2 = messagingController.messagingController;
                messagingController2.actOnMessagesGroupedByAccountAndFolder(list, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, messagingController2));
                return;
            }
            MessagingControllerWrapper messagingController3 = getMessagingController();
            messagingController3.getClass();
            MessagingController messagingController4 = messagingController3.messagingController;
            messagingController4.actOnMessagesGroupedByAccountAndFolder(list, new MessagingController$$ExternalSyntheticLambda9(messagingController4, false));
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LegacyAccount legacyAccount;
        AccountId accountId;
        this.coordinatorLayout = null;
        this.recyclerView = null;
        this.itemTouchHelper = null;
        this.swipeRefreshLayout = null;
        this.floatingActionButton = null;
        int i = 1;
        if (Intrinsics.areEqual(getLocalSearch().id, "new_messages") && !requireActivity().isChangingConfigurations() && (legacyAccount = this.account) != null && (accountId = legacyAccount.id) != null) {
            MessagingControllerWrapper messagingController = getMessagingController();
            messagingController.getClass();
            LegacyAccountDto accountDtoOrThrow = messagingController.getAccountDtoOrThrow(accountId);
            MessagingController messagingController2 = messagingController.messagingController;
            messagingController2.put("clearNewMessages", new MessagingController$$ExternalSyntheticLambda8(messagingController2, accountDtoOrThrow, i));
        }
        this.mCalled = true;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onFullyActive() {
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton != null) {
            floatingActionButton.setVisibility(0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onMessageClicked(MessageListItem messageListItem) {
        String str;
        messageListItem.getClass();
        if (this.isActive) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime - this.lastMessageClick < 200) {
                return;
            }
            MessageListAdapter messageListAdapter = this.adapter;
            if (messageListAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            if (messageListAdapter.selectedCount > 0) {
                toggleMessageSelect(messageListItem);
                return;
            }
            this.lastMessageClick = elapsedRealtime;
            if (!this.showingThreadedList || messageListItem.threadCount <= 1) {
                MessageReference messageReference = messageListItem.getMessageReference();
                MessageHomeActivity messageHomeActivity = this.fragmentListener;
                if (messageHomeActivity != null) {
                    messageHomeActivity.openMessage(messageReference);
                    return;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                    throw null;
                }
            }
            MessageHomeActivity messageHomeActivity2 = this.fragmentListener;
            if (messageHomeActivity2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                throw null;
            }
            LegacyAccount legacyAccount = messageListItem.account;
            long j = messageListItem.threadRoot;
            String str2 = legacyAccount.uuid;
            messageHomeActivity2.showMessageViewPlaceHolder();
            LocalMessageSearch localMessageSearch = new LocalMessageSearch();
            LocalMessageSearch localMessageSearch2 = messageHomeActivity2.search;
            if (localMessageSearch2 == null || (str = localMessageSearch2.id) == null) {
                str = "ShowThread-" + str2 + "-" + j;
            }
            localMessageSearch.id = str;
            localMessageSearch.addAccountUuid(str2);
            localMessageSearch.and(MessageSearchField.THREAD_ID, String.valueOf(j), SearchAttribute.EQUALS);
            messageHomeActivity2.initializeFromLocalSearch(localMessageSearch);
            MessageListFragmentBridgeContract newInstance = ((MessageListFragment.Factory) messageHomeActivity2.messageListFragmentFactory$delegate.getValue()).newInstance(localMessageSearch, true, false);
            MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity2.messageListFragment;
            if (messageListFragmentBridgeContract != null) {
                messageListFragmentBridgeContract.setActive(false);
            }
            FragmentManagerImpl supportFragmentManager = messageHomeActivity2.getSupportFragmentManager();
            supportFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(supportFragmentManager);
            backStackRecord.replace(R.id.message_list_container, (Fragment) newInstance, null);
            backStackRecord.mReorderingAllowed = true;
            if (messageHomeActivity2.getSupportFragmentManager().getBackStackEntryCount() == 0) {
                backStackRecord.addToBackStack("first");
            } else {
                backStackRecord.addToBackStack(null);
            }
            backStackRecord.commit();
            messageHomeActivity2.messageListFragment = newInstance;
            newInstance.setActive(true);
            newInstance.onFullyActive();
            if (messageHomeActivity2.isDrawerEnabled()) {
                messageHomeActivity2.lockDrawer();
            }
        }
    }

    public final void onMove(List list) {
        Long l;
        FolderOperation folderOperation = FolderOperation.MOVE;
        if (checkCopyOrMovePossible(list, folderOperation)) {
            if (this.isThreadDisplay) {
                l = Long.valueOf(((MessageReference) CollectionsKt.first(list)).folderId);
            } else if (this.isSingleFolderMode) {
                FolderInfoHolder folderInfoHolder = this.currentFolder;
                folderInfoHolder.getClass();
                l = Long.valueOf(folderInfoHolder.databaseId);
            } else {
                l = null;
            }
            displayFolderChoice(folderOperation, l, ((MessageReference) CollectionsKt.first(list)).accountUuid, list);
        }
    }

    @Override // net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogFragmentActionListener
    public final void onNotificationActionClick(NotificationAction notificationAction) {
        notificationAction.getClass();
        if (notificationAction instanceof NotificationAction.UpdateIncomingServerSettings) {
            int i = FeatureLauncherActivity.$r8$clinit;
            FeatureLauncherActivity.Companion.launch(requireContext(), new FeatureLauncherTarget$AccountEditIncomingSettings(((NotificationAction.UpdateIncomingServerSettings) notificationAction).accountUuid));
            return;
        }
        if (notificationAction instanceof NotificationAction.UpdateOutgoingServerSettings) {
            int i2 = FeatureLauncherActivity.$r8$clinit;
            FeatureLauncherActivity.Companion.launch(requireContext(), new FeatureLauncherTarget$AccountEditOutgoingSettings(((NotificationAction.UpdateOutgoingServerSettings) notificationAction).accountUuid));
        } else if (notificationAction instanceof NotificationAction.OpenNotificationCentre) {
            ErrorNotificationsDialogFragment.Factory factory = (ErrorNotificationsDialogFragment.Factory) this.errorNotificationsDialogFragmentFactory$delegate.getValue();
            FragmentManager childFragmentManager = getChildFragmentManager();
            childFragmentManager.getClass();
            factory.getClass();
            new ErrorNotificationsDialogFragment().show(childFragmentManager, "ErrorNotificationsDialogFragment");
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListItemActionListener
    public final void onNotificationActionClicked(NotificationAction notificationAction) {
        notificationAction.getClass();
        onNotificationActionClick(notificationAction);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        this.mCalled = true;
        ((MessagingController) ((MessagingControllerRegistry) this.messagingControllerRegistry$delegate.getValue())).removeListener(this.activityListener);
    }

    public final void onRemoteSearchRequested() {
        FolderInfoHolder folderInfoHolder = this.currentFolder;
        folderInfoHolder.getClass();
        long j = folderInfoHolder.databaseId;
        String remoteSearchArguments = getLocalSearch().getRemoteSearchArguments();
        this.isRemoteSearch = true;
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.setEnabled(false);
        }
        LegacyAccount legacyAccount = this.account;
        if (legacyAccount == null) {
            return;
        }
        this.remoteSearchFuture = getMessagingController().searchRemoteMessages(legacyAccount.id, j, remoteSearchArguments, this.activityListener);
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        this.mCalled = true;
        if (this.hasConnectivity == null) {
            this.hasConnectivity = Boolean.valueOf(((ConnectivityManagerBase) this.connectivityManager$delegate.getValue()).isNetworkAvailable());
        }
        ((MessagingController) ((MessagingControllerRegistry) this.messagingControllerRegistry$delegate.getValue())).addListener(this.activityListener);
        updateTitle();
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onReverseSort() {
        changeSort(this.sortType);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        if (this.error != null) {
            return;
        }
        MessageListAdapter messageListAdapter = this.adapter;
        String[] strArr = null;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        bundle.putLongArray("selectedMessages", CollectionsKt.toLongArray(messageListAdapter.selected));
        bundle.putBoolean("remoteSearchPerformed", this.isRemoteSearch);
        SearchView searchView = this.searchView;
        if (searchView != null) {
            bundle.putString("searchViewQuery", searchView.getQuery().toString());
            bundle.putBoolean("searchViewIconified", searchView.mIconified);
        }
        List list = this.activeMessages;
        if (list != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((MessageReference) it.next()).toIdentityString());
            }
            strArr = (String[]) arrayList.toArray(new String[0]);
        }
        bundle.putStringArray("activeMessages", strArr);
        MessageReference messageReference = this.activeMessage;
        if (messageReference != null) {
            bundle.putString("activeMessage", messageReference.toIdentityString());
        }
    }

    public final void onSpamConfirmed(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            LegacyAccount account = getAccountManager$1().getAccount(((MessageReference) obj).accountUuid);
            account.getClass();
            Object obj2 = linkedHashMap.get(account);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(account, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            LegacyAccount legacyAccount = (LegacyAccount) entry.getKey();
            List list2 = (List) entry.getValue();
            Long l = legacyAccount.spamFolderId;
            if (l != null) {
                copyOrMove(list2, l.longValue(), FolderOperation.MOVE);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onStop() {
        String str = this.logTag;
        Lazy lazy = this.logger$delegate;
        if (this.isRemoteSearch && this.remoteSearchFuture != null) {
            try {
                Sink$CC.info$default((Logger) lazy.getValue(), str, null, new SyncDebugWorker$$ExternalSyntheticLambda0(28), 2);
                Future future = this.remoteSearchFuture;
                future.getClass();
                if (!future.cancel(true)) {
                    Sink$CC.error$default((Logger) lazy.getValue(), str, null, new SyncDebugWorker$$ExternalSyntheticLambda0(29), 2);
                }
                LegacyAccount legacyAccount = this.account;
                legacyAccount.getClass();
                MessageListFragment.MessageListActivityListener messageListActivityListener = this.activityListener;
                this.currentFolder.getClass();
                messageListActivityListener.remoteSearchFinished(legacyAccount.remoteSearchNumResults, null);
            } catch (Exception e) {
                ((Logger) lazy.getValue()).error(str, e, new SyncDebugWorker$$ExternalSyntheticLambda0(27));
            }
        }
        this.mCalled = true;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onToggleFlagged() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        if (selectedMessageListItem != null) {
            setFlag(selectedMessageListItem, Flag.FLAGGED, !selectedMessageListItem.isStarred);
        }
    }

    public final void onToggleMessageFlag(MessageListItem messageListItem) {
        messageListItem.getClass();
        setFlag(messageListItem, Flag.FLAGGED, !messageListItem.isStarred);
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onToggleRead() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        if (selectedMessageListItem != null) {
            setFlag(selectedMessageListItem, Flag.SEEN, !selectedMessageListItem.isRead);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(4, this), getViewLifecycleOwner());
        if (this.error != null) {
            MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.message_list_error_message);
            this.error.getClass();
            materialTextView.setText(getString(R.string.message_list_error_folder_not_found));
            return;
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view.findViewById(R.id.swiperefresh);
        final int i = 1;
        if (isRemoteSearchAllowed()) {
            swipeRefreshLayout.setOnRefreshListener(new LegacyMessageListFragment$$ExternalSyntheticLambda7(this, i));
        } else if (this.allAccounts || !this.isSingleAccountMode || !this.isSingleFolderMode || isRemoteFolder()) {
            swipeRefreshLayout.setOnRefreshListener(new LegacyMessageListFragment$$ExternalSyntheticLambda7(this, 2));
        }
        final int i2 = 0;
        swipeRefreshLayout.setEnabled(false);
        this.swipeRefreshLayout = swipeRefreshLayout;
        boolean z = ((DefaultGeneralSettingsManager) getGeneralSettingsManager$2()).getConfig().display.inboxSettings.isShowComposeButtonOnMessageList;
        this.isShowFloatingActionButton = z;
        if (z) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
            LegacyMessageListFragment$$ExternalSyntheticLambda7 legacyMessageListFragment$$ExternalSyntheticLambda7 = new LegacyMessageListFragment$$ExternalSyntheticLambda7(this, 3);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(floatingActionButton, legacyMessageListFragment$$ExternalSyntheticLambda7);
            floatingActionButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda12
                public final /* synthetic */ LegacyMessageListFragment f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    int i3 = i;
                    LegacyMessageListFragment legacyMessageListFragment = this.f$0;
                    switch (i3) {
                        case 0:
                            ((RecentChangesViewModel) legacyMessageListFragment.recentChangesViewModel$delegate.getValue()).shouldShowRecentChangesHint.removeObserver(legacyMessageListFragment.shouldShowRecentChangesHintObserver);
                            int i4 = FeatureLauncherActivity.$r8$clinit;
                            FeatureLauncherActivity.Companion.launch(legacyMessageListFragment.requireContext(), new FeatureLauncherTarget$Changelog(ChangeLogMode.RECENT_CHANGES));
                            break;
                        default:
                            legacyMessageListFragment.onCompose();
                            break;
                    }
                }
            });
            this.floatingActionButton = floatingActionButton;
        } else {
            FloatingActionButton floatingActionButton2 = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
            floatingActionButton2.getClass();
            floatingActionButton2.setVisibility(8);
        }
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
        MessageListFragment$$ExternalSyntheticLambda19 messageListFragment$$ExternalSyntheticLambda19 = new MessageListFragment$$ExternalSyntheticLambda19(view, i);
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(floatingActionButton3, messageListFragment$$ExternalSyntheticLambda19);
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.message_list);
        if (!this.isShowFloatingActionButton) {
            recyclerView.getClass();
            recyclerView.setPadding(0, 0, 0, 0);
        }
        recyclerView.setLayoutManager(new LinearLayoutManager());
        MessageListItemAnimator messageListItemAnimator = new MessageListItemAnimator();
        messageListItemAnimator.mSupportsChangeAnimations = false;
        messageListItemAnimator.mChangeDuration = 120L;
        recyclerView.setItemAnimator(messageListItemAnimator);
        Context requireContext = requireContext();
        LifecycleCoroutineScopeImpl lifecycleScope = ViewModelKt.getLifecycleScope(this);
        NavContext navContext = new NavContext(requireContext(), 13);
        ReadonlyStateFlow readonlyStateFlow = ((BuildSwipeActions) this.buildSwipeActions$delegate.getValue()).swipeActions;
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        ItemTouchHelper itemTouchHelper = new ItemTouchHelper(new MessageListSwipeCallback(requireContext, lifecycleScope, navContext, this.swipeActionSupportProvider, readonlyStateFlow, messageListAdapter, this.swipeListener, this.accounts));
        RecyclerView recyclerView2 = itemTouchHelper.mRecyclerView;
        if (recyclerView2 != recyclerView) {
            ItemTouchHelper.AnonymousClass2 anonymousClass2 = itemTouchHelper.mOnItemTouchListener;
            if (recyclerView2 != null) {
                recyclerView2.removeItemDecoration(itemTouchHelper);
                RecyclerView recyclerView3 = itemTouchHelper.mRecyclerView;
                recyclerView3.mOnItemTouchListeners.remove(anonymousClass2);
                if (recyclerView3.mInterceptingOnItemTouchListener == anonymousClass2) {
                    recyclerView3.mInterceptingOnItemTouchListener = null;
                }
                ArrayList arrayList = itemTouchHelper.mRecyclerView.mOnChildAttachStateListeners;
                if (arrayList != null) {
                    arrayList.remove(itemTouchHelper);
                }
                ArrayList arrayList2 = itemTouchHelper.mRecoverAnimations;
                for (int size = arrayList2.size() - 1; size >= 0; size--) {
                    ItemTouchHelper.RecoverAnimation recoverAnimation = (ItemTouchHelper.RecoverAnimation) arrayList2.get(0);
                    recoverAnimation.mValueAnimator.cancel();
                    itemTouchHelper.mCallback.clearView(itemTouchHelper.mRecyclerView, recoverAnimation.mViewHolder);
                }
                arrayList2.clear();
                itemTouchHelper.mOverdrawChild = null;
                VelocityTracker velocityTracker = itemTouchHelper.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    itemTouchHelper.mVelocityTracker = null;
                }
                ItemTouchHelper.ItemTouchHelperGestureListener itemTouchHelperGestureListener = itemTouchHelper.mItemTouchHelperGestureListener;
                if (itemTouchHelperGestureListener != null) {
                    itemTouchHelperGestureListener.mShouldReactToLongPress = false;
                    itemTouchHelper.mItemTouchHelperGestureListener = null;
                }
                if (itemTouchHelper.mGestureDetector != null) {
                    itemTouchHelper.mGestureDetector = null;
                }
            }
            itemTouchHelper.mRecyclerView = recyclerView;
            Resources resources = recyclerView.getResources();
            resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            itemTouchHelper.mSlop = ViewConfiguration.get(itemTouchHelper.mRecyclerView.getContext()).getScaledTouchSlop();
            itemTouchHelper.mRecyclerView.addItemDecoration(itemTouchHelper);
            itemTouchHelper.mRecyclerView.mOnItemTouchListeners.add(anonymousClass2);
            itemTouchHelper.mRecyclerView.addOnChildAttachStateChangeListener(itemTouchHelper);
            itemTouchHelper.mItemTouchHelperGestureListener = new ItemTouchHelper.ItemTouchHelperGestureListener(itemTouchHelper, i);
            itemTouchHelper.mGestureDetector = new GestureDetector(itemTouchHelper.mRecyclerView.getContext(), itemTouchHelper.mItemTouchHelperGestureListener);
        }
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        recyclerView.setAdapter(messageListAdapter2);
        if (((InMemoryFeatureFlagProvider) this.featureFlagProvider$delegate.getValue()).m1030providedj3aFNw("display_in_app_notifications").equals(FeatureFlagResult.Enabled.INSTANCE)) {
            ((ComposeView) view.findViewById(R.id.banner_global_compose_view)).setContent(new ComposableLambdaImpl(-1534516518, new LegacyMessageListFragment$$ExternalSyntheticLambda2(this, recyclerView, i2), true));
        }
        this.recyclerView = recyclerView;
        this.itemTouchHelper = itemTouchHelper;
        CoordinatorLayout coordinatorLayout = this.coordinatorLayout;
        if (coordinatorLayout == null) {
            coordinatorLayout = (CoordinatorLayout) requireView().findViewById(R.id.message_list_coordinator);
            this.coordinatorLayout = coordinatorLayout;
        }
        if (coordinatorLayout == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Coordinator layout not initialized");
            return;
        }
        int[] iArr = Snackbar.SNACKBAR_CONTENT_STYLE_ATTRS;
        Snackbar make = Snackbar.make(coordinatorLayout, coordinatorLayout.getResources().getText(R.string.changelog_snackbar_text), 10000);
        View.OnClickListener onClickListener = new View.OnClickListener(this) { // from class: com.fsck.k9.ui.messagelist.LegacyMessageListFragment$$ExternalSyntheticLambda12
            public final /* synthetic */ LegacyMessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i3 = i2;
                LegacyMessageListFragment legacyMessageListFragment = this.f$0;
                switch (i3) {
                    case 0:
                        ((RecentChangesViewModel) legacyMessageListFragment.recentChangesViewModel$delegate.getValue()).shouldShowRecentChangesHint.removeObserver(legacyMessageListFragment.shouldShowRecentChangesHintObserver);
                        int i4 = FeatureLauncherActivity.$r8$clinit;
                        FeatureLauncherActivity.Companion.launch(legacyMessageListFragment.requireContext(), new FeatureLauncherTarget$Changelog(ChangeLogMode.RECENT_CHANGES));
                        break;
                    default:
                        legacyMessageListFragment.onCompose();
                        break;
                }
            }
        };
        CharSequence text = make.context.getText(R.string.changelog_snackbar_button_text);
        Button actionView = ((SnackbarContentLayout) make.view.getChildAt(0)).getActionView();
        if (TextUtils.isEmpty(text)) {
            actionView.setVisibility(8);
            actionView.setOnClickListener(null);
            make.hasAction = false;
        } else {
            make.hasAction = true;
            actionView.setVisibility(0);
            actionView.setText(text);
            actionView.setOnClickListener(new Snackbar$$ExternalSyntheticLambda0(i2, make, onClickListener));
        }
        MessageListFragment$initializeRecentChangesSnackbar$2 messageListFragment$initializeRecentChangesSnackbar$2 = new MessageListFragment$initializeRecentChangesSnackbar$2(i, this);
        if (make.callbacks == null) {
            make.callbacks = new ArrayList();
        }
        make.callbacks.add(messageListFragment$initializeRecentChangesSnackbar$2);
        this.recentChangesSnackbar = make;
        ((RecentChangesViewModel) this.recentChangesViewModel$delegate.getValue()).shouldShowRecentChangesHint.observe(getViewLifecycleOwner(), this.shouldShowRecentChangesHintObserver);
        boolean z2 = this.isSingleAccountMode;
        SortType sortType = SortType.SORT_DATE;
        if (z2) {
            LegacyAccount legacyAccount = this.account;
            if (legacyAccount == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Required value was null.");
                return;
            }
            Map map = legacyAccount.sortAscending;
            SortType sortType2 = legacyAccount.sortType;
            this.sortType = sortType2;
            Boolean bool = (Boolean) map.get(sortType2);
            this.sortAscending = bool != null ? bool.booleanValue() : this.sortType.isDefaultAscending;
            Boolean bool2 = (Boolean) map.get(sortType);
            this.sortDateAscending = bool2 != null ? bool2.booleanValue() : false;
        } else {
            SortType sortType3 = K9.getSortType();
            this.sortType = sortType3;
            this.sortAscending = K9.isSortAscending(sortType3);
            this.sortDateAscending = K9.isSortAscending(sortType);
        }
        loadMessageList(false);
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void progress(boolean z) {
        SwipeRefreshLayout swipeRefreshLayout;
        if (!z && (swipeRefreshLayout = this.swipeRefreshLayout) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        ProgressBar progressBar = messageHomeActivity.progressBar;
        progressBar.getClass();
        progressBar.setVisibility(z ? 0 : 4);
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void remoteSearchFinished() {
        this.remoteSearchFuture = null;
    }

    public final void resetActionMode() {
        if (this.mState >= 7) {
            if (this.isActive) {
                MessageListAdapter messageListAdapter = this.adapter;
                if (messageListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                if (!messageListAdapter.selected.isEmpty()) {
                    if (this.actionMode == null) {
                        startAndPrepareActionMode();
                    }
                    updateActionMode();
                    return;
                }
            }
            ActionMode actionMode = this.actionMode;
            if (actionMode != null) {
                actionMode.finish();
            }
            this.actionMode = null;
        }
    }

    public final void resetSwipedView(MessageReference messageReference) {
        app.k9mail.ui.utils.itemtouchhelper.ItemTouchHelper itemTouchHelper;
        RecyclerView.ViewHolder findViewHolderForItemId;
        RecyclerView recyclerView = this.recyclerView;
        if (recyclerView == null || (itemTouchHelper = this.itemTouchHelper) == null) {
            return;
        }
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        MessageListItem item = messageListAdapter.getItem(messageReference);
        if (item == null || (findViewHolderForItemId = recyclerView.findViewHolderForItemId(item.uniqueId)) == null) {
            return;
        }
        itemTouchHelper.resetSwipeView(findViewHolderForItemId.itemView);
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        Integer position = messageListAdapter2.getPosition(item);
        if (position != null) {
            int intValue = position.intValue();
            MessageListAdapter messageListAdapter3 = this.adapter;
            if (messageListAdapter3 != null) {
                messageListAdapter3.mObservable.notifyItemRangeChanged(intValue, 1, null);
            } else {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
        }
    }

    public final void selectAll$1() {
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (messageListAdapter.viewItems.isEmpty()) {
            return;
        }
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        messageListAdapter2.setSelected(CollectionsKt.toSet(messageListAdapter2.messagesMap.keySet()));
        if (this.actionMode == null) {
            startAndPrepareActionMode();
        }
        computeBatchDirection();
        updateActionMode();
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void setActive(boolean z) {
        this.isActive = z;
        resetActionMode();
        AppCompatActivity activity = getActivity();
        if (activity != null) {
            activity.invalidateOptionsMenu();
        }
        FloatingActionButton floatingActionButton = this.floatingActionButton;
        if (floatingActionButton != null) {
            floatingActionButton.setVisibility(8);
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void setActiveMessage(MessageReference messageReference) {
        Object obj;
        RecyclerView recyclerView;
        this.activeMessage = messageReference;
        LinkedList linkedList = getLegacyViewModel().messageSortOverrides;
        if (messageReference == null) {
            linkedList.clear();
        } else {
            SortType sortType = this.sortType;
            if (sortType == SortType.SORT_UNREAD || sortType == SortType.SORT_FLAGGED) {
                MessageListAdapter messageListAdapter = this.adapter;
                if (messageListAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    throw null;
                }
                MessageListItem item = messageListAdapter.getItem(messageReference);
                if (item != null) {
                    Iterator it = linkedList.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        } else {
                            obj = it.next();
                            if (Intrinsics.areEqual(((Pair) obj).first, messageReference)) {
                                break;
                            }
                        }
                    }
                    Pair pair = (Pair) obj;
                    if (pair != null) {
                        linkedList.remove(pair);
                        linkedList.addLast(pair);
                    } else {
                        linkedList.addLast(new Pair(messageReference, new MessageSortOverride(item.isRead, item.isStarred)));
                        if (linkedList.size() > 3) {
                            linkedList.removeFirst();
                        }
                    }
                }
            }
        }
        if (isAdded()) {
            loadMessageList(false);
        }
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 != null) {
            messageListAdapter2.setActiveMessage(this.activeMessage);
            if (messageReference == null || (recyclerView = this.recyclerView) == null) {
                return;
            }
            MessageListAdapter messageListAdapter3 = this.adapter;
            if (messageListAdapter3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            MessageListItem item2 = messageListAdapter3.getItem(messageReference);
            if (item2 == null) {
                return;
            }
            MessageListAdapter messageListAdapter4 = this.adapter;
            if (messageListAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                throw null;
            }
            Integer position = messageListAdapter4.getPosition(item2);
            if (position != null) {
                int intValue = position.intValue();
                RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
                layoutManager.getClass();
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) layoutManager;
                View findOneVisibleChild = linearLayoutManager.findOneVisibleChild(0, linearLayoutManager.getChildCount(), true, false);
                int position2 = findOneVisibleChild == null ? -1 : RecyclerView.LayoutManager.getPosition(findOneVisibleChild);
                View findOneVisibleChild2 = linearLayoutManager.findOneVisibleChild(linearLayoutManager.getChildCount() - 1, -1, true, false);
                int position3 = findOneVisibleChild2 != null ? RecyclerView.LayoutManager.getPosition(findOneVisibleChild2) : -1;
                if (position2 > intValue || intValue > position3) {
                    recyclerView.smoothScrollToPosition(intValue);
                }
            }
        }
    }

    public final void setFlag(MessageListItem messageListItem, Flag flag, boolean z) {
        AccountId accountId = messageListItem.account.id;
        if (!this.showingThreadedList || messageListItem.threadCount <= 1) {
            getMessagingController().setFlag(accountId, IntOffsetKt.listOf(Long.valueOf(messageListItem.databaseId)), flag, z);
        } else {
            getMessagingController().setFlagForThreads(accountId, IntOffsetKt.listOf(Long.valueOf(messageListItem.threadRoot)), flag, z);
        }
        computeBatchDirection();
    }

    public final void showDialog$1(int i) {
        ConfirmationDialogFragment newInstance;
        if (i == R.id.dialog_confirm_spam) {
            String string = getString(R.string.dialog_confirm_spam_title);
            string.getClass();
            List list = this.activeMessages;
            list.getClass();
            int size = list.size();
            String quantityString = getResources().getQuantityString(R.plurals.dialog_confirm_spam_message, size, Integer.valueOf(size));
            quantityString.getClass();
            String string2 = getString(R.string.dialog_confirm_spam_confirm_button);
            string2.getClass();
            String string3 = getString(R.string.dialog_confirm_spam_cancel_button);
            string3.getClass();
            newInstance = ConfirmationDialogFragment.newInstance(i, string, quantityString, string2, string3);
        } else if (i == R.id.dialog_confirm_delete) {
            String string4 = getString(R.string.dialog_confirm_delete_title);
            string4.getClass();
            List list2 = this.activeMessages;
            list2.getClass();
            int size2 = list2.size();
            String quantityString2 = getResources().getQuantityString(R.plurals.dialog_confirm_delete_messages, size2, Integer.valueOf(size2));
            quantityString2.getClass();
            String string5 = getString(R.string.dialog_confirm_delete_confirm_button);
            string5.getClass();
            String string6 = getString(R.string.dialog_confirm_delete_cancel_button);
            string6.getClass();
            newInstance = ConfirmationDialogFragment.newInstance(i, string4, quantityString2, string5, string6);
        } else if (i == R.id.dialog_confirm_mark_all_as_read) {
            String string7 = getString(R.string.dialog_confirm_mark_all_as_read_title);
            string7.getClass();
            String string8 = getString(R.string.dialog_confirm_mark_all_as_read_message);
            string8.getClass();
            String string9 = getString(R.string.dialog_confirm_mark_all_as_read_confirm_button);
            string9.getClass();
            String string10 = getString(R.string.dialog_confirm_mark_all_as_read_cancel_button);
            string10.getClass();
            newInstance = ConfirmationDialogFragment.newInstance(i, string7, string8, string9, string10);
        } else if (i == R.id.dialog_confirm_empty_spam) {
            String string11 = getString(R.string.dialog_confirm_empty_spam_title);
            string11.getClass();
            String string12 = getString(R.string.dialog_confirm_empty_spam_message);
            string12.getClass();
            String string13 = getString(R.string.dialog_confirm_delete_confirm_button);
            string13.getClass();
            String string14 = getString(R.string.dialog_confirm_delete_cancel_button);
            string14.getClass();
            newInstance = ConfirmationDialogFragment.newInstance(i, string11, string12, string13, string14);
        } else {
            if (i != R.id.dialog_confirm_empty_trash) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Called showDialog(int) with unknown dialog id.");
                return;
            }
            String string15 = getString(R.string.dialog_confirm_empty_trash_title);
            string15.getClass();
            String string16 = getString(R.string.dialog_confirm_empty_trash_message);
            string16.getClass();
            String string17 = getString(R.string.dialog_confirm_delete_confirm_button);
            string17.getClass();
            String string18 = getString(R.string.dialog_confirm_delete_cancel_button);
            string18.getClass();
            newInstance = ConfirmationDialogFragment.newInstance(i, string15, string16, string17, string18);
        }
        newInstance.setTargetFragment(i, this);
        newInstance.show(getParentFragmentManager(), "dialog-" + i);
    }

    public final void startAndPrepareActionMode() {
        MessageHomeActivity messageHomeActivity = this.fragmentListener;
        if (messageHomeActivity == null) {
            Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
            throw null;
        }
        DependencyGraph dependencyGraph = this.actionModeCallback;
        dependencyGraph.getClass();
        MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
        if (messageListFragmentBridgeContract != null) {
            messageListFragmentBridgeContract.collapseSearchView$1();
        }
        ActionMode startSupportActionMode = messageHomeActivity.getDelegate().startSupportActionMode(dependencyGraph);
        this.actionMode = startSupportActionMode;
        if (startSupportActionMode != null) {
            startSupportActionMode.invalidate();
        }
    }

    public final void toggleMessageSelect(MessageListItem messageListItem) {
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        messageListItem.getClass();
        long j = messageListItem.uniqueId;
        if (messageListAdapter.messagesMap.get(Long.valueOf(j)) != null) {
            boolean contains = messageListAdapter.selected.contains(Long.valueOf(j));
            Set set = messageListAdapter.selected;
            if (contains) {
                messageListAdapter.setSelected(Validate.minus(set, Long.valueOf(j)));
            } else {
                messageListAdapter.setSelected(Validate.plus(set, Long.valueOf(j)));
            }
        }
        updateAfterSelectionChange();
    }

    public final void updateActionMode() {
        ActionMode actionMode = this.actionMode;
        if (actionMode == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("actionMode == null");
            return;
        }
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        boolean z = false;
        actionMode.setTitle(getString(R.string.actionbar_selected, Integer.valueOf(messageListAdapter.selectedCount)));
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        if (!messageListAdapter2.selected.isEmpty() && messageListAdapter2.selected.size() == MessageListAdapter.filterMessageListItem(messageListAdapter2.viewItems).size()) {
            z = true;
        }
        boolean z2 = !z;
        MenuItem menuItem = (MenuItem) this.actionModeCallback.mWidgetcontainer;
        if (menuItem != null) {
            menuItem.setVisible(z2);
        }
        actionMode.invalidate();
    }

    public final void updateAfterSelectionChange() {
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        int i = messageListAdapter.selectedCount;
        ActionMode actionMode = this.actionMode;
        if (i == 0) {
            if (actionMode != null) {
                actionMode.finish();
            }
            this.actionMode = null;
        } else {
            if (actionMode == null) {
                startAndPrepareActionMode();
            }
            computeBatchDirection();
            updateActionMode();
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void updateFooterText(String str) {
        MessageListAdapter messageListAdapter = this.adapter;
        if (messageListAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        List list = messageListAdapter.viewItems;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!(((MessageListViewItem) obj) instanceof MessageListViewItem.Footer)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList);
        if (str != null && str.length() != 0) {
            arrayList2.add(new MessageListViewItem.Footer(str));
        }
        MessageListAdapter messageListAdapter2 = this.adapter;
        if (messageListAdapter2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            throw null;
        }
        messageListAdapter2.setViewItems(arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f1  */
    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateTitle() {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagelist.LegacyMessageListFragment.updateTitle():void");
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onCopy() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        MessageReference messageReference = selectedMessageListItem != null ? selectedMessageListItem.getMessageReference() : null;
        if (messageReference != null) {
            onCopy(IntOffsetKt.listOf(messageReference));
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onMove() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        MessageReference messageReference = selectedMessageListItem != null ? selectedMessageListItem.getMessageReference() : null;
        if (messageReference != null) {
            onMove(IntOffsetKt.listOf(messageReference));
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onDelete() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        MessageReference messageReference = selectedMessageListItem != null ? selectedMessageListItem.getMessageReference() : null;
        if (messageReference != null) {
            onDelete(IntOffsetKt.listOf(messageReference));
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void toggleMessageSelect() {
        MessageListItem selectedMessageListItem = getSelectedMessageListItem();
        if (selectedMessageListItem != null) {
            toggleMessageSelect(selectedMessageListItem);
        }
    }

    public final void updateFooterText() {
        FolderInfoHolder folderInfoHolder = this.currentFolder;
        LegacyAccount legacyAccount = this.account;
        String str = null;
        if (!this.initialMessageListLoad && !getLocalSearch().isManualSearch && folderInfoHolder != null && legacyAccount != null) {
            if (folderInfoHolder.loading) {
                str = getString(R.string.status_loading_more);
            } else if (folderInfoHolder.moreMessages) {
                int i = legacyAccount.displayCount;
                str = i == 0 ? getString(R.string.message_list_load_more_messages_action) : getString(R.string.load_more_messages_fmt, Integer.valueOf(i));
            }
        }
        updateFooterText(str);
    }
}
