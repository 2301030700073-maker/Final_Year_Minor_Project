package com.fsck.k9.ui.messagelist;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.activity.result.ActivityResultCallback;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.widget.SearchView;
import androidx.camera.core.impl.LiveDataObservable$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidFontResourceLoader;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.LifecycleCoroutineScopeImpl;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelStore;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26;
import app.k9mail.feature.launcher.FeatureLauncherActivity;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditIncomingSettings;
import app.k9mail.feature.launcher.FeatureLauncherTarget$AccountEditOutgoingSettings;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.K9;
import com.fsck.k9.R;
import com.fsck.k9.activity.FolderInfoHolder;
import com.fsck.k9.activity.MessageHomeActivity;
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
import com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import com.google.android.material.snackbar.Snackbar$$ExternalSyntheticLambda0;
import com.google.android.material.snackbar.SnackbarContentLayout;
import com.google.android.material.textview.MaterialTextView;
import com.google.zxing.BinaryBitmap;
import com.skydoves.landscapist.coil3.CoilImageKt$$ExternalSyntheticLambda15;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Future;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntriesList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.ImmutableSet;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__LimitKt$drop$$inlined$unsafeFlow$1;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.coroutines.flow.SafeFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.account.SortType;
import net.thunderbird.core.android.network.ConnectivityManagerBase;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.ui.compose.theme2.ThemeColorScheme;
import net.thunderbird.core.ui.compose.theme2.ThemeColorSchemeKt;
import net.thunderbird.core.ui.compose.theme2.ThemeElevations;
import net.thunderbird.core.ui.compose.theme2.ThemeElevationsKt;
import net.thunderbird.core.ui.compose.theme2.ThemeShapes;
import net.thunderbird.core.ui.compose.theme2.ThemeShapesKt;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacings;
import net.thunderbird.core.ui.compose.theme2.ThemeSpacingsKt;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.account.UnifiedAccountIdKt;
import net.thunderbird.feature.account.storage.legacy.mapper.DefaultLegacyAccountDataMapper;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.mail.message.list.domain.model.SortCriteria;
import net.thunderbird.feature.mail.message.list.ui.MessageListContract$ViewModel;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$SetMessageActive;
import net.thunderbird.feature.mail.message.list.ui.event.MessageItemEvent$ToggleSelectMessages;
import net.thunderbird.feature.mail.message.list.ui.event.MessageListEvent;
import net.thunderbird.feature.mail.message.list.ui.state.Account;
import net.thunderbird.feature.mail.message.list.ui.state.Folder;
import net.thunderbird.feature.mail.message.list.ui.state.MessageItemUi;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListMetadata;
import net.thunderbird.feature.mail.message.list.ui.state.MessageListState;
import net.thunderbird.feature.notification.api.content.InAppNotification;
import net.thunderbird.feature.notification.api.content.SentFolderNotFoundNotification;
import net.thunderbird.feature.notification.api.ui.action.NotificationAction;
import net.thunderbird.feature.notification.api.ui.dialog.ErrorNotificationsDialogFragmentActionListener;
import net.thunderbird.feature.notification.impl.ui.dialog.ErrorNotificationsDialogFragment;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.serialization.LocalMessageSearchSerializer;
import okhttp3.Handshake;
import okhttp3.Handshake$Companion$$ExternalSyntheticLambda0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.Http2Connection;
import okio.Options;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageListFragment extends Fragment implements MessageListFragmentBridgeContract, ConfirmationDialogFragment.ConfirmationDialogFragmentListener, MessageListItemActionListener, ErrorNotificationsDialogFragmentActionListener {
    public static final Factory Factory = new Factory(0);
    public LegacyAccount account;
    public final Lazy accountManager$delegate;
    public String[] accountUuids;
    public ActionMode actionMode;
    public final BinaryBitmap actionModeCallback;
    public MessageReference activeMessage;
    public List activeMessages;
    public final MessageListActivityListener activityListener;
    public final Lazy avatarMonogramCreator$delegate;
    public final Fragment.AnonymousClass10 chooseFolderForCopyLauncher;
    public final Fragment.AnonymousClass10 chooseFolderForMoveLauncher;
    public final Lazy connectivityManager$delegate;
    public final Lazy contactRepository$delegate;
    public CoordinatorLayout coordinatorLayout;
    public FolderInfoHolder currentFolder;
    public Error error;
    public final Lazy errorNotificationsDialogFragmentFactory$delegate;
    public List extraSearchResults;
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
    public final Lazy legacyViewModel$delegate;
    public LocalMessageSearch localSearch;
    public final Lazy localStoreProvider$delegate;
    public final String logTag = "MessageListFragment";
    public final Lazy logger$delegate;
    public final Lazy messageListScreenRenderer$delegate;
    public final Lazy messagingController$delegate;
    public final Lazy messagingControllerRegistry$delegate;
    public final Lazy outboxFolderManager$delegate;
    public Snackbar recentChangesSnackbar;
    public final Lazy recentChangesViewModel$delegate;
    public Set rememberedSelected;
    public Future remoteSearchFuture;
    public SearchView searchView;
    public final LiveDataObservable$$ExternalSyntheticLambda3 shouldShowRecentChangesHintObserver;
    public boolean showingThreadedList;
    public boolean sortAscending;
    public boolean sortDateAscending;
    public SortType sortType;
    public final Lazy sortTypeToastProvider$delegate;
    public String threadTitle;
    public final Lazy viewModel$delegate;

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

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Factory {
        public static final Factory INSTANCE = new Factory(1);
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ Factory(int i) {
            this.$r8$classId = i;
        }

        public final MessageListFragmentBridgeContract newInstance(LocalMessageSearch localMessageSearch, boolean z, boolean z2) {
            switch (this.$r8$classId) {
                case 0:
                    localMessageSearch.getClass();
                    byte[] serialize = LocalMessageSearchSerializer.serialize(localMessageSearch);
                    MessageListFragment messageListFragment = new MessageListFragment();
                    messageListFragment.setArguments(Util.bundleOf(new Pair("searchObject", serialize), new Pair("isThreadedDisplay", Boolean.valueOf(z)), new Pair("showingThreadedList", Boolean.valueOf(z2))));
                    return messageListFragment;
                default:
                    localMessageSearch.getClass();
                    byte[] serialize2 = LocalMessageSearchSerializer.serialize(localMessageSearch);
                    LegacyMessageListFragment legacyMessageListFragment = new LegacyMessageListFragment();
                    legacyMessageListFragment.setArguments(Util.bundleOf(new Pair("searchObject", serialize2), new Pair("isThreadedDisplay", Boolean.valueOf(z)), new Pair("showingThreadedList", Boolean.valueOf(z2))));
                    return legacyMessageListFragment;
            }
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
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FolderOperation.values().length];
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[net.thunderbird.feature.mail.message.list.domain.model.SortType.values().length];
            try {
                iArr2[0] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[1] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda7] */
    public MessageListFragment() {
        final int i = 0;
        MessageListFragment$special$$inlined$inject$default$1 messageListFragment$special$$inlined$inject$default$1 = new MessageListFragment$special$$inlined$inject$default$1(this, i);
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.messageListScreenRenderer$delegate = ResultKt.lazy(lazyThreadSafetyMode, messageListFragment$special$$inlined$inject$default$1);
        int i2 = 17;
        Http2Connection.ReaderRunnable readerRunnable = new Http2Connection.ReaderRunnable(i2, this, new MessageListFragment$special$$inlined$inject$default$1(this, 15));
        LazyThreadSafetyMode lazyThreadSafetyMode2 = LazyThreadSafetyMode.NONE;
        this.legacyViewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode2, readerRunnable);
        int i3 = 16;
        this.recentChangesViewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new Http2Connection.ReaderRunnable(18, this, new MessageListFragment$special$$inlined$inject$default$1(this, i3)));
        this.generalSettingsManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 8));
        this.sortTypeToastProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 9));
        this.folderNameFormatter$delegate = ResultKt.lazy(lazyThreadSafetyMode, new Http2Connection.ReaderRunnable(i3, this, new Function0(this) { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ MessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                FolderInfoHolder folderInfoHolder;
                int i4 = i;
                MessageListFragment messageListFragment = this.f$0;
                switch (i4) {
                    case 0:
                        return Options.Companion.parametersOf(messageListFragment.requireContext());
                    default:
                        messageListFragment.decodeArguments();
                        String[] strArr = messageListFragment.accountUuids;
                        Long l = null;
                        if (strArr == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
                            throw null;
                        }
                        ArrayList arrayList = new ArrayList(strArr.length);
                        for (String str : strArr) {
                            arrayList.add(AccountIdFactory.INSTANCE.of(str));
                        }
                        Set set = CollectionsKt.toSet(arrayList);
                        if (set.size() == 1 && (folderInfoHolder = messageListFragment.currentFolder) != null) {
                            l = Long.valueOf(folderInfoHolder.databaseId);
                        }
                        return Options.Companion.parametersOf(new MessageListContract$ViewModel.Args(set, l, messageListFragment));
                }
            }
        }));
        this.messagingController$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 10));
        this.messagingControllerRegistry$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 11));
        this.accountManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 12));
        this.connectivityManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 13));
        this.localStoreProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 14));
        final int i4 = 1;
        this.featureThemeProvider$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, i4));
        this.logger$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 2));
        int i5 = 3;
        this.outboxFolderManager$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, i5));
        ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 4));
        this.errorNotificationsDialogFragmentFactory$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 5));
        this.handler = new MessageListHandler(this);
        this.activityListener = new MessageListActivityListener(this);
        this.actionModeCallback = new BinaryBitmap(this);
        this.contactRepository$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 6));
        this.avatarMonogramCreator$delegate = ResultKt.lazy(lazyThreadSafetyMode, new MessageListFragment$special$$inlined$inject$default$1(this, 7));
        this.chooseFolderForMoveLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda8
            public final /* synthetic */ MessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i6 = i;
                MessageListFragment messageListFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                switch (i6) {
                    case 0:
                        messageListFragment.handleChooseFolderResult$1(result, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, 3, (byte) 0));
                        break;
                    default:
                        messageListFragment.handleChooseFolderResult$1(result, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, 1, (byte) 0));
                        break;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.MOVE));
        this.chooseFolderForCopyLauncher = registerForActivityResult(new ActivityResultCallback(this) { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda8
            public final /* synthetic */ MessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                int i6 = i4;
                MessageListFragment messageListFragment = this.f$0;
                ChooseFolderResultContract.Result result = (ChooseFolderResultContract.Result) obj;
                switch (i6) {
                    case 0:
                        messageListFragment.handleChooseFolderResult$1(result, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, 3, (byte) 0));
                        break;
                    default:
                        messageListFragment.handleChooseFolderResult$1(result, new MessageListFragment$$ExternalSyntheticLambda0(messageListFragment, 1, (byte) 0));
                        break;
                }
            }
        }, new ChooseFolderResultContract(ChooseFolderActivity.Action.COPY));
        this.initialSearchViewIconified = true;
        this.sortType = SortType.SORT_DATE;
        this.sortAscending = true;
        this.isShowFloatingActionButton = true;
        this.initialMessageListLoad = true;
        this.shouldShowRecentChangesHintObserver = new LiveDataObservable$$ExternalSyntheticLambda3(i5, this);
        final ?? r1 = new Function0(this) { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda7
            public final /* synthetic */ MessageListFragment f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                FolderInfoHolder folderInfoHolder;
                int i42 = i4;
                MessageListFragment messageListFragment = this.f$0;
                switch (i42) {
                    case 0:
                        return Options.Companion.parametersOf(messageListFragment.requireContext());
                    default:
                        messageListFragment.decodeArguments();
                        String[] strArr = messageListFragment.accountUuids;
                        Long l = null;
                        if (strArr == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
                            throw null;
                        }
                        ArrayList arrayList = new ArrayList(strArr.length);
                        for (String str : strArr) {
                            arrayList.add(AccountIdFactory.INSTANCE.of(str));
                        }
                        Set set = CollectionsKt.toSet(arrayList);
                        if (set.size() == 1 && (folderInfoHolder = messageListFragment.currentFolder) != null) {
                            l = Long.valueOf(folderInfoHolder.databaseId);
                        }
                        return Options.Companion.parametersOf(new MessageListContract$ViewModel.Args(set, l, messageListFragment));
                }
            }
        };
        final MessageListFragment$special$$inlined$inject$default$1 messageListFragment$special$$inlined$inject$default$12 = new MessageListFragment$special$$inlined$inject$default$1(this, i2);
        this.viewModel$delegate = ResultKt.lazy(lazyThreadSafetyMode2, new Function0() { // from class: com.fsck.k9.ui.messagelist.MessageListFragment$special$$inlined$viewModel$default$6
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ViewModelStore viewModelStore = messageListFragment$special$$inlined$inject$default$12.$this_inject.getViewModelStore();
                MessageListFragment messageListFragment = MessageListFragment.this;
                return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageListContract$ViewModel.class), viewModelStore, messageListFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageListFragment), r1);
            }
        });
    }

    public static final void access$setFlagForSelected(MessageListFragment messageListFragment, Flag flag, boolean z) {
        if (messageListFragment.getSelectedMessagesCount() == 0) {
            return;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (LegacyAccount legacyAccount : new LinkedHashSet()) {
            List list = (List) linkedHashMap.get(legacyAccount);
            if (list != null) {
                messageListFragment.getMessagingController$1().setFlag(legacyAccount.id, list, flag, z);
            }
            List list2 = (List) linkedHashMap2.get(legacyAccount);
            if (list2 != null) {
                messageListFragment.getMessagingController$1().setFlagForThreads(legacyAccount.id, list2, flag, z);
            }
        }
    }

    public final void SortCriteriaMenuList(Composer composer, int i) {
        AccountId accountId;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1145047147);
        int i2 = (gapComposer.changedInstance(this) ? 4 : 2) | i;
        int i3 = 0;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 3) != 2)) {
            MessageListContract$ViewModel viewModel = getViewModel();
            MutableState collectAsStateWithLifecycle = ActionBar.collectAsStateWithLifecycle(viewModel.getState(), gapComposer);
            boolean changedInstance = gapComposer.changedInstance(viewModel);
            Object rememberedValue = gapComposer.rememberedValue();
            Object obj = Composer.Companion.Empty;
            if (changedInstance || rememberedValue == obj) {
                rememberedValue = new MessageListFragment$SortCriteriaMenuList$$inlined$observeWithoutEffect$1(viewModel, i3);
                gapComposer.updateRememberedValue(rememberedValue);
            }
            Function1 function1 = (Function1) rememberedValue;
            collectAsStateWithLifecycle.getClass();
            function1.getClass();
            MessageListMetadata metadata = ((MessageListState) collectAsStateWithLifecycle.getValue()).getMetadata();
            Folder folder = metadata.folder;
            AccountId accountId2 = (folder == null || (accountId = folder.account.id) == null || accountId.equals(UnifiedAccountIdKt.UnifiedAccountId)) ? null : accountId;
            ImmutableSet immutableSet = metadata.availablePrimarySortTypes;
            ImmutableSet immutableSet2 = metadata.availableSecondarySortTypes;
            boolean changed = gapComposer.changed(metadata);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (changed || rememberedValue2 == obj) {
                rememberedValue2 = (SortCriteria) MapsKt__MapsKt.getValue(metadata.sortCriteriaPerAccount, accountId2);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            ((ThemeSpacings) gapComposer.consume(ThemeSpacingsKt.LocalThemeSpacings)).getClass();
            Modifier m218padding3ABfNKs = OffsetKt.m218padding3ABfNKs(Modifier.Companion.$$INSTANCE, 8.0f);
            long j = ((ThemeColorScheme) gapComposer.consume(ThemeColorSchemeKt.LocalThemeColorScheme)).surfaceContainer;
            ((ThemeElevations) gapComposer.consume(ThemeElevationsKt.LocalThemeElevations)).getClass();
            MathKt.m983Surface_UMDTes(m218padding3ABfNKs, ((ThemeShapes) gapComposer.consume(ThemeShapesKt.LocalThemeShapes)).medium, j, 0L, 3.0f, Expect_jvmKt.rememberComposableLambda(-1047714638, new CoilImageKt$$ExternalSyntheticLambda15((SortCriteria) rememberedValue2, immutableSet, function1, accountId2, immutableSet2, 12), gapComposer), gapComposer, 196608, 8);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragment$$ExternalSyntheticLambda0(this, i);
        }
    }

    public final void changeSort$1(SortType sortType) {
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
            JobKt.launch$default(lifecycleScope, DefaultIoScheduler.INSTANCE, null, new InterruptibleKt$runInterruptible$2(this, copy$default, null, 6), 2);
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
        getLocalSearch();
        SortType sortType4 = this.sortType;
        MapsKt__MapsKt.toMap(getLegacyViewModel().messageSortOverrides);
        sortType4.getClass();
    }

    public final boolean checkCopyOrMovePossible(List list, FolderOperation folderOperation) {
        LegacyAccount account;
        FolderOperation folderOperation2;
        if (!list.isEmpty() && (account = getAccountManager$2().getAccount(((MessageReference) CollectionsKt.first(list)).accountUuid)) != null) {
            AccountId accountId = account.id;
            FolderOperation folderOperation3 = FolderOperation.MOVE;
            if ((folderOperation != folderOperation3 || getMessagingController$1().isMoveCapable(accountId)) && (folderOperation != (folderOperation2 = FolderOperation.COPY) || getMessagingController$1().isCopyCapable(accountId))) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    MessageReference messageReference = (MessageReference) it.next();
                    if (folderOperation == folderOperation3) {
                        MessagingControllerWrapper messagingController$1 = getMessagingController$1();
                        messagingController$1.getClass();
                        messageReference.getClass();
                        if (!messagingController$1.messagingController.isMoveCapable(messageReference)) {
                            Toast.makeText(getActivity(), R.string.move_copy_cannot_copy_unsynced_message, 1).show();
                            return false;
                        }
                    }
                    if (folderOperation == folderOperation2) {
                        MessagingControllerWrapper messagingController$12 = getMessagingController$1();
                        messagingController$12.getClass();
                        messageReference.getClass();
                        if (!messagingController$12.messagingController.isMoveCapable(messageReference)) {
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

    public final void copyOrMove(List list, long j, FolderOperation folderOperation) {
        if (checkCopyOrMovePossible(list, folderOperation)) {
            FilteringSequence filteringSequence = new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(2, list), false, new WorkSpecDao_Impl$$ExternalSyntheticLambda26(6, j));
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
                LegacyAccount account = getAccountManager$2().getAccount(((MessageReference) CollectionsKt.first(list2)).accountUuid);
                if (account == null) {
                    Sink$CC.debug$default((Logger) this.logger$delegate.getValue(), this.logTag, null, new Handshake$Companion$$ExternalSyntheticLambda0(3, list2), 2);
                } else {
                    AccountId accountId = account.id;
                    int i = WhenMappings.$EnumSwitchMapping$0[folderOperation.ordinal()];
                    if (i == 2 && this.showingThreadedList) {
                        getMessagingController$1().moveMessagesInThread(account.id, longValue, list2, j);
                    } else {
                        long j2 = j;
                        if (i == 2) {
                            MessagingControllerWrapper messagingController$1 = getMessagingController$1();
                            messagingController$1.getClass();
                            accountId.getClass();
                            messagingController$1.messagingController.moveMessages(messagingController$1.getAccountDtoOrThrow(accountId), longValue, list2, j2);
                        } else if (i == 1 && this.showingThreadedList) {
                            getMessagingController$1().copyMessagesInThread(account.id, longValue, list2, j2);
                        } else {
                            if (i != 1) {
                                UriKt$$ExternalSyntheticBUOutline0.m857m();
                                return;
                            }
                            MessagingControllerWrapper messagingController$12 = getMessagingController$1();
                            messagingController$12.getClass();
                            accountId.getClass();
                            messagingController$12.messagingController.copyMessages(messagingController$12.getAccountDtoOrThrow(accountId), longValue, list2, j2);
                        }
                        j = j2;
                    }
                }
            }
        }
    }

    public final Error decodeArguments() {
        Bundle requireArguments = requireArguments();
        this.showingThreadedList = requireArguments.getBoolean("showingThreadedList", false);
        this.isThreadDisplay = requireArguments.getBoolean("isThreadedDisplay", false);
        byte[] byteArray = requireArguments.getByteArray("searchObject");
        LocalMessageSearch deserialize = byteArray != null ? LocalMessageSearchSerializer.deserialize(byteArray) : null;
        deserialize.getClass();
        this.localSearch = deserialize;
        getLocalSearch().accountUuidSet.isEmpty();
        ArrayList legacyAccountsFromLocalSearch = SchemaInfoUtilKt.getLegacyAccountsFromLocalSearch(getLocalSearch(), getAccountManager$2());
        if (legacyAccountsFromLocalSearch.size() == 1) {
            this.isSingleAccountMode = true;
            LegacyAccount legacyAccount = (LegacyAccount) legacyAccountsFromLocalSearch.get(0);
            this.account = legacyAccount;
            this.accountUuids = new String[]{legacyAccount.uuid};
        } else {
            this.isSingleAccountMode = false;
            this.account = null;
            ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(legacyAccountsFromLocalSearch, 10));
            Iterator it = legacyAccountsFromLocalSearch.iterator();
            while (it.hasNext()) {
                arrayList.add(((LegacyAccount) it.next()).uuid);
            }
            this.accountUuids = (String[]) arrayList.toArray(new String[0]);
        }
        this.isSingleFolderMode = false;
        if (!this.isSingleAccountMode || getLocalSearch().getFolderIds().size() != 1) {
            return null;
        }
        try {
            LegacyAccount legacyAccount2 = this.account;
            if (legacyAccount2 == null) {
                throw new IllegalStateException("Required value was null.");
            }
            LocalFolder localFolder = new LocalFolder(((LocalStoreProvider) this.localStoreProvider$delegate.getValue()).getInstanceByLegacyAccount(legacyAccount2), ((Number) getLocalSearch().getFolderIds().get(0)).longValue());
            localFolder.open();
            this.currentFolder = new FolderInfoHolder((FolderNameFormatter) this.folderNameFormatter$delegate.getValue(), (DefaultOutboxFolderManager) this.outboxFolderManager$delegate.getValue(), localFolder, legacyAccount2);
            this.isSingleFolderMode = true;
            return null;
        } catch (MessagingException unused) {
            return Error.FolderNotFound;
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
        if (i == R.id.dialog_confirm_spam || i == R.id.dialog_confirm_delete) {
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
            onSpamConfirmed$1(list);
            this.activeMessages = null;
            return;
        }
        if (i == R.id.dialog_confirm_delete) {
            List list2 = this.activeMessages;
            list2.getClass();
            if (this.showingThreadedList) {
                MessagingControllerWrapper messagingController$1 = getMessagingController$1();
                messagingController$1.getClass();
                MessagingController messagingController = messagingController$1.messagingController;
                messagingController.actOnMessagesGroupedByAccountAndFolder(list2, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, messagingController));
            } else {
                MessagingControllerWrapper messagingController$12 = getMessagingController$1();
                messagingController$12.getClass();
                MessagingController messagingController2 = messagingController$12.messagingController;
                messagingController2.actOnMessagesGroupedByAccountAndFolder(list2, new MessagingController$$ExternalSyntheticLambda9(messagingController2, false));
            }
            this.activeMessage = null;
            return;
        }
        if (i == R.id.dialog_confirm_mark_all_as_read) {
            if (!this.isSingleAccountMode || !this.isSingleFolderMode || isOutbox() || (legacyAccount2 = this.account) == null || (accountId3 = legacyAccount2.id) == null) {
                return;
            }
            MessagingControllerWrapper messagingController$13 = getMessagingController$1();
            FolderInfoHolder folderInfoHolder = this.currentFolder;
            folderInfoHolder.getClass();
            long j = folderInfoHolder.databaseId;
            messagingController$13.getClass();
            LegacyAccountDto accountDtoOrThrow = messagingController$13.getAccountDtoOrThrow(accountId3);
            MessagingController messagingController3 = messagingController$13.messagingController;
            messagingController3.queuePendingCommand(accountDtoOrThrow, MessagingControllerCommands$PendingMarkAllAsRead.create(j));
            messagingController3.processPendingCommands(accountDtoOrThrow);
            return;
        }
        if (i == R.id.dialog_confirm_empty_spam) {
            LegacyAccount legacyAccount3 = this.account;
            if (legacyAccount3 == null || (accountId2 = legacyAccount3.id) == null) {
                return;
            }
            MessagingControllerWrapper messagingController$14 = getMessagingController$1();
            messagingController$14.getClass();
            LegacyAccountDto accountDtoOrThrow2 = messagingController$14.getAccountDtoOrThrow(accountId2);
            MessagingController messagingController4 = messagingController$14.messagingController;
            messagingController4.putBackground("emptySpam", new MessagingController.AnonymousClass3(messagingController4, accountDtoOrThrow2, 3));
            return;
        }
        if (i != R.id.dialog_confirm_empty_trash || (legacyAccount = this.account) == null || (accountId = legacyAccount.id) == null) {
            return;
        }
        MessagingControllerWrapper messagingController$15 = getMessagingController$1();
        messagingController$15.getClass();
        LegacyAccountDto accountDtoOrThrow3 = messagingController$15.getAccountDtoOrThrow(accountId);
        MessagingController messagingController5 = messagingController$15.messagingController;
        messagingController5.putBackground("emptyTrash", new MessagingController.AnonymousClass3(messagingController5, accountDtoOrThrow3, 4));
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
        updateFooterText$1();
    }

    public final DefaultLegacyAccountManager getAccountManager$2() {
        return (DefaultLegacyAccountManager) this.accountManager$delegate.getValue();
    }

    public final MessageReference getFocusedMessageReference() {
        MessageItemUi messageItemUi = getStateSnapshot().getMetadata().focusedMessage;
        return MathKt.parse(messageItemUi != null ? messageItemUi.messageReference : null);
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

    public final MessagingControllerWrapper getMessagingController$1() {
        return (MessagingControllerWrapper) this.messagingController$delegate.getValue();
    }

    public final ArrayList getSelectedMessages$1() {
        ImmutableList messages = ((MessageListState) getViewModel().getState().getValue()).getMessages();
        ArrayList arrayList = new ArrayList();
        for (Object obj : messages) {
            if (((MessageItemUi) obj).selected) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            MessageReference parse = MathKt.parse(((MessageItemUi) it.next()).messageReference);
            if (parse != null) {
                arrayList2.add(parse);
            }
        }
        return arrayList2;
    }

    public final int getSelectedMessagesCount() {
        MessageListState stateSnapshot = getStateSnapshot();
        MessageListState.SelectingMessages selectingMessages = stateSnapshot instanceof MessageListState.SelectingMessages ? (MessageListState.SelectingMessages) stateSnapshot : null;
        Integer valueOf = selectingMessages != null ? Integer.valueOf(selectingMessages.selectedCount) : null;
        if (valueOf != null) {
            return valueOf.intValue();
        }
        return 0;
    }

    public final MessageListState getStateSnapshot() {
        return (MessageListState) getViewModel().getState().getValue();
    }

    public final MessageListContract$ViewModel getViewModel() {
        return (MessageListContract$ViewModel) this.viewModel$delegate.getValue();
    }

    public final void handleChooseFolderResult$1(ChooseFolderResultContract.Result result, Function2 function2) {
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
            if (!list.isEmpty() && (messageReference = (MessageReference) CollectionsKt.firstOrNull(list)) != null && (account = getAccountManager$2().getAccount(messageReference.accountUuid)) != null) {
                DefaultLegacyAccountManager accountManager$2 = getAccountManager$2();
                LegacyAccount copy$default = LegacyAccount.copy$default(account, null, null, null, null, null, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, 0, 0, 0, 0, false, false, false, 0, Long.valueOf(j), null, false, null, -1, -1, 8355839);
                accountManager$2.getClass();
                accountManager$2.saveAccount(copy$default);
            }
            function2.invoke(Long.valueOf(j), list);
        }
    }

    public final boolean isOutbox() {
        AccountId accountId;
        LegacyAccount legacyAccount = this.account;
        return isSpecialFolder$1((legacyAccount == null || (accountId = legacyAccount.id) == null) ? null : Long.valueOf(Sink$CC.getOutboxFolderIdSync$default((DefaultOutboxFolderManager) this.outboxFolderManager$delegate.getValue(), accountId)));
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

    public final boolean isShowingSpamFolder$1() {
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

    public final boolean isShowingTrashFolder$1() {
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

    public final boolean isSpecialFolder$1(Long l) {
        if (l != null) {
            long longValue = l.longValue();
            FolderInfoHolder folderInfoHolder = this.currentFolder;
            if (folderInfoHolder != null && folderInfoHolder.databaseId == longValue) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onArchive() {
        MessageReference focusedMessageReference = getFocusedMessageReference();
        if (focusedMessageReference != null) {
            List listOf = IntOffsetKt.listOf(focusedMessageReference);
            if (checkCopyOrMovePossible(listOf, FolderOperation.MOVE)) {
                if (!this.showingThreadedList) {
                    getMessagingController$1().messagingController.archiveOperations.archiveMessages(listOf);
                    return;
                }
                Base64Util base64Util = getMessagingController$1().messagingController.archiveOperations;
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

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onCopy() {
        MessageReference focusedMessageReference = getFocusedMessageReference();
        if (focusedMessageReference != null) {
            onCopy$1(IntOffsetKt.listOf(focusedMessageReference));
        }
    }

    public final void onCopy$1(List list) {
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
        ArrayList arrayList;
        getViewModel();
        super.onCreate(bundle);
        int i = 0;
        Continuation continuation = null;
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
        Error decodeArguments = decodeArguments();
        if (decodeArguments != null) {
            this.error = decodeArguments;
        } else {
            FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(FlowKt.distinctUntilChanged(new SafeFlow(5, new FlowKt__LimitKt$drop$$inlined$unsafeFlow$1(((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).generalSettings, i))), new MessageListFragment$onCreate$2(this, continuation, i), 2), ViewModelKt.getLifecycleScope(this));
            this.isInitialized = true;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.getClass();
        byte b = 0;
        if (this.error != null) {
            return layoutInflater.inflate(R.layout.message_list_error, viewGroup, false);
        }
        View inflate = layoutInflater.inflate(R.layout.new_message_list_fragment, viewGroup, false);
        ComposeView composeView = (ComposeView) inflate.findViewById(R.id.message_list_compose_view);
        composeView.setViewCompositionStrategy(AndroidFontResourceLoader.INSTANCE);
        composeView.setContent(new ComposableLambdaImpl(960491205, new MessageListFragment$$ExternalSyntheticLambda0(this, 7, b), true));
        return inflate;
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onCycleSort() {
        SortType sortType = this.sortType;
        EnumEntriesList enumEntriesList = SortType.$ENTRIES;
        int indexOf = enumEntriesList.indexOf(sortType);
        changeSort$1((SortType) enumEntriesList.get(indexOf == enumEntriesList.getSize() + (-1) ? 0 : indexOf + 1));
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onDelete() {
        MessageReference focusedMessageReference = getFocusedMessageReference();
        if (focusedMessageReference != null) {
            List listOf = IntOffsetKt.listOf(focusedMessageReference);
            if (((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).getConfig().interaction.isConfirmDelete) {
                this.activeMessages = listOf;
                showDialog$2(R.id.dialog_confirm_delete);
            } else {
                if (this.showingThreadedList) {
                    MessagingControllerWrapper messagingController$1 = getMessagingController$1();
                    messagingController$1.getClass();
                    MessagingController messagingController = messagingController$1.messagingController;
                    messagingController.actOnMessagesGroupedByAccountAndFolder(listOf, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(21, messagingController));
                    return;
                }
                MessagingControllerWrapper messagingController$12 = getMessagingController$1();
                messagingController$12.getClass();
                MessagingController messagingController2 = messagingController$12.messagingController;
                messagingController2.actOnMessagesGroupedByAccountAndFolder(listOf, new MessagingController$$ExternalSyntheticLambda9(messagingController2, false));
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        LegacyAccount legacyAccount;
        AccountId accountId;
        this.coordinatorLayout = null;
        this.floatingActionButton = null;
        int i = 1;
        if (Intrinsics.areEqual(getLocalSearch().id, "new_messages") && !requireActivity().isChangingConfigurations() && (legacyAccount = this.account) != null && (accountId = legacyAccount.id) != null) {
            MessagingControllerWrapper messagingController$1 = getMessagingController$1();
            messagingController$1.getClass();
            LegacyAccountDto accountDtoOrThrow = messagingController$1.getAccountDtoOrThrow(accountId);
            MessagingController messagingController = messagingController$1.messagingController;
            messagingController.put("clearNewMessages", new MessagingController$$ExternalSyntheticLambda8(messagingController, accountDtoOrThrow, i));
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

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onMove() {
        MessageReference focusedMessageReference = getFocusedMessageReference();
        if (focusedMessageReference != null) {
            onMove$1(IntOffsetKt.listOf(focusedMessageReference));
        }
    }

    public final void onMove$1(List list) {
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
        changeSort$1(this.sortType);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        String[] strArr;
        if (this.error != null) {
            return;
        }
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
        } else {
            strArr = null;
        }
        bundle.putStringArray("activeMessages", strArr);
        MessageReference messageReference = this.activeMessage;
        if (messageReference != null) {
            bundle.putString("activeMessage", messageReference.toIdentityString());
        }
    }

    public final void onSpamConfirmed$1(List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            LegacyAccount account = getAccountManager$2().getAccount(((MessageReference) obj).accountUuid);
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
                MessageListActivityListener messageListActivityListener = this.activityListener;
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
        MessageItemUi messageItemUi = getStateSnapshot().getMetadata().focusedMessage;
        if (messageItemUi != null) {
            setFlag(messageItemUi, Flag.FLAGGED, !messageItemUi.starred);
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void onToggleRead() {
        MessageItemUi messageItemUi = getStateSnapshot().getMetadata().focusedMessage;
        if (messageItemUi != null) {
            setFlag(messageItemUi, Flag.SEEN, !messageItemUi.starred);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        getLegacyViewModel().messageListLiveData.observe(getViewLifecycleOwner(), new BaseActivity$sam$androidx_lifecycle_Observer$0(6, new AbstractMap$$ExternalSyntheticLambda0(13, this)));
        requireActivity().addMenuProvider(new FragmentManager.AnonymousClass2(5, this), getViewLifecycleOwner());
        if (this.error != null) {
            MaterialTextView materialTextView = (MaterialTextView) view.findViewById(R.id.message_list_error_message);
            this.error.getClass();
            materialTextView.setText(getString(R.string.message_list_error_folder_not_found));
            return;
        }
        boolean z = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager$delegate.getValue())).getConfig().display.inboxSettings.isShowComposeButtonOnMessageList;
        this.isShowFloatingActionButton = z;
        int i = 1;
        if (z) {
            FloatingActionButton floatingActionButton = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
            MaterialButton$$ExternalSyntheticLambda0 materialButton$$ExternalSyntheticLambda0 = new MaterialButton$$ExternalSyntheticLambda0(i, this);
            WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
            ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(floatingActionButton, materialButton$$ExternalSyntheticLambda0);
            floatingActionButton.setOnClickListener(new MessageListFragment$$ExternalSyntheticLambda15(this, 2));
            this.floatingActionButton = floatingActionButton;
        } else {
            FloatingActionButton floatingActionButton2 = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
            floatingActionButton2.getClass();
            floatingActionButton2.setVisibility(8);
        }
        FloatingActionButton floatingActionButton3 = (FloatingActionButton) view.findViewById(R.id.floating_action_button);
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        MessageListFragment$$ExternalSyntheticLambda19 messageListFragment$$ExternalSyntheticLambda19 = new MessageListFragment$$ExternalSyntheticLambda19(view, 0 == true ? 1 : 0);
        WeakHashMap weakHashMap2 = ViewCompat.sViewPropertyAnimatorMap;
        ViewCompat.Api21Impl.setOnApplyWindowInsetsListener(floatingActionButton3, messageListFragment$$ExternalSyntheticLambda19);
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
        MessageListFragment$$ExternalSyntheticLambda15 messageListFragment$$ExternalSyntheticLambda15 = new MessageListFragment$$ExternalSyntheticLambda15(this, i);
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
            actionView.setOnClickListener(new Snackbar$$ExternalSyntheticLambda0(objArr2 == true ? 1 : 0, make, messageListFragment$$ExternalSyntheticLambda15));
        }
        MessageListFragment$initializeRecentChangesSnackbar$2 messageListFragment$initializeRecentChangesSnackbar$2 = new MessageListFragment$initializeRecentChangesSnackbar$2(objArr == true ? 1 : 0, this);
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
            Boolean bool = (Boolean) map.get(this.sortType);
            boolean booleanValue = bool != null ? bool.booleanValue() : this.sortType.isDefaultAscending;
            Boolean bool2 = (Boolean) map.get(sortType);
            boolean booleanValue2 = bool2 != null ? bool2.booleanValue() : false;
            this.sortType = sortType2;
            this.sortAscending = booleanValue;
            this.sortDateAscending = booleanValue2;
        } else {
            SortType sortType3 = K9.getSortType();
            boolean isSortAscending = K9.isSortAscending(this.sortType);
            boolean isSortAscending2 = K9.isSortAscending(sortType);
            this.sortType = sortType3;
            this.sortAscending = isSortAscending;
            this.sortDateAscending = isSortAscending2;
        }
        getLocalSearch();
        SortType sortType4 = this.sortType;
        MapsKt__MapsKt.toMap(getLegacyViewModel().messageSortOverrides);
        sortType4.getClass();
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void progress(boolean z) {
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

    public final void resetActionMode$1() {
        if (this.mState >= 7) {
            if (!this.isActive || getSelectedMessagesCount() == 0) {
                ActionMode actionMode = this.actionMode;
                if (actionMode != null) {
                    actionMode.finish();
                }
                this.actionMode = null;
                return;
            }
            if (this.actionMode == null) {
                MessageHomeActivity messageHomeActivity = this.fragmentListener;
                if (messageHomeActivity == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("fragmentListener");
                    throw null;
                }
                BinaryBitmap binaryBitmap = this.actionModeCallback;
                binaryBitmap.getClass();
                MessageListFragmentBridgeContract messageListFragmentBridgeContract = messageHomeActivity.messageListFragment;
                if (messageListFragmentBridgeContract != null) {
                    messageListFragmentBridgeContract.collapseSearchView$1();
                }
                ActionMode startSupportActionMode = messageHomeActivity.getDelegate().startSupportActionMode(binaryBitmap);
                this.actionMode = startSupportActionMode;
                if (startSupportActionMode != null) {
                    startSupportActionMode.invalidate();
                }
            }
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void setActive(boolean z) {
        this.isActive = z;
        resetActionMode$1();
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
        this.activeMessage = messageReference;
        Iterator<E> it = getStateSnapshot().getMessages().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((MessageItemUi) next).messageReference.equals(messageReference != null ? messageReference.toIdentityString() : null)) {
                obj = next;
                break;
            }
        }
        getViewModel().event(new MessageItemEvent$SetMessageActive((MessageItemUi) obj));
    }

    public final void setFlag(MessageItemUi messageItemUi, Flag flag, boolean z) {
        Account account = messageItemUi.account;
        if (!this.showingThreadedList || messageItemUi.threadCount <= 1) {
            getMessagingController$1().setFlag(account.id, IntOffsetKt.listOf(Long.valueOf(Long.parseLong(messageItemUi.id))), flag, z);
        }
    }

    public final void showDialog$2(int i) {
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

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void toggleMessageSelect() {
        MessageItemUi messageItemUi = getStateSnapshot().getMetadata().focusedMessage;
        if (messageItemUi != null) {
            getViewModel().event(new MessageItemEvent$ToggleSelectMessages(messageItemUi));
        }
    }

    @Override // com.fsck.k9.ui.messagelist.MessageListFragmentBridgeContract
    public final void updateFooterText(String str) {
        getViewModel().event(new MessageListEvent.UpdateFooter(str));
    }

    public final void updateFooterText$1() {
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
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.ui.messagelist.MessageListFragment.updateTitle():void");
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MessageListActivityListener extends SimpleMessagingListener {
        public int folderCompleted;
        public int folderTotal;
        public final /* synthetic */ Fragment this$0;
        public final /* synthetic */ int $r8$classId = 1;
        public final Object lock = new Object();

        public MessageListActivityListener(LegacyMessageListFragment legacyMessageListFragment) {
            this.this$0 = legacyMessageListFragment;
        }

        private final int getFolderCompleted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener() {
            int i;
            synchronized (this.lock) {
                i = this.folderCompleted;
            }
            return i;
        }

        private final void synchronizeMailboxHeadersFinished$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(LegacyAccountDto legacyAccountDto, String str) {
            legacyAccountDto.getClass();
            str.getClass();
            synchronized (this.lock) {
                this.folderCompleted = 0;
                this.folderTotal = 0;
            }
            MessageListHandler messageListHandler = ((MessageListFragment) this.this$0).handler;
            messageListHandler.getClass();
            messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
        }

        private final void synchronizeMailboxHeadersProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(LegacyAccountDto legacyAccountDto, String str, int i, int i2) {
            legacyAccountDto.getClass();
            str.getClass();
            synchronized (this.lock) {
                this.folderCompleted = i;
                this.folderTotal = i2;
            }
            MessageListHandler messageListHandler = ((MessageListFragment) this.this$0).handler;
            messageListHandler.getClass();
            messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
        }

        private final void synchronizeMailboxProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(LegacyAccountDto legacyAccountDto, long j, int i, int i2) {
            legacyAccountDto.getClass();
            synchronized (this.lock) {
                this.folderCompleted = i;
                this.folderTotal = i2;
            }
            MessageListHandler messageListHandler = ((MessageListFragment) this.this$0).handler;
            messageListHandler.getClass();
            messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
        }

        private final void synchronizeMailboxStarted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(LegacyAccountDto legacyAccountDto, long j) {
            legacyAccountDto.getClass();
            if (updateForMe$1(legacyAccountDto, j)) {
                ((MessageListFragment) this.this$0).handler.progress(true);
                ((MessageListFragment) this.this$0).handler.folderLoading(j, true);
                synchronized (this.lock) {
                    this.folderCompleted = 0;
                    this.folderTotal = 0;
                }
                MessageListHandler messageListHandler = ((MessageListFragment) this.this$0).handler;
                messageListHandler.getClass();
                messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void checkMailFinished() {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    ((MessageListFragment) fragment).handler.progress(false);
                    break;
                default:
                    ((LegacyMessageListFragment) fragment).handler.progress(false);
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void enableProgressIndicator(boolean z) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    ((MessageListFragment) fragment).handler.progress(z);
                    break;
                default:
                    ((LegacyMessageListFragment) fragment).handler.progress(z);
                    break;
            }
        }

        public final int getFolderCompleted() {
            int i;
            switch (this.$r8$classId) {
                case 0:
                    return getFolderCompleted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener();
                default:
                    synchronized (this.lock) {
                        i = this.folderCompleted;
                    }
                    return i;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void remoteSearchFailed() {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    MessageListFragment messageListFragment = (MessageListFragment) fragment;
                    messageListFragment.handler.post(new Fragment$$ExternalSyntheticLambda0(8, messageListFragment));
                    break;
                default:
                    LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) fragment;
                    legacyMessageListFragment.handler.post(new Fragment$$ExternalSyntheticLambda0(7, legacyMessageListFragment));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void remoteSearchFinished(int i, List list) {
            int i2 = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i2) {
                case 0:
                    MessageListFragment messageListFragment = (MessageListFragment) fragment;
                    MessageListHandler messageListHandler = messageListFragment.handler;
                    messageListHandler.progress(false);
                    messageListHandler.getClass();
                    messageListHandler.sendMessage(Message.obtain(messageListHandler, 4));
                    messageListFragment.extraSearchResults = list;
                    if (list != null && !list.isEmpty()) {
                        String string = messageListFragment.getString(R.string.load_more_messages_fmt);
                        string.getClass();
                        messageListHandler.updateFooter(String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
                        break;
                    } else {
                        messageListHandler.updateFooter(null);
                        break;
                    }
                    break;
                default:
                    LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) fragment;
                    MessageListHandler messageListHandler2 = legacyMessageListFragment.handler;
                    messageListHandler2.progress(false);
                    messageListHandler2.getClass();
                    messageListHandler2.sendMessage(Message.obtain(messageListHandler2, 4));
                    legacyMessageListFragment.extraSearchResults = list;
                    if (list != null && !list.isEmpty()) {
                        String string2 = legacyMessageListFragment.getString(R.string.load_more_messages_fmt);
                        string2.getClass();
                        messageListHandler2.updateFooter(String.format(string2, Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1)));
                        break;
                    } else {
                        messageListHandler2.updateFooter(null);
                        break;
                    }
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void remoteSearchServerQueryComplete(int i, int i2) {
            int i3 = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i3) {
                case 0:
                    MessageListFragment messageListFragment = (MessageListFragment) fragment;
                    MessageListHandler messageListHandler = messageListFragment.handler;
                    messageListHandler.progress(true);
                    String quantityString = (i2 == 0 || i <= i2) ? messageListFragment.getResources().getQuantityString(R.plurals.remote_search_downloading, i, Integer.valueOf(i)) : messageListFragment.getResources().getQuantityString(R.plurals.remote_search_downloading_limited, i2, Integer.valueOf(i2), Integer.valueOf(i));
                    quantityString.getClass();
                    messageListHandler.updateFooter(quantityString);
                    MessageListHandler messageListHandler2 = messageListFragment.handler;
                    messageListHandler2.getClass();
                    messageListHandler2.sendMessage(Message.obtain(messageListHandler2, 2));
                    break;
                default:
                    LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) fragment;
                    MessageListHandler messageListHandler3 = legacyMessageListFragment.handler;
                    messageListHandler3.progress(true);
                    String quantityString2 = (i2 == 0 || i <= i2) ? legacyMessageListFragment.getResources().getQuantityString(R.plurals.remote_search_downloading, i, Integer.valueOf(i)) : legacyMessageListFragment.getResources().getQuantityString(R.plurals.remote_search_downloading_limited, i2, Integer.valueOf(i2), Integer.valueOf(i));
                    quantityString2.getClass();
                    messageListHandler3.updateFooter(quantityString2);
                    MessageListHandler messageListHandler4 = legacyMessageListFragment.handler;
                    messageListHandler4.getClass();
                    messageListHandler4.sendMessage(Message.obtain(messageListHandler4, 2));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void remoteSearchStarted() {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    MessageListFragment messageListFragment = (MessageListFragment) fragment;
                    MessageListHandler messageListHandler = messageListFragment.handler;
                    messageListHandler.progress(true);
                    messageListHandler.updateFooter(messageListFragment.getString(R.string.remote_search_sending_query));
                    break;
                default:
                    LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) fragment;
                    MessageListHandler messageListHandler2 = legacyMessageListFragment.handler;
                    messageListHandler2.progress(true);
                    messageListHandler2.updateFooter(legacyMessageListFragment.getString(R.string.remote_search_sending_query));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxFailed(LegacyAccountDto legacyAccountDto, long j, String str) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    MessageListHandler messageListHandler = ((MessageListFragment) fragment).handler;
                    legacyAccountDto.getClass();
                    str.getClass();
                    if (updateForMe$1(legacyAccountDto, j)) {
                        messageListHandler.progress(false);
                        messageListHandler.folderLoading(j, false);
                        break;
                    }
                    break;
                default:
                    MessageListHandler messageListHandler2 = ((LegacyMessageListFragment) fragment).handler;
                    legacyAccountDto.getClass();
                    str.getClass();
                    if (updateForMe(legacyAccountDto, j)) {
                        messageListHandler2.progress(false);
                        messageListHandler2.folderLoading(j, false);
                        break;
                    }
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxFinished(LegacyAccountDto legacyAccountDto, long j) {
            int i = this.$r8$classId;
            Fragment fragment = this.this$0;
            switch (i) {
                case 0:
                    MessageListHandler messageListHandler = ((MessageListFragment) fragment).handler;
                    legacyAccountDto.getClass();
                    if (updateForMe$1(legacyAccountDto, j)) {
                        messageListHandler.progress(false);
                        messageListHandler.folderLoading(j, false);
                        break;
                    }
                    break;
                default:
                    MessageListHandler messageListHandler2 = ((LegacyMessageListFragment) fragment).handler;
                    legacyAccountDto.getClass();
                    if (updateForMe(legacyAccountDto, j)) {
                        messageListHandler2.progress(false);
                        messageListHandler2.folderLoading(j, false);
                        break;
                    }
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxHeadersFinished(LegacyAccountDto legacyAccountDto, String str) {
            switch (this.$r8$classId) {
                case 0:
                    synchronizeMailboxHeadersFinished$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(legacyAccountDto, str);
                    return;
                default:
                    legacyAccountDto.getClass();
                    str.getClass();
                    synchronized (this.lock) {
                        this.folderCompleted = 0;
                        this.folderTotal = 0;
                    }
                    MessageListHandler messageListHandler = ((LegacyMessageListFragment) this.this$0).handler;
                    messageListHandler.getClass();
                    messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
                    return;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxHeadersProgress(LegacyAccountDto legacyAccountDto, String str, int i, int i2) {
            switch (this.$r8$classId) {
                case 0:
                    synchronizeMailboxHeadersProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(legacyAccountDto, str, i, i2);
                    return;
                default:
                    legacyAccountDto.getClass();
                    str.getClass();
                    synchronized (this.lock) {
                        this.folderCompleted = i;
                        this.folderTotal = i2;
                    }
                    MessageListHandler messageListHandler = ((LegacyMessageListFragment) this.this$0).handler;
                    messageListHandler.getClass();
                    messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
                    return;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxProgress(LegacyAccountDto legacyAccountDto, long j, int i, int i2) {
            switch (this.$r8$classId) {
                case 0:
                    synchronizeMailboxProgress$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(legacyAccountDto, j, i, i2);
                    return;
                default:
                    legacyAccountDto.getClass();
                    synchronized (this.lock) {
                        this.folderCompleted = i;
                        this.folderTotal = i2;
                    }
                    MessageListHandler messageListHandler = ((LegacyMessageListFragment) this.this$0).handler;
                    messageListHandler.getClass();
                    messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
                    return;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public final void synchronizeMailboxStarted(LegacyAccountDto legacyAccountDto, long j) {
            switch (this.$r8$classId) {
                case 0:
                    synchronizeMailboxStarted$com$fsck$k9$ui$messagelist$MessageListFragment$MessageListActivityListener(legacyAccountDto, j);
                    return;
                default:
                    legacyAccountDto.getClass();
                    if (updateForMe(legacyAccountDto, j)) {
                        ((LegacyMessageListFragment) this.this$0).handler.progress(true);
                        ((LegacyMessageListFragment) this.this$0).handler.folderLoading(j, true);
                        synchronized (this.lock) {
                            this.folderCompleted = 0;
                            this.folderTotal = 0;
                        }
                        MessageListHandler messageListHandler = ((LegacyMessageListFragment) this.this$0).handler;
                        messageListHandler.getClass();
                        messageListHandler.sendMessage(Message.obtain(messageListHandler, 2));
                        return;
                    }
                    return;
            }
        }

        public boolean updateForMe(LegacyAccountDto legacyAccountDto, long j) {
            LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.this$0;
            if (legacyAccountDto == null) {
                return false;
            }
            String[] strArr = legacyMessageListFragment.accountUuids;
            if (strArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
                throw null;
            }
            if (!ArraysKt___ArraysKt.contains(strArr, legacyAccountDto.uuid)) {
                return false;
            }
            ArrayList folderIds = legacyMessageListFragment.getLocalSearch().getFolderIds();
            return folderIds.isEmpty() || folderIds.contains(Long.valueOf(j));
        }

        public boolean updateForMe$1(LegacyAccountDto legacyAccountDto, long j) {
            MessageListFragment messageListFragment = (MessageListFragment) this.this$0;
            if (legacyAccountDto == null) {
                return false;
            }
            String[] strArr = messageListFragment.accountUuids;
            if (strArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("accountUuids");
                throw null;
            }
            if (!ArraysKt___ArraysKt.contains(strArr, legacyAccountDto.uuid)) {
                return false;
            }
            ArrayList folderIds = messageListFragment.getLocalSearch().getFolderIds();
            return folderIds.isEmpty() || folderIds.contains(Long.valueOf(j));
        }

        public MessageListActivityListener(MessageListFragment messageListFragment) {
            this.this$0 = messageListFragment;
        }
    }
}
