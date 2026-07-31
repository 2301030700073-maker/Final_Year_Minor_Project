package com.fsck.k9.controller;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.activity.compose.BackHandlerKt$$ExternalSyntheticLambda1;
import androidx.camera.camera2.interop.CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.core.Threads$runAsyncSupervised$1;
import androidx.camera.core.ImageAnalysis$$ExternalSyntheticLambda3;
import androidx.camera.core.impl.Config;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.app.NotificationCompat$InboxStyle;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.room.RoomConnectionManager;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.work.Configuration;
import app.k9mail.feature.widget.unread.UnreadWidgetUpdater;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageStoreManager;
import app.k9mail.legacy.mailstore.SaveMessageData;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.legacy.message.controller.MessagingControllerMailChecker;
import app.k9mail.legacy.message.controller.MessagingControllerRegistry;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.disk.UtilsKt$$ExternalSyntheticLambda0;
import com.beetstra.jutf7.Base64Util;
import com.eygraber.uri.parts.PathPart$$ExternalSyntheticLambda0;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.backend.BackendManager;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.backend.api.SyncConfig;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.helper.MutableBoolean;
import com.fsck.k9.job.SyncDebugWorker$$ExternalSyntheticLambda0;
import com.fsck.k9.mail.AuthType;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.CertificateValidationException;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.ServerSettings;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mailstore.AttachmentViewInfo;
import com.fsck.k9.mailstore.DefaultMessageListRepository;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LocalStore.AnonymousClass3;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.MessageListCache;
import com.fsck.k9.mailstore.SaveMessageDataCreator;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.notification.AuthenticationErrorNotificationController;
import com.fsck.k9.notification.CertificateErrorNotificationController;
import com.fsck.k9.notification.K9NotificationActionCreator;
import com.fsck.k9.notification.K9NotificationResourceProvider;
import com.fsck.k9.notification.K9NotificationStrategy;
import com.fsck.k9.notification.NotificationChannelManager;
import com.fsck.k9.notification.NotificationController;
import com.fsck.k9.notification.NotificationHelper;
import com.fsck.k9.notification.SyncNotificationController;
import com.fsck.k9.power.AndroidPowerManager;
import com.fsck.k9.provider.UnreadWidgetProvider;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.squareup.moshi.JsonAdapter;
import j$.util.DesugarCollections;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.InterruptibleKt$runInterruptible$2;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapConcat$$inlined$map$1;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.featureflag.InMemoryFeatureFlagProvider;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.feature.account.AccountIdFactory;
import net.thunderbird.feature.mail.folder.api.OutboxFolderManager$getOutboxFolderIdSync$1;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalDeleteOperationDecider;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.notification.api.content.AuthenticationErrorNotification;
import net.thunderbird.feature.notification.api.dismisser.NotificationDismisser;
import net.thunderbird.feature.notification.api.sender.NotificationSender;
import net.thunderbird.feature.notification.api.sender.compat.NotificationSenderCompat;
import net.thunderbird.feature.notification.impl.DefaultNotificationManager;
import net.thunderbird.feature.search.legacy.LocalMessageSearch;
import net.thunderbird.feature.search.legacy.SearchConditionTreeNode;
import net.thunderbird.feature.search.legacy.api.MessageSearchField;
import net.thunderbird.feature.search.legacy.api.SearchAttribute;
import okhttp3.CacheControl;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.internal.SoftPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessagingController implements MessagingControllerRegistry, MessagingControllerMailChecker {
    public static final EnumSet SYNC_FLAGS = EnumSet.of(Flag.SEEN, Flag.FLAGGED, Flag.ANSWERED, Flag.FORWARDED);
    public static final AtomicInteger sequencing = new AtomicInteger(0);
    public final Base64Util archiveOperations;
    public final BackendManager backendManager;
    public final ImapSync draftOperations;
    public final InMemoryFeatureFlagProvider featureFlagProvider;
    public final DefaultLocalDeleteOperationDecider localDeleteOperationDecider;
    public final DefaultLocalMessageUidPrefixProvider localMessageUidPrefixProvider;
    public final LocalStoreProvider localStoreProvider;
    public final MessageCompose.AnonymousClass12 memorizingMessagingListener;
    public final MessageStoreManager messageStoreManager;
    public final NotificationController notificationController;
    public final NotificationSenderCompat notificationDismisser;
    public final ImapSync notificationOperations;
    public final NotificationSenderCompat notificationSender;
    public final K9NotificationStrategy notificationStrategy;
    public final DefaultOutboxFolderManager outboxFolderManager;
    public final Preferences preferences;
    public final SaveMessageDataCreator saveMessageDataCreator;
    public final Logger syncDebugLogger;
    public final PriorityBlockingQueue queuedCommands = new PriorityBlockingQueue();
    public final CopyOnWriteArraySet listeners = new CopyOnWriteArraySet();
    public final ExecutorService threadPool = Executors.newCachedThreadPool();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.controller.MessagingController$1, reason: invalid class name */
    public final class AnonymousClass1 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getId()" because "imPostDom" is null
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.calcSwitchOut(SwitchRegionMaker.java:169)
            	at jadx.core.dex.visitors.regions.maker.SwitchRegionMaker.process(SwitchRegionMaker.java:61)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.traverse(RegionMaker.java:115)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeRegion(RegionMaker.java:69)
            	at jadx.core.dex.visitors.regions.maker.RegionMaker.makeMthRegion(RegionMaker.java:49)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:25)
            */
        /* JADX WARN: Failed to build post-dominance tree
        java.lang.ArrayIndexOutOfBoundsException: Index 96 out of bounds for length 96
        	at jadx.core.dex.visitors.blocks.DominatorTree.build(DominatorTree.java:68)
        	at jadx.core.dex.visitors.blocks.PostDominatorTree.compute(PostDominatorTree.java:32)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:92)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:49)
         */
        @Override // java.lang.Runnable
        public final void run() {
            /*
                Method dump skipped, instructions count: 472
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.controller.MessagingController.AnonymousClass1.run():void");
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.controller.MessagingController$3, reason: invalid class name */
    public final class AnonymousClass3 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ MessagingController this$0;
        public final /* synthetic */ LegacyAccountDto val$account;

        public /* synthetic */ AnonymousClass3(MessagingController messagingController, LegacyAccountDto legacyAccountDto, int i) {
            this.$r8$classId = i;
            this.this$0 = messagingController;
            this.val$account = legacyAccountDto;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public final void run() {
            int i = this.$r8$classId;
            int i2 = 9;
            String str = "uid LIKE 'K9LOCAL:%'";
            LegacyAccountDto legacyAccountDto = this.val$account;
            MessagingController messagingController = this.this$0;
            switch (i) {
                case 0:
                    try {
                        messagingController.processPendingCommandsSynchronous(legacyAccountDto);
                        return;
                    } catch (MessagingException e) {
                        Log.e(e, "processPendingCommands", new Object[0]);
                        return;
                    }
                case 1:
                    Log.v("Clearing notification flag for %s", legacyAccountDto);
                    NotificationController notificationController = messagingController.notificationController;
                    notificationController.getClass();
                    legacyAccountDto.getClass();
                    notificationController.syncNotificationController.notificationHelper.notificationManager.cancel((legacyAccountDto.getAccountNumber() * 16) + 8);
                    return;
                case 2:
                    DefaultOutboxFolderManager defaultOutboxFolderManager = messagingController.outboxFolderManager;
                    String str2 = legacyAccountDto.uuid;
                    defaultOutboxFolderManager.getClass();
                    str2.getClass();
                    if (((Boolean) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new OutboxFolderManager$getOutboxFolderIdSync$1((Object) defaultOutboxFolderManager, (Object) str2, (Continuation) (0 == true ? 1 : 0), 3))).booleanValue()) {
                        if (legacyAccountDto.isNotifySync()) {
                            NotificationController notificationController2 = messagingController.notificationController;
                            notificationController2.getClass();
                            SyncNotificationController syncNotificationController = notificationController2.syncNotificationController;
                            NotificationHelper notificationHelper = syncNotificationController.notificationHelper;
                            String displayName = legacyAccountDto.getDisplayName();
                            Context context = syncNotificationController.resourceProvider.context;
                            String string = context.getString(R.string.notification_bg_send_title);
                            string.getClass();
                            String string2 = context.getString(R.string.notification_bg_send_ticker, displayName);
                            string2.getClass();
                            int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 8;
                            long outboxFolderIdSync$default = Sink$CC.getOutboxFolderIdSync$default(syncNotificationController.outboxFolderManager, legacyAccountDto.id);
                            Long valueOf = outboxFolderIdSync$default != -1 ? Long.valueOf(outboxFolderIdSync$default) : null;
                            if (valueOf == null) {
                                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Outbox folder not configured");
                                return;
                            }
                            PendingIntent createViewFolderPendingIntent = syncNotificationController.actionBuilder.createViewFolderPendingIntent(legacyAccountDto, valueOf.longValue());
                            NotificationChannelManager.ChannelType channelType = NotificationChannelManager.ChannelType.MISCELLANEOUS;
                            NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
                            Notification notification = createNotificationBuilder.mNotification;
                            notification.icon = R.drawable.ic_sync;
                            createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
                            notification.when = System.currentTimeMillis();
                            createNotificationBuilder.setFlag(2, true);
                            createNotificationBuilder.setTicker(string2);
                            createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
                            createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(displayName);
                            createNotificationBuilder.mContentIntent = createViewFolderPendingIntent;
                            NotificationCompat$Builder createNotificationBuilder2 = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
                            Notification notification2 = createNotificationBuilder2.mNotification;
                            notification2.icon = R.drawable.ic_sync;
                            createNotificationBuilder2.mColor = legacyAccountDto.getChipColor();
                            notification2.when = System.currentTimeMillis();
                            String string3 = context.getString(R.string.notification_bg_send_title);
                            string3.getClass();
                            createNotificationBuilder2.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string3);
                            Notification build = createNotificationBuilder2.build();
                            build.getClass();
                            createNotificationBuilder.mPublicVersion = build;
                            Notification build2 = createNotificationBuilder.build();
                            build2.getClass();
                            notificationHelper.notify(accountNumber, build2);
                        }
                        try {
                            messagingController.sendPendingMessagesSynchronous(legacyAccountDto);
                            return;
                        } finally {
                            MessagingController.m930$$Nest$mclearSendingNotificationIfNecessary(messagingController, legacyAccountDto);
                        }
                    }
                    return;
                case 3:
                    try {
                        Long spamFolderId = legacyAccountDto.getSpamFolderId();
                        if (spamFolderId == null) {
                            Log.w("No Spam folder configured. Can't empty spam.", new Object[0]);
                            return;
                        }
                        LocalStore localStoreProvider = messagingController.localStoreProvider.getInstance(legacyAccountDto);
                        LocalFolder localFolder = new LocalFolder(localStoreProvider, spamFolderId.longValue());
                        localFolder.open();
                        localFolder.localMessageUidPrefixProvider.getClass();
                        localStoreProvider.database.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(i2, localFolder, str));
                        Set singleton = Collections.singleton(Flag.DELETED);
                        localFolder.open();
                        for (LocalMessage localMessage : localFolder.getMessages(true)) {
                            localMessage.getClass();
                            Iterator it = singleton.iterator();
                            while (it.hasNext()) {
                                localMessage.setFlag((Flag) it.next(), true);
                            }
                        }
                        Iterator it2 = messagingController.listeners.iterator();
                        while (it2.hasNext()) {
                            ((SimpleMessagingListener) it2.next()).folderStatusChanged(legacyAccountDto);
                        }
                        messagingController.queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingEmptySpam.create());
                        messagingController.processPendingCommands(legacyAccountDto);
                        return;
                    } catch (Exception e2) {
                        Log.e(e2, "emptySpam failed", new Object[0]);
                        return;
                    }
                default:
                    try {
                        Long trashFolderId = legacyAccountDto.getTrashFolderId();
                        if (trashFolderId == null) {
                            Log.w("No Trash folder configured. Can't empty trash.", new Object[0]);
                            return;
                        }
                        LocalStore localStoreProvider2 = messagingController.localStoreProvider.getInstance(legacyAccountDto);
                        LocalFolder localFolder2 = new LocalFolder(localStoreProvider2, trashFolderId.longValue());
                        localFolder2.open();
                        boolean supportsTrashFolder = messagingController.getBackend(legacyAccountDto).getSupportsTrashFolder();
                        if (supportsTrashFolder) {
                            localFolder2.localMessageUidPrefixProvider.getClass();
                            localStoreProvider2.database.execute(false, new CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(i2, localFolder2, str));
                            Set singleton2 = Collections.singleton(Flag.DELETED);
                            localFolder2.open();
                            for (LocalMessage localMessage2 : localFolder2.getMessages(true)) {
                                localMessage2.getClass();
                                Iterator it3 = singleton2.iterator();
                                while (it3.hasNext()) {
                                    localMessage2.setFlag((Flag) it3.next(), true);
                                }
                            }
                        } else {
                            localFolder2.clearAllMessages();
                        }
                        Iterator it4 = messagingController.listeners.iterator();
                        while (it4.hasNext()) {
                            ((SimpleMessagingListener) it4.next()).folderStatusChanged(legacyAccountDto);
                        }
                        if (supportsTrashFolder) {
                            messagingController.queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingEmptyTrash.create());
                            messagingController.processPendingCommands(legacyAccountDto);
                            return;
                        }
                        return;
                    } catch (Exception e3) {
                        Log.e(e3, "emptyTrash failed", new Object[0]);
                        return;
                    }
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.controller.MessagingController$4, reason: invalid class name */
    public final class AnonymousClass4 implements Runnable {
        public final /* synthetic */ LegacyAccountDto val$account;
        public final /* synthetic */ AnonymousClass8 val$listener;
        public final /* synthetic */ LocalMessage val$message;
        public final /* synthetic */ Part val$part;

        public AnonymousClass4(LocalMessage localMessage, LegacyAccountDto legacyAccountDto, Part part, AnonymousClass8 anonymousClass8) {
            this.val$message = localMessage;
            this.val$account = legacyAccountDto;
            this.val$part = part;
            this.val$listener = anonymousClass8;
        }

        @Override // java.lang.Runnable
        public final void run() {
            AnonymousClass8 anonymousClass8 = this.val$listener;
            Part part = this.val$part;
            LegacyAccountDto legacyAccountDto = this.val$account;
            MessagingController messagingController = MessagingController.this;
            LocalMessage localMessage = this.val$message;
            try {
                String str = localMessage.mFolder.serverId;
                LocalStore localStoreProvider = messagingController.localStoreProvider.getInstance(legacyAccountDto);
                LocalFolder localFolder = new LocalFolder(localStoreProvider, str, localStoreProvider.generalSettingsManager, localStoreProvider.localMessageUidPrefixProvider);
                messagingController.getBackend(legacyAccountDto).fetchPart(str, localMessage.mUid, part, new ProgressBodyFactory(new Configuration.Builder(22, this)));
                localFolder.open();
                localStoreProvider.database.execute(false, new ImapSync(localFolder, localMessage, part, false, 22));
                localStoreProvider.notifyChange();
                Iterator it = messagingController.getListeners(anonymousClass8).iterator();
                while (it.hasNext()) {
                    ((SimpleMessagingListener) it.next()).loadAttachmentFinished();
                }
            } catch (MessagingException e) {
                Log.v(e, "Exception loading attachment", new Object[0]);
                Iterator it2 = messagingController.getListeners(anonymousClass8).iterator();
                while (it2.hasNext()) {
                    ((SimpleMessagingListener) it2.next()).loadAttachmentFailed();
                }
                messagingController.notifyUserIfCertificateProblem(legacyAccountDto, e, true);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.controller.MessagingController$9, reason: invalid class name */
    public final class AnonymousClass9 implements Runnable {
        public final /* synthetic */ LegacyAccountDto val$account;
        public final /* synthetic */ boolean val$ignoreLastCheckedTime;
        public final /* synthetic */ SimpleMessagingListener val$listener;
        public final /* synthetic */ boolean val$notify;
        public final /* synthetic */ AndroidPowerManager.AndroidWakeLock val$wakeLock;

        public AnonymousClass9(LegacyAccountDto legacyAccountDto, boolean z, boolean z2, SimpleMessagingListener simpleMessagingListener, AndroidPowerManager.AndroidWakeLock androidWakeLock) {
            this.val$account = legacyAccountDto;
            this.val$ignoreLastCheckedTime = z;
            this.val$notify = z2;
            this.val$listener = simpleMessagingListener;
            this.val$wakeLock = androidWakeLock;
        }

        @Override // java.lang.Runnable
        public final void run() {
            List list;
            MessagingController messagingController = MessagingController.this;
            int i = 1;
            try {
                Log.i("Starting mail check", new Object[0]);
                LegacyAccountDto legacyAccountDto = this.val$account;
                if (legacyAccountDto != null) {
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(legacyAccountDto);
                    list = arrayList;
                } else {
                    list = messagingController.preferences.getAccounts();
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    MessagingController.m929$$Nest$mcheckMailForAccount(messagingController, (LegacyAccountDto) it.next(), this.val$ignoreLastCheckedTime, this.val$notify, this.val$listener);
                }
            } catch (Exception e) {
                Log.e(e, "Unable to synchronize mail", new Object[0]);
            }
            messagingController.putBackground("finalize sync", new AnonymousClass1(i, this));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Command implements Comparable {
        public String description;
        public boolean isForegroundPriority;
        public Runnable runnable;
        public int sequence;

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            Command command = (Command) obj;
            boolean z = command.isForegroundPriority;
            if (z && !this.isForegroundPriority) {
                return 1;
            }
            if (z || !this.isForegroundPriority) {
                return this.sequence - command.sequence;
            }
            return -1;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface MessageActor {
        void act(LegacyAccountDto legacyAccountDto, LocalFolder localFolder, ArrayList arrayList);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class MoveOrCopyFlavor {
        public static final /* synthetic */ MoveOrCopyFlavor[] $VALUES;
        public static final MoveOrCopyFlavor COPY;
        public static final MoveOrCopyFlavor MOVE;
        public static final MoveOrCopyFlavor MOVE_AND_MARK_AS_READ;

        static {
            MoveOrCopyFlavor moveOrCopyFlavor = new MoveOrCopyFlavor("MOVE", 0);
            MOVE = moveOrCopyFlavor;
            MoveOrCopyFlavor moveOrCopyFlavor2 = new MoveOrCopyFlavor("COPY", 1);
            COPY = moveOrCopyFlavor2;
            MoveOrCopyFlavor moveOrCopyFlavor3 = new MoveOrCopyFlavor("MOVE_AND_MARK_AS_READ", 2);
            MOVE_AND_MARK_AS_READ = moveOrCopyFlavor3;
            $VALUES = new MoveOrCopyFlavor[]{moveOrCopyFlavor, moveOrCopyFlavor2, moveOrCopyFlavor3};
        }

        public static MoveOrCopyFlavor valueOf(String str) {
            return (MoveOrCopyFlavor) Enum.valueOf(MoveOrCopyFlavor.class, str);
        }

        public static MoveOrCopyFlavor[] values() {
            return (MoveOrCopyFlavor[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: -$$Nest$mcheckMailForAccount, reason: not valid java name */
    public static void m929$$Nest$mcheckMailForAccount(MessagingController messagingController, LegacyAccountDto legacyAccountDto, boolean z, boolean z2, SimpleMessagingListener simpleMessagingListener) {
        String str;
        AnonymousClass3 anonymousClass3;
        int i = 1;
        int i2 = 0;
        Object[] objArr = 0;
        Log.i("Synchronizing account %s", legacyAccountDto);
        MutableBoolean mutableBoolean = new MutableBoolean();
        messagingController.putBackground("sendPendingMessages", new AnonymousClass3(messagingController, legacyAccountDto, 2));
        messagingController.refreshFolderListIfStale(legacyAccountDto);
        try {
            try {
                LocalStore localStoreProvider = messagingController.localStoreProvider.getInstance(legacyAccountDto);
                LinkedList<LocalFolder> linkedList = new LinkedList();
                localStoreProvider.database.execute(false, new LocalStore.AnonymousClass1(i2, localStoreProvider, linkedList, objArr == true ? 1 : 0));
                for (LocalFolder localFolder : linkedList) {
                    localFolder.open();
                    if (localFolder.visible && localFolder.syncEnabled) {
                        messagingController.synchronizeFolder(legacyAccountDto, localFolder, z, z2, simpleMessagingListener, mutableBoolean);
                    }
                }
                str = "clear notification flag for " + legacyAccountDto;
                anonymousClass3 = new AnonymousClass3(messagingController, legacyAccountDto, i);
            } catch (MessagingException e) {
                Log.e(e, "Unable to synchronize account %s", legacyAccountDto);
                str = "clear notification flag for " + legacyAccountDto;
                anonymousClass3 = new AnonymousClass3(messagingController, legacyAccountDto, i);
            }
            messagingController.putBackground(str, anonymousClass3);
        } catch (Throwable th) {
            messagingController.putBackground("clear notification flag for " + legacyAccountDto, new AnonymousClass3(messagingController, legacyAccountDto, i));
            throw th;
        }
    }

    /* renamed from: -$$Nest$mclearSendingNotificationIfNecessary, reason: not valid java name */
    public static void m930$$Nest$mclearSendingNotificationIfNecessary(MessagingController messagingController, LegacyAccountDto legacyAccountDto) {
        if (legacyAccountDto.isNotifySync()) {
            NotificationController notificationController = messagingController.notificationController;
            notificationController.getClass();
            SyncNotificationController syncNotificationController = notificationController.syncNotificationController;
            syncNotificationController.notificationHelper.notificationManager.cancel((legacyAccountDto.getAccountNumber() * 16) + 8);
        }
    }

    public MessagingController(Context context, NotificationController notificationController, K9NotificationStrategy k9NotificationStrategy, LocalStoreProvider localStoreProvider, BackendManager backendManager, Preferences preferences, MessageStoreManager messageStoreManager, SaveMessageDataCreator saveMessageDataCreator, DefaultLocalDeleteOperationDecider defaultLocalDeleteOperationDecider, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider, List list, InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider, Logger logger, DefaultNotificationManager defaultNotificationManager, DefaultOutboxFolderManager defaultOutboxFolderManager) {
        MessageCompose.AnonymousClass12 anonymousClass12 = new MessageCompose.AnonymousClass12();
        anonymousClass12.this$0 = new HashMap(31);
        this.memorizingMessagingListener = anonymousClass12;
        this.notificationController = notificationController;
        this.notificationStrategy = k9NotificationStrategy;
        this.localStoreProvider = localStoreProvider;
        this.backendManager = backendManager;
        this.preferences = preferences;
        this.messageStoreManager = messageStoreManager;
        this.saveMessageDataCreator = saveMessageDataCreator;
        this.localDeleteOperationDecider = defaultLocalDeleteOperationDecider;
        this.localMessageUidPrefixProvider = defaultLocalMessageUidPrefixProvider;
        this.featureFlagProvider = inMemoryFeatureFlagProvider;
        this.syncDebugLogger = logger;
        this.notificationSender = new NotificationSenderCompat((NotificationSender) defaultNotificationManager);
        this.notificationDismisser = new NotificationSenderCompat((NotificationDismisser) defaultNotificationManager);
        this.outboxFolderManager = defaultOutboxFolderManager;
        Thread thread = new Thread(new AnonymousClass1(0, this));
        thread.setName("MessagingController");
        thread.start();
        addListener(anonymousClass12);
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            if (it.hasNext()) {
                throw Config.CC.m(it);
            }
        }
        this.draftOperations = new ImapSync(this, messageStoreManager, saveMessageDataCreator, defaultLocalMessageUidPrefixProvider);
        this.notificationOperations = new ImapSync(notificationController, preferences, messageStoreManager, 18);
        this.archiveOperations = new Base64Util(29, this, inMemoryFeatureFlagProvider);
    }

    public static SyncConfig createSyncConfig(LegacyAccountDto legacyAccountDto) {
        SyncConfig.ExpungePolicy expungePolicy;
        int ordinal = legacyAccountDto.getExpungePolicy().ordinal();
        Date date = null;
        if (ordinal == 0) {
            expungePolicy = SyncConfig.ExpungePolicy.IMMEDIATELY;
        } else if (ordinal == 1) {
            expungePolicy = SyncConfig.ExpungePolicy.MANUALLY;
        } else {
            if (ordinal != 2) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return null;
            }
            expungePolicy = SyncConfig.ExpungePolicy.ON_POLL;
        }
        int i = legacyAccountDto.maximumPolledMessageAge;
        Integer valueOf = Integer.valueOf(i);
        if (i < 0) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            Calendar calendar = Calendar.getInstance();
            calendar.set(11, 0);
            calendar.set(12, 0);
            calendar.set(13, 0);
            calendar.set(14, 0);
            if (intValue < 28) {
                calendar.add(5, intValue * (-1));
            } else if (intValue == 28) {
                calendar.add(2, -1);
            } else if (intValue == 56) {
                calendar.add(2, -2);
            } else if (intValue == 84) {
                calendar.add(2, -3);
            } else if (intValue == 168) {
                calendar.add(2, -6);
            } else if (intValue == 365) {
                calendar.add(1, -1);
            }
            date = calendar.getTime();
        }
        return new SyncConfig(expungePolicy, date, legacyAccountDto.isSyncRemoteDeletions(), legacyAccountDto.getMaximumAutoDownloadMessageSize(), SYNC_FLAGS);
    }

    public static void destroyPlaceholderMessages(LocalFolder localFolder, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            LocalMessage message = localFolder.getMessage(str);
            if (message != null) {
                if (message.mFlags.contains(Flag.DELETED)) {
                    message.destroy();
                } else {
                    Log.w("Expected local message %s in folder %s to be a placeholder, but DELETE flag wasn't set", str, localFolder.serverId);
                }
            }
        }
    }

    public static boolean isAuthenticationProblem(LegacyAccountDto legacyAccountDto, boolean z) {
        ServerSettings incomingServerSettings = z ? legacyAccountDto.getIncomingServerSettings() : legacyAccountDto.getOutgoingServerSettings();
        if (incomingServerSettings.isMissingCredentials) {
            return true;
        }
        return incomingServerSettings.authenticationType == AuthType.XOAUTH2 && legacyAccountDto.getOAuthState() == null;
    }

    public static void putCommand(PriorityBlockingQueue priorityBlockingQueue, String str, Runnable runnable, boolean z) {
        int i = 10;
        InterruptedException interruptedException = null;
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                throw new Error(interruptedException);
            }
            try {
                Command command = new Command();
                command.sequence = sequencing.getAndIncrement();
                command.runnable = runnable;
                command.description = str;
                command.isForegroundPriority = z;
                priorityBlockingQueue.put(command);
                return;
            } catch (InterruptedException e) {
                interruptedException = e;
                SystemClock.sleep(200L);
                i = i2;
            }
        }
    }

    public static void removeFlagForThreadsFromCache(LegacyAccountDto legacyAccountDto, List list, Flag flag) {
        MessageListCache cache = MessageListCache.getCache(legacyAccountDto.uuid);
        list.getClass();
        flag.getClass();
        synchronized (cache.threadCache) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                long longValue = ((Number) it.next()).longValue();
                Map map = (Map) cache.threadCache.get(Long.valueOf(longValue));
                if (map != null) {
                    map.remove(flag);
                    if (map.isEmpty()) {
                        cache.threadCache.remove(Long.valueOf(longValue));
                    }
                }
            }
        }
    }

    public static void removeFlagFromCache(LegacyAccountDto legacyAccountDto, List list, Flag flag) {
        MessageListCache cache = MessageListCache.getCache(legacyAccountDto.uuid);
        list.getClass();
        flag.getClass();
        synchronized (cache.messageCache) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                long longValue = ((Number) it.next()).longValue();
                Map map = (Map) cache.messageCache.get(Long.valueOf(longValue));
                if (map != null) {
                    map.remove(flag);
                    if (map.isEmpty()) {
                        cache.messageCache.remove(Long.valueOf(longValue));
                    }
                }
            }
        }
    }

    public static void setFlagInCache(LegacyAccountDto legacyAccountDto, List list, Flag flag, boolean z) {
        MessageListCache cache = MessageListCache.getCache(legacyAccountDto.uuid);
        list.getClass();
        flag.getClass();
        synchronized (cache.messageCache) {
            try {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    long longValue = ((Number) it.next()).longValue();
                    LinkedHashMap linkedHashMap = cache.messageCache;
                    Long valueOf = Long.valueOf(longValue);
                    Object obj = linkedHashMap.get(valueOf);
                    if (obj == null) {
                        obj = new LinkedHashMap();
                        linkedHashMap.put(valueOf, obj);
                    }
                    ((Map) obj).put(flag, Boolean.valueOf(z));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((DefaultMessageListRepository) CloseableKt.get$default(DefaultMessageListRepository.class)).notifyMessageListChanged(cache.accountUuid);
    }

    public static void suppressMessages(LegacyAccountDto legacyAccountDto, List list) {
        MessageListCache cache = MessageListCache.getCache(legacyAccountDto.uuid);
        list.getClass();
        synchronized (cache.hiddenMessageCache) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                LocalMessage localMessage = (LocalMessage) it.next();
                cache.hiddenMessageCache.put(Long.valueOf(localMessage.databaseId), Long.valueOf(localMessage.mFolder.databaseId));
            }
        }
        ((DefaultMessageListRepository) CloseableKt.get$default(DefaultMessageListRepository.class)).notifyMessageListChanged(cache.accountUuid);
    }

    public static void unsuppressMessages(LegacyAccountDto legacyAccountDto, ArrayList arrayList) {
        MessageListCache cache = MessageListCache.getCache(legacyAccountDto.uuid);
        synchronized (cache.hiddenMessageCache) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                LocalMessage localMessage = (LocalMessage) it.next();
                long j = localMessage.databaseId;
                long j2 = localMessage.mFolder.databaseId;
                Long l = (Long) cache.hiddenMessageCache.get(Long.valueOf(j));
                if (l != null && l.longValue() == j2) {
                    cache.hiddenMessageCache.remove(Long.valueOf(j));
                }
            }
        }
    }

    public final void actOnMessagesGroupedByAccountAndFolder(List list, MessageActor messageActor) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MessageReference messageReference = (MessageReference) it.next();
            if (messageReference != null) {
                String str = messageReference.accountUuid;
                long j = messageReference.folderId;
                Map map = (Map) hashMap.get(str);
                if (map == null) {
                    map = new HashMap();
                    hashMap.put(str, map);
                }
                List list2 = (List) map.get(Long.valueOf(j));
                if (list2 == null) {
                    list2 = new LinkedList();
                    map.put(Long.valueOf(j), list2);
                }
                list2.add(messageReference);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            LegacyAccountDto account = this.preferences.getAccount((String) entry.getKey());
            for (Map.Entry entry2 : ((Map) entry.getValue()).entrySet()) {
                long longValue = ((Long) entry2.getKey()).longValue();
                List list3 = (List) entry2.getValue();
                try {
                    LocalFolder localFolder = new LocalFolder(this.localStoreProvider.getInstance(account), longValue);
                    messageActor.act(account, localFolder, localFolder.getMessagesByReference(list3));
                } catch (MessagingException e) {
                    Log.e(e, "Error loading account?!", new Object[0]);
                }
            }
        }
    }

    public final void addListener(SimpleMessagingListener simpleMessagingListener) {
        int i;
        this.listeners.add(simpleMessagingListener);
        if (simpleMessagingListener != null) {
            MessageCompose.AnonymousClass12 anonymousClass12 = this.memorizingMessagingListener;
            synchronized (anonymousClass12) {
                try {
                    MemorizingMessagingListener$Memory memorizingMessagingListener$Memory = null;
                    MemorizingMessagingListener$Memory memorizingMessagingListener$Memory2 = null;
                    for (MemorizingMessagingListener$Memory memorizingMessagingListener$Memory3 : ((HashMap) anonymousClass12.this$0).values()) {
                        int i2 = memorizingMessagingListener$Memory3.syncingState;
                        if (i2 != 0) {
                            int ordinal = ImageAnalysis$$ExternalSyntheticLambda3.ordinal(i2);
                            if (ordinal == 0) {
                                memorizingMessagingListener$Memory2 = memorizingMessagingListener$Memory3;
                            } else if (ordinal == 1) {
                                simpleMessagingListener.synchronizeMailboxFinished(memorizingMessagingListener$Memory3.account, memorizingMessagingListener$Memory3.folderId);
                            } else if (ordinal == 2) {
                                simpleMessagingListener.synchronizeMailboxFailed(memorizingMessagingListener$Memory3.account, memorizingMessagingListener$Memory3.folderId, memorizingMessagingListener$Memory3.failureMessage);
                            }
                        }
                    }
                    if (memorizingMessagingListener$Memory2 != null) {
                        simpleMessagingListener.synchronizeMailboxStarted(memorizingMessagingListener$Memory2.account, memorizingMessagingListener$Memory2.folderId);
                        memorizingMessagingListener$Memory = memorizingMessagingListener$Memory2;
                    }
                    if (memorizingMessagingListener$Memory != null && (i = memorizingMessagingListener$Memory.folderTotal) > 0) {
                        simpleMessagingListener.synchronizeMailboxProgress(memorizingMessagingListener$Memory.account, memorizingMessagingListener$Memory.folderId, memorizingMessagingListener$Memory.folderCompleted, i);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void checkMail(LegacyAccountDto legacyAccountDto, boolean z, boolean z2, boolean z3, SimpleMessagingListener simpleMessagingListener) {
        AndroidPowerManager.AndroidWakeLock androidWakeLock;
        if (z2) {
            androidWakeLock = new AndroidPowerManager.AndroidWakeLock((AndroidPowerManager) CloseableKt.get$default(AndroidPowerManager.class), "K9 MessagingController.checkMail");
            synchronized (androidWakeLock.wakeLock) {
                androidWakeLock.wakeLock.setReferenceCounted(false);
            }
            androidWakeLock.acquire(120000L);
        } else {
            androidWakeLock = null;
        }
        AndroidPowerManager.AndroidWakeLock androidWakeLock2 = androidWakeLock;
        Iterator it = getListeners(simpleMessagingListener).iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).getClass();
        }
        putBackground("checkMail", new AnonymousClass9(legacyAccountDto, z, z3, simpleMessagingListener, androidWakeLock2));
    }

    public final void clearAuthenticationErrorNotification(LegacyAccountDto legacyAccountDto, boolean z, boolean z2) {
        InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
        inMemoryFeatureFlagProvider.getClass();
        if (inMemoryFeatureFlagProvider.m1030providedj3aFNw("display_in_app_notifications").isEnabled()) {
            ServerSettings incomingServerSettings = z ? legacyAccountDto.getIncomingServerSettings() : legacyAccountDto.getOutgoingServerSettings();
            if (!z2 || incomingServerSettings.authenticationType == AuthType.XOAUTH2) {
                BackHandlerKt$$ExternalSyntheticLambda1 backHandlerKt$$ExternalSyntheticLambda1 = new BackHandlerKt$$ExternalSyntheticLambda1(3, legacyAccountDto, z);
                int i = 2;
                Continuation continuation = null;
                AuthenticationErrorNotification authenticationErrorNotification = (AuthenticationErrorNotification) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new Threads$runAsyncSupervised$1(i, continuation, backHandlerKt$$ExternalSyntheticLambda1));
                UriKt$$ExternalSyntheticBUOutline0 uriKt$$ExternalSyntheticBUOutline0 = new UriKt$$ExternalSyntheticBUOutline0(28);
                NotificationSenderCompat notificationSenderCompat = this.notificationDismisser;
                notificationSenderCompat.getClass();
                authenticationErrorNotification.getClass();
                FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(((NotificationDismisser) notificationSenderCompat.notificationSender).dismiss(authenticationErrorNotification), new InterruptibleKt$runInterruptible$2(uriKt$$ExternalSyntheticBUOutline0, continuation, 25), i), notificationSenderCompat.scope);
            }
        }
    }

    public final ArrayList collectMessagesInThreads(LegacyAccountDto legacyAccountDto, List list) {
        LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            LocalMessage localMessage = (LocalMessage) it.next();
            long j = localMessage.rootId;
            if (j == -1) {
                j = localMessage.threadId;
            }
            String l = Long.toString(j);
            LocalMessageSearch localMessageSearch = new LocalMessageSearch();
            localMessageSearch.and(MessageSearchField.THREAD_ID, l, SearchAttribute.EQUALS);
            SearchConditionTreeNode conditions = localMessageSearch.getConditions();
            ArrayList arrayList2 = new ArrayList();
            StringBuilder sb = new StringBuilder();
            ByteStreamsKt.buildWhereClause(conditions, sb, arrayList2);
            SoftPool softPool = new SoftPool(1, sb.toString(), arrayList2);
            String str = (String) softPool.threadLocalStack;
            String str2 = new String[]{"id"}[0];
            Pattern compile = Pattern.compile("(?<=^|[^\\.])\\b" + str2 + "\\b");
            compile.getClass();
            String replaceAll = compile.matcher(str).replaceAll(CameraDevices$CC.m("messages.", str2));
            replaceAll.getClass();
            String[] strArr = (String[]) ((ArrayList) softPool.initializer).toArray(new String[0]);
            String m = CameraDevices$CC.m(new StringBuilder("SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN threads ON (threads.message_id = messages.id) LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN folders ON (folders.id = messages.folder_id) WHERE (empty = 0 AND deleted = 0)"), !TextUtils.isEmpty(replaceAll) ? CameraDevices$CC.m(" AND (", replaceAll, ")") : "", " ORDER BY date DESC");
            Log.d("Query = %s", m);
            ArrayList arrayList3 = new ArrayList();
            localStoreProvider.database.execute(false, new LocalStore.AnonymousClass7(localStoreProvider, m, strArr, (LocalFolder) null, arrayList3));
            arrayList.addAll(DesugarCollections.unmodifiableList(arrayList3));
        }
        return arrayList;
    }

    public final void copyMessages(LegacyAccountDto legacyAccountDto, long j, List list, long j2) {
        try {
            putBackground("copyMessages", new MessagingController$$ExternalSyntheticLambda23(this, legacyAccountDto, j, new LocalFolder(this.localStoreProvider.getInstance(legacyAccountDto), j).getMessagesByReference(list), j2, 1));
        } catch (MessagingException e) {
            Log.e(e, "Error loading account?!", new Object[0]);
        }
    }

    public final void deleteDraft(LegacyAccountDto legacyAccountDto, long j, boolean z) {
        Long draftsFolderId = legacyAccountDto.getDraftsFolderId();
        if (draftsFolderId == null) {
            Log.w("No Drafts folder configured. Can't delete draft.", new Object[0]);
            return;
        }
        String messageServerId = ((K9MessageStore) this.messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders).getMessageServerId(j);
        if (messageServerId != null) {
            actOnMessagesGroupedByAccountAndFolder(Collections.singletonList(new MessageReference(draftsFolderId.longValue(), legacyAccountDto.uuid, messageServerId)), new MessagingController$$ExternalSyntheticLambda9(this, z));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0099 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a4 A[Catch: MessagingException -> 0x0287, TryCatch #0 {MessagingException -> 0x0287, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x001f, B:13:0x003d, B:9:0x0041, B:16:0x0048, B:18:0x0062, B:19:0x0067, B:24:0x006f, B:27:0x0073, B:31:0x0085, B:39:0x00a4, B:41:0x00b1, B:42:0x00bb, B:44:0x00c1, B:46:0x019b, B:47:0x01a1, B:49:0x01a7, B:52:0x01b2, B:57:0x01b9, B:61:0x01db, B:63:0x01e5, B:64:0x01ed, B:66:0x01f3, B:68:0x0205, B:70:0x0283, B:73:0x020c, B:76:0x0211, B:78:0x0217, B:81:0x0221, B:83:0x022a, B:85:0x0230, B:86:0x0257, B:87:0x0240, B:89:0x0250, B:90:0x025b, B:92:0x0263, B:93:0x0274, B:94:0x00df, B:95:0x0103, B:97:0x0109, B:99:0x0132, B:100:0x015b, B:102:0x0161, B:104:0x0189, B:106:0x018f, B:108:0x008c, B:112:0x007a, B:119:0x00a0, B:21:0x0068), top: B:2:0x0006, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01a7 A[Catch: MessagingException -> 0x0287, TryCatch #0 {MessagingException -> 0x0287, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x001f, B:13:0x003d, B:9:0x0041, B:16:0x0048, B:18:0x0062, B:19:0x0067, B:24:0x006f, B:27:0x0073, B:31:0x0085, B:39:0x00a4, B:41:0x00b1, B:42:0x00bb, B:44:0x00c1, B:46:0x019b, B:47:0x01a1, B:49:0x01a7, B:52:0x01b2, B:57:0x01b9, B:61:0x01db, B:63:0x01e5, B:64:0x01ed, B:66:0x01f3, B:68:0x0205, B:70:0x0283, B:73:0x020c, B:76:0x0211, B:78:0x0217, B:81:0x0221, B:83:0x022a, B:85:0x0230, B:86:0x0257, B:87:0x0240, B:89:0x0250, B:90:0x025b, B:92:0x0263, B:93:0x0274, B:94:0x00df, B:95:0x0103, B:97:0x0109, B:99:0x0132, B:100:0x015b, B:102:0x0161, B:104:0x0189, B:106:0x018f, B:108:0x008c, B:112:0x007a, B:119:0x00a0, B:21:0x0068), top: B:2:0x0006, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0210 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0211 A[Catch: MessagingException -> 0x0287, TryCatch #0 {MessagingException -> 0x0287, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x001f, B:13:0x003d, B:9:0x0041, B:16:0x0048, B:18:0x0062, B:19:0x0067, B:24:0x006f, B:27:0x0073, B:31:0x0085, B:39:0x00a4, B:41:0x00b1, B:42:0x00bb, B:44:0x00c1, B:46:0x019b, B:47:0x01a1, B:49:0x01a7, B:52:0x01b2, B:57:0x01b9, B:61:0x01db, B:63:0x01e5, B:64:0x01ed, B:66:0x01f3, B:68:0x0205, B:70:0x0283, B:73:0x020c, B:76:0x0211, B:78:0x0217, B:81:0x0221, B:83:0x022a, B:85:0x0230, B:86:0x0257, B:87:0x0240, B:89:0x0250, B:90:0x025b, B:92:0x0263, B:93:0x0274, B:94:0x00df, B:95:0x0103, B:97:0x0109, B:99:0x0132, B:100:0x015b, B:102:0x0161, B:104:0x0189, B:106:0x018f, B:108:0x008c, B:112:0x007a, B:119:0x00a0, B:21:0x0068), top: B:2:0x0006, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x025b A[Catch: MessagingException -> 0x0287, TryCatch #0 {MessagingException -> 0x0287, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x001f, B:13:0x003d, B:9:0x0041, B:16:0x0048, B:18:0x0062, B:19:0x0067, B:24:0x006f, B:27:0x0073, B:31:0x0085, B:39:0x00a4, B:41:0x00b1, B:42:0x00bb, B:44:0x00c1, B:46:0x019b, B:47:0x01a1, B:49:0x01a7, B:52:0x01b2, B:57:0x01b9, B:61:0x01db, B:63:0x01e5, B:64:0x01ed, B:66:0x01f3, B:68:0x0205, B:70:0x0283, B:73:0x020c, B:76:0x0211, B:78:0x0217, B:81:0x0221, B:83:0x022a, B:85:0x0230, B:86:0x0257, B:87:0x0240, B:89:0x0250, B:90:0x025b, B:92:0x0263, B:93:0x0274, B:94:0x00df, B:95:0x0103, B:97:0x0109, B:99:0x0132, B:100:0x015b, B:102:0x0161, B:104:0x0189, B:106:0x018f, B:108:0x008c, B:112:0x007a, B:119:0x00a0, B:21:0x0068), top: B:2:0x0006, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00df A[Catch: MessagingException -> 0x0287, TryCatch #0 {MessagingException -> 0x0287, blocks: (B:3:0x0006, B:4:0x0019, B:6:0x001f, B:13:0x003d, B:9:0x0041, B:16:0x0048, B:18:0x0062, B:19:0x0067, B:24:0x006f, B:27:0x0073, B:31:0x0085, B:39:0x00a4, B:41:0x00b1, B:42:0x00bb, B:44:0x00c1, B:46:0x019b, B:47:0x01a1, B:49:0x01a7, B:52:0x01b2, B:57:0x01b9, B:61:0x01db, B:63:0x01e5, B:64:0x01ed, B:66:0x01f3, B:68:0x0205, B:70:0x0283, B:73:0x020c, B:76:0x0211, B:78:0x0217, B:81:0x0221, B:83:0x022a, B:85:0x0230, B:86:0x0257, B:87:0x0240, B:89:0x0250, B:90:0x025b, B:92:0x0263, B:93:0x0274, B:94:0x00df, B:95:0x0103, B:97:0x0109, B:99:0x0132, B:100:0x015b, B:102:0x0161, B:104:0x0189, B:106:0x018f, B:108:0x008c, B:112:0x007a, B:119:0x00a0, B:21:0x0068), top: B:2:0x0006, inners: #1 }] */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void deleteMessagesSynchronous(net.thunderbird.core.android.account.LegacyAccountDto r19, long r20, java.util.ArrayList r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 654
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.controller.MessagingController.deleteMessagesSynchronous(net.thunderbird.core.android.account.LegacyAccountDto, long, java.util.ArrayList, boolean):void");
    }

    public final Backend getBackend(LegacyAccountDto legacyAccountDto) {
        String str = legacyAccountDto.uuid;
        BackendManager backendManager = this.backendManager;
        backendManager.getClass();
        str.getClass();
        return backendManager.getBackend(AccountIdFactory.INSTANCE.of(str));
    }

    public final long getFolderId(LegacyAccountDto legacyAccountDto, String str) {
        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(legacyAccountDto);
        str.getClass();
        Long folderId = ((K9MessageStore) messageStore.messageStore.val$folders).getFolderId(str);
        if (folderId != null) {
            return folderId.longValue();
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$2(CameraDevices$CC.m("Folder not found (server ID: ", str, ")"));
        return 0L;
    }

    public final String getFolderServerId(LegacyAccountDto legacyAccountDto, long j) {
        String folderServerId = ((K9MessageStore) this.messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders).getFolderServerId(j);
        if (folderServerId != null) {
            return folderServerId;
        }
        throw new IllegalStateException("Folder not found (ID: " + j + ")");
    }

    public final AbstractSet getListeners(SimpleMessagingListener simpleMessagingListener) {
        CopyOnWriteArraySet copyOnWriteArraySet = this.listeners;
        if (simpleMessagingListener == null) {
            return copyOnWriteArraySet;
        }
        HashSet hashSet = new HashSet(copyOnWriteArraySet);
        hashSet.add(simpleMessagingListener);
        return hashSet;
    }

    public final LocalStore getLocalStoreOrThrow(LegacyAccountDto legacyAccountDto) {
        try {
            return this.localStoreProvider.getInstance(legacyAccountDto);
        } catch (MessagingException unused) {
            Regex$$ExternalSyntheticBUOutline0.m$1(legacyAccountDto, "Couldn't get LocalStore for account ");
            return null;
        }
    }

    public final void handleAuthenticationFailure(LegacyAccountDto legacyAccountDto, boolean z) {
        Continuation continuation = null;
        if (legacyAccountDto.shouldMigrateToOAuth()) {
            legacyAccountDto.internalIncomingServerSettings = ServerSettings.copy$default(legacyAccountDto.getIncomingServerSettings(), null, null, null, 495);
            legacyAccountDto.internalOutgoingServerSettings = ServerSettings.copy$default(legacyAccountDto.getOutgoingServerSettings(), null, null, null, 495);
            legacyAccountDto.setShouldMigrateToOAuth(false);
            this.preferences.saveAccount(legacyAccountDto);
        }
        InMemoryFeatureFlagProvider inMemoryFeatureFlagProvider = this.featureFlagProvider;
        inMemoryFeatureFlagProvider.getClass();
        int i = 3;
        if (inMemoryFeatureFlagProvider.m1030providedj3aFNw("display_in_app_notifications").isEnabled()) {
            Log.d("handleAuthenticationFailure: sending in-app notification", new Object[0]);
            int i2 = 2;
            AuthenticationErrorNotification authenticationErrorNotification = (AuthenticationErrorNotification) JobKt.runBlockingK(EmptyCoroutineContext.INSTANCE, new Threads$runAsyncSupervised$1(i2, continuation, new BackHandlerKt$$ExternalSyntheticLambda1(i, legacyAccountDto, z)));
            UriKt$$ExternalSyntheticBUOutline0 uriKt$$ExternalSyntheticBUOutline0 = new UriKt$$ExternalSyntheticBUOutline0(27);
            NotificationSenderCompat notificationSenderCompat = this.notificationSender;
            notificationSenderCompat.getClass();
            authenticationErrorNotification.getClass();
            FlowKt.launchIn(new FlowKt__MergeKt$flatMapConcat$$inlined$map$1(((NotificationSender) notificationSenderCompat.notificationSender).send(authenticationErrorNotification), new InterruptibleKt$runInterruptible$2(uriKt$$ExternalSyntheticBUOutline0, continuation, 26), i2), notificationSenderCompat.scope);
        }
        if (inMemoryFeatureFlagProvider.m1030providedj3aFNw("use_notification_sender_for_system_notifications").isDisabled()) {
            Log.d("handleAuthenticationFailure: sending system notification via old notification controller", new Object[0]);
            NotificationController notificationController = this.notificationController;
            notificationController.getClass();
            AuthenticationErrorNotificationController authenticationErrorNotificationController = notificationController.authenticationErrorNotificationController;
            NotificationHelper notificationHelper = authenticationErrorNotificationController.notificationHelper;
            Context context = authenticationErrorNotificationController.resourceProvider.context;
            int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 3 + (z ? 3 : 4);
            K9NotificationActionCreator k9NotificationActionCreator = authenticationErrorNotificationController.actionCreator;
            PendingIntent editIncomingServerSettingsIntent = z ? k9NotificationActionCreator.getEditIncomingServerSettingsIntent(legacyAccountDto) : k9NotificationActionCreator.getEditOutgoingServerSettingsIntent(legacyAccountDto);
            String string = context.getString(R.string.notification_authentication_error_title);
            string.getClass();
            String string2 = context.getString(R.string.notification_authentication_error_text, legacyAccountDto.getDisplayName());
            string2.getClass();
            NotificationChannelManager.ChannelType channelType = NotificationChannelManager.ChannelType.MISCELLANEOUS;
            NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
            Notification notification = createNotificationBuilder.mNotification;
            notification.icon = R.drawable.ic_warning;
            createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
            notification.when = System.currentTimeMillis();
            createNotificationBuilder.setFlag(16, true);
            createNotificationBuilder.setTicker(string);
            createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
            createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(string2);
            createNotificationBuilder.mContentIntent = editIncomingServerSettingsIntent;
            NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
            notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(string2);
            createNotificationBuilder.setStyle(notificationCompat$InboxStyle);
            NotificationCompat$Builder createNotificationBuilder2 = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
            Notification notification2 = createNotificationBuilder2.mNotification;
            notification2.icon = R.drawable.ic_warning;
            createNotificationBuilder2.mColor = legacyAccountDto.getChipColor();
            notification2.when = System.currentTimeMillis();
            String string3 = context.getString(R.string.notification_authentication_error_title);
            string3.getClass();
            createNotificationBuilder2.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string3);
            Notification build = createNotificationBuilder2.build();
            build.getClass();
            createNotificationBuilder.mPublicVersion = build;
            createNotificationBuilder.mCategory = "err";
            IntOffsetKt.setErrorAppearance(createNotificationBuilder, authenticationErrorNotificationController.generalSettingsManager);
            Notification build2 = createNotificationBuilder.build();
            build2.getClass();
            notificationHelper.notify(accountNumber, build2);
        }
    }

    public final void handleSendFailure(LegacyAccountDto legacyAccountDto, LocalFolder localFolder, LocalMessage localMessage, Exception exc) {
        Log.e(exc, "Failed to send message", new Object[0]);
        localMessage.setFlag(Flag.X_SEND_FAILED, true);
        long j = localFolder.databaseId;
        String rootCauseMessage = CacheControl.Companion.getRootCauseMessage(exc);
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).synchronizeMailboxFailed(legacyAccountDto, j, rootCauseMessage);
        }
    }

    public final boolean isMoveCapable(MessageReference messageReference) {
        String str = messageReference.uid;
        this.localMessageUidPrefixProvider.getClass();
        return !str.startsWith("K9LOCAL:");
    }

    public final LocalMessage loadMessage(LegacyAccountDto legacyAccountDto, long j, String str) {
        LocalFolder localFolder = new LocalFolder(this.localStoreProvider.getInstance(legacyAccountDto), j);
        localFolder.open();
        LocalMessage message = localFolder.getMessage(str);
        if (message == null || message.databaseId == 0) {
            UriKt$$ExternalSyntheticBUOutline0.m(ImageAnalysis$$ExternalSyntheticLambda3.m("Message not found: folder=", localFolder.name, ", uid=", str));
            return null;
        }
        FetchProfile fetchProfile = new FetchProfile();
        fetchProfile.add(FetchProfile.Item.BODY);
        localFolder.fetch(Collections.singletonList(message), fetchProfile);
        return message;
    }

    public final void loadMessageRemoteSynchronous(LegacyAccountDto legacyAccountDto, long j, String str, SimpleMessagingListener simpleMessagingListener, boolean z) {
        try {
            this.localMessageUidPrefixProvider.getClass();
            if (str.startsWith("K9LOCAL:")) {
                throw new IllegalArgumentException("Must not be called with a local UID");
            }
            String folderServerId = ((K9MessageStore) this.messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders).getFolderServerId(j);
            if (folderServerId == null) {
                throw new IllegalStateException("Folder not found (ID: " + j + ")");
            }
            Backend backend = getBackend(legacyAccountDto);
            if (z) {
                backend.downloadMessage(createSyncConfig(legacyAccountDto), folderServerId, str);
            } else {
                backend.downloadCompleteMessage(folderServerId, str);
            }
            Iterator it = getListeners(simpleMessagingListener).iterator();
            while (it.hasNext()) {
                ((SimpleMessagingListener) it.next()).loadMessageRemoteFinished(legacyAccountDto, j, str);
            }
        } catch (Exception e) {
            Iterator it2 = getListeners(simpleMessagingListener).iterator();
            while (it2.hasNext()) {
                ((SimpleMessagingListener) it2.next()).loadMessageRemoteFailed(e);
            }
            notifyUserIfCertificateProblem(legacyAccountDto, e, true);
            Log.e(e, "Error while loading remote message", new Object[0]);
            this.syncDebugLogger.error("MessagingException", null, new SyncDebugWorker$$ExternalSyntheticLambda0(14));
        }
    }

    public final void moveMessages(LegacyAccountDto legacyAccountDto, long j, List list, long j2) {
        try {
            ArrayList messagesByReference = new LocalFolder(this.localStoreProvider.getInstance(legacyAccountDto), j).getMessagesByReference(list);
            suppressMessages(legacyAccountDto, messagesByReference);
            putBackground("moveMessages", new MessagingController$$ExternalSyntheticLambda23(this, legacyAccountDto, j, messagesByReference, j2, 0));
        } catch (MessagingException e) {
            Log.e(e, "Error loading account?!", new Object[0]);
        }
    }

    public final void moveOrCopyMessageSynchronous(LegacyAccountDto legacyAccountDto, long j, List list, long j2, MoveOrCopyFlavor moveOrCopyFlavor) {
        Map moveMessages;
        try {
            LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
            if (moveOrCopyFlavor != MoveOrCopyFlavor.MOVE || getBackend(legacyAccountDto).getSupportsMove()) {
                MoveOrCopyFlavor moveOrCopyFlavor2 = MoveOrCopyFlavor.COPY;
                if (moveOrCopyFlavor != moveOrCopyFlavor2 || getBackend(legacyAccountDto).getSupportsCopy()) {
                    LocalFolder localFolder = new LocalFolder(localStoreProvider, j);
                    localFolder.open();
                    LocalFolder localFolder2 = new LocalFolder(localStoreProvider, j2);
                    localFolder2.open();
                    LinkedList linkedList = new LinkedList();
                    Iterator it = list.iterator();
                    boolean z = false;
                    while (it.hasNext()) {
                        MimeMessage mimeMessage = (MimeMessage) it.next();
                        String str = mimeMessage.mUid;
                        EnumSet enumSet = mimeMessage.mFlags;
                        this.localMessageUidPrefixProvider.getClass();
                        if (!str.startsWith("K9LOCAL:")) {
                            linkedList.add(str);
                        }
                        if (moveOrCopyFlavor == MoveOrCopyFlavor.MOVE_AND_MARK_AS_READ) {
                            Flag flag = Flag.SEEN;
                            if (!enumSet.contains(flag)) {
                                mimeMessage.setFlag(flag, true);
                                z = true;
                            }
                        } else if (!z && !enumSet.contains(Flag.SEEN)) {
                            z = true;
                        }
                    }
                    localFolder.open();
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = linkedList.iterator();
                    while (it2.hasNext()) {
                        LocalMessage message = localFolder.getMessage((String) it2.next());
                        if (message != null) {
                            arrayList.add(message);
                        }
                    }
                    if (arrayList.size() > 0) {
                        Log.i("moveOrCopyMessageSynchronous: source folder = %s, %d messages, destination folder = %s, operation = %s", Long.valueOf(j), Integer.valueOf(arrayList.size()), Long.valueOf(j2), moveOrCopyFlavor.name());
                        ListenableMessageStore messageStore = this.messageStoreManager.getMessageStore(legacyAccountDto);
                        K9MessageStore k9MessageStore = (K9MessageStore) messageStore.messageStore.val$folders;
                        ArrayList arrayList2 = new ArrayList();
                        HashMap hashMap = new HashMap();
                        Iterator it3 = arrayList.iterator();
                        while (it3.hasNext()) {
                            LocalMessage localMessage = (LocalMessage) it3.next();
                            boolean z2 = z;
                            Iterator it4 = it3;
                            long j3 = localMessage.databaseId;
                            arrayList2.add(Long.valueOf(j3));
                            hashMap.put(Long.valueOf(j3), localMessage.mUid);
                            it3 = it4;
                            z = z2;
                        }
                        boolean z3 = z;
                        CopyOnWriteArraySet copyOnWriteArraySet = this.listeners;
                        if (moveOrCopyFlavor == moveOrCopyFlavor2) {
                            moveMessages = k9MessageStore.copyMessages(arrayList2, j2);
                            if (z3) {
                                Iterator it5 = copyOnWriteArraySet.iterator();
                                while (it5.hasNext()) {
                                    ((SimpleMessagingListener) it5.next()).folderStatusChanged(legacyAccountDto);
                                }
                            }
                        } else {
                            moveMessages = k9MessageStore.moveMessages(arrayList2, j2);
                            unsuppressMessages(legacyAccountDto, arrayList);
                            if (z3) {
                                Iterator it6 = copyOnWriteArraySet.iterator();
                                while (it6.hasNext()) {
                                    SimpleMessagingListener simpleMessagingListener = (SimpleMessagingListener) it6.next();
                                    simpleMessagingListener.folderStatusChanged(legacyAccountDto);
                                    simpleMessagingListener.folderStatusChanged(legacyAccountDto);
                                }
                            }
                        }
                        Map messageServerIds = messageStore.getMessageServerIds(moveMessages.values());
                        HashMap hashMap2 = new HashMap();
                        for (Map.Entry entry : moveMessages.entrySet()) {
                            Long l = (Long) entry.getKey();
                            l.getClass();
                            Long l2 = (Long) entry.getValue();
                            l2.getClass();
                            hashMap2.put((String) hashMap.get(l), (String) messageServerIds.get(l2));
                        }
                        queueMoveOrCopy(legacyAccountDto, localFolder.databaseId, localFolder2.databaseId, moveOrCopyFlavor, hashMap2);
                    }
                    processPendingCommands(legacyAccountDto);
                }
            }
        } catch (MessagingException e) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Error moving message", (Throwable) e);
        }
    }

    public final void moveOrDeleteSentMessage(LegacyAccountDto legacyAccountDto, LocalStore localStore, LocalMessage localMessage) {
        boolean z;
        String messageServerId;
        synchronized (legacyAccountDto) {
            z = legacyAccountDto.sentFolderId != null;
        }
        if (z && legacyAccountDto.isUploadSentMessages()) {
            Long sentFolderId = legacyAccountDto.getSentFolderId();
            long longValue = sentFolderId.longValue();
            LocalFolder localFolder = new LocalFolder(localStore, longValue);
            localFolder.open();
            String str = localFolder.serverId;
            Log.i("Moving sent message to folder '%s' (%d)", str, sentFolderId);
            LocalStore.AnonymousClass1 anonymousClass1 = this.messageStoreManager.getMessageStore(legacyAccountDto).messageStore;
            long moveMessage = ((K9MessageStore) anonymousClass1.val$folders).moveMessage(localMessage.databaseId, longValue);
            anonymousClass1.notifyChange();
            Log.i("Moved sent message to folder '%s' (%d)", str, sentFolderId);
            if (!localFolder.localOnly && (messageServerId = ((K9MessageStore) anonymousClass1.val$folders).getMessageServerId(moveMessage)) != null) {
                queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingAppend.create(longValue, messageServerId));
                processPendingCommands(legacyAccountDto);
            }
        } else {
            Log.i("Not uploading sent message; deleting local message", new Object[0]);
            localMessage.destroy();
        }
        UuidKt.getOutboxFolderIdSync(this.outboxFolderManager, legacyAccountDto.uuid);
        Iterator it = this.listeners.iterator();
        while (it.hasNext()) {
            ((SimpleMessagingListener) it.next()).folderStatusChanged(legacyAccountDto);
        }
    }

    public final void notifyUserIfCertificateProblem(LegacyAccountDto legacyAccountDto, Exception exc, boolean z) {
        if (exc instanceof CertificateValidationException) {
            NotificationController notificationController = this.notificationController;
            notificationController.getClass();
            legacyAccountDto.getClass();
            CertificateErrorNotificationController certificateErrorNotificationController = notificationController.certificateErrorNotificationController;
            NotificationHelper notificationHelper = certificateErrorNotificationController.notificationHelper;
            K9NotificationResourceProvider k9NotificationResourceProvider = certificateErrorNotificationController.resourceProvider;
            int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 3 + (z ? 1 : 2);
            K9NotificationActionCreator k9NotificationActionCreator = certificateErrorNotificationController.actionCreator;
            PendingIntent editIncomingServerSettingsIntent = z ? k9NotificationActionCreator.getEditIncomingServerSettingsIntent(legacyAccountDto) : k9NotificationActionCreator.getEditOutgoingServerSettingsIntent(legacyAccountDto);
            String displayName = legacyAccountDto.getDisplayName();
            Context context = k9NotificationResourceProvider.context;
            String string = context.getString(R.string.notification_certificate_error_title, displayName);
            string.getClass();
            String string2 = context.getString(R.string.notification_certificate_error_text);
            string2.getClass();
            NotificationChannelManager.ChannelType channelType = NotificationChannelManager.ChannelType.MISCELLANEOUS;
            NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
            Notification notification = createNotificationBuilder.mNotification;
            notification.icon = R.drawable.ic_warning;
            createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
            notification.when = System.currentTimeMillis();
            createNotificationBuilder.setFlag(16, true);
            createNotificationBuilder.setTicker(string);
            createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
            createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(string2);
            createNotificationBuilder.mContentIntent = editIncomingServerSettingsIntent;
            NotificationCompat$InboxStyle notificationCompat$InboxStyle = new NotificationCompat$InboxStyle(1);
            notificationCompat$InboxStyle.mTexts = NotificationCompat$Builder.limitCharSequenceLength(string2);
            createNotificationBuilder.setStyle(notificationCompat$InboxStyle);
            NotificationCompat$Builder createNotificationBuilder2 = notificationHelper.createNotificationBuilder(legacyAccountDto, channelType);
            Notification notification2 = createNotificationBuilder2.mNotification;
            notification2.icon = R.drawable.ic_warning;
            createNotificationBuilder2.mColor = legacyAccountDto.getChipColor();
            notification2.when = System.currentTimeMillis();
            String string3 = context.getString(R.string.notification_certificate_error_public);
            string3.getClass();
            createNotificationBuilder2.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string3);
            Notification build = createNotificationBuilder2.build();
            build.getClass();
            createNotificationBuilder.mPublicVersion = build;
            createNotificationBuilder.mCategory = "err";
            IntOffsetKt.setErrorAppearance(createNotificationBuilder, certificateErrorNotificationController.generalSettingsManager);
            Notification build2 = createNotificationBuilder.build();
            build2.getClass();
            notificationHelper.notify(accountNumber, build2);
        }
    }

    public final void processPendingCommands(LegacyAccountDto legacyAccountDto) {
        putBackground("processPendingCommands", new AnonymousClass3(this, legacyAccountDto, 0));
    }

    public final void processPendingCommandsSynchronous(LegacyAccountDto legacyAccountDto) {
        LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
        LockableDatabase lockableDatabase = localStoreProvider.database;
        MessagingControllerCommands$PendingCommand messagingControllerCommands$PendingCommand = null;
        try {
            for (MessagingControllerCommands$PendingCommand messagingControllerCommands$PendingCommand2 : (List) lockableDatabase.execute(false, localStoreProvider.new AnonymousClass3())) {
                try {
                    String commandName = messagingControllerCommands$PendingCommand2.getCommandName();
                    Log.d("Processing pending command '%s'", commandName);
                    int i = 2;
                    try {
                        messagingControllerCommands$PendingCommand2.execute(this, legacyAccountDto);
                        lockableDatabase.execute(false, new ConnectionPool(i, messagingControllerCommands$PendingCommand2));
                        Log.d("Done processing pending command '%s'", commandName);
                    } catch (MessagingException e) {
                        if (!e.isPermanentFailure) {
                            throw e;
                        }
                        Log.e(e, "Failure of command '%s' was permanent, removing command from queue", commandName);
                        lockableDatabase.execute(false, new ConnectionPool(i, messagingControllerCommands$PendingCommand2));
                    } catch (Exception e2) {
                        Log.e(e2, "Unexpected exception with command '%s', removing command from queue", commandName);
                        lockableDatabase.execute(false, new ConnectionPool(i, messagingControllerCommands$PendingCommand2));
                    }
                    messagingControllerCommands$PendingCommand = messagingControllerCommands$PendingCommand2;
                } catch (MessagingException e3) {
                    e = e3;
                    messagingControllerCommands$PendingCommand = messagingControllerCommands$PendingCommand2;
                    notifyUserIfCertificateProblem(legacyAccountDto, e, true);
                    Log.e(e, "Could not process command '%s'", messagingControllerCommands$PendingCommand);
                    throw e;
                }
            }
        } catch (MessagingException e4) {
            e = e4;
        }
    }

    public final void processPendingMoveOrCopy(LegacyAccountDto legacyAccountDto, long j, long j2, List list, MoveOrCopyFlavor moveOrCopyFlavor, Map map) {
        Map moveMessages;
        LegacyAccountDto legacyAccountDto2;
        long j3;
        if (map == null) {
            UriKt$$ExternalSyntheticBUOutline0.m("Required value was null.");
            return;
        }
        LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
        LocalFolder localFolder = new LocalFolder(localStoreProvider, j);
        localFolder.open();
        String str = localFolder.serverId;
        LocalFolder localFolder2 = new LocalFolder(localStoreProvider, j2);
        localFolder2.open();
        String str2 = localFolder2.serverId;
        Backend backend = getBackend(legacyAccountDto);
        int ordinal = moveOrCopyFlavor.ordinal();
        if (ordinal == 0) {
            moveMessages = backend.moveMessages(str, str2, list);
        } else if (ordinal == 1) {
            moveMessages = backend.copyMessages(str, str2, list);
        } else {
            if (ordinal != 2) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Unsupported messaging operation");
                return;
            }
            moveMessages = backend.moveMessagesAndMarkAsRead(str, str2, list);
        }
        if (moveOrCopyFlavor != MoveOrCopyFlavor.COPY) {
            destroyPlaceholderMessages(localFolder, list);
        }
        if (moveMessages == null) {
            moveMessages = Collections.EMPTY_MAP;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            String str4 = (String) map.get(str3);
            String str5 = (String) moveMessages.get(str3);
            LocalMessage message = localFolder2.getMessage(str4);
            if (message != null) {
                if (str5 != null) {
                    message.setUid(str5);
                    localFolder2.changeUid(message);
                    Iterator it2 = this.listeners.iterator();
                    while (it2.hasNext()) {
                        ((SimpleMessagingListener) it2.next()).messageUidChanged(legacyAccountDto, j2, str4, str5);
                    }
                    legacyAccountDto2 = legacyAccountDto;
                    j3 = j2;
                } else {
                    legacyAccountDto2 = legacyAccountDto;
                    j3 = j2;
                    message.destroy();
                }
                legacyAccountDto = legacyAccountDto2;
                j2 = j3;
            }
        }
    }

    public final void put(String str, Runnable runnable) {
        putCommand(this.queuedCommands, str, runnable, true);
    }

    public final void putBackground(String str, Runnable runnable) {
        putCommand(this.queuedCommands, str, runnable, false);
    }

    public final void queueMoveOrCopy(LegacyAccountDto legacyAccountDto, long j, long j2, MoveOrCopyFlavor moveOrCopyFlavor, HashMap hashMap) {
        MessagingControllerCommands$PendingCommand create;
        int ordinal = moveOrCopyFlavor.ordinal();
        if (ordinal == 0) {
            create = MessagingControllerCommands$PendingMoveOrCopy.create(j, j2, false, hashMap);
        } else if (ordinal == 1) {
            create = MessagingControllerCommands$PendingMoveOrCopy.create(j, j2, true, hashMap);
        } else if (ordinal != 2) {
            return;
        } else {
            create = MessagingControllerCommands$PendingMoveAndMarkAsRead.create(j, j2, hashMap);
        }
        queuePendingCommand(legacyAccountDto, create);
    }

    public final void queuePendingCommand(LegacyAccountDto legacyAccountDto, MessagingControllerCommands$PendingCommand messagingControllerCommands$PendingCommand) {
        try {
            LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
            ContentValues contentValues = new ContentValues();
            contentValues.put("command", messagingControllerCommands$PendingCommand.getCommandName());
            JsonAdapter jsonAdapter = (JsonAdapter) localStoreProvider.pendingCommandSerializer.adapters.get(messagingControllerCommands$PendingCommand.getCommandName());
            if (jsonAdapter == null) {
                throw new IllegalArgumentException("Unsupported pending command type!");
            }
            contentValues.put("data", jsonAdapter.toJson(messagingControllerCommands$PendingCommand));
            localStoreProvider.database.execute(false, new LocalStore.AnonymousClass2(contentValues, 1));
        } catch (Exception e) {
            DBUtil$$ExternalSyntheticBUOutline0.m("Unable to enqueue pending command", (Throwable) e);
        }
    }

    public final void refreshFolderListIfStale(LegacyAccountDto legacyAccountDto) {
        long lastFolderListRefreshTime = legacyAccountDto.getLastFolderListRefreshTime();
        long currentTimeMillis = System.currentTimeMillis();
        if (lastFolderListRefreshTime <= currentTimeMillis && 1800000 + lastFolderListRefreshTime > currentTimeMillis) {
            Log.d("Last folder list refresh @ %tc. Not refreshing now.", Long.valueOf(lastFolderListRefreshTime));
        } else {
            Log.d("Last folder list refresh @ %tc. Refreshing now…", Long.valueOf(lastFolderListRefreshTime));
            refreshFolderListSynchronous(legacyAccountDto);
        }
    }

    public final void refreshFolderListSynchronous(LegacyAccountDto legacyAccountDto) {
        try {
            if (isAuthenticationProblem(legacyAccountDto, true)) {
                Log.d("Authentication will fail. Skip refreshing the folder list.", new Object[0]);
                handleAuthenticationFailure(legacyAccountDto, true);
                return;
            }
            String refreshFolderList = getBackend(legacyAccountDto).refreshFolderList();
            if (refreshFolderList != null && !refreshFolderList.isEmpty() && !refreshFolderList.equals(legacyAccountDto.folderPathDelimiter())) {
                legacyAccountDto.setFolderPathDelimiter(refreshFolderList);
            }
            long currentTimeMillis = System.currentTimeMillis();
            Log.d("Folder list successfully refreshed @ %tc", Long.valueOf(currentTimeMillis));
            legacyAccountDto.setLastFolderListRefreshTime(currentTimeMillis);
            this.preferences.saveAccount(legacyAccountDto);
        } catch (Exception e) {
            Log.e(e, "Could not refresh folder list for account %s", legacyAccountDto);
            if (e instanceof AuthenticationFailedException) {
                handleAuthenticationFailure(legacyAccountDto, true);
            } else {
                notifyUserIfCertificateProblem(legacyAccountDto, e, true);
            }
        }
    }

    public final void removeListener(SimpleMessagingListener simpleMessagingListener) {
        this.listeners.remove(simpleMessagingListener);
    }

    public final Long saveDraft(LegacyAccountDto legacyAccountDto, MimeMessage mimeMessage, Long l, String str) {
        long j;
        ImapSync imapSync = this.draftOperations;
        imapSync.getClass();
        legacyAccountDto.getClass();
        mimeMessage.getClass();
        try {
            Long draftsFolderId = legacyAccountDto.getDraftsFolderId();
            if (draftsFolderId == null) {
                throw new IllegalStateException("No Drafts folder configured");
            }
            long longValue = draftsFolderId.longValue();
            if (((MessagingController) imapSync.accountName).getBackend(legacyAccountDto).getSupportsUpload()) {
                j = imapSync.saveAndUploadDraft(legacyAccountDto, mimeMessage, longValue, l, str);
            } else {
                ListenableMessageStore messageStore = ((MessageStoreManager) imapSync.backendStorage).getMessageStore(legacyAccountDto);
                SaveMessageData createSaveMessageData = ((SaveMessageDataCreator) imapSync.imapStore).createSaveMessageData(mimeMessage, MessageDownloadState.FULL, str);
                LocalStore.AnonymousClass1 anonymousClass1 = messageStore.messageStore;
                long saveLocalMessage = ((K9MessageStore) anonymousClass1.val$folders).saveLocalMessage(longValue, createSaveMessageData, l);
                anonymousClass1.notifyChange();
                j = saveLocalMessage;
            }
            return Long.valueOf(j);
        } catch (MessagingException e) {
            Log.e(e, "Unable to save message as draft.", new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:(9:34|35|36|37|38|39|40|41|(7:43|44|(4:83|84|86|87)(5:46|47|48|49|51)|52|53|54|55)(21:93|94|95|96|97|98|99|100|101|102|103|104|105|106|107|108|110|111|(3:113|114|(20:116|117|118|119|120|121|122|123|124|125|127|128|129|130|131|(6:134|135|136|137|138|132)|218|219|220|221))|285|286))|59|60|(2:63|61)|64|65) */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x03b9, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x03ba, code lost:
    
        r11 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0348  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x033a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0448 A[Catch: all -> 0x03b9, Exception -> 0x0458, LOOP:2: B:61:0x0442->B:63:0x0448, LOOP_END, TRY_LEAVE, TryCatch #16 {all -> 0x03b9, blocks: (B:60:0x0430, B:61:0x0442, B:63:0x0448, B:154:0x03b1, B:146:0x03de), top: B:59:0x0430 }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v32, types: [long] */
    /* JADX WARN: Type inference failed for: r8v62 */
    /* JADX WARN: Type inference failed for: r8v63 */
    /* JADX WARN: Type inference failed for: r8v64 */
    /* JADX WARN: Type inference failed for: r8v65 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void sendPendingMessagesSynchronous(net.thunderbird.core.android.account.LegacyAccountDto r31) {
        /*
            Method dump skipped, instructions count: 1183
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.controller.MessagingController.sendPendingMessagesSynchronous(net.thunderbird.core.android.account.LegacyAccountDto):void");
    }

    public final void setFlag(LegacyAccountDto legacyAccountDto, long j, List list, Flag flag, boolean z) {
        try {
            LocalStore localStoreProvider = this.localStoreProvider.getInstance(legacyAccountDto);
            LocalFolder localFolder = new LocalFolder(localStoreProvider, j);
            localFolder.open();
            Set singleton = Collections.singleton(flag);
            localFolder.open();
            localStoreProvider.database.execute(true, new LocalFolder.AnonymousClass12(list, singleton, z));
            Iterator it = this.listeners.iterator();
            while (it.hasNext()) {
                ((SimpleMessagingListener) it.next()).folderStatusChanged(legacyAccountDto);
            }
            if (!getBackend(legacyAccountDto).getSupportsFlags() || localFolder.localOnly) {
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(((LocalMessage) list.get(i)).mUid);
            }
            queuePendingCommand(legacyAccountDto, MessagingControllerCommands$PendingSetFlag.create(j, z, flag, arrayList));
            processPendingCommands(legacyAccountDto);
        } catch (MessagingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setFlagSynchronous(net.thunderbird.core.android.account.LegacyAccountDto r11, java.util.List r12, net.thunderbird.core.common.mail.Flag r13, boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.controller.MessagingController.setFlagSynchronous(net.thunderbird.core.android.account.LegacyAccountDto, java.util.List, net.thunderbird.core.common.mail.Flag, boolean, boolean):void");
    }

    public final void showEmptyFetchingMailNotificationIfNecessary(LegacyAccountDto legacyAccountDto) {
        if (legacyAccountDto.isNotifySync()) {
            NotificationController notificationController = this.notificationController;
            notificationController.getClass();
            SyncNotificationController syncNotificationController = notificationController.syncNotificationController;
            String string = syncNotificationController.resourceProvider.context.getString(R.string.notification_bg_sync_title);
            string.getClass();
            String displayName = legacyAccountDto.getDisplayName();
            int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 8;
            NotificationHelper notificationHelper = syncNotificationController.notificationHelper;
            NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
            Notification notification = createNotificationBuilder.mNotification;
            notification.icon = R.drawable.ic_logo_k9_white;
            createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
            notification.when = System.currentTimeMillis();
            createNotificationBuilder.setFlag(2, true);
            createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string);
            createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(displayName);
            createNotificationBuilder.mPublicVersion = syncNotificationController.createFetchingMailLockScreenNotification(legacyAccountDto);
            createNotificationBuilder.mCategory = "service";
            Notification build = createNotificationBuilder.build();
            build.getClass();
            notificationHelper.notify(accountNumber, build);
        }
    }

    public final void showFetchingMailNotificationIfNecessary(LegacyAccountDto legacyAccountDto, LocalFolder localFolder) {
        if (legacyAccountDto.isNotifySync()) {
            NotificationController notificationController = this.notificationController;
            notificationController.getClass();
            SyncNotificationController syncNotificationController = notificationController.syncNotificationController;
            String displayName = legacyAccountDto.getDisplayName();
            long j = localFolder.databaseId;
            String str = localFolder.name;
            Context context = syncNotificationController.resourceProvider.context;
            str.getClass();
            String string = context.getString(R.string.notification_bg_sync_ticker, displayName, str);
            string.getClass();
            String string2 = context.getString(R.string.notification_bg_sync_title);
            string2.getClass();
            String string3 = context.getString(R.string.notification_bg_title_separator);
            string3.getClass();
            String str2 = displayName + string3 + str;
            int accountNumber = (legacyAccountDto.getAccountNumber() * 16) + 8;
            PendingIntent createViewFolderPendingIntent = syncNotificationController.actionBuilder.createViewFolderPendingIntent(legacyAccountDto, j);
            NotificationHelper notificationHelper = syncNotificationController.notificationHelper;
            NotificationCompat$Builder createNotificationBuilder = notificationHelper.createNotificationBuilder(legacyAccountDto, NotificationChannelManager.ChannelType.MISCELLANEOUS);
            Notification notification = createNotificationBuilder.mNotification;
            notification.icon = R.drawable.ic_logo_k9_white;
            createNotificationBuilder.mColor = legacyAccountDto.getChipColor();
            notification.when = System.currentTimeMillis();
            createNotificationBuilder.setFlag(2, true);
            createNotificationBuilder.setTicker(string);
            createNotificationBuilder.mContentTitle = NotificationCompat$Builder.limitCharSequenceLength(string2);
            createNotificationBuilder.mContentText = NotificationCompat$Builder.limitCharSequenceLength(str2);
            createNotificationBuilder.mContentIntent = createViewFolderPendingIntent;
            createNotificationBuilder.mPublicVersion = syncNotificationController.createFetchingMailLockScreenNotification(legacyAccountDto);
            createNotificationBuilder.mCategory = "service";
            Notification build = createNotificationBuilder.build();
            build.getClass();
            notificationHelper.notify(accountNumber, build);
        }
    }

    public final void synchronizeFolder(final LegacyAccountDto legacyAccountDto, final LocalFolder localFolder, final boolean z, final boolean z2, final SimpleMessagingListener simpleMessagingListener, final MutableBoolean mutableBoolean) {
        putBackground("sync" + localFolder.serverId, new Runnable() { // from class: com.fsck.k9.controller.MessagingController$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                MessagingController messagingController = MessagingController.this;
                boolean z3 = z2;
                SimpleMessagingListener simpleMessagingListener2 = simpleMessagingListener;
                MutableBoolean mutableBoolean2 = mutableBoolean;
                LocalFolder localFolder2 = localFolder;
                Log.v("Folder %s was last synced @ %tc", localFolder2.serverId, Long.valueOf(localFolder2.lastChecked));
                LegacyAccountDto legacyAccountDto2 = legacyAccountDto;
                if (!z) {
                    long j = localFolder2.lastChecked;
                    long currentTimeMillis = System.currentTimeMillis();
                    if (j <= currentTimeMillis && (legacyAccountDto2.getAutomaticCheckIntervalMinutes() * 60000) + j > currentTimeMillis) {
                        Log.v("Not syncing folder %s, previously synced @ %tc which would be too recent for the account sync interval", localFolder2.serverId, Long.valueOf(j));
                        return;
                    }
                }
                try {
                    messagingController.showFetchingMailNotificationIfNecessary(legacyAccountDto2, localFolder2);
                    try {
                        messagingController.synchronizeMailboxSynchronous(legacyAccountDto2, localFolder2.databaseId, z3, simpleMessagingListener2, mutableBoolean2);
                    } finally {
                        messagingController.showEmptyFetchingMailNotificationIfNecessary(legacyAccountDto2);
                    }
                } catch (Exception e) {
                    Log.e(e, "Exception while processing folder %s:%s", legacyAccountDto2, localFolder2.serverId);
                }
            }
        });
    }

    public final void synchronizeMailboxSynchronous(LegacyAccountDto legacyAccountDto, long j, boolean z, SimpleMessagingListener simpleMessagingListener, MutableBoolean mutableBoolean) {
        Exception exc;
        boolean z2;
        refreshFolderListIfStale(legacyAccountDto);
        Backend backend = getBackend(legacyAccountDto);
        Logger logger = this.syncDebugLogger;
        if (isAuthenticationProblem(legacyAccountDto, true)) {
            Log.d("Authentication will fail. Skip synchronizing folder %d.", Long.valueOf(j));
            handleAuthenticationFailure(legacyAccountDto, true);
            return;
        }
        try {
            processPendingCommandsSynchronous(legacyAccountDto);
            exc = null;
        } catch (Exception e) {
            Log.e(e, "Failure processing command, but allow message sync attempt", new Object[0]);
            exc = e;
        }
        try {
            LocalFolder localFolder = new LocalFolder(this.localStoreProvider.getInstance(legacyAccountDto), j);
            localFolder.open();
            if (localFolder.localOnly) {
                return;
            }
            MessageStoreManager messageStoreManager = this.messageStoreManager;
            if (z) {
                z2 = ((Long) ((K9MessageStore) messageStoreManager.getMessageStore(legacyAccountDto).messageStore.val$folders).getFolder(j, new Regex$$ExternalSyntheticBUOutline0(1))) == null;
            } else {
                z2 = true;
            }
            String str = localFolder.serverId;
            SyncConfig createSyncConfig = createSyncConfig(legacyAccountDto);
            RoomConnectionManager roomConnectionManager = new RoomConnectionManager(this, legacyAccountDto, simpleMessagingListener, z2, mutableBoolean);
            backend.sync(str, createSyncConfig, roomConnectionManager);
            if (exc == null || roomConnectionManager.isInitializing) {
                return;
            }
            String rootCauseMessage = CacheControl.Companion.getRootCauseMessage(exc);
            logger.error("MessagingException", null, new PathPart$$ExternalSyntheticLambda0(rootCauseMessage, 3));
            Log.e("Root cause failure in %s:%s was '%s'", legacyAccountDto, str, rootCauseMessage);
            messageStoreManager.getMessageStore(legacyAccountDto).setStatus(j, rootCauseMessage);
            simpleMessagingListener.synchronizeMailboxFailed(legacyAccountDto, j, rootCauseMessage);
        } catch (MessagingException e2) {
            logger.error("MessagingException", null, new K9$$ExternalSyntheticLambda0(10, e2));
            Log.e(e2, "syncFolder: Couldn't load local folder %d", Long.valueOf(j));
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.controller.MessagingController$8, reason: invalid class name */
    public final class AnonymousClass8 extends SimpleMessagingListener {
        public final /* synthetic */ int $r8$classId;
        public final Object val$latch;
        public final Object val$syncError;

        public AnonymousClass8(LocalStore.AnonymousClass7 anonymousClass7, Runnable runnable) {
            this.$r8$classId = 2;
            this.val$syncError = anonymousClass7;
            this.val$latch = runnable;
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void checkMailFinished() {
            switch (this.$r8$classId) {
                case 0:
                    ((CountDownLatch) this.val$latch).countDown();
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void folderStatusChanged(LegacyAccountDto legacyAccountDto) {
            switch (this.$r8$classId) {
                case 1:
                    legacyAccountDto.getClass();
                    updateUnreadWidget();
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void loadAttachmentFailed() {
            switch (this.$r8$classId) {
                case 2:
                    MessageViewFragment messageViewFragment = (MessageViewFragment) ((LocalStore.AnonymousClass7) this.val$syncError).val$folder;
                    messageViewFragment.requireActivity().runOnUiThread(new Fragment$$ExternalSyntheticLambda0(9, messageViewFragment));
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void loadAttachmentFinished() {
            switch (this.$r8$classId) {
                case 2:
                    LocalStore.AnonymousClass7 anonymousClass7 = (LocalStore.AnonymousClass7) this.val$syncError;
                    ((AttachmentViewInfo) anonymousClass7.val$messages).isContentAvailable = true;
                    MessageViewFragment messageViewFragment = (MessageViewFragment) anonymousClass7.val$folder;
                    messageViewFragment.requireActivity().runOnUiThread(new Fragment$$ExternalSyntheticLambda0(9, messageViewFragment));
                    messageViewFragment.requireActivity().runOnUiThread((Runnable) this.val$latch);
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void synchronizeMailboxFailed(LegacyAccountDto legacyAccountDto, long j, String str) {
            switch (this.$r8$classId) {
                case 0:
                    ((MutableBoolean) this.val$syncError).value = true;
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void synchronizeMailboxNewMessage(LegacyAccountDto legacyAccountDto, String str, LocalMessage localMessage) {
            switch (this.$r8$classId) {
                case 1:
                    legacyAccountDto.getClass();
                    str.getClass();
                    updateUnreadWidget();
                    break;
            }
        }

        @Override // app.k9mail.legacy.message.controller.SimpleMessagingListener
        public void synchronizeMailboxRemovedMessage(LegacyAccountDto legacyAccountDto, String str, String str2) {
            switch (this.$r8$classId) {
                case 1:
                    legacyAccountDto.getClass();
                    str.getClass();
                    str2.getClass();
                    updateUnreadWidget();
                    break;
            }
        }

        public void updateUnreadWidget() {
            try {
                UnreadWidgetUpdater unreadWidgetUpdater = (UnreadWidgetUpdater) this.val$latch;
                Context context = unreadWidgetUpdater.context;
                int[] appWidgetIds = unreadWidgetUpdater.appWidgetManager.getAppWidgetIds(new ComponentName(context, (Class<?>) UnreadWidgetProvider.class));
                appWidgetIds.getClass();
                Intent intent = new Intent(context, (Class<?>) UnreadWidgetProvider.class);
                intent.setAction("android.appwidget.action.APPWIDGET_UPDATE");
                intent.putExtra("appWidgetIds", appWidgetIds);
                context.sendBroadcast(intent);
            } catch (Exception e) {
                ((Logger) this.val$syncError).error("UnreadWidgetUpdateListener", e, new UtilsKt$$ExternalSyntheticLambda0(19));
            }
        }

        public /* synthetic */ AnonymousClass8(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$latch = obj;
            this.val$syncError = obj2;
        }
    }

    public final void setFlag(LegacyAccountDto legacyAccountDto, long j, String str, Flag flag) {
        try {
            LocalFolder localFolder = new LocalFolder(this.localStoreProvider.getInstance(legacyAccountDto), j);
            localFolder.open();
            LocalMessage message = localFolder.getMessage(str);
            if (message != null) {
                setFlag(legacyAccountDto, j, Collections.singletonList(message), flag, true);
            }
        } catch (MessagingException e) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
        }
    }
}
