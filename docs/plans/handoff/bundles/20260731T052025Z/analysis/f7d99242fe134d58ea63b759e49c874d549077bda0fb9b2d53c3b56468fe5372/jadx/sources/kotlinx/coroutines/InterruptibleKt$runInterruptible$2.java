package kotlinx.coroutines;

import android.content.res.Configuration;
import android.net.Uri;
import android.util.Log;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.appcompat.app.AppCompatDelegateImpl;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController$$ExternalSyntheticLambda0;
import androidx.room.TransactionExecutor;
import androidx.room.coroutines.FlowUtil$createFlow$$inlined$map$1;
import androidx.viewpager.widget.ViewPager;
import app.k9mail.K9App;
import app.k9mail.core.ui.compose.designsystem.organism.snackbar.Material3BackedSnackbarHostState;
import app.k9mail.legacy.di.DI$$ExternalSyntheticLambda0;
import app.k9mail.legacy.mailstore.DefaultFolderRepository;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.bytehamster.lib.preferencesearch.PreferenceParser;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.activity.MessageCompose$$ExternalSyntheticLambda2;
import com.fsck.k9.backend.api.FolderInfo;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.store.imap.RealImapFolder;
import com.fsck.k9.mail.store.imap.RealImapStore;
import com.fsck.k9.mailstore.K9BackendStorage$K9BackendFolderUpdater;
import com.fsck.k9.mailstore.MessageViewInfo;
import com.fsck.k9.mailstore.SpecialFolderSelectionStrategy;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.storage.messages.CheckFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.ui.managefolders.FolderSettingsDataStore;
import com.fsck.k9.ui.managefolders.FolderSettingsViewModel;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.account.RemoteFolderInfo;
import com.skydoves.landscapist.crossfade.FadeInEffectNode;
import com.skydoves.landscapist.crossfade.FadeInEffectNode$onAttach$1;
import com.skydoves.landscapist.crossfade.FadeOutEffectNode;
import com.skydoves.landscapist.crossfade.FadeOutEffectNode$onAttach$1;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.io.Sink$CC;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager$getAll$$inlined$map$1;
import net.thunderbird.app.common.feature.mail.message.list.LegacyUpdateSortCriteria;
import net.thunderbird.backend.api.folder.RemoteFolderCreationOutcome$Success$AlreadyExists;
import net.thunderbird.backend.api.folder.RemoteFolderCreationOutcome$Success$Created;
import net.thunderbird.backend.imap.ImapRemoteFolderCreator;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.android.logging.LogcatLogFileWriter;
import net.thunderbird.core.common.action.SwipeActions;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.outcome.Outcome;
import net.thunderbird.core.preference.AppTheme;
import net.thunderbird.core.preference.GeneralSettings;
import net.thunderbird.core.ui.theme.manager.ThemeManager;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.account.settings.impl.domain.AccountSettingsDomainContract$AccountSettingError;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.fetchingMail.FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.readingMail.ReadingMailSettingsViewModel;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsContract$State;
import net.thunderbird.feature.account.settings.impl.ui.search.SearchSettingsViewModel;
import net.thunderbird.feature.mail.folder.api.FolderDetails;
import net.thunderbird.feature.mail.folder.api.FolderType;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.list.domain.AccountFolderError;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.BuildSwipeActions;
import net.thunderbird.feature.mail.message.list.internal.domain.usecase.GetAccountFolders;
import net.thunderbird.feature.mail.message.list.ui.dialog.SetupArchiveFolderDialogContract$State;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$Event$UpdateAttachments;
import net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat;
import net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollState;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$Error;
import net.thunderbird.feature.thundermail.internal.common.ui.ThundermailContract$State;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.commons.io.IOUtils;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class InterruptibleKt$runInterruptible$2 extends SuspendLambda implements Function2 {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId;
    public /* synthetic */ Object L$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InterruptibleKt$runInterruptible$2(Object obj, Object obj2, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.L$0 = obj;
        this.$block = obj2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        Object obj2 = this.$block;
        switch (i) {
            case 0:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$2 = new InterruptibleKt$runInterruptible$2((Function0) obj2, continuation, 0);
                interruptibleKt$runInterruptible$2.L$0 = obj;
                return interruptibleKt$runInterruptible$2;
            case 1:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$22 = new InterruptibleKt$runInterruptible$2((DefaultOutboxFolderManager) obj2, continuation, 1);
                interruptibleKt$runInterruptible$22.L$0 = obj;
                return interruptibleKt$runInterruptible$22;
            case 2:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$23 = new InterruptibleKt$runInterruptible$2((DI$$ExternalSyntheticLambda0) obj2, continuation, 2);
                interruptibleKt$runInterruptible$23.L$0 = obj;
                return interruptibleKt$runInterruptible$23;
            case 3:
                return new InterruptibleKt$runInterruptible$2((FolderSettingsDataStore) this.L$0, (FolderDetails) obj2, continuation, 3);
            case 4:
                return new InterruptibleKt$runInterruptible$2((FolderSettingsViewModel) this.L$0, (String) obj2, continuation, 4);
            case 5:
                return new InterruptibleKt$runInterruptible$2((LegacyMessageListFragment) this.L$0, (LegacyAccount) obj2, continuation, 5);
            case 6:
                return new InterruptibleKt$runInterruptible$2((MessageListFragment) this.L$0, (LegacyAccount) obj2, continuation, 6);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return new InterruptibleKt$runInterruptible$2((Function1) this.L$0, (MessageViewInfo) obj2, continuation, 7);
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return new InterruptibleKt$runInterruptible$2((AccountSettingsViewModel) this.L$0, (String) obj2, continuation, 8);
            case 9:
                return new InterruptibleKt$runInterruptible$2((AccountSettingsViewModel) this.L$0, (LegacyAccountDto) obj2, continuation, 9);
            case 10:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$24 = new InterruptibleKt$runInterruptible$2((FadeInEffectNode) obj2, continuation, 10);
                interruptibleKt$runInterruptible$24.L$0 = obj;
                return interruptibleKt$runInterruptible$24;
            case 11:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$25 = new InterruptibleKt$runInterruptible$2((FadeOutEffectNode) obj2, continuation, 11);
                interruptibleKt$runInterruptible$25.L$0 = obj;
                return interruptibleKt$runInterruptible$25;
            case BasicTextKt.ShiftMeta /* 12 */:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$26 = new InterruptibleKt$runInterruptible$2((K9App) obj2, continuation, 12);
                interruptibleKt$runInterruptible$26.L$0 = obj;
                return interruptibleKt$runInterruptible$26;
            case 13:
                return new InterruptibleKt$runInterruptible$2((LegacyUpdateSortCriteria) this.L$0, (AccountId) obj2, continuation, 13);
            case 14:
                return new InterruptibleKt$runInterruptible$2((ImapRemoteFolderCreator) this.L$0, (String) obj2, continuation, 14);
            case OffsetKt.Horizontal /* 15 */:
                return new InterruptibleKt$runInterruptible$2((LogcatLogFileWriter) this.L$0, (Uri) obj2, continuation, 15);
            case 16:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$27 = new InterruptibleKt$runInterruptible$2((ThemeManager) obj2, continuation, 16);
                interruptibleKt$runInterruptible$27.L$0 = obj;
                return interruptibleKt$runInterruptible$27;
            case 17:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$28 = new InterruptibleKt$runInterruptible$2((FetchingMailSettingsViewModel) obj2, continuation, 17);
                interruptibleKt$runInterruptible$28.L$0 = obj;
                return interruptibleKt$runInterruptible$28;
            case 18:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$29 = new InterruptibleKt$runInterruptible$2((ReadingMailSettingsViewModel) obj2, continuation, 18);
                interruptibleKt$runInterruptible$29.L$0 = obj;
                return interruptibleKt$runInterruptible$29;
            case 19:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$210 = new InterruptibleKt$runInterruptible$2((SearchSettingsViewModel) obj2, continuation, 19);
                interruptibleKt$runInterruptible$210.L$0 = obj;
                return interruptibleKt$runInterruptible$210;
            case 20:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$211 = new InterruptibleKt$runInterruptible$2((BuildSwipeActions) obj2, continuation, 20);
                interruptibleKt$runInterruptible$211.L$0 = obj;
                return interruptibleKt$runInterruptible$211;
            case 21:
                return new InterruptibleKt$runInterruptible$2((Dispatcher) this.L$0, (FolderInfo) obj2, continuation, 21);
            case 22:
                return new InterruptibleKt$runInterruptible$2((GetAccountFolders) this.L$0, (AccountId) obj2, continuation, 22);
            case 23:
                return new InterruptibleKt$runInterruptible$2((MutableState) this.L$0, (Function0) obj2, continuation, 23);
            case 24:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$212 = new InterruptibleKt$runInterruptible$2((MessageCompose$$ExternalSyntheticLambda2) obj2, continuation, 24);
                interruptibleKt$runInterruptible$212.L$0 = obj;
                return interruptibleKt$runInterruptible$212;
            case 25:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$213 = new InterruptibleKt$runInterruptible$2((UriKt$$ExternalSyntheticBUOutline0) obj2, continuation, 25);
                interruptibleKt$runInterruptible$213.L$0 = obj;
                return interruptibleKt$runInterruptible$213;
            case 26:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$214 = new InterruptibleKt$runInterruptible$2((NotificationSenderCompat.OnResultListener) obj2, continuation, 26);
                interruptibleKt$runInterruptible$214.L$0 = obj;
                return interruptibleKt$runInterruptible$214;
            case 27:
                InterruptibleKt$runInterruptible$2 interruptibleKt$runInterruptible$215 = new InterruptibleKt$runInterruptible$2((Material3BackedSnackbarHostState) obj2, continuation, 27);
                interruptibleKt$runInterruptible$215.L$0 = obj;
                return interruptibleKt$runInterruptible$215;
            case 28:
                return new InterruptibleKt$runInterruptible$2((BannerInlineListScrollState) this.L$0, (ParcelableSnapshotMutableFloatState) obj2, continuation, 28);
            default:
                return new InterruptibleKt$runInterruptible$2((ThundermailContract$State) this.L$0, (NavController$$ExternalSyntheticLambda0) obj2, continuation, 29);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                ((InterruptibleKt$runInterruptible$2) create((Exception) obj, (Continuation) obj2)).invokeSuspend(unit);
                throw null;
            case 2:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 3:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 4:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 5:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 6:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 9:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 10:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 11:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                ((InterruptibleKt$runInterruptible$2) create((Locale) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 13:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 14:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case OffsetKt.Horizontal /* 15 */:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 16:
                ((InterruptibleKt$runInterruptible$2) create((AppTheme) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 17:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 18:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 19:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 20:
                return ((InterruptibleKt$runInterruptible$2) create((GeneralSettings) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 21:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 22:
                return ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 23:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 24:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 25:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 26:
                ((InterruptibleKt$runInterruptible$2) create((Outcome) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            case 27:
                if (obj != null) {
                    throw new ClassCastException();
                }
                ((InterruptibleKt$runInterruptible$2) create(null, (Continuation) obj2)).invokeSuspend(unit);
                throw null;
            case 28:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
            default:
                ((InterruptibleKt$runInterruptible$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
                return unit;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        Object failure;
        int i2;
        Object value;
        Object value2;
        int i3 = 3;
        int i4 = 1;
        int i5 = 2;
        int i6 = 0;
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                CoroutineContext coroutineContext = coroutineScope.getCoroutineContext();
                Function0 function0 = (Function0) this.$block;
                try {
                    ThreadState threadState = new ThreadState();
                    threadState.cancelHandle = JobKt.invokeOnCompletion(JobKt.getJob(coroutineContext), true, threadState);
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = ThreadState._state$volatile$FU;
                    try {
                        do {
                            i = atomicIntegerFieldUpdater.get(threadState);
                            if (i != 0) {
                                if (i != 2 && i != 3) {
                                    ThreadState.invalidState(i);
                                    throw null;
                                }
                            }
                            return function0.invoke();
                        } while (!atomicIntegerFieldUpdater.compareAndSet(threadState, i, 0));
                        return function0.invoke();
                    } finally {
                        threadState.clearInterrupt();
                    }
                } catch (InterruptedException e) {
                    throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
                }
            case 1:
                Exception exc = (Exception) this.L$0;
                ResultKt.throwOnFailure(obj);
                ((DefaultOutboxFolderManager) this.$block).logger.error("DefaultOutboxFolderManager", exc, new SyncDebugWorker$$ExternalSyntheticLambda0(17));
                throw exc;
            case 2:
                CoroutineScope coroutineScope2 = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                return ((DI$$ExternalSyntheticLambda0) this.$block).invoke(coroutineScope2);
            case 3:
                ResultKt.throwOnFailure(obj);
                FolderSettingsDataStore folderSettingsDataStore = (FolderSettingsDataStore) this.L$0;
                DefaultFolderRepository defaultFolderRepository = folderSettingsDataStore.folderRepository;
                AccountId accountId = folderSettingsDataStore.accountId;
                FolderDetails folderDetails = (FolderDetails) this.$block;
                defaultFolderRepository.getClass();
                accountId.getClass();
                ListenableMessageStore messageStore = defaultFolderRepository.messageStoreManager.getMessageStore(accountId);
                CheckFolderOperations checkFolderOperations = ((K9MessageStore) messageStore.messageStore.val$folders).updateFolderOperations;
                checkFolderOperations.getClass();
                checkFolderOperations.lockableDatabase.execute(false, new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(28, folderDetails));
                messageStore.notifyFolderSettingsChanged();
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                Preferences preferences = ((FolderSettingsViewModel) this.L$0).preferences;
                String str = (String) this.$block;
                LegacyAccountDto account = preferences.getAccount(str);
                if (account != null) {
                    return account;
                }
                Regex$$ExternalSyntheticBUOutline0.m((Object) "Missing account: ".concat(str));
                return null;
            case 5:
                ResultKt.throwOnFailure(obj);
                LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) this.L$0;
                DefaultLegacyAccountManager accountManager$1 = legacyMessageListFragment.getAccountManager$1();
                LegacyAccount legacyAccount = (LegacyAccount) this.$block;
                accountManager$1.getClass();
                accountManager$1.saveAccount(legacyAccount);
                legacyMessageListFragment.account = legacyAccount;
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj);
                MessageListFragment messageListFragment = (MessageListFragment) this.L$0;
                DefaultLegacyAccountManager accountManager$2 = messageListFragment.getAccountManager$2();
                LegacyAccount legacyAccount2 = (LegacyAccount) this.$block;
                accountManager$2.getClass();
                accountManager$2.saveAccount(legacyAccount2);
                messageListFragment.account = legacyAccount2;
                return Unit.INSTANCE;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                ResultKt.throwOnFailure(obj);
                Function1 function1 = (Function1) this.L$0;
                MessageViewInfo messageViewInfo = (MessageViewInfo) this.$block;
                List list = messageViewInfo.attachments;
                list.getClass();
                List list2 = messageViewInfo.extraAttachments;
                list2.getClass();
                function1.invoke(new MessageReaderViewContract$Event$UpdateAttachments(list, list2));
                return Unit.INSTANCE;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ResultKt.throwOnFailure(obj);
                return ((Preferences) ((AccountSettingsViewModel) this.L$0).accountManager).getAccount((String) this.$block);
            case 9:
                ResultKt.throwOnFailure(obj);
                AccountSettingsViewModel accountSettingsViewModel = (AccountSettingsViewModel) this.L$0;
                List remoteFolders = accountSettingsViewModel.folderRepository.getRemoteFolders(((LegacyAccountDto) this.$block).id);
                ViewPager.AnonymousClass1 anonymousClass1 = new ViewPager.AnonymousClass1(18);
                String.CASE_INSENSITIVE_ORDER.getClass();
                List sortedWith = CollectionsKt.sortedWith(remoteFolders, new PreferenceParser.AnonymousClass1(9, anonymousClass1));
                FolderType folderType = FolderType.ARCHIVE;
                accountSettingsViewModel.specialFolderSelectionStrategy.getClass();
                Pair pair = new Pair(folderType, SpecialFolderSelectionStrategy.selectSpecialFolder(sortedWith, folderType));
                FolderType folderType2 = FolderType.DRAFTS;
                Pair pair2 = new Pair(folderType2, SpecialFolderSelectionStrategy.selectSpecialFolder(sortedWith, folderType2));
                FolderType folderType3 = FolderType.SENT;
                Pair pair3 = new Pair(folderType3, SpecialFolderSelectionStrategy.selectSpecialFolder(sortedWith, folderType3));
                FolderType folderType4 = FolderType.SPAM;
                Pair pair4 = new Pair(folderType4, SpecialFolderSelectionStrategy.selectSpecialFolder(sortedWith, folderType4));
                FolderType folderType5 = FolderType.TRASH;
                return new RemoteFolderInfo(sortedWith, MapsKt__MapsKt.mapOf(pair, pair2, pair3, pair4, new Pair(folderType5, SpecialFolderSelectionStrategy.selectSpecialFolder(sortedWith, folderType5))));
            case 10:
                CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                FadeInEffectNode fadeInEffectNode = (FadeInEffectNode) this.$block;
                JobKt.launch$default(coroutineScope3, null, null, new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, i4), 3);
                JobKt.launch$default(coroutineScope3, null, null, new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, i5), 3);
                JobKt.launch$default(coroutineScope3, null, null, new FadeInEffectNode$onAttach$1(fadeInEffectNode, continuation, i3), 3);
                return Unit.INSTANCE;
            case 11:
                CoroutineScope coroutineScope4 = (CoroutineScope) this.L$0;
                ResultKt.throwOnFailure(obj);
                FadeOutEffectNode fadeOutEffectNode = (FadeOutEffectNode) this.$block;
                JobKt.launch$default(coroutineScope4, null, null, new FadeOutEffectNode$onAttach$1(fadeOutEffectNode, continuation, i4), 3);
                JobKt.launch$default(coroutineScope4, null, null, new FadeOutEffectNode$onAttach$1(fadeOutEffectNode, continuation, i5), 3);
                JobKt.launch$default(coroutineScope4, null, null, new FadeOutEffectNode$onAttach$1(fadeOutEffectNode, continuation, i3), 3);
                return Unit.INSTANCE;
            case BasicTextKt.ShiftMeta /* 12 */:
                Locale locale = (Locale) this.L$0;
                ResultKt.throwOnFailure(obj);
                if (locale == null) {
                    locale = Locale.getDefault();
                }
                K9App k9App = (K9App) this.$block;
                int i7 = K9App.$r8$clinit;
                Configuration configuration = k9App.getSuperResources().getConfiguration();
                configuration.getClass();
                locale.getClass();
                k9App.updateConfigurationWithLocale(configuration, locale);
                return Unit.INSTANCE;
            case 13:
                ResultKt.throwOnFailure(obj);
                return ((LegacyUpdateSortCriteria) this.L$0).accountManager.getByIdSync((AccountId) this.$block);
            case 14:
                ResultKt.throwOnFailure(obj);
                ImapRemoteFolderCreator imapRemoteFolderCreator = (ImapRemoteFolderCreator) this.L$0;
                RealImapStore realImapStore = imapRemoteFolderCreator.imapStore;
                String str2 = (String) this.$block;
                RealImapFolder folder = realImapStore.getFolder(str2);
                try {
                    try {
                        boolean exists = folder.exists();
                        if (exists) {
                            failure = new Outcome.Success(RemoteFolderCreationOutcome$Success$AlreadyExists.INSTANCE);
                        } else if (exists || !folder.create()) {
                            final String str3 = "Failed to create folder on remote server.";
                            failure = new Outcome.Failure(new Object(str3) { // from class: net.thunderbird.backend.api.folder.RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder
                                public final String reason;

                                {
                                    this.reason = str3;
                                }

                                public final boolean equals(Object obj2) {
                                    if (this == obj2) {
                                        return true;
                                    }
                                    return (obj2 instanceof RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder) && this.reason.equals(((RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder) obj2).reason);
                                }

                                public final int hashCode() {
                                    return this.reason.hashCode();
                                }

                                public final String toString() {
                                    return CameraDevices$CC.m("FailedToCreateRemoteFolder(reason=", this.reason, ")");
                                }
                            }, null);
                        } else {
                            failure = new Outcome.Success(RemoteFolderCreationOutcome$Success$Created.INSTANCE);
                        }
                    } catch (MessagingException e2) {
                        Sink$CC.error$default(imapRemoteFolderCreator.logger, null, e2, new PathPart$$ExternalSyntheticLambda0(str2, 12), 1);
                        final String str4 = e2.message;
                        if (str4 == null) {
                            str4 = "Unhandled exception. Please check the logs.";
                        }
                        failure = new Outcome.Failure(new Object(str4) { // from class: net.thunderbird.backend.api.folder.RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder
                            public final String reason;

                            {
                                this.reason = str4;
                            }

                            public final boolean equals(Object obj2) {
                                if (this == obj2) {
                                    return true;
                                }
                                return (obj2 instanceof RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder) && this.reason.equals(((RemoteFolderCreationOutcome$Error$FailedToCreateRemoteFolder) obj2).reason);
                            }

                            public final int hashCode() {
                                return this.reason.hashCode();
                            }

                            public final String toString() {
                                return CameraDevices$CC.m("FailedToCreateRemoteFolder(reason=", this.reason, ")");
                            }
                        }, null);
                    }
                    folder.close();
                    return failure;
                } catch (Throwable th) {
                    folder.close();
                    throw th;
                }
            case OffsetKt.Horizontal /* 15 */:
                ResultKt.throwOnFailure(obj);
                LogcatLogFileWriter logcatLogFileWriter = (LogcatLogFileWriter) this.L$0;
                OutputStream openOutputStream = logcatLogFileWriter.contentResolver.openOutputStream((Uri) this.$block, "wt");
                if (openOutputStream == null) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Error opening contentUri for writing");
                    return null;
                }
                try {
                    logcatLogFileWriter.processExecutor.getClass();
                    InputStream inputStream = Runtime.getRuntime().exec("logcat -d").getInputStream();
                    inputStream.getClass();
                    try {
                        IOUtils.copy(inputStream, openOutputStream);
                        inputStream.close();
                        openOutputStream.close();
                        return Unit.INSTANCE;
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        throw th2;
                    } catch (Throwable th3) {
                        CloseableKt.closeFinally(openOutputStream, th2);
                        throw th3;
                    }
                }
            case 16:
                AppTheme appTheme = (AppTheme) this.L$0;
                ResultKt.throwOnFailure(obj);
                int ordinal = appTheme.ordinal();
                if (ordinal == 0) {
                    i2 = 1;
                } else if (ordinal == 1) {
                    i2 = 2;
                } else {
                    if (ordinal != 2) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    i2 = -1;
                }
                TransactionExecutor transactionExecutor = AppCompatDelegate.sSerialExecutorForLocalesStorage;
                if (i2 != -1 && i2 != 0 && i2 != 1 && i2 != 2) {
                    Log.d("AppCompatDelegate", "setDefaultNightMode() called with an unknown mode");
                } else if (AppCompatDelegate.sDefaultNightMode != i2) {
                    AppCompatDelegate.sDefaultNightMode = i2;
                    synchronized (AppCompatDelegate.sActivityDelegatesLock) {
                        try {
                            ArraySet arraySet = AppCompatDelegate.sActivityDelegates;
                            arraySet.getClass();
                            ArrayMap.KeyIterator keyIterator = new ArrayMap.KeyIterator(arraySet);
                            while (keyIterator.hasNext()) {
                                AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) keyIterator.next()).get();
                                if (appCompatDelegate != null) {
                                    ((AppCompatDelegateImpl) appCompatDelegate).applyApplicationSpecificConfig(true, true);
                                }
                            }
                        } finally {
                        }
                    }
                }
                return Unit.INSTANCE;
            case 17:
                Unit unit = Unit.INSTANCE;
                Outcome outcome = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                FetchingMailSettingsViewModel fetchingMailSettingsViewModel = (FetchingMailSettingsViewModel) this.$block;
                FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0 fetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0 = new FetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0(fetchingMailSettingsViewModel, i6);
                outcome.getClass();
                if (outcome instanceof Outcome.Success) {
                    fetchingMailSettingsViewModel$observeAccountName$1$$ExternalSyntheticLambda0.invoke(((Outcome.Success) outcome).data);
                } else {
                    if (!(outcome instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    FetchingMailSettingsViewModel.access$handleError(fetchingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome).error);
                }
                return unit;
            case 18:
                Unit unit2 = Unit.INSTANCE;
                Outcome outcome2 = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                ReadingMailSettingsViewModel readingMailSettingsViewModel = (ReadingMailSettingsViewModel) this.$block;
                outcome2.getClass();
                if (outcome2 instanceof Outcome.Success) {
                    String str5 = (String) ((Outcome.Success) outcome2).data;
                    StateFlowImpl stateFlowImpl = readingMailSettingsViewModel._state;
                    do {
                        value = stateFlowImpl.getValue();
                    } while (!stateFlowImpl.compareAndSet(value, ReadingMailSettingsContract$State.copy$default((ReadingMailSettingsContract$State) value, str5, null, false, 6)));
                } else {
                    if (!(outcome2 instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    ReadingMailSettingsViewModel.access$handleError(readingMailSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome2).error);
                }
                return unit2;
            case 19:
                Unit unit3 = Unit.INSTANCE;
                Outcome outcome3 = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                SearchSettingsViewModel searchSettingsViewModel = (SearchSettingsViewModel) this.$block;
                outcome3.getClass();
                if (outcome3 instanceof Outcome.Success) {
                    String str6 = (String) ((Outcome.Success) outcome3).data;
                    StateFlowImpl stateFlowImpl2 = searchSettingsViewModel._state;
                    do {
                        value2 = stateFlowImpl2.getValue();
                    } while (!stateFlowImpl2.compareAndSet(value2, SearchSettingsContract$State.copy$default((SearchSettingsContract$State) value2, str6, null, 2)));
                } else {
                    if (!(outcome3 instanceof Outcome.Failure)) {
                        UriKt$$ExternalSyntheticBUOutline0.m857m();
                        return null;
                    }
                    SearchSettingsViewModel.access$handleError(searchSettingsViewModel, (AccountSettingsDomainContract$AccountSettingError) ((Outcome.Failure) outcome3).error);
                }
                return unit3;
            case 20:
                GeneralSettings generalSettings = (GeneralSettings) this.L$0;
                ResultKt.throwOnFailure(obj);
                SwipeActions swipeActions = generalSettings.interaction.swipeActions;
                boolean z = generalSettings.display.miscSettings.shouldShowSetupArchiveFolderDialog;
                BuildSwipeActions buildSwipeActions = (BuildSwipeActions) this.$block;
                DefaultLegacyAccountManager defaultLegacyAccountManager = buildSwipeActions.accountManager;
                return new FlowUtil$createFlow$$inlined$map$1(new DefaultLegacyAccountManager$getAll$$inlined$map$1(((Preferences) defaultLegacyAccountManager.accountManager).getAccountsFlow(), defaultLegacyAccountManager, i6), buildSwipeActions, swipeActions, z);
            case 21:
                ResultKt.throwOnFailure(obj);
                Dispatcher dispatcher = (Dispatcher) this.L$0;
                FolderInfo folderInfo = (FolderInfo) this.$block;
                K9BackendStorage$K9BackendFolderUpdater k9BackendStorage$K9BackendFolderUpdater = new K9BackendStorage$K9BackendFolderUpdater(dispatcher);
                try {
                    Long l = (Long) CollectionsKt.firstOrNull(k9BackendStorage$K9BackendFolderUpdater.createFolders(IntOffsetKt.listOf(folderInfo)));
                    k9BackendStorage$K9BackendFolderUpdater.close();
                    return l;
                } catch (Throwable th4) {
                    try {
                        throw th4;
                    } catch (Throwable th5) {
                        CloseableKt.closeFinally(k9BackendStorage$K9BackendFolderUpdater, th4);
                        throw th5;
                    }
                }
            case 22:
                ResultKt.throwOnFailure(obj);
                try {
                    List remoteFolders2 = ((GetAccountFolders) this.L$0).folderRepository.getRemoteFolders((AccountId) this.$block);
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : remoteFolders2) {
                        FolderType folderType6 = ((RemoteFolder) obj2).type;
                        if (folderType6 != FolderType.REGULAR && folderType6 != FolderType.ARCHIVE) {
                        }
                        arrayList.add(obj2);
                    }
                    return new Outcome.Success(arrayList);
                } catch (MessagingException e3) {
                    return new Outcome.Failure(new AccountFolderError(e3), null);
                }
            case 23:
                ResultKt.throwOnFailure(obj);
                if (((MutableState) this.L$0).getValue() instanceof SetupArchiveFolderDialogContract$State.Closed) {
                    ((Function0) this.$block).invoke();
                }
                return Unit.INSTANCE;
            case 24:
                Outcome outcome4 = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                ((MessageCompose$$ExternalSyntheticLambda2) this.$block).onResult(outcome4);
                return Unit.INSTANCE;
            case 25:
                Outcome outcome5 = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                ((UriKt$$ExternalSyntheticBUOutline0) this.$block).onResult(outcome5);
                return Unit.INSTANCE;
            case 26:
                Outcome outcome6 = (Outcome) this.L$0;
                ResultKt.throwOnFailure(obj);
                ((NotificationSenderCompat.OnResultListener) this.$block).onResult(outcome6);
                return Unit.INSTANCE;
            case 27:
                if (this.L$0 != null) {
                    throw new ClassCastException();
                }
                ResultKt.throwOnFailure(obj);
                throw null;
            case 28:
                BannerInlineListScrollState bannerInlineListScrollState = (BannerInlineListScrollState) this.L$0;
                ResultKt.throwOnFailure(obj);
                ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState = (ParcelableSnapshotMutableFloatState) this.$block;
                if (parcelableSnapshotMutableFloatState.getFloatValue() > 0.0f) {
                    ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState2 = bannerInlineListScrollState.bannerInlineListHeight$delegate;
                    ParcelableSnapshotMutableFloatState parcelableSnapshotMutableFloatState3 = bannerInlineListScrollState.bannerInlineListHeight$delegate;
                    float floatValue = parcelableSnapshotMutableFloatState2.getFloatValue();
                    parcelableSnapshotMutableFloatState3.setFloatValue(parcelableSnapshotMutableFloatState.getFloatValue());
                    if (bannerInlineListScrollState.isBannerListOffScreen()) {
                        float floatValue2 = bannerInlineListScrollState.accumulatedContentOffset$delegate.getFloatValue() - floatValue;
                        bannerInlineListScrollState.contentOffset$delegate.setFloatValue(floatValue2);
                        bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.setFloatValue(RangesKt.coerceIn(floatValue2, -parcelableSnapshotMutableFloatState3.getFloatValue(), 0.0f));
                    }
                }
                return Unit.INSTANCE;
            default:
                ResultKt.throwOnFailure(obj);
                if (Intrinsics.areEqual(((ThundermailContract$State) this.L$0).error, ThundermailContract$Error.Canceled.INSTANCE)) {
                    ((NavController$$ExternalSyntheticLambda0) this.$block).invoke();
                }
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ InterruptibleKt$runInterruptible$2(Object obj, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.$block = obj;
    }
}
