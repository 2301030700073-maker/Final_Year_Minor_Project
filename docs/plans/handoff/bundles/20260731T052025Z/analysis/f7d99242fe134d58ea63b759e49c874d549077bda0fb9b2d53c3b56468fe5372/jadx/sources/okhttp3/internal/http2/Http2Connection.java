package okhttp3.internal.http2;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.TwilightCalculator;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.GapPending$keyMap$2;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.K9App;
import app.k9mail.core.ui.compose.common.window.FoldableStateObserver;
import app.k9mail.feature.settings.p000import.ui.PickAppDialogFragment;
import app.k9mail.feature.settings.p000import.ui.PickAppViewModel;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment;
import app.k9mail.feature.settings.p000import.ui.SettingsImportFragment$special$$inlined$inject$default$1;
import app.k9mail.feature.settings.p000import.ui.SettingsImportViewModel;
import app.k9mail.legacy.ui.folder.FolderIconProvider;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.K9$$ExternalSyntheticLambda0;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.activity.MessageHomeActivity$$ExternalSyntheticLambda5;
import com.fsck.k9.activity.setup.AccountSetupComposition;
import com.fsck.k9.activity.setup.AccountSetupCompositionViewModel;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.message.html.DisplayHtml;
import com.fsck.k9.notification.NotificationActionService;
import com.fsck.k9.ui.choosefolder.ChooseFolderActivity;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferActivity;
import com.fsck.k9.ui.endtoend.AutocryptKeyTransferPresenter;
import com.fsck.k9.ui.managefolders.FolderSettingsFragment;
import com.fsck.k9.ui.managefolders.FolderSettingsFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.managefolders.FolderSettingsViewModel;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment;
import com.fsck.k9.ui.managefolders.ManageFoldersFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.managefolders.ManageFoldersViewModel;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment;
import com.fsck.k9.ui.messagelist.LegacyMessageListFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.messagelist.MessageListFragment;
import com.fsck.k9.ui.messagelist.MessageListFragment$$ExternalSyntheticLambda7;
import com.fsck.k9.ui.messagelist.MessageListFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.messagelist.MessageListViewModel;
import com.fsck.k9.ui.messagesource.MessageHeadersFragment;
import com.fsck.k9.ui.messagesource.MessageHeadersViewModel;
import com.fsck.k9.ui.messageview.MessageContainerView;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.settings.SettingsListFragment;
import com.fsck.k9.ui.settings.SettingsListFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.settings.SettingsViewModel;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment$$ExternalSyntheticLambda4;
import com.fsck.k9.ui.settings.account.AccountSettingsFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.settings.account.AccountSettingsViewModel;
import com.fsck.k9.ui.settings.export.SettingsExportFragment;
import com.fsck.k9.ui.settings.export.SettingsExportViewModel;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment;
import com.fsck.k9.ui.settings.general.GeneralSettingsFragment$special$$inlined$inject$default$1;
import com.fsck.k9.ui.settings.general.GeneralSettingsViewModel;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.CoroutineScope;
import net.thunderbird.core.logging.file.FileLogSink;
import net.thunderbird.feature.changelog.internal.RecentChangesViewModel;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;
import net.thunderbird.feature.mail.message.reader.api.ui.MessageReaderViewContract$ViewModel;
import okhttp3.Dispatcher;
import okhttp3.Handshake;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.ErrorCode;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import org.koin.core.qualifier.StringQualifier;
import org.koin.core.scope.Scope;
import org.openintents.openpgp.OpenPgpApiManager;
import org.slf4j.event.EventRecodingLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Http2Connection implements Closeable {
    public static final Settings DEFAULT_SETTINGS;
    public final String connectionName;
    public final LinkedHashSet currentPushRequests;
    public long degradedPingsSent;
    public long degradedPongDeadlineNs;
    public long degradedPongsReceived;
    public final FlowControlListener$None flowControlListener;
    public long intervalPongsReceived;
    public boolean isShutdown;
    public int lastGoodStreamId;
    public final Listener listener;
    public int nextStreamId;
    public final Settings okHttpSettings;
    public Settings peerSettings;
    public final ErrorCode.Companion pushObserver;
    public final TaskQueue pushQueue;
    public final TwilightCalculator readBytes;
    public final ReaderRunnable readerRunnable;
    public final TaskQueue settingsListenerQueue;
    public final EventRecodingLogger socket;
    public final LinkedHashMap streams = new LinkedHashMap();
    public final TaskRunner taskRunner;
    public long writeBytesMaximum;
    public long writeBytesTotal;
    public final Http2Writer writer;
    public final TaskQueue writerQueue;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public abstract class Listener {
        public static final Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1 REFUSE_INCOMING_STREAMS = new Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1();

        public void onSettings(Http2Connection http2Connection, Settings settings) {
            settings.getClass();
        }

        public abstract void onStream(Http2Stream http2Stream);
    }

    static {
        Settings settings = new Settings();
        settings.set(4, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(LocalStore.AnonymousClass7 anonymousClass7) {
        this.listener = (Listener) anonymousClass7.val$messages;
        String str = (String) anonymousClass7.val$queryString;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionName");
            throw null;
        }
        this.connectionName = str;
        this.nextStreamId = 3;
        TaskRunner taskRunner = (TaskRunner) anonymousClass7.val$placeHolders;
        this.taskRunner = taskRunner;
        this.writerQueue = taskRunner.newQueue();
        this.pushQueue = taskRunner.newQueue();
        this.settingsListenerQueue = taskRunner.newQueue();
        this.pushObserver = ErrorCode.Companion.CANCEL;
        this.flowControlListener = (FlowControlListener$None) anonymousClass7.this$0;
        Settings settings = new Settings();
        settings.set(4, 16777216);
        this.okHttpSettings = settings;
        this.peerSettings = DEFAULT_SETTINGS;
        this.readBytes = new TwilightCalculator(0);
        this.writeBytesMaximum = r0.getInitialWindowSize();
        EventRecodingLogger eventRecodingLogger = (EventRecodingLogger) anonymousClass7.val$folder;
        if (eventRecodingLogger == null) {
            Intrinsics.throwUninitializedPropertyAccessException("socket");
            throw null;
        }
        this.socket = eventRecodingLogger;
        this.writer = new Http2Writer((RealBufferedSink) eventRecodingLogger.eventQueue);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader((RealBufferedSource) eventRecodingLogger.logger));
        this.currentPushRequests = new LinkedHashSet();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(ErrorCode errorCode, ErrorCode errorCode2, IOException iOException) {
        int i;
        Object[] objArr;
        TimeZone timeZone = _UtilJvmKt.UTC;
        try {
            shutdown(errorCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.streams.isEmpty()) {
                objArr = null;
            } else {
                objArr = this.streams.values().toArray(new Http2Stream[0]);
                this.streams.clear();
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) objArr;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(errorCode2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.writer.close();
        } catch (IOException unused3) {
        }
        try {
            ((Socket) ((Dispatcher) this.socket.name).executorServiceOrNull).close();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public final void flush() {
        this.writer.flush();
    }

    public final Http2Stream getStream(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.streams.get(Integer.valueOf(i));
        }
        return http2Stream;
    }

    public final boolean isHealthy(long j) {
        synchronized (this) {
            if (this.isShutdown) {
                return false;
            }
            if (this.degradedPongsReceived < this.degradedPingsSent) {
                if (j >= this.degradedPongDeadlineNs) {
                    return false;
                }
            }
            return true;
        }
    }

    public final Http2Stream removeStream$okhttp(int i) {
        Http2Stream http2Stream;
        synchronized (this) {
            http2Stream = (Http2Stream) this.streams.remove(Integer.valueOf(i));
            notifyAll();
        }
        return http2Stream;
    }

    public final void shutdown(ErrorCode errorCode) {
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                this.writer.goAway(this.lastGoodStreamId, errorCode, _UtilCommonKt.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void updateConnectionFlowControl$okhttp(long j) {
        synchronized (this) {
            try {
                TwilightCalculator.update$default(this.readBytes, j, 0L, 2);
                long unacknowledged = this.readBytes.getUnacknowledged();
                if (unacknowledged >= this.okHttpSettings.getInitialWindowSize() / 2) {
                    writeWindowUpdateLater$okhttp(0, unacknowledged);
                    TwilightCalculator.update$default(this.readBytes, 0L, unacknowledged, 1);
                }
                FlowControlListener$None flowControlListener$None = this.flowControlListener;
                TwilightCalculator twilightCalculator = this.readBytes;
                flowControlListener$None.getClass();
                twilightCalculator.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.writer.maxFrameSize);
        r6 = r2;
        r8.writeBytesTotal += r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void writeData(int r9, boolean r10, okio.Buffer r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            okhttp3.internal.http2.Http2Writer r8 = r8.writer
            r8.data(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            long r6 = r8.writeBytesMaximum     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L34
            java.util.LinkedHashMap r2 = r8.streams     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            goto L12
        L2a:
            r9 = move-exception
            goto L66
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
        L34:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2a
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2a
            okhttp3.internal.http2.Http2Writer r4 = r8.writer     // Catch: java.lang.Throwable -> L2a
            int r4 = r4.maxFrameSize     // Catch: java.lang.Throwable -> L2a
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = r8.writeBytesTotal     // Catch: java.lang.Throwable -> L2a
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2a
            long r4 = r4 + r6
            r8.writeBytesTotal = r4     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r8)
            long r12 = r12 - r6
            okhttp3.internal.http2.Http2Writer r4 = r8.writer
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.data(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L66:
            monitor-exit(r8)
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Connection.writeData(int, boolean, okio.Buffer, long):void");
    }

    public final void writeSynResetLater$okhttp(int i, ErrorCode errorCode) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] writeSynReset", new Http2Connection$$ExternalSyntheticLambda2(this, i, errorCode));
    }

    public final void writeWindowUpdateLater$okhttp(final int i, final long j) {
        TaskQueue.execute$default(this.writerQueue, this.connectionName + '[' + i + "] windowUpdate", new Function0() { // from class: okhttp3.internal.http2.Http2Connection$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                Http2Connection http2Connection = Http2Connection.this;
                try {
                    http2Connection.writer.windowUpdate(i, j);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.close$okhttp(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
            }
        });
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ReaderRunnable implements Function0 {
        public final /* synthetic */ int $r8$classId;
        public final Object reader;
        public final /* synthetic */ Object this$0;

        public ReaderRunnable(Http2Connection http2Connection, Http2Reader http2Reader) {
            this.$r8$classId = 0;
            this.this$0 = http2Connection;
            this.reader = http2Reader;
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ErrorCode errorCode;
            int i = this.$r8$classId;
            Unit unit = Unit.INSTANCE;
            IOException iOException = null;
            Object obj = this.this$0;
            Object obj2 = this.reader;
            switch (i) {
                case 0:
                    Http2Connection http2Connection = (Http2Connection) obj;
                    Http2Reader http2Reader = (Http2Reader) obj2;
                    ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
                    try {
                        try {
                        } catch (Throwable th) {
                            th = th;
                        }
                    } catch (IOException e) {
                        iOException = e;
                    }
                    if (http2Reader.nextFrame(true, this)) {
                        do {
                            try {
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        } while (http2Reader.nextFrame(false, this));
                        errorCode = ErrorCode.NO_ERROR;
                        try {
                            try {
                                http2Connection.close$okhttp(errorCode, ErrorCode.CANCEL, null);
                            } catch (IOException e2) {
                                iOException = e2;
                                ErrorCode errorCode3 = ErrorCode.PROTOCOL_ERROR;
                                http2Connection.close$okhttp(errorCode3, errorCode3, iOException);
                                _UtilCommonKt.closeQuietly(http2Reader);
                                return unit;
                            }
                            _UtilCommonKt.closeQuietly(http2Reader);
                            return unit;
                        } catch (Throwable th3) {
                            th = th3;
                        }
                    } else {
                        try {
                            throw new IOException("Required SETTINGS preface not received");
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                    errorCode = errorCode2;
                    http2Connection.close$okhttp(errorCode, errorCode2, iOException);
                    _UtilCommonKt.closeQuietly(http2Reader);
                    throw th;
                case 1:
                    PickAppDialogFragment pickAppDialogFragment = (PickAppDialogFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(PickAppViewModel.class), ((PickAppDialogFragment) ((GapPending$keyMap$2) obj).this$0).getViewModelStore(), pickAppDialogFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(pickAppDialogFragment), null);
                case 2:
                    SettingsImportFragment settingsImportFragment = (SettingsImportFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SettingsImportViewModel.class), ((SettingsImportFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), settingsImportFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(settingsImportFragment), null);
                case 3:
                    return AtomicFU.getKoinScope((MessageHomeActivity) obj2).get(Reflection.getOrCreateKotlinClass(FoldableStateObserver.class), null, (MessageHomeActivity$$ExternalSyntheticLambda5) obj);
                case 4:
                    AccountSetupComposition accountSetupComposition = (AccountSetupComposition) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AccountSetupCompositionViewModel.class), accountSetupComposition.getViewModelStore(), accountSetupComposition.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(accountSetupComposition), (K9$$ExternalSyntheticLambda0) obj);
                case 5:
                    Scope koinScope = AtomicFU.getKoinScope((NotificationActionService) obj2);
                    ClassReference orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CoroutineScope.class);
                    koinScope.getClass();
                    return koinScope.resolve(orCreateKotlinClass, null, (StringQualifier) obj);
                case 6:
                    return AtomicFU.getKoinScope((ChooseFolderActivity) obj2).get(Reflection.getOrCreateKotlinClass(FolderIconProvider.class), null, (K9$$ExternalSyntheticLambda0) obj);
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    return AtomicFU.getKoinScope((AutocryptKeyTransferActivity) obj2).get(Reflection.getOrCreateKotlinClass(AutocryptKeyTransferPresenter.class), null, (K9$$ExternalSyntheticLambda0) obj);
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    FolderSettingsFragment folderSettingsFragment = (FolderSettingsFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(FolderSettingsViewModel.class), ((FolderSettingsFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), folderSettingsFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(folderSettingsFragment), null);
                case 9:
                    return AtomicFU.getKoinScope((ManageFoldersFragment) obj2).get(Reflection.getOrCreateKotlinClass(FolderIconProvider.class), null, (K9$$ExternalSyntheticLambda0) obj);
                case 10:
                    ManageFoldersFragment manageFoldersFragment = (ManageFoldersFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(ManageFoldersViewModel.class), ((ManageFoldersFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), manageFoldersFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(manageFoldersFragment), null);
                case 11:
                    return AtomicFU.getKoinScope((MessageDetailsFragment) obj2).get(Reflection.getOrCreateKotlinClass(FolderIconProvider.class), null, (K9$$ExternalSyntheticLambda0) obj);
                case BasicTextKt.ShiftMeta /* 12 */:
                    MessageDetailsFragment messageDetailsFragment = (MessageDetailsFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageDetailsViewModel.class), ((MessageDetailsFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), messageDetailsFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageDetailsFragment), null);
                case 13:
                    return AtomicFU.getKoinScope((LegacyMessageListFragment) obj2).get(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, (K9$$ExternalSyntheticLambda0) obj);
                case 14:
                    LegacyMessageListFragment legacyMessageListFragment = (LegacyMessageListFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageListViewModel.class), ((LegacyMessageListFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), legacyMessageListFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(legacyMessageListFragment), null);
                case OffsetKt.Horizontal /* 15 */:
                    LegacyMessageListFragment legacyMessageListFragment2 = (LegacyMessageListFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(RecentChangesViewModel.class), ((LegacyMessageListFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), legacyMessageListFragment2.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(legacyMessageListFragment2), null);
                case 16:
                    return AtomicFU.getKoinScope((MessageListFragment) obj2).get(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, (MessageListFragment$$ExternalSyntheticLambda7) obj);
                case 17:
                    MessageListFragment messageListFragment = (MessageListFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageListViewModel.class), ((MessageListFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), messageListFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageListFragment), null);
                case 18:
                    MessageListFragment messageListFragment2 = (MessageListFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(RecentChangesViewModel.class), ((MessageListFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), messageListFragment2.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageListFragment2), null);
                case 19:
                    MessageHeadersFragment messageHeadersFragment = (MessageHeadersFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageHeadersViewModel.class), ((MessageHeadersFragment) ((GapPending$keyMap$2) obj).this$0).getViewModelStore(), messageHeadersFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageHeadersFragment), null);
                case 20:
                    Scope scope = ((MessageContainerView) obj2).getKoin().scopeRegistry.rootScope;
                    ClassReference orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(DisplayHtml.class);
                    scope.getClass();
                    return scope.resolve(orCreateKotlinClass2, null, (StringQualifier) obj);
                case 21:
                    MessageViewFragment messageViewFragment = (MessageViewFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(MessageReaderViewContract$ViewModel.class), ((MessageViewFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), messageViewFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(messageViewFragment), null);
                case 22:
                    SettingsListFragment settingsListFragment = (SettingsListFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SettingsViewModel.class), ((SettingsListFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), settingsListFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(settingsListFragment), null);
                case 23:
                    AppCompatActivity requireActivity = ((AccountSettingsFragment$special$$inlined$inject$default$1) obj).$this_inject.requireActivity();
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(AccountSettingsViewModel.class), requireActivity.getViewModelStore(), requireActivity.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope((AccountSettingsFragment) obj2), null);
                case 24:
                    return AtomicFU.getKoinScope((AccountSettingsFragment) obj2).get(Reflection.getOrCreateKotlinClass(OpenPgpApiManager.class), null, (AccountSettingsFragment$$ExternalSyntheticLambda4) obj);
                case 25:
                    SettingsExportFragment settingsExportFragment = (SettingsExportFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(SettingsExportViewModel.class), ((SettingsExportFragment) ((GapPending$keyMap$2) obj).this$0).getViewModelStore(), settingsExportFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(settingsExportFragment), null);
                case 26:
                    GeneralSettingsFragment generalSettingsFragment = (GeneralSettingsFragment) obj2;
                    return Handshake.Companion.resolveViewModel(Reflection.getOrCreateKotlinClass(GeneralSettingsViewModel.class), ((GeneralSettingsFragment$special$$inlined$inject$default$1) obj).$this_inject.getViewModelStore(), generalSettingsFragment.getDefaultViewModelCreationExtras(), null, AtomicFU.getKoinScope(generalSettingsFragment), null);
                case 27:
                    return AtomicFU.getKoinScope((K9App) obj2).resolve(Reflection.getOrCreateKotlinClass(FileLogSink.class), null, (StringQualifier) obj);
                case 28:
                    return "Unable to convert preference key [" + ((String) obj2) + "] to enum of type defaultEnum: " + ((Enum) obj);
                default:
                    ((Function1) obj2).invoke((RemoteFolder) obj);
                    return unit;
            }
        }

        public /* synthetic */ ReaderRunnable(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.reader = obj;
            this.this$0 = obj2;
        }
    }
}
