package com.fsck.k9.mailstore;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ViewAnimator;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraGraph$Config;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.StrictMode;
import androidx.camera.camera2.pipe.compat.Camera2CaptureSequenceProcessor;
import androidx.camera.camera2.pipe.compat.Camera2MetadataCache;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.compat.CameraCaptureSessionWrapper;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.graph.GraphCommand;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.core.AutoValue_SurfaceOutput_CameraInputInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.AutoValue_SessionConfig_OutputConfig;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.utils.futures.ChainingListenableFuture;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.SurfaceEdge$$ExternalSyntheticLambda3;
import androidx.camera.core.processing.SurfaceProcessorInternal;
import androidx.camera.core.processing.concurrent.AutoValue_DualOutConfig;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.material3.TextKt$$ExternalSyntheticLambda1;
import androidx.compose.runtime.CancellationHandle;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.AwaiterQueue$Awaiter;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphIntrinsicInfo;
import androidx.compose.ui.text.ParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.LayoutHelper$BidiRun;
import androidx.compose.ui.text.android.StaticLayoutFactory;
import androidx.compose.ui.text.font.FontFamily$Resolver;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphIntrinsics;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.app.ActivityRecreator;
import androidx.core.app.TaskStackBuilder;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.fragment.app.FragmentManager$$ExternalSyntheticLambda6;
import androidx.navigation.NavDeepLinkBuilder$DeepLinkDestination;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavHostController;
import androidx.navigation.internal.NavContext;
import androidx.navigation.internal.NavGraphImpl$iterator$1;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.InvalidationTracker$implementation$1;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import androidx.room.util.RelationUtil;
import androidx.work.Configuration;
import androidx.work.OperationKt;
import androidx.work.impl.constraints.trackers.BatteryNotLowTracker;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerKt;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre24;
import androidx.work.impl.constraints.trackers.NetworkStateTrackerPre28;
import app.k9mail.core.android.common.database.EmptyCursor;
import app.k9mail.feature.widget.message.list.MessageListItem;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import app.k9mail.legacy.mailstore.MessageDetailsAccessor;
import app.k9mail.legacy.mailstore.MessageMapper;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.Base64Util;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.backend.api.FolderInfo;
import com.fsck.k9.backend.api.SyncConfig;
import com.fsck.k9.backend.imap.ImapBackendPusher;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.backend.pop3.CommandSetFlag;
import com.fsck.k9.contacts.ContactLetterBitmapCreator;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.controller.MessagingController.AnonymousClass4;
import com.fsck.k9.controller.MessagingControllerCommands$PendingCommand;
import com.fsck.k9.controller.PendingCommandSerializer;
import com.fsck.k9.controller.ProgressBodyFactory;
import com.fsck.k9.helper.MessageHelper;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.MessageDownloadState;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeMessage;
import com.fsck.k9.mail.store.pop3.Pop3Folder;
import com.fsck.k9.mail.store.pop3.Pop3Message;
import com.fsck.k9.mail.store.pop3.Pop3Store;
import com.fsck.k9.mail.transport.smtp.SmtpTransport;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.folder.DefaultOutboxFolderManager;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import com.fsck.k9.storage.messages.DeleteFolderOperations;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.fsck.k9.storage.messages.MessageData;
import com.fsck.k9.storage.messages.SaveMessageOperations$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1;
import com.fsck.k9.view.RecipientSelectView;
import com.google.android.flexbox.FlexLine;
import com.google.android.flexbox.FlexboxLayoutManager;
import com.google.android.material.textview.MaterialTextView;
import com.squareup.moshi.JsonAdapter;
import j$.util.DesugarCollections;
import j$.util.Objects;
import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.Bidi;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__IndentKt;
import kotlin.time.Clock;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.datetime.internal.format.parser.NumberConsumptionError;
import kotlinx.io.Sink$CC;
import net.openid.appauth.AuthorizationServiceDiscovery;
import net.thunderbird.android.feature.mail.message.reader.api.css.DefaultCssClassNameProvider;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.logging.legacy.Log$$ExternalSyntheticLambda0;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DefaultMessageListPreferencesManager;
import net.thunderbird.core.preference.display.visualSettings.message.list.DisplayMessageListSettings;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import net.thunderbird.feature.mail.message.reader.impl.css.DefaultCssVariableNameProvider;
import okhttp3.ConnectionPool;
import okhttp3.Cookie;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectPlan$$ExternalSyntheticLambda0;
import okhttp3.internal.http2.FlowControlListener$None;
import okhttp3.internal.http2.Http2Connection;
import okio.AsyncTimeout;
import okio.Okio;
import okio.PriorityQueue;
import org.apache.commons.io.IOUtils;
import org.apache.james.mime4j.codec.Base64InputStream;
import org.apache.james.mime4j.codec.QuotedPrintableInputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.helper.Validate;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.ext.KClassExtKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalStore {
    public final LegacyAccountDto account;
    public final LockableDatabase database;
    public final GeneralSettingsManager generalSettingsManager;
    public final DefaultLocalMessageUidPrefixProvider localMessageUidPrefixProvider;
    public final AnonymousClass1 outboxStateRepository;
    public final AnonymousClass1 storageFilesProvider;
    public static final String[] EMPTY_STRING_ARRAY = new String[0];
    public static final byte[] EMPTY_BYTE_ARRAY = new byte[0];
    public static final String[] UID_CHECK_PROJECTION = {"uid"};
    public static final String[] GET_ATTACHMENT_COLS = {"id", "root", "data_location", "encoding", "data"};
    public final PendingCommandSerializer pendingCommandSerializer = PendingCommandSerializer.INSTANCE;
    public final AttachmentInfoExtractor attachmentInfoExtractor = (AttachmentInfoExtractor) CloseableKt.get$default(AttachmentInfoExtractor.class);

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$17, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass17 {
        public static final /* synthetic */ int[] $SwitchMap$net$thunderbird$core$common$mail$Flag;

        static {
            int[] iArr = new int[Flag.values().length];
            $SwitchMap$net$thunderbird$core$common$mail$Flag = iArr;
            try {
                iArr[Flag.DELETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$thunderbird$core$common$mail$Flag[Flag.SEEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$thunderbird$core$common$mail$Flag[Flag.FLAGGED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$thunderbird$core$common$mail$Flag[Flag.ANSWERED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$thunderbird$core$common$mail$Flag[Flag.FORWARDED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$2, reason: invalid class name */
    public final class AnonymousClass2 implements LockableDatabase.DbCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ ContentValues val$cv;

        public /* synthetic */ AnonymousClass2(ContentValues contentValues, int i) {
            this.$r8$classId = i;
            this.val$cv = contentValues;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            int i = this.$r8$classId;
            ContentValues contentValues = this.val$cv;
            switch (i) {
                case 0:
                    sQLiteDatabase.update("folders", contentValues, null, null);
                    break;
                default:
                    sQLiteDatabase.insert("pending_commands", "command", contentValues);
                    break;
            }
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$3, reason: invalid class name */
    public final class AnonymousClass3 implements LockableDatabase.DbCallback {
        public /* synthetic */ AnonymousClass3() {
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Cursor cursor = null;
            try {
                cursor = sQLiteDatabase.query("pending_commands", new String[]{"id", "command", "data"}, null, null, null, null, "id ASC");
                ArrayList arrayList = new ArrayList();
                while (cursor.moveToNext()) {
                    long j = cursor.getLong(0);
                    String string = cursor.getString(1);
                    String string2 = cursor.getString(2);
                    JsonAdapter jsonAdapter = (JsonAdapter) LocalStore.this.pendingCommandSerializer.adapters.get(string);
                    if (jsonAdapter == null) {
                        throw new IllegalArgumentException("Unsupported pending command type!");
                    }
                    try {
                        MessagingControllerCommands$PendingCommand messagingControllerCommands$PendingCommand = (MessagingControllerCommands$PendingCommand) jsonAdapter.fromJson(string2);
                        messagingControllerCommands$PendingCommand.databaseId = j;
                        arrayList.add(messagingControllerCommands$PendingCommand);
                    } catch (IOException e) {
                        throw new IOError(e);
                    }
                }
                Pattern pattern = Utility.RESPONSE_PATTERN;
                cursor.close();
                return arrayList;
            } catch (Throwable th) {
                Utility.closeQuietly(cursor);
                throw th;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class AttachmentInfo {
        public String name;
        public long size;
        public String type;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface BatchSetSelection {
        void doDbWork(SQLiteDatabase sQLiteDatabase, String str, String[] strArr);

        String getListItem(int i);

        int getListSize();

        void postDbWork();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0122 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012a A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.fsck.k9.mailstore.LocalMessage, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.fsck.k9.mail.Part] */
    /* renamed from: -$$Nest$mwriteCursorPartsToOutputStream, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m936$$Nest$mwriteCursorPartsToOutputStream(com.fsck.k9.mailstore.LocalStore r16, android.database.sqlite.SQLiteDatabase r17, android.database.Cursor r18, java.io.OutputStream r19) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalStore.m936$$Nest$mwriteCursorPartsToOutputStream(com.fsck.k9.mailstore.LocalStore, android.database.sqlite.SQLiteDatabase, android.database.Cursor, java.io.OutputStream):void");
    }

    public LocalStore(LegacyAccountDto legacyAccountDto, Context context, GeneralSettingsManager generalSettingsManager, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        AndroidStorageFilesProviderFactory androidStorageFilesProviderFactory = (AndroidStorageFilesProviderFactory) CloseableKt.get$default(AndroidStorageFilesProviderFactory.class);
        String str = legacyAccountDto.uuid;
        str.getClass();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(androidStorageFilesProviderFactory.context, str);
        this.storageFilesProvider = anonymousClass1;
        this.localMessageUidPrefixProvider = defaultLocalMessageUidPrefixProvider;
        this.account = legacyAccountDto;
        this.generalSettingsManager = generalSettingsManager;
        ConnectionPool connectionPool = new ConnectionPool(4, new AnonymousClass3());
        LockableDatabase lockableDatabase = new LockableDatabase();
        int i = 1;
        ReentrantReadWriteLock reentrantReadWriteLock = new ReentrantReadWriteLock(true);
        lockableDatabase.mReadLock = reentrantReadWriteLock.readLock();
        lockableDatabase.mWriteLock = reentrantReadWriteLock.writeLock();
        lockableDatabase.inTransaction = new ThreadLocal();
        lockableDatabase.context = context;
        lockableDatabase.storageFilesProvider = anonymousClass1;
        lockableDatabase.mSchemaDefinition = connectionPool;
        lockableDatabase.generalSettingsManager = generalSettingsManager;
        this.database = lockableDatabase;
        ((Lock) lockableDatabase.mWriteLock).lock();
        try {
            lockableDatabase.openOrCreateDataspace();
            lockableDatabase.unlockWrite();
            this.outboxStateRepository = new AnonymousClass1(i, lockableDatabase, (Clock) CloseableKt.get$default(Clock.class));
        } catch (Throwable th) {
            lockableDatabase.unlockWrite();
            throw th;
        }
    }

    public static String getColumnNameForFlag(Flag flag) {
        int i = AnonymousClass17.$SwitchMap$net$thunderbird$core$common$mail$Flag[flag.ordinal()];
        if (i == 2) {
            return "read";
        }
        if (i == 3) {
            return "flagged";
        }
        if (i == 4) {
            return "answered";
        }
        if (i == 5) {
            return "forwarded";
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Flag must be a special column flag");
        return null;
    }

    public static String serializeFlags(Set set) {
        ArrayList arrayList = new ArrayList();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            Flag flag = (Flag) it.next();
            int i = AnonymousClass17.$SwitchMap$net$thunderbird$core$common$mail$Flag[flag.ordinal()];
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5) {
                arrayList.add(flag);
            }
        }
        Pattern pattern = Utility.RESPONSE_PATTERN;
        return TextUtils.join(String.valueOf(','), arrayList).toUpperCase(Locale.US);
    }

    public final void delete() {
        LockableDatabase lockableDatabase = this.database;
        AnonymousClass1 anonymousClass1 = (AnonymousClass1) lockableDatabase.storageFilesProvider;
        ((Lock) lockableDatabase.mWriteLock).lock();
        try {
            try {
                ((SQLiteDatabase) lockableDatabase.mDb).close();
            } catch (Exception e) {
                Log.d("Exception caught in DB close: %s", e.getMessage());
            }
            try {
                File attachmentDirectory = anonymousClass1.getAttachmentDirectory();
                for (File file : attachmentDirectory.listFiles()) {
                    if (file.exists() && !file.delete()) {
                        Log.d("Attachment was not deleted!", new Object[0]);
                    }
                }
                if (attachmentDirectory.exists() && !attachmentDirectory.delete()) {
                    Log.d("Attachment directory was not deleted!", new Object[0]);
                }
            } catch (Exception e2) {
                Log.d("Exception caught in clearing attachments: %s", e2.getMessage());
            }
            try {
                if (!SQLiteDatabase.deleteDatabase(anonymousClass1.getDatabaseFile())) {
                    Log.i("LockableDatabase: deleteDatabase(): No files deleted.", new Object[0]);
                }
            } catch (Exception e3) {
                Sink$CC.info$default(Log.getLogger(), null, e3, new Log$$ExternalSyntheticLambda0("LockableDatabase: delete(): Unable to delete backing DB file", new Object[0], 9), 1);
            }
        } finally {
            lockableDatabase.unlockWrite();
        }
    }

    public final void doBatchSetSelection(BatchSetSelection batchSetSelection) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (i < batchSetSelection.getListSize()) {
            StringBuilder m = Modifier.CC.m(" IN (");
            int min = Math.min(batchSetSelection.getListSize() - i, 500) + i;
            for (int i2 = i; i2 < min; i2++) {
                if (i2 > i) {
                    m.append(",?");
                } else {
                    m.append("?");
                }
                arrayList.add(batchSetSelection.getListItem(i2));
            }
            m.append(")");
            this.database.execute(true, new ImapSync(batchSetSelection, m, arrayList, 26));
            batchSetSelection.postDbWork();
            arrayList.clear();
            i = min;
        }
    }

    public final void notifyChange() {
        ((DefaultMessageListRepository) CloseableKt.get$default(DefaultMessageListRepository.class)).notifyMessageListChanged(this.account.uuid);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$12, reason: invalid class name */
    public final class AnonymousClass12 extends QuotedPrintableInputStream {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ InputStream val$rawInputStream;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass12(InputStream inputStream) {
            super(inputStream);
            this.$r8$classId = 2;
            this.val$rawInputStream = inputStream;
        }

        @Override // org.apache.james.mime4j.codec.QuotedPrintableInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i = this.$r8$classId;
            InputStream inputStream = this.val$rawInputStream;
            switch (i) {
                case 0:
                    super.close();
                    try {
                        inputStream.close();
                        break;
                    } catch (IOException e) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                        return;
                    }
                case 1:
                    super.close();
                    try {
                        JisSupport.closeInputStreamWithoutDeletingTemporaryFiles(inputStream);
                        break;
                    } catch (IOException e2) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e2);
                        return;
                    }
                default:
                    super.close();
                    inputStream.close();
                    break;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass12(InputStream inputStream, InputStream inputStream2, int i) {
            super(inputStream);
            this.$r8$classId = i;
            this.val$rawInputStream = inputStream2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$11, reason: invalid class name */
    public final class AnonymousClass11 extends Base64InputStream {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ InputStream val$rawInputStream;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass11(InputStream inputStream) {
            super(inputStream, 0);
            this.$r8$classId = 2;
            this.val$rawInputStream = inputStream;
        }

        @Override // org.apache.james.mime4j.codec.Base64InputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            int i = this.$r8$classId;
            InputStream inputStream = this.val$rawInputStream;
            switch (i) {
                case 0:
                    super.close();
                    inputStream.close();
                    break;
                case 1:
                    super.close();
                    JisSupport.closeInputStreamWithoutDeletingTemporaryFiles(inputStream);
                    break;
                default:
                    super.close();
                    inputStream.close();
                    break;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public /* synthetic */ AnonymousClass11(InputStream inputStream, InputStream inputStream2, int i) {
            super(inputStream, 0);
            this.$r8$classId = i;
            this.val$rawInputStream = inputStream2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$1, reason: invalid class name */
    public final class AnonymousClass1 implements MessageDetailsAccessor, MessageMapper, LockableDatabase.DbCallback {
        public static final String[] COLUMNS = {"send_state", "number_of_send_attempts", "error_timestamp", "error"};
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;
        public final Object val$folders;

        public AnonymousClass1(Context context, String str) {
            this.$r8$classId = 2;
            str.getClass();
            this.val$folders = context;
            this.this$0 = str;
        }

        public void destroyMessages(long j, Collection collection) {
            collection.getClass();
            K9MessageStore k9MessageStore = (K9MessageStore) this.val$folders;
            collection.getClass();
            final DeleteFolderOperations deleteFolderOperations = k9MessageStore.deleteMessageOperations;
            deleteFolderOperations.getClass();
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                LockableDatabase lockableDatabase = deleteFolderOperations.lockableDatabase;
                MessageData messageData = (MessageData) lockableDatabase.execute(false, new SaveMessageOperations$$ExternalSyntheticLambda0(1, j, str));
                if (messageData != null) {
                    final long j2 = messageData.messageId;
                    final long j3 = messageData.messagePartId;
                    final boolean z = messageData.hasThreadChildren;
                    lockableDatabase.execute(true, new LockableDatabase.DbCallback() { // from class: com.fsck.k9.storage.messages.DeleteMessageOperations$$ExternalSyntheticLambda0
                        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
                        public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
                            sQLiteDatabase.getClass();
                            DeleteFolderOperations deleteFolderOperations2 = DeleteFolderOperations.this;
                            deleteFolderOperations2.getClass();
                            long j4 = j3;
                            Cursor query = sQLiteDatabase.query("message_parts", new String[]{"id"}, "root = ? AND data_location = 2", new String[]{String.valueOf(j4)}, null, null, null);
                            while (query.moveToNext()) {
                                try {
                                    deleteFolderOperations2.attachmentFileManager.deleteFile(query.getLong(0));
                                } finally {
                                }
                            }
                            query.close();
                            boolean z2 = z;
                            long j5 = j2;
                            if (z2) {
                                sQLiteDatabase.delete("message_parts", "root = ?", new String[]{String.valueOf(j4)});
                                sQLiteDatabase.delete("messages_fulltext", "docid = ?", new String[]{String.valueOf(j5)});
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("deleted", (Integer) 0);
                                contentValues.put("empty", (Integer) 1);
                                contentValues.putNull("subject");
                                contentValues.putNull("date");
                                contentValues.putNull("flags");
                                contentValues.putNull("sender_list");
                                contentValues.putNull("to_list");
                                contentValues.putNull("cc_list");
                                contentValues.putNull("bcc_list");
                                contentValues.putNull("reply_to_list");
                                contentValues.putNull("attachment_count");
                                contentValues.putNull("internal_date");
                                contentValues.put("preview_type", "none");
                                contentValues.putNull("preview");
                                contentValues.putNull("mime_type");
                                contentValues.putNull("normalized_subject_hash");
                                contentValues.putNull("message_part_id");
                                contentValues.putNull("encryption_type");
                                sQLiteDatabase.update("messages", contentValues, "id = ?", new String[]{String.valueOf(j5)});
                            } else {
                                Long valueOf = Long.valueOf(j5);
                                while (true) {
                                    Cursor rawQuery = sQLiteDatabase.rawQuery("\nSELECT messages.id \nFROM threads threads1 \nJOIN threads threads2 ON (threads1.parent = threads2.id) \nJOIN messages ON (threads2.message_id = messages.id AND messages.empty = 1) \nWHERE threads1.message_id = ?\n            ", new String[]{String.valueOf(valueOf.longValue())});
                                    try {
                                        Long valueOf2 = (!rawQuery.moveToFirst() || rawQuery.isNull(0)) ? null : Long.valueOf(rawQuery.getLong(0));
                                        rawQuery.close();
                                        sQLiteDatabase.delete("messages", "id = ?", new String[]{String.valueOf(valueOf.longValue())});
                                        if (valueOf2 == null) {
                                            break;
                                        }
                                        rawQuery = sQLiteDatabase.rawQuery("\nSELECT COUNT(threads2.id) \nFROM threads threads1 \nJOIN threads threads2 ON (threads2.parent = threads1.id) \nWHERE threads1.message_id = ?\n            ", new String[]{String.valueOf(valueOf2.longValue())});
                                        try {
                                            boolean z3 = rawQuery.moveToFirst() && !rawQuery.isNull(0) && rawQuery.getLong(0) > 0;
                                            rawQuery.close();
                                            if (z3) {
                                                break;
                                            }
                                            valueOf = valueOf2;
                                        } finally {
                                        }
                                    } finally {
                                        try {
                                            throw th;
                                        } finally {
                                        }
                                    }
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    });
                }
            }
            notifyChange();
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Cursor query;
            Cursor rawQuery;
            int i = this.$r8$classId;
            Cursor cursor = null;
            Object obj = this.val$folders;
            Object obj2 = this.this$0;
            switch (i) {
                case 0:
                    LinkedList linkedList = (LinkedList) obj;
                    try {
                        cursor = sQLiteDatabase.rawQuery("SELECT folders.id, name, visible_limit, last_updated, status, integrate, top_group, sync_enabled, visible, notifications_enabled, more_messages, server_id, local_only, type FROM folders ORDER BY name ASC", null);
                        while (cursor.moveToNext()) {
                            if (!cursor.isNull(0)) {
                                LocalFolder localFolder = new LocalFolder((LocalStore) obj2, cursor.getLong(0));
                                localFolder.open(cursor);
                                linkedList.add(localFolder);
                            }
                        }
                        Pattern pattern = Utility.RESPONSE_PATTERN;
                        cursor.close();
                        return linkedList;
                    } finally {
                        Utility.closeQuietly(cursor);
                    }
                case 1:
                case 2:
                case 3:
                case 4:
                default:
                    LocalMessage localMessage = (LocalMessage) obj2;
                    super/*com.fsck.k9.mail.internet.MimeMessage*/.setFlag(Flag.X_SUBJECT_DECRYPTED, true);
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("subject", (String) obj);
                    contentValues.put("flags", LocalStore.serializeFlags(DesugarCollections.unmodifiableSet(localMessage.mFlags)));
                    sQLiteDatabase.update("messages", contentValues, "id = ?", new String[]{Long.toString(localMessage.databaseId)});
                    return null;
                case 5:
                    sQLiteDatabase.update("messages", (ContentValues) obj, "id = ?", new String[]{Long.toString(((LocalMessage) obj2).databaseId)});
                    return null;
                case 6:
                    String[] strArr = (String[]) obj;
                    LocalFolder localFolder2 = (LocalFolder) obj2;
                    LocalStore localStore = localFolder2.localStore;
                    query = sQLiteDatabase.query("messages", new String[]{"message_part_id"}, "folder_id = ? AND empty = 0", strArr, null, null, null);
                    while (true) {
                        try {
                            int i2 = 1;
                            if (!query.moveToNext()) {
                                query.close();
                                sQLiteDatabase.execSQL("DELETE FROM threads WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ?)", strArr);
                                sQLiteDatabase.execSQL("DELETE FROM messages WHERE folder_id = ?", strArr);
                                sQLiteDatabase.execSQL("DELETE FROM folder_extra_values WHERE folder_id = ?", strArr);
                                localFolder2.moreMessages = 1;
                                localStore.database.execute(false, new ImapSync(localFolder2, "more_messages", "unknown", false, 23));
                                localFolder2.lastChecked = 0L;
                                ContentValues contentValues2 = new ContentValues();
                                contentValues2.putNull("last_updated");
                                sQLiteDatabase.update("folders", contentValues2, "id = ?", new String[]{Long.toString(localFolder2.databaseId)});
                                return null;
                            }
                            localStore.database.execute(false, new LocalFolder.AnonymousClass6(localFolder2, query.getLong(0), i2));
                        } finally {
                            query.close();
                        }
                    }
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    List list = (List) obj;
                    LocalFolder localFolder3 = (LocalFolder) obj2;
                    localFolder3.open();
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    HashSet hashSet = new HashSet();
                    int i3 = 0;
                    while (i3 < list.size()) {
                        StringBuilder sb = new StringBuilder("folder_id = ? AND UID IN (");
                        arrayList2.add(Long.toString(localFolder3.databaseId));
                        int min = Math.min(list.size() - i3, 500) + i3;
                        for (int i4 = i3; i4 < min; i4++) {
                            if (i4 > i3) {
                                sb.append(",?");
                            } else {
                                sb.append("?");
                            }
                            arrayList2.add((String) list.get(i4));
                        }
                        sb.append(")");
                        query = sQLiteDatabase.query("messages", LocalStore.UID_CHECK_PROJECTION, sb.toString(), (String[]) arrayList2.toArray(LocalStore.EMPTY_STRING_ARRAY), null, null, null);
                        while (query.moveToNext()) {
                            try {
                                hashSet.add(query.getString(0));
                            } catch (Throwable th) {
                                Utility.closeQuietly(query);
                                throw th;
                            }
                        }
                        Pattern pattern2 = Utility.RESPONSE_PATTERN;
                        while (i3 < min) {
                            String str = (String) list.get(i3);
                            if (!hashSet.contains(str)) {
                                arrayList.add(str);
                            }
                            i3++;
                        }
                        hashSet.clear();
                        arrayList2.clear();
                        i3 = min;
                    }
                    return arrayList;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    LocalFolder localFolder4 = (LocalFolder) obj2;
                    localFolder4.open();
                    LocalMessage localMessage2 = new LocalMessage(localFolder4.localStore, (String) obj, localFolder4, localFolder4.generalSettingsManager);
                    try {
                        rawQuery = sQLiteDatabase.rawQuery("SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE uid = ? AND folder_id = ?", new String[]{localMessage2.mUid, Long.toString(localFolder4.databaseId)});
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    try {
                        if (!rawQuery.moveToNext()) {
                            Pattern pattern3 = Utility.RESPONSE_PATTERN;
                            rawQuery.close();
                            return null;
                        }
                        localMessage2.populateFromGetMessageCursor(rawQuery);
                        Pattern pattern4 = Utility.RESPONSE_PATTERN;
                        rawQuery.close();
                        return localMessage2;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = rawQuery;
                        throw th;
                    }
            }
        }

        public File getAttachmentDirectory() {
            File databasePath = ((Context) this.val$folders).getDatabasePath(((String) this.this$0) + ".db_att");
            databasePath.getClass();
            return databasePath;
        }

        public File getDatabaseFile() {
            File databasePath = ((Context) this.val$folders).getDatabasePath(((String) this.this$0) + ".db");
            databasePath.getClass();
            return databasePath;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getFolderId() {
            return ((MessageDetailsAccessor) this.this$0).getFolderId();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public List getFromAddresses() {
            return ((MessageDetailsAccessor) this.this$0).getFromAddresses();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean getHasAttachments() {
            return ((MessageDetailsAccessor) this.this$0).getHasAttachments();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getId() {
            return ((MessageDetailsAccessor) this.this$0).getId();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getInternalDate() {
            return ((MessageDetailsAccessor) this.this$0).getInternalDate();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getMessageDate() {
            return ((MessageDetailsAccessor) this.this$0).getMessageDate();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public String getMessageServerId() {
            return ((MessageDetailsAccessor) this.this$0).getMessageServerId();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public PriorityQueue getPreview() {
            return ((MessageDetailsAccessor) this.this$0).getPreview();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public String getSubject() {
            return ((MessageDetailsAccessor) this.this$0).getSubject();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public int getThreadCount() {
            return ((MessageDetailsAccessor) this.this$0).getThreadCount();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getThreadRoot() {
            return ((MessageDetailsAccessor) this.this$0).getThreadRoot();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public List getToAddresses() {
            return ((MessageDetailsAccessor) this.this$0).getToAddresses();
        }

        public void incrementSendAttempts(long j) {
            ((LockableDatabase) this.val$folders).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(1, j));
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isAnswered() {
            MessageListCache messageListCache = (MessageListCache) this.val$folders;
            MessageDetailsAccessor messageDetailsAccessor = (MessageDetailsAccessor) this.this$0;
            long id = messageDetailsAccessor.getId();
            Flag flag = Flag.ANSWERED;
            Boolean flagForMessage = messageListCache.getFlagForMessage(id, flag);
            if (flagForMessage != null) {
                return flagForMessage.booleanValue();
            }
            Boolean flagForThread = messageListCache.getFlagForThread(messageDetailsAccessor.getThreadRoot(), flag);
            return flagForThread != null ? flagForThread.booleanValue() : messageDetailsAccessor.isAnswered();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isForwarded() {
            MessageListCache messageListCache = (MessageListCache) this.val$folders;
            MessageDetailsAccessor messageDetailsAccessor = (MessageDetailsAccessor) this.this$0;
            long id = messageDetailsAccessor.getId();
            Flag flag = Flag.FORWARDED;
            Boolean flagForMessage = messageListCache.getFlagForMessage(id, flag);
            if (flagForMessage != null) {
                return flagForMessage.booleanValue();
            }
            Boolean flagForThread = messageListCache.getFlagForThread(messageDetailsAccessor.getThreadRoot(), flag);
            return flagForThread != null ? flagForThread.booleanValue() : messageDetailsAccessor.isForwarded();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isRead() {
            MessageListCache messageListCache = (MessageListCache) this.val$folders;
            MessageDetailsAccessor messageDetailsAccessor = (MessageDetailsAccessor) this.this$0;
            long id = messageDetailsAccessor.getId();
            Flag flag = Flag.SEEN;
            Boolean flagForMessage = messageListCache.getFlagForMessage(id, flag);
            if (flagForMessage != null) {
                return flagForMessage.booleanValue();
            }
            Boolean flagForThread = messageListCache.getFlagForThread(messageDetailsAccessor.getThreadRoot(), flag);
            return flagForThread != null ? flagForThread.booleanValue() : messageDetailsAccessor.isRead();
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isStarred() {
            MessageListCache messageListCache = (MessageListCache) this.val$folders;
            MessageDetailsAccessor messageDetailsAccessor = (MessageDetailsAccessor) this.this$0;
            long id = messageDetailsAccessor.getId();
            Flag flag = Flag.FLAGGED;
            Boolean flagForMessage = messageListCache.getFlagForMessage(id, flag);
            if (flagForMessage != null) {
                return flagForMessage.booleanValue();
            }
            Boolean flagForThread = messageListCache.getFlagForThread(messageDetailsAccessor.getThreadRoot(), flag);
            return flagForThread != null ? flagForThread.booleanValue() : messageDetailsAccessor.isStarred();
        }

        @Override // app.k9mail.legacy.mailstore.MessageMapper
        public Object map(MessageDetailsAccessor messageDetailsAccessor) {
            long id = messageDetailsAccessor.getId();
            long folderId = messageDetailsAccessor.getFolderId();
            MessageListCache messageListCache = (MessageListCache) this.val$folders;
            if (messageListCache.isMessageHidden(id, folderId)) {
                return null;
            }
            return ((MessageMapper) this.this$0).map(new AnonymousClass1(3, messageListCache, messageDetailsAccessor));
        }

        public void notifyChange() {
            ((LocalStore) this.this$0).notifyChange();
        }

        public void removeOutboxState(long j) {
            ((LockableDatabase) this.val$folders).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda0(4, j));
        }

        public void setSendAttemptError(long j, String str) {
            str.getClass();
            ((LockableDatabase) this.val$folders).execute(false, new OutboxStateRepository$$ExternalSyntheticLambda3(j, ((Clock) this.this$0).now().toEpochMilliseconds(), str));
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2, boolean z) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$folders = obj2;
        }

        public /* synthetic */ AnonymousClass1(int i, Object obj, Object obj2) {
            this.$r8$classId = i;
            this.val$folders = obj;
            this.this$0 = obj2;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$8, reason: invalid class name */
    public final class AnonymousClass8 implements EmojiProcessor$EmojiProcessCallback, LockableDatabase.DbCallback, NumberConsumptionError {
        public final /* synthetic */ int $r8$classId;
        public String val$attachmentId;

        public AnonymousClass8(DefaultCssClassNameProvider defaultCssClassNameProvider, DefaultCssVariableNameProvider defaultCssVariableNameProvider) {
            this.$r8$classId = 7;
            String str = defaultCssClassNameProvider.rootClassName;
            String str2 = defaultCssClassNameProvider.mainContentClassName;
            String str3 = defaultCssVariableNameProvider.blockquoteDefaultBorderLeftColor;
            StringBuilder m = Config.CC.m("\n        |<style>\n        |  body { font-size: 0.9rem; }\n        |  .clear:after {\n        |    content: \"\";\n        |    clear: both;\n        |    display: block;\n        |  }\n        |  .", str, " {\n        |    display: block;\n        |    user-select: auto;\n        |    -webkit-user-select: auto;\n        |  }\n        |  .", str, ".");
            Modifier.CC.m(m, str2, " {\n        |    width: 100%;\n        |    overflow-wrap: break-word;\n        |    padding: 0 8px;\n        |  }\n        |  .", str, ".");
            Modifier.CC.m(m, str2, " pre {\n        |    white-space: pre-wrap;\n        |  }\n        |  .", str, ".");
            m.append(str2);
            m.append(" blockquote {\n        |    margin: auto 0 auto 0.8ex !important;\n        |    padding-left: 1ex !important;\n        |    border-left-width: 1px !important;\n        |    border-left-style: solid !important;\n        |    border-left-color: var(");
            m.append(str3);
            m.append(", #ccc);\n        |  }\n        |</style>\n    ");
            this.val$attachmentId = StringsKt__IndentKt.trimMargin$default(m.toString());
        }

        public static String toDisplayString(Address address) {
            String str = address.personal;
            String str2 = address.address;
            if (str == null) {
                str = "";
            }
            return (StringsKt.isBlank(str) || StringsKt.isBlank(str2)) ? str2 == null ? "" : str2 : ViewSizeResolver.CC.m(str, " &lt;", str2, "&gt;");
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Cursor query = sQLiteDatabase.query("message_parts", new String[]{"display_name", "decoded_body_size", "mime_type"}, "id = ?", new String[]{this.val$attachmentId}, null, null, null);
            try {
                if (!query.moveToFirst()) {
                    query.close();
                    return null;
                }
                String string = query.getString(0);
                long j = query.getLong(1);
                String string2 = query.getString(2);
                AttachmentInfo attachmentInfo = new AttachmentInfo();
                attachmentInfo.name = string;
                attachmentInfo.size = j;
                attachmentInfo.type = string2;
                return attachmentInfo;
            } finally {
                query.close();
            }
        }

        @Override // kotlinx.datetime.internal.format.parser.NumberConsumptionError
        public String errorMessage() {
            return CameraDevices$CC.m(new StringBuilder("expected '"), this.val$attachmentId, '\'');
        }

        @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
        public boolean handleEmoji(CharSequence charSequence, int i, int i2, TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
            if (!TextUtils.equals(charSequence.subSequence(i, i2), this.val$attachmentId)) {
                return true;
            }
            typefaceEmojiRasterizer.mCache = (typefaceEmojiRasterizer.mCache & 3) | 4;
            return false;
        }

        public String toString() {
            switch (this.$r8$classId) {
                case 4:
                    return CameraDevices$CC.m(new StringBuilder("<"), this.val$attachmentId, '>');
                default:
                    return super.toString();
            }
        }

        @Override // androidx.emoji2.text.EmojiProcessor$EmojiProcessCallback
        public Object getResult() {
            return this;
        }

        public /* synthetic */ AnonymousClass8(int i, String str, boolean z) {
            this.$r8$classId = i;
            this.val$attachmentId = str;
        }

        public AnonymousClass8(String str, int i) {
            this.$r8$classId = i;
            switch (i) {
                case 5:
                    str.getClass();
                    this.val$attachmentId = str;
                    break;
                default:
                    str.getClass();
                    this.val$attachmentId = str;
                    break;
            }
        }

        public AnonymousClass8(DefaultCssClassNameProvider defaultCssClassNameProvider, boolean z) {
            this.$r8$classId = 8;
            this.val$attachmentId = StringsKt__IndentKt.trimMargin$default("\n        |<style>\n        |  pre." + defaultCssClassNameProvider.plainTextMessagePreClassName + " {\n        |    white-space: pre-wrap;\n        |    word-wrap: break-word;\n        |    font-family: " + (z ? "monospace" : "sans-serif") + ";\n        |    margin-top: 0px;\n        |  }\n        |</style>\n    ");
        }

        public AnonymousClass8(DefaultCssClassNameProvider defaultCssClassNameProvider) {
            this.$r8$classId = 9;
            this.val$attachmentId = StringsKt__IndentKt.trimMargin$default("\n        |<style>\n        |  ." + defaultCssClassNameProvider.signatureClassName + " {\n        |    opacity: 0.5;\n        |  }\n        |</style>\n    ");
        }

        public AnonymousClass8(Context context, String str, String str2) {
            this.$r8$classId = 3;
            this.val$attachmentId = str;
        }

        public AnonymousClass8(boolean z) {
            String str;
            this.$r8$classId = 10;
            if (z) {
                str = "<style type=\"text/css\">\n  * {\n    background: #121212 !important;\n    color: #F3F3F3 !important\n  }\n  :link, :link * { color: #CCFF33 !important }\n  :visited, :visited * { color: #551A8B !important }\n</style>";
            } else {
                str = "";
            }
            this.val$attachmentId = str;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalStore$7, reason: invalid class name */
    public final class AnonymousClass7 implements ParagraphIntrinsics, MessageMapper, Backend, LockableDatabase.DbCallback {
        public final /* synthetic */ int $r8$classId;
        public Object this$0;
        public Object val$folder;
        public Object val$messages;
        public Object val$placeHolders;
        public Object val$queryString;

        /* renamed from: -$$Nest$mwriteAttachment, reason: not valid java name */
        public static void m937$$Nest$mwriteAttachment(AnonymousClass7 anonymousClass7, Uri uri) {
            ContentResolver contentResolver = ((Context) anonymousClass7.val$queryString).getContentResolver();
            InputStream openInputStream = contentResolver.openInputStream(((AttachmentViewInfo) anonymousClass7.val$messages).internalUri);
            try {
                OutputStream openOutputStream = contentResolver.openOutputStream(uri, "wt");
                try {
                    IOUtils.copy(openInputStream, openOutputStream);
                    openOutputStream.flush();
                } finally {
                    openOutputStream.close();
                }
            } finally {
                openInputStream.close();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v15, types: [java.util.List] */
        public AnonymousClass7(AnnotatedString annotatedString, TextStyle textStyle, List list, Density density, FontFamily$Resolver fontFamily$Resolver) {
            int i;
            ArrayList arrayList;
            String str;
            List list2;
            AnnotatedString annotatedString2 = annotatedString;
            TextStyle textStyle2 = textStyle;
            this.$r8$classId = 6;
            this.val$queryString = annotatedString2;
            this.val$placeHolders = list;
            final int i2 = 0;
            Function0 function0 = new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ LocalStore.AnonymousClass7 f$0;

                {
                    this.f$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v11 */
                /* JADX WARN: Type inference failed for: r0v12 */
                /* JADX WARN: Type inference failed for: r0v15 */
                /* JADX WARN: Type inference failed for: r0v18 */
                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v3 */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6 */
                /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v9 */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i3 = i2;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i4 = 1;
                    LocalStore.AnonymousClass7 anonymousClass7 = this.f$0;
                    switch (i3) {
                        case 0:
                            ArrayList arrayList2 = (ArrayList) anonymousClass7.val$messages;
                            if (!arrayList2.isEmpty()) {
                                ?? r0 = arrayList2.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList2.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList2.get(i4);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i4 != size) {
                                            i4++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo2 != null ? paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth() : 0.0f);
                        default:
                            ArrayList arrayList3 = (ArrayList) anonymousClass7.val$messages;
                            if (!arrayList3.isEmpty()) {
                                ?? r02 = arrayList3.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList3.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList3.get(i4);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i4 != size2) {
                                            i4++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth() : 0.0f);
                    }
                }
            };
            LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
            this.val$folder = ResultKt.lazy(lazyThreadSafetyMode, function0);
            final int i3 = 1;
            this.this$0 = ResultKt.lazy(lazyThreadSafetyMode, new Function0(this) { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$$ExternalSyntheticLambda0
                public final /* synthetic */ LocalStore.AnonymousClass7 f$0;

                {
                    this.f$0 = this;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r0v11 */
                /* JADX WARN: Type inference failed for: r0v12 */
                /* JADX WARN: Type inference failed for: r0v15 */
                /* JADX WARN: Type inference failed for: r0v18 */
                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v3 */
                /* JADX WARN: Type inference failed for: r0v5 */
                /* JADX WARN: Type inference failed for: r0v6 */
                /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r0v9 */
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    int i32 = i3;
                    ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                    int i4 = 1;
                    LocalStore.AnonymousClass7 anonymousClass7 = this.f$0;
                    switch (i32) {
                        case 0:
                            ArrayList arrayList2 = (ArrayList) anonymousClass7.val$messages;
                            if (!arrayList2.isEmpty()) {
                                ?? r0 = arrayList2.get(0);
                                float minIntrinsicWidth = ((ParagraphIntrinsicInfo) r0).intrinsics.getMinIntrinsicWidth();
                                int size = arrayList2.size() - 1;
                                boolean z = r0;
                                if (1 <= size) {
                                    while (true) {
                                        Object obj = arrayList2.get(i4);
                                        float minIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj).intrinsics.getMinIntrinsicWidth();
                                        r0 = z;
                                        if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                            r0 = obj;
                                            minIntrinsicWidth = minIntrinsicWidth2;
                                        }
                                        if (i4 != size) {
                                            i4++;
                                            z = r0;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r0;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo2 != null ? paragraphIntrinsicInfo2.intrinsics.getMinIntrinsicWidth() : 0.0f);
                        default:
                            ArrayList arrayList3 = (ArrayList) anonymousClass7.val$messages;
                            if (!arrayList3.isEmpty()) {
                                ?? r02 = arrayList3.get(0);
                                float maxIntrinsicWidth = ((ParagraphIntrinsicInfo) r02).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                int size2 = arrayList3.size() - 1;
                                boolean z2 = r02;
                                if (1 <= size2) {
                                    while (true) {
                                        Object obj2 = arrayList3.get(i4);
                                        float maxIntrinsicWidth2 = ((ParagraphIntrinsicInfo) obj2).intrinsics.layoutIntrinsics.getMaxIntrinsicWidth();
                                        r02 = z2;
                                        if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                            r02 = obj2;
                                            maxIntrinsicWidth = maxIntrinsicWidth2;
                                        }
                                        if (i4 != size2) {
                                            i4++;
                                            z2 = r02;
                                        }
                                    }
                                }
                                paragraphIntrinsicInfo = r02;
                            }
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                            return Float.valueOf(paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.intrinsics.layoutIntrinsics.getMaxIntrinsicWidth() : 0.0f);
                    }
                }
            });
            ParagraphStyle paragraphStyle = textStyle2.paragraphStyle;
            AnnotatedString annotatedString3 = AnnotatedStringKt.EmptyAnnotatedString;
            ArrayList arrayList2 = annotatedString2.paragraphStylesOrNull;
            String str2 = annotatedString2.text;
            EmptyList emptyList = EmptyList.INSTANCE;
            List sortedWith = arrayList2 != null ? CollectionsKt.sortedWith(arrayList2, new AnnotatedString$special$$inlined$sortedBy$1(1)) : emptyList;
            ArrayList arrayList3 = new ArrayList();
            ArrayDeque arrayDeque = new ArrayDeque();
            int size = sortedWith.size();
            int i4 = 0;
            int i5 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) sortedWith.get(i4);
                AnnotatedString.Range copy$default = AnnotatedString.Range.copy$default(range, paragraphStyle.merge((ParagraphStyle) range.item), i2, 14);
                Object obj = copy$default.item;
                int i6 = copy$default.end;
                int i7 = copy$default.start;
                while (i5 < i7 && !arrayDeque.isEmpty()) {
                    AnnotatedString.Range range2 = (AnnotatedString.Range) arrayDeque.last();
                    List list3 = sortedWith;
                    int i8 = range2.end;
                    EmptyList emptyList2 = emptyList;
                    Object obj2 = range2.item;
                    if (i7 < i8) {
                        arrayList3.add(new AnnotatedString.Range(i5, i7, obj2));
                        i5 = i7;
                        sortedWith = list3;
                        emptyList = emptyList2;
                    } else {
                        int i9 = size;
                        arrayList3.add(new AnnotatedString.Range(i5, i8, obj2));
                        i5 = range2.end;
                        while (!arrayDeque.isEmpty() && i5 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                            arrayDeque.removeLast();
                        }
                        sortedWith = list3;
                        emptyList = emptyList2;
                        size = i9;
                    }
                }
                List list4 = sortedWith;
                EmptyList emptyList3 = emptyList;
                int i10 = size;
                if (i5 < i7) {
                    arrayList3.add(new AnnotatedString.Range(i5, i7, paragraphStyle));
                    i5 = i7;
                }
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayDeque.lastOrNull();
                if (range3 != null) {
                    int i11 = range3.end;
                    Object obj3 = range3.item;
                    int i12 = range3.start;
                    if (i12 == i7 && i11 == i6) {
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, ((ParagraphStyle) obj3).merge((ParagraphStyle) obj)));
                    } else if (i12 == i11) {
                        arrayList3.add(new AnnotatedString.Range(i12, i11, obj3));
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, obj));
                    } else {
                        if (i11 < i6) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                            throw null;
                        }
                        arrayDeque.addLast(new AnnotatedString.Range(i7, i6, ((ParagraphStyle) obj3).merge((ParagraphStyle) obj)));
                    }
                } else {
                    arrayDeque.addLast(new AnnotatedString.Range(i7, i6, obj));
                }
                i4++;
                sortedWith = list4;
                emptyList = emptyList3;
                size = i10;
                i2 = 0;
            }
            EmptyList emptyList4 = emptyList;
            while (i5 <= str2.length() && !arrayDeque.isEmpty()) {
                AnnotatedString.Range range4 = (AnnotatedString.Range) arrayDeque.last();
                Object obj4 = range4.item;
                int i13 = range4.end;
                arrayList3.add(new AnnotatedString.Range(i5, i13, obj4));
                while (!arrayDeque.isEmpty() && i13 == ((AnnotatedString.Range) arrayDeque.last()).end) {
                    arrayDeque.removeLast();
                }
                i5 = i13;
            }
            if (i5 < str2.length()) {
                arrayList3.add(new AnnotatedString.Range(i5, str2.length(), paragraphStyle));
            }
            if (arrayList3.isEmpty()) {
                i = 0;
                arrayList3.add(new AnnotatedString.Range(0, 0, paragraphStyle));
            } else {
                i = 0;
            }
            ArrayList arrayList4 = new ArrayList(arrayList3.size());
            int size2 = arrayList3.size();
            int i14 = i;
            while (i14 < size2) {
                AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList3.get(i14);
                int i15 = range5.start;
                int i16 = range5.end;
                String substring = i15 != i16 ? str2.substring(i15, i16) : "";
                List localAnnotations = AnnotatedStringKt.getLocalAnnotations(annotatedString2, i15, i16, new TextKt$$ExternalSyntheticLambda1(26));
                AnnotatedString annotatedString4 = new AnnotatedString(substring, localAnnotations == null ? emptyList4 : localAnnotations);
                ParagraphStyle paragraphStyle2 = (ParagraphStyle) range5.item;
                if (paragraphStyle2.textDirection == 0) {
                    arrayList = arrayList3;
                    str = str2;
                    paragraphStyle2 = new ParagraphStyle(paragraphStyle2.textAlign, paragraphStyle.textDirection, paragraphStyle2.lineHeight, paragraphStyle2.textIndent, paragraphStyle2.platformStyle, paragraphStyle2.lineHeightStyle, paragraphStyle2.lineBreak, paragraphStyle2.hyphens, paragraphStyle2.textMotion);
                } else {
                    arrayList = arrayList3;
                    str = str2;
                }
                TextStyle textStyle3 = new TextStyle(textStyle2.spanStyle, paragraphStyle.merge(paragraphStyle2));
                ?? r5 = annotatedString4.annotations;
                EmptyList emptyList5 = r5 == 0 ? emptyList4 : r5;
                List list5 = (List) this.val$placeHolders;
                ArrayList arrayList5 = new ArrayList(list5.size());
                int size3 = list5.size();
                int i17 = 0;
                while (i17 < size3) {
                    AnnotatedString.Range range6 = (AnnotatedString.Range) list5.get(i17);
                    int i18 = range6.start;
                    ParagraphStyle paragraphStyle3 = paragraphStyle;
                    int i19 = range6.end;
                    if (AnnotatedStringKt.intersect(i15, i16, i18, i19)) {
                        if (i15 > i18 || i19 > i16) {
                            InlineClassHelperKt.throwIllegalArgumentException("placeholder can not overlap with paragraph.");
                        }
                        list2 = list5;
                        arrayList5.add(new AnnotatedString.Range(i18 - i15, i19 - i15, range6.item));
                    } else {
                        list2 = list5;
                    }
                    i17++;
                    list5 = list2;
                    paragraphStyle = paragraphStyle3;
                }
                arrayList4.add(new ParagraphIntrinsicInfo(new AndroidParagraphIntrinsics(substring, textStyle3, emptyList5, arrayList5, fontFamily$Resolver, density), i15, i16));
                i14++;
                annotatedString2 = annotatedString;
                textStyle2 = textStyle;
                str2 = str;
                arrayList3 = arrayList;
            }
            this.val$messages = arrayList4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x007e, code lost:
        
            if (r3 != r1.size) goto L26;
         */
        /* JADX WARN: Removed duplicated region for block: B:17:0x0058 A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:13:0x007c, B:15:0x0052, B:17:0x0058, B:18:0x005c, B:20:0x0060, B:22:0x006b, B:26:0x0043, B:30:0x004f, B:34:0x003c), top: B:7:0x0028 }] */
        /* JADX WARN: Removed duplicated region for block: B:28:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x004f A[Catch: all -> 0x0034, TryCatch #0 {all -> 0x0034, blocks: (B:12:0x0030, B:13:0x007c, B:15:0x0052, B:17:0x0058, B:18:0x005c, B:20:0x0060, B:22:0x006b, B:26:0x0043, B:30:0x004f, B:34:0x003c), top: B:7:0x0028 }] */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:9:0x002a  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0079 -> B:13:0x007c). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static final void access$processingLoop(com.fsck.k9.mailstore.LocalStore.AnonymousClass7 r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
            /*
                java.lang.Object r0 = r7.val$messages
                kotlinx.coroutines.channels.BufferedChannel r0 = (kotlinx.coroutines.channels.BufferedChannel) r0
                java.lang.Object r1 = r7.this$0
                kotlin.collections.ArrayDeque r1 = (kotlin.collections.ArrayDeque) r1
                boolean r2 = r8 instanceof androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1
                if (r2 == 0) goto L1b
                r2 = r8
                androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 r2 = (androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1) r2
                int r3 = r2.label
                r4 = -2147483648(0xffffffff80000000, float:-0.0)
                r5 = r3 & r4
                if (r5 == 0) goto L1b
                int r3 = r3 - r4
                r2.label = r3
                goto L20
            L1b:
                androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1 r2 = new androidx.camera.camera2.pipe.core.ProcessingQueue$processingLoop$1
                r2.<init>(r7, r8)
            L20:
                java.lang.Object r8 = r2.result
                int r3 = r2.label
                r4 = 2
                r5 = 1
                kotlin.coroutines.intrinsics.CoroutineSingletons r6 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                if (r3 == 0) goto L40
                if (r3 == r5) goto L3c
                if (r3 != r4) goto L36
                int r3 = r2.I$0
                kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
                goto L7c
            L34:
                r8 = move-exception
                goto L81
            L36:
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$2(r7)
                return
            L3c:
                kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L34
                goto L4f
            L40:
                kotlin.ResultKt.throwOnFailure(r8)
            L43:
                r2.label = r5     // Catch: java.lang.Throwable -> L34
                r0.getClass()     // Catch: java.lang.Throwable -> L34
                java.lang.Object r8 = kotlinx.coroutines.channels.BufferedChannel.receive$suspendImpl(r0, r2)     // Catch: java.lang.Throwable -> L34
                if (r8 != r6) goto L4f
                goto L7b
            L4f:
                r1.addLast(r8)     // Catch: java.lang.Throwable -> L34
            L52:
                boolean r8 = r1.isEmpty()     // Catch: java.lang.Throwable -> L34
                if (r8 != 0) goto L43
                java.lang.Object r8 = r0.mo1015tryReceivePtdJZtk()     // Catch: java.lang.Throwable -> L34
            L5c:
                boolean r3 = r8 instanceof kotlinx.coroutines.channels.ChannelResult.Failed     // Catch: java.lang.Throwable -> L34
                if (r3 != 0) goto L6b
                kotlinx.coroutines.channels.ChannelResult.m1018getOrThrowimpl(r8)     // Catch: java.lang.Throwable -> L34
                r1.addLast(r8)     // Catch: java.lang.Throwable -> L34
                java.lang.Object r8 = r0.mo1015tryReceivePtdJZtk()     // Catch: java.lang.Throwable -> L34
                goto L5c
            L6b:
                int r3 = r1.size     // Catch: java.lang.Throwable -> L34
                java.lang.Object r8 = r7.val$placeHolders     // Catch: java.lang.Throwable -> L34
                com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1 r8 = (com.fsck.k9.ui.messageview.MessageViewFragment$onCreate$1) r8     // Catch: java.lang.Throwable -> L34
                r2.I$0 = r3     // Catch: java.lang.Throwable -> L34
                r2.label = r4     // Catch: java.lang.Throwable -> L34
                java.lang.Object r8 = r8.invoke(r1, r2)     // Catch: java.lang.Throwable -> L34
                if (r8 != r6) goto L7c
            L7b:
                return
            L7c:
                int r8 = r1.size     // Catch: java.lang.Throwable -> L34
                if (r3 != r8) goto L52
                goto L43
            L81:
                r7.releaseUnprocessedElements(r8)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalStore.AnonymousClass7.access$processingLoop(com.fsck.k9.mailstore.LocalStore$7, kotlin.coroutines.jvm.internal.ContinuationImpl):void");
        }

        public static AnonymousClass7 fromJson(JSONObject jSONObject) {
            Okio.checkNotNull(jSONObject, "json object cannot be null");
            if (!jSONObject.has("discoveryDoc")) {
                Okio.checkArgument("missing authorizationEndpoint", jSONObject.has("authorizationEndpoint"));
                Okio.checkArgument("missing tokenEndpoint", jSONObject.has("tokenEndpoint"));
                return new AnonymousClass7(AtomicFU.getUri(jSONObject, "authorizationEndpoint"), AtomicFU.getUri(jSONObject, "tokenEndpoint"), AtomicFU.getUriIfDefined(jSONObject, "registrationEndpoint"), AtomicFU.getUriIfDefined(jSONObject, "endSessionEndpoint"));
            }
            try {
                return new AnonymousClass7(new AuthorizationServiceDiscovery(jSONObject.optJSONObject("discoveryDoc")));
            } catch (AuthorizationServiceDiscovery.MissingArgumentException e) {
                throw new JSONException("Missing required field in discovery doc: " + e.mMissingField);
            }
        }

        public CancellationHandle addAwaiter(AwaiterQueue$Awaiter awaiterQueue$Awaiter, Function0 function0) {
            int i;
            int i2;
            Ref$IntRef ref$IntRef = new Ref$IntRef();
            ref$IntRef.element = -1;
            synchronized (this.val$queryString) {
                Throwable th = (Throwable) this.val$placeHolders;
                if (th != null) {
                    awaiterQueue$Awaiter.resumeWithException(th);
                    return NeverEqualPolicy.Empty;
                }
                AtomicInt atomicInt = (AtomicInt) this.val$folder;
                do {
                    i = atomicInt.get();
                    i2 = i + 1;
                } while (!atomicInt.compareAndSet(i, i2));
                boolean z = true;
                if ((134217727 & i2) != 1) {
                    z = false;
                }
                ref$IntRef.element = (i2 >>> 27) & 15;
                ((MutableObjectList) this.val$messages).add(awaiterQueue$Awaiter);
                if (z && function0 != null) {
                    try {
                        function0.invoke();
                    } catch (Throwable th2) {
                        fail(th2);
                    }
                }
                return new WeakCache(new ConnectPlan$$ExternalSyntheticLambda0(awaiterQueue$Awaiter, this, ref$IntRef, 8));
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0074, code lost:
        
            if (r6.getRunCount() == 1) goto L25;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.text.Bidi analyzeBidi(int r15) {
            /*
                r14 = this;
                java.lang.Object r0 = r14.val$queryString
                android.text.Layout r0 = (android.text.Layout) r0
                java.lang.Object r1 = r14.val$messages
                java.util.ArrayList r1 = (java.util.ArrayList) r1
                java.lang.Object r2 = r14.val$placeHolders
                java.util.ArrayList r2 = (java.util.ArrayList) r2
                java.lang.Object r3 = r14.val$folder
                boolean[] r3 = (boolean[]) r3
                boolean r4 = r3[r15]
                if (r4 == 0) goto L1b
                java.lang.Object r14 = r2.get(r15)
                java.text.Bidi r14 = (java.text.Bidi) r14
                return r14
            L1b:
                r4 = 0
                if (r15 != 0) goto L20
                r5 = r4
                goto L2c
            L20:
                int r5 = r15 + (-1)
                java.lang.Object r5 = r1.get(r5)
                java.lang.Number r5 = (java.lang.Number) r5
                int r5 = r5.intValue()
            L2c:
                java.lang.Object r1 = r1.get(r15)
                java.lang.Number r1 = (java.lang.Number) r1
                int r1 = r1.intValue()
                int r11 = r1 - r5
                java.lang.Object r6 = r14.this$0
                char[] r6 = (char[]) r6
                if (r6 == 0) goto L44
                int r7 = r6.length
                if (r7 >= r11) goto L42
                goto L44
            L42:
                r7 = r6
                goto L47
            L44:
                char[] r6 = new char[r11]
                goto L42
            L47:
                java.lang.CharSequence r6 = r0.getText()
                android.text.TextUtils.getChars(r6, r5, r1, r7, r4)
                boolean r1 = java.text.Bidi.requiresBidi(r7, r4, r11)
                r5 = 0
                r13 = 1
                if (r1 == 0) goto L76
                int r1 = r14.getParagraphStart(r15)
                int r1 = r0.getLineForOffset(r1)
                int r0 = r0.getParagraphDirection(r1)
                r1 = -1
                if (r0 != r1) goto L67
                r12 = r13
                goto L68
            L67:
                r12 = r4
            L68:
                java.text.Bidi r6 = new java.text.Bidi
                r9 = 0
                r10 = 0
                r8 = 0
                r6.<init>(r7, r8, r9, r10, r11, r12)
                int r0 = r6.getRunCount()
                if (r0 != r13) goto L77
            L76:
                r6 = r5
            L77:
                r2.set(r15, r6)
                r3[r15] = r13
                if (r6 == 0) goto L87
                java.lang.Object r15 = r14.this$0
                char[] r15 = (char[]) r15
                if (r7 != r15) goto L86
                r7 = r5
                goto L87
            L86:
                r7 = r15
            L87:
                r14.this$0 = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalStore.AnonymousClass7.analyzeBidi(int):java.text.Bidi");
        }

        public AutoValue_SessionConfig_OutputConfig build() {
            String str = ((DeferrableSurface) this.val$queryString) == null ? " surface" : "";
            if (((List) this.val$placeHolders) == null) {
                str = str.concat(" sharedSurfaces");
            }
            if (((Integer) this.val$folder) == null) {
                str = str.concat(" mirrorMode");
            }
            if (((Integer) this.val$messages) == null) {
                str = str.concat(" surfaceGroupId");
            }
            if (((DynamicRange) this.this$0) == null) {
                str = str.concat(" dynamicRange");
            }
            if (str.isEmpty()) {
                return new AutoValue_SessionConfig_OutputConfig((DeferrableSurface) this.val$queryString, (List) this.val$placeHolders, ((Integer) this.val$folder).intValue(), ((Integer) this.val$messages).intValue(), (DynamicRange) this.this$0);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing required properties:".concat(str));
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:160:0x023e, code lost:
        
            if (r5 < (r1 + r10)) goto L119;
         */
        /* JADX WARN: Removed duplicated region for block: B:101:0x0366  */
        /* JADX WARN: Removed duplicated region for block: B:103:0x0371  */
        /* JADX WARN: Removed duplicated region for block: B:106:0x0379  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x0392  */
        /* JADX WARN: Removed duplicated region for block: B:129:0x03fb A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:137:0x037c  */
        /* JADX WARN: Removed duplicated region for block: B:138:0x0374  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x036b  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x0345  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x0306  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x02fe  */
        /* JADX WARN: Removed duplicated region for block: B:143:0x02f5  */
        /* JADX WARN: Removed duplicated region for block: B:144:0x02dc  */
        /* JADX WARN: Removed duplicated region for block: B:145:0x02ce  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x02cc  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x02da  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x02e6  */
        /* JADX WARN: Removed duplicated region for block: B:91:0x02f0  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x02fb  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x0303  */
        /* JADX WARN: Removed duplicated region for block: B:99:0x0325  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void calculateFlexLines(com.fsck.k9.mailstore.LocalFolder.AnonymousClass9 r25, int r26, int r27, int r28, int r29, java.util.List r30) {
            /*
                Method dump skipped, instructions count: 1043
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalStore.AnonymousClass7.calculateFlexLines(com.fsck.k9.mailstore.LocalFolder$9, int, int, int, int, java.util.List):void");
        }

        public void checkSizeConstraints(View view, int i) {
            boolean z;
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) view.getLayoutParams();
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            int i2 = layoutParams.mMinWidth;
            boolean z2 = true;
            if (measuredWidth >= i2 && measuredWidth <= (i2 = layoutParams.mMaxWidth)) {
                z = false;
            } else {
                measuredWidth = i2;
                z = true;
            }
            int i3 = layoutParams.mMinHeight;
            if (measuredHeight < i3) {
                measuredHeight = i3;
            } else {
                int i4 = layoutParams.mMaxHeight;
                if (measuredHeight > i4) {
                    measuredHeight = i4;
                } else {
                    z2 = z;
                }
            }
            if (z2) {
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(makeMeasureSpec, makeMeasureSpec2);
                updateMeasureCache(i, makeMeasureSpec, makeMeasureSpec2, view);
                ((FlexboxLayoutManager) this.val$queryString).updateViewCache(view, i);
            }
        }

        public void clearFlexLines(int i, List list) {
            int i2 = ((int[]) this.val$folder)[i];
            if (i2 == -1) {
                i2 = 0;
            }
            if (list.size() > i2) {
                list.subList(i2, list.size()).clear();
            }
            int[] iArr = (int[]) this.val$folder;
            int length = iArr.length - 1;
            if (i > length) {
                Arrays.fill(iArr, -1);
            } else {
                Arrays.fill(iArr, i, length, -1);
            }
            long[] jArr = (long[]) this.val$messages;
            int length2 = jArr.length - 1;
            if (i > length2) {
                Arrays.fill(jArr, 0L);
            } else {
                Arrays.fill(jArr, i, length2, 0L);
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public Map copyMessages(String str, String str2, List list) {
            str.getClass();
            str2.getClass();
            list.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        public Camera2CaptureSequenceProcessor create(CameraCaptureSessionWrapper cameraCaptureSessionWrapper, Map map, Map map2) {
            cameraCaptureSessionWrapper.getClass();
            map.getClass();
            map2.getClass();
            Threads threads = (Threads) this.val$queryString;
            CameraGraph$Config cameraGraph$Config = (CameraGraph$Config) this.val$placeHolders;
            int i = cameraGraph$Config.defaultTemplate;
            StreamGraphImpl streamGraphImpl = (StreamGraphImpl) this.val$folder;
            StrictMode strictMode = (StrictMode) this.this$0;
            Camera2Quirks camera2Quirks = (Camera2Quirks) this.val$messages;
            camera2Quirks.getClass();
            camera2Quirks.strictMode.getClass();
            cameraGraph$Config.flags.getClass();
            CameraMetadata.Companion companion = CameraMetadata.Companion;
            CameraMetadata m63awaitCameraMetadataEfqyGwQ = ((Camera2MetadataCache) camera2Quirks.metadataProvider).m63awaitCameraMetadataEfqyGwQ(cameraGraph$Config.camera);
            companion.getClass();
            return new Camera2CaptureSequenceProcessor(cameraCaptureSessionWrapper, threads, i, map, map2, streamGraphImpl, strictMode, CameraMetadata.Companion.isHardwareLevelLegacy(m63awaitCameraMetadataEfqyGwQ));
        }

        public void createAndSendSurfaceOutput(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceEdge surfaceEdge, SurfaceEdge surfaceEdge2, Map.Entry entry) {
            SurfaceEdge surfaceEdge3 = (SurfaceEdge) entry.getValue();
            Utf8.SafeProcessor.d("DualSurfaceProcessorNode", "     -> outputEdge = " + surfaceEdge3);
            AutoValue_SurfaceOutput_CameraInputInfo autoValue_SurfaceOutput_CameraInputInfo = new AutoValue_SurfaceOutput_CameraInputInfo(surfaceEdge.mStreamSpec.resolution, ((AutoValue_DualOutConfig) entry.getKey()).primaryOutConfig.getCropRect, surfaceEdge.mHasCameraTransform ? cameraInternal : null, ((AutoValue_DualOutConfig) entry.getKey()).primaryOutConfig.getRotationDegrees, ((AutoValue_DualOutConfig) entry.getKey()).primaryOutConfig.isMirroring);
            AutoValue_SurfaceOutput_CameraInputInfo autoValue_SurfaceOutput_CameraInputInfo2 = new AutoValue_SurfaceOutput_CameraInputInfo(surfaceEdge2.mStreamSpec.resolution, ((AutoValue_DualOutConfig) entry.getKey()).secondaryOutConfig.getCropRect, surfaceEdge2.mHasCameraTransform ? cameraInternal2 : null, ((AutoValue_DualOutConfig) entry.getKey()).secondaryOutConfig.getRotationDegrees, ((AutoValue_DualOutConfig) entry.getKey()).secondaryOutConfig.isMirroring);
            int i = ((AutoValue_DualOutConfig) entry.getKey()).primaryOutConfig.getFormat;
            surfaceEdge3.getClass();
            Validate.checkMainThread();
            surfaceEdge3.checkNotClosed();
            RelationUtil.checkState("Consumer can only be linked once.", !surfaceEdge3.mHasConsumer);
            surfaceEdge3.mHasConsumer = true;
            SurfaceEdge.SettableSurface settableSurface = surfaceEdge3.mSettableSurface;
            ChainingListenableFuture transformAsync = Futures.transformAsync(settableSurface.getSurface(), new SurfaceEdge$$ExternalSyntheticLambda3(surfaceEdge3, settableSurface, i, autoValue_SurfaceOutput_CameraInputInfo, autoValue_SurfaceOutput_CameraInputInfo2), Util.mainThreadExecutor());
            transformAsync.addListener(new ActivityRecreator.AnonymousClass1(1, transformAsync, new CardView.AnonymousClass1(17, this, surfaceEdge3)), Util.mainThreadExecutor());
        }

        @Override // com.fsck.k9.backend.api.Backend
        public ImapBackendPusher createPusher(AnonymousClass7 anonymousClass7) {
            anonymousClass7.getClass();
            throw new UnsupportedOperationException("not implemented");
        }

        public TaskStackBuilder createTaskStackBuilder() {
            ArrayList arrayList = (ArrayList) this.val$messages;
            Intent intent = (Intent) this.val$folder;
            NavGraph navGraph = (NavGraph) this.this$0;
            if (navGraph == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must call setGraph() before constructing the deep link");
                return null;
            }
            if (arrayList.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must call setDestination() or addDestination() before constructing the deep link");
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList<? extends Parcelable> arrayList3 = new ArrayList<>();
            Iterator it = arrayList.iterator();
            NavDestination navDestination = null;
            while (true) {
                int i = 0;
                if (!it.hasNext()) {
                    intent.putExtra("android-support-nav:controller:deepLinkIds", CollectionsKt.toIntArray(arrayList2));
                    intent.putParcelableArrayListExtra("android-support-nav:controller:deepLinkArgs", arrayList3);
                    TaskStackBuilder taskStackBuilder = new TaskStackBuilder((Context) this.val$queryString);
                    Intent intent2 = new Intent(intent);
                    ComponentName component = intent2.getComponent();
                    if (component == null) {
                        component = intent2.resolveActivity(taskStackBuilder.mSourceContext.getPackageManager());
                    }
                    if (component != null) {
                        taskStackBuilder.addParentStack(component);
                    }
                    ArrayList arrayList4 = taskStackBuilder.mIntents;
                    arrayList4.add(intent2);
                    int size = arrayList4.size();
                    while (i < size) {
                        Intent intent3 = (Intent) arrayList4.get(i);
                        if (intent3 != null) {
                            intent3.putExtra("android-support-nav:controller:deepLinkIntent", intent);
                        }
                        i++;
                    }
                    return taskStackBuilder;
                }
                NavDeepLinkBuilder$DeepLinkDestination navDeepLinkBuilder$DeepLinkDestination = (NavDeepLinkBuilder$DeepLinkDestination) it.next();
                int i2 = navDeepLinkBuilder$DeepLinkDestination.destinationId;
                Bundle bundle = navDeepLinkBuilder$DeepLinkDestination.arguments;
                NavDestination findDestination = findDestination(i2);
                if (findDestination == null) {
                    int i3 = NavDestination.$r8$clinit;
                    Regex$$ExternalSyntheticBUOutline0.m$1("Navigation destination ", OperationKt.getDisplayName((NavContext) this.val$placeHolders, i2), " cannot be found in the navigation graph ", navGraph);
                    return null;
                }
                int[] buildDeepLinkIds = findDestination.buildDeepLinkIds(navDestination);
                int length = buildDeepLinkIds.length;
                while (i < length) {
                    arrayList2.add(Integer.valueOf(buildDeepLinkIds[i]));
                    arrayList3.add(bundle);
                    i++;
                }
                navDestination = findDestination;
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void deleteAllMessages(String str) {
            str.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void deleteMessages(String str, List list) {
            str.getClass();
            list.getClass();
            ((CommandSetFlag) this.val$messages).setFlag(str, list, Flag.DELETED, true);
        }

        public void determineMainSize(int i, int i2, int i3) {
            int i4;
            int paddingLeft;
            int paddingRight;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int itemCount = flexboxLayoutManager.mState.getItemCount();
            boolean[] zArr = (boolean[]) this.val$placeHolders;
            if (zArr == null) {
                this.val$placeHolders = new boolean[Math.max(itemCount, 10)];
            } else if (zArr.length < itemCount) {
                this.val$placeHolders = new boolean[Math.max(zArr.length * 2, itemCount)];
            } else {
                Arrays.fill(zArr, false);
            }
            if (i3 >= flexboxLayoutManager.mState.getItemCount()) {
                return;
            }
            int i5 = flexboxLayoutManager.mFlexDirection;
            if (i5 == 0 || i5 == 1) {
                int mode = View.MeasureSpec.getMode(i);
                int size = View.MeasureSpec.getSize(i);
                int largestMainSize = flexboxLayoutManager.getLargestMainSize();
                if (mode != 1073741824) {
                    size = Math.min(largestMainSize, size);
                }
                i4 = size;
                paddingLeft = flexboxLayoutManager.getPaddingLeft();
                paddingRight = flexboxLayoutManager.getPaddingRight();
            } else {
                if (i5 != 2 && i5 != 3) {
                    UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Invalid flex direction: ", i5));
                    return;
                }
                int mode2 = View.MeasureSpec.getMode(i2);
                i4 = View.MeasureSpec.getSize(i2);
                if (mode2 != 1073741824) {
                    i4 = flexboxLayoutManager.getLargestMainSize();
                }
                paddingLeft = flexboxLayoutManager.getPaddingTop();
                paddingRight = flexboxLayoutManager.getPaddingBottom();
            }
            int i6 = paddingRight + paddingLeft;
            int[] iArr = (int[]) this.val$folder;
            List list = flexboxLayoutManager.mFlexLines;
            int size2 = list.size();
            for (int i7 = iArr != null ? iArr[i3] : 0; i7 < size2; i7++) {
                FlexLine flexLine = (FlexLine) list.get(i7);
                int i8 = flexLine.mMainSize;
                if (i8 < i4 && flexLine.mAnyItemsHaveFlexGrow) {
                    expandFlexItems(flexLine, i4, i6, false);
                } else if (i8 > i4 && flexLine.mAnyItemsHaveFlexShrink) {
                    shrinkFlexItems(flexLine, i4, i6, false);
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Cursor cursor;
            ArrayList arrayList = (ArrayList) this.val$messages;
            LocalFolder localFolder = (LocalFolder) this.val$folder;
            LocalStore localStore = (LocalStore) this.this$0;
            GeneralSettingsManager generalSettingsManager = localStore.generalSettingsManager;
            String[] strArr = (String[]) this.val$placeHolders;
            String str = (String) this.val$queryString;
            EmptyCursor emptyCursor = 0;
            try {
                try {
                    cursor = sQLiteDatabase.rawQuery(str.concat(" LIMIT 10"), strArr);
                    while (cursor.moveToNext()) {
                        try {
                            LocalMessage localMessage = new LocalMessage(localStore, (String) null, localFolder, generalSettingsManager);
                            localMessage.populateFromGetMessageCursor(cursor);
                            arrayList.add(localMessage);
                        } catch (Exception e) {
                            e = e;
                            Log.d(e, "Got an exception", new Object[0]);
                            Utility.closeQuietly(cursor);
                            return null;
                        }
                    }
                    cursor.close();
                    cursor = sQLiteDatabase.rawQuery(str + " LIMIT -1 OFFSET 10", strArr);
                    while (cursor.moveToNext()) {
                        LocalMessage localMessage2 = new LocalMessage(localStore, (String) null, localFolder, generalSettingsManager);
                        localMessage2.populateFromGetMessageCursor(cursor);
                        arrayList.add(localMessage2);
                    }
                    Pattern pattern = Utility.RESPONSE_PATTERN;
                    cursor.close();
                    return null;
                } catch (Throwable th) {
                    th = th;
                    emptyCursor = " LIMIT 10";
                    Utility.closeQuietly(emptyCursor);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                Utility.closeQuietly(emptyCursor);
                throw th;
            }
        }

        public void downloadAttachment(LocalPart localPart, Runnable runnable) {
            LegacyAccountDto account = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccount(localPart.getAccountUuid());
            LocalMessage message = localPart.getMessage();
            ((MessageViewFragment) this.val$folder).showDialog$3(R.id.dialog_attachment_progress);
            MessagingController messagingController = (MessagingController) this.val$placeHolders;
            Part part = ((AttachmentViewInfo) this.val$messages).part;
            MessagingController.AnonymousClass8 anonymousClass8 = new MessagingController.AnonymousClass8(this, runnable);
            messagingController.getClass();
            messagingController.put("loadAttachment", messagingController.new AnonymousClass4(message, account, part, anonymousClass8));
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void downloadCompleteMessage(String str, String str2) {
            str2.getClass();
            Base64Util base64Util = (Base64Util) this.this$0;
            base64Util.getClass();
            Pop3Folder folder = ((Pop3Store) base64Util.inverseAlphabet).getFolder(str);
            try {
                folder.open();
                Pop3Message pop3Message = (Pop3Message) folder.uidToMsgMap.get(str2);
                if (pop3Message == null) {
                    pop3Message = new Pop3Message(str2);
                }
                folder.fetch(IntOffsetKt.listOf(pop3Message), OperationKt.fetchProfileOf(FetchProfile.Item.FLAGS, FetchProfile.Item.BODY), null, 0);
                ((Dispatcher) base64Util.alphabet).getFolder(str).saveMessage(pop3Message, MessageDownloadState.FULL);
            } finally {
                folder.close();
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void downloadMessage(SyncConfig syncConfig, String str, String str2) {
            str2.getClass();
            throw new UnsupportedOperationException("not implemented");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void downloadMessageStructure(String str, String str2) {
            str.getClass();
            str2.getClass();
            throw new UnsupportedOperationException("not implemented");
        }

        public void ensureIndexToFlexLine(int i) {
            int[] iArr = (int[]) this.val$folder;
            if (iArr == null) {
                this.val$folder = new int[Math.max(i, 10)];
            } else if (iArr.length < i) {
                this.val$folder = Arrays.copyOf((int[]) this.val$folder, Math.max(iArr.length * 2, i));
            }
        }

        public void ensureMeasureSpecCache(int i) {
            long[] jArr = (long[]) this.val$messages;
            if (jArr == null) {
                this.val$messages = new long[Math.max(i, 10)];
            } else if (jArr.length < i) {
                this.val$messages = Arrays.copyOf((long[]) this.val$messages, Math.max(jArr.length * 2, i));
            }
        }

        public void ensureMeasuredSizeCache(int i) {
            long[] jArr = (long[]) this.this$0;
            if (jArr == null) {
                this.this$0 = new long[Math.max(i, 10)];
            } else if (jArr.length < i) {
                this.this$0 = Arrays.copyOf((long[]) this.this$0, Math.max(jArr.length * 2, i));
            }
        }

        public void expandFlexItems(FlexLine flexLine, int i, int i2, boolean z) {
            int i3;
            float f;
            float f2;
            int i4;
            int i5;
            int i6;
            double d;
            boolean z2;
            double d2;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            float f3 = flexLine.mTotalFlexGrow;
            float f4 = 0.0f;
            if (f3 <= 0.0f || i < (i3 = flexLine.mMainSize)) {
                return;
            }
            float f5 = (i - i3) / f3;
            flexLine.mMainSize = i2 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i7 = 0;
            boolean z3 = false;
            int i8 = 0;
            float f6 = 0.0f;
            while (i7 < flexLine.mItemCount) {
                int i9 = flexLine.mFirstIndex + i7;
                View flexItemAt = flexboxLayoutManager.getFlexItemAt(i9);
                if (flexItemAt != null) {
                    f = f4;
                    if (flexItemAt.getVisibility() != 8) {
                        FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) flexItemAt.getLayoutParams();
                        int i10 = flexboxLayoutManager.mFlexDirection;
                        if (i10 == 0 || i10 == 1) {
                            f2 = f5;
                            boolean z4 = z3;
                            int measuredWidth = flexItemAt.getMeasuredWidth();
                            long[] jArr = (long[]) this.this$0;
                            if (jArr != null) {
                                measuredWidth = (int) jArr[i9];
                            }
                            int measuredHeight = flexItemAt.getMeasuredHeight();
                            long[] jArr2 = (long[]) this.this$0;
                            if (jArr2 != null) {
                                measuredHeight = (int) (jArr2[i9] >> 32);
                            }
                            if (!((boolean[]) this.val$placeHolders)[i9]) {
                                float f7 = layoutParams.mFlexGrow;
                                if (f7 > f) {
                                    float f8 = (f7 * f2) + measuredWidth;
                                    if (i7 == flexLine.mItemCount - 1) {
                                        f8 += f6;
                                        f6 = f;
                                    }
                                    int round = Math.round(f8);
                                    int i11 = layoutParams.mMaxWidth;
                                    if (round > i11) {
                                        ((boolean[]) this.val$placeHolders)[i9] = true;
                                        flexLine.mTotalFlexGrow -= layoutParams.mFlexGrow;
                                        i5 = i11;
                                        z3 = true;
                                    } else {
                                        float f9 = (f8 - round) + f6;
                                        double d3 = f9;
                                        if (d3 > 1.0d) {
                                            i6 = round + 1;
                                            d = d3 - 1.0d;
                                        } else if (d3 < -1.0d) {
                                            i6 = round - 1;
                                            d = d3 + 1.0d;
                                        } else {
                                            i5 = round;
                                            f6 = f9;
                                            z3 = z4;
                                        }
                                        f6 = (float) d;
                                        i5 = i6;
                                        z3 = z4;
                                    }
                                    int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(layoutParams, flexLine.mSumCrossSizeBefore);
                                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
                                    flexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                                    int measuredWidth2 = flexItemAt.getMeasuredWidth();
                                    int measuredHeight2 = flexItemAt.getMeasuredHeight();
                                    updateMeasureCache(i9, makeMeasureSpec, childHeightMeasureSpecInternal, flexItemAt);
                                    flexboxLayoutManager.updateViewCache(flexItemAt, i9);
                                    measuredWidth = measuredWidth2;
                                    measuredHeight = measuredHeight2;
                                    int max = Math.max(i8, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                                    flexLine.mMainSize = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + flexLine.mMainSize;
                                    i4 = max;
                                }
                            }
                            z3 = z4;
                            int max2 = Math.max(i8, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                            flexLine.mMainSize = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + flexLine.mMainSize;
                            i4 = max2;
                        } else {
                            int measuredHeight3 = flexItemAt.getMeasuredHeight();
                            long[] jArr3 = (long[]) this.this$0;
                            if (jArr3 != null) {
                                long j = jArr3[i9];
                                f2 = f5;
                                z2 = z3;
                                measuredHeight3 = (int) (j >> 32);
                            } else {
                                f2 = f5;
                                z2 = z3;
                            }
                            int measuredWidth3 = flexItemAt.getMeasuredWidth();
                            long[] jArr4 = (long[]) this.this$0;
                            if (jArr4 != null) {
                                measuredWidth3 = (int) jArr4[i9];
                            }
                            if (!((boolean[]) this.val$placeHolders)[i9]) {
                                float f10 = layoutParams.mFlexGrow;
                                if (f10 > f) {
                                    float f11 = (f10 * f2) + measuredHeight3;
                                    if (i7 == flexLine.mItemCount - 1) {
                                        f11 += f6;
                                        f6 = f;
                                    }
                                    int round2 = Math.round(f11);
                                    int i12 = layoutParams.mMaxHeight;
                                    if (round2 > i12) {
                                        ((boolean[]) this.val$placeHolders)[i9] = true;
                                        flexLine.mTotalFlexGrow -= layoutParams.mFlexGrow;
                                        round2 = i12;
                                        z3 = true;
                                    } else {
                                        float f12 = (f11 - round2) + f6;
                                        double d4 = f12;
                                        if (d4 > 1.0d) {
                                            round2++;
                                            d2 = d4 - 1.0d;
                                        } else if (d4 < -1.0d) {
                                            round2--;
                                            d2 = d4 + 1.0d;
                                        } else {
                                            f6 = f12;
                                            z3 = z2;
                                        }
                                        f6 = (float) d2;
                                        z3 = z2;
                                    }
                                    int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(layoutParams, flexLine.mSumCrossSizeBefore);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                                    flexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                                    measuredWidth3 = flexItemAt.getMeasuredWidth();
                                    measuredHeight3 = flexItemAt.getMeasuredHeight();
                                    updateMeasureCache(i9, childWidthMeasureSpecInternal, makeMeasureSpec2, flexItemAt);
                                    flexboxLayoutManager.updateViewCache(flexItemAt, i9);
                                    i4 = Math.max(i8, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                                    flexLine.mMainSize = measuredHeight3 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + flexLine.mMainSize;
                                }
                            }
                            z3 = z2;
                            i4 = Math.max(i8, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                            flexLine.mMainSize = measuredHeight3 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + flexLine.mMainSize;
                        }
                        flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i4);
                        i8 = i4;
                        i7++;
                        f5 = f2;
                        f4 = f;
                    }
                } else {
                    f = f4;
                }
                f2 = f5;
                z3 = z3;
                i7++;
                f5 = f2;
                f4 = f;
            }
            if (!z3 || i3 == flexLine.mMainSize) {
                return;
            }
            expandFlexItems(flexLine, i, i2, true);
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void expunge(String str) {
            throw new UnsupportedOperationException("not supported");
        }

        public void fail(Throwable th) {
            int i;
            synchronized (this.val$queryString) {
                try {
                    if (((Throwable) this.val$placeHolders) != null) {
                        return;
                    }
                    this.val$placeHolders = th;
                    MutableObjectList mutableObjectList = (MutableObjectList) this.val$messages;
                    Object[] objArr = mutableObjectList.content;
                    int i2 = mutableObjectList._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        ((AwaiterQueue$Awaiter) objArr[i3]).resumeWithException(th);
                    }
                    ((MutableObjectList) this.val$messages).clear();
                    AtomicInt atomicInt = (AtomicInt) this.val$folder;
                    do {
                        i = atomicInt.get();
                    } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void fetchPart(String str, String str2, Part part, ProgressBodyFactory progressBodyFactory) {
            str.getClass();
            str2.getClass();
            part.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public String findByMessageId(String str, String str2) {
            str.getClass();
            str2.getClass();
            return null;
        }

        public NavDestination findDestination(int i) {
            ArrayDeque arrayDeque = new ArrayDeque();
            NavGraph navGraph = (NavGraph) this.this$0;
            navGraph.getClass();
            arrayDeque.addLast(navGraph);
            while (!arrayDeque.isEmpty()) {
                NavDestination navDestination = (NavDestination) arrayDeque.removeFirst();
                if (navDestination.impl.id == i) {
                    return navDestination;
                }
                if (navDestination instanceof NavGraph) {
                    Iterator it = ((NavGraph) navDestination).iterator();
                    while (true) {
                        NavGraphImpl$iterator$1 navGraphImpl$iterator$1 = (NavGraphImpl$iterator$1) it;
                        if (navGraphImpl$iterator$1.hasNext()) {
                            arrayDeque.addLast((NavDestination) navGraphImpl$iterator$1.next());
                        }
                    }
                }
            }
            return null;
        }

        public void flushAndDispatchAwaiters(Function1 function1) {
            int i;
            synchronized (this.val$queryString) {
                try {
                    MutableObjectList mutableObjectList = (MutableObjectList) this.val$messages;
                    this.val$messages = (MutableObjectList) this.this$0;
                    this.this$0 = mutableObjectList;
                    AtomicInt atomicInt = (AtomicInt) this.val$folder;
                    do {
                        i = atomicInt.get();
                    } while (!atomicInt.compareAndSet(i, ((((i >>> 27) & 15) + 1) & 15) << 27));
                    int i2 = mutableObjectList._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        function1.invoke(mutableObjectList.get(i3));
                    }
                    mutableObjectList.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public int getChildHeightMeasureSpecInternal(FlexboxLayoutManager.LayoutParams layoutParams, int i) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(flexboxLayoutManager.canScrollVertically(), flexboxLayoutManager.mHeight, flexboxLayoutManager.mHeightMode, flexboxLayoutManager.getPaddingBottom() + flexboxLayoutManager.getPaddingTop() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + i, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            int size = View.MeasureSpec.getSize(childMeasureSpec);
            int i2 = layoutParams.mMaxHeight;
            if (size > i2) {
                return View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.getMode(childMeasureSpec));
            }
            int i3 = layoutParams.mMinHeight;
            return size < i3 ? View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(childMeasureSpec)) : childMeasureSpec;
        }

        public int getChildWidthMeasureSpecInternal(FlexboxLayoutManager.LayoutParams layoutParams, int i) {
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int childMeasureSpec = RecyclerView.LayoutManager.getChildMeasureSpec(flexboxLayoutManager.canScrollHorizontally(), flexboxLayoutManager.mWidth, flexboxLayoutManager.mWidthMode, flexboxLayoutManager.getPaddingRight() + flexboxLayoutManager.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + i, ((ViewGroup.MarginLayoutParams) layoutParams).width);
            int size = View.MeasureSpec.getSize(childMeasureSpec);
            int i2 = layoutParams.mMaxWidth;
            if (size > i2) {
                return View.MeasureSpec.makeMeasureSpec(i2, View.MeasureSpec.getMode(childMeasureSpec));
            }
            int i3 = layoutParams.mMinWidth;
            return size < i3 ? View.MeasureSpec.makeMeasureSpec(i3, View.MeasureSpec.getMode(childMeasureSpec)) : childMeasureSpec;
        }

        public float getDownstreamHorizontal(int i, boolean z) {
            Layout layout = (Layout) this.val$queryString;
            int lineEnd = layout.getLineEnd(layout.getLineForOffset(i));
            if (i > lineEnd) {
                i = lineEnd;
            }
            return z ? layout.getPrimaryHorizontal(i) : layout.getSecondaryHorizontal(i);
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public boolean getHasStaleResolvedFonts() {
            ArrayList arrayList = (ArrayList) this.val$messages;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                if (((ParagraphIntrinsicInfo) arrayList.get(i)).intrinsics.getHasStaleResolvedFonts()) {
                    return true;
                }
            }
            return false;
        }

        public float getHorizontalPosition(int i, boolean z, boolean z2) {
            int i2;
            int i3;
            Layout layout = (Layout) this.val$queryString;
            if (!z2) {
                return getDownstreamHorizontal(i, z);
            }
            int lineForOffset = StaticLayoutFactory.getLineForOffset(layout, i, z2);
            int lineStart = layout.getLineStart(lineForOffset);
            int lineEnd = layout.getLineEnd(lineForOffset);
            if (i != lineStart && i != lineEnd) {
                return getDownstreamHorizontal(i, z);
            }
            if (i == 0 || i == layout.getText().length()) {
                return getDownstreamHorizontal(i, z);
            }
            int paragraphForOffset = getParagraphForOffset(i, z2);
            boolean z3 = layout.getParagraphDirection(layout.getLineForOffset(getParagraphStart(paragraphForOffset))) == -1;
            int lineEndToVisibleEnd = lineEndToVisibleEnd(lineEnd, lineStart);
            int paragraphStart = getParagraphStart(paragraphForOffset);
            int i4 = lineStart - paragraphStart;
            int i5 = lineEndToVisibleEnd - paragraphStart;
            Bidi analyzeBidi = analyzeBidi(paragraphForOffset);
            Bidi createLineBidi = analyzeBidi != null ? analyzeBidi.createLineBidi(i4, i5) : null;
            if (createLineBidi == null || createLineBidi.getRunCount() == 1) {
                boolean isRtlCharAt = layout.isRtlCharAt(lineStart);
                if (z || z3 == isRtlCharAt) {
                    z3 = !z3;
                }
                return i == lineStart ? z3 : !z3 ? layout.getLineLeft(lineForOffset) : layout.getLineRight(lineForOffset);
            }
            int runCount = createLineBidi.getRunCount();
            LayoutHelper$BidiRun[] layoutHelper$BidiRunArr = new LayoutHelper$BidiRun[runCount];
            for (int i6 = 0; i6 < runCount; i6++) {
                layoutHelper$BidiRunArr[i6] = new LayoutHelper$BidiRun(createLineBidi.getRunStart(i6) + lineStart, createLineBidi.getRunLimit(i6) + lineStart, createLineBidi.getRunLevel(i6) % 2 == 1);
            }
            int runCount2 = createLineBidi.getRunCount();
            byte[] bArr = new byte[runCount2];
            for (int i7 = 0; i7 < runCount2; i7++) {
                bArr[i7] = (byte) createLineBidi.getRunLevel(i7);
            }
            Bidi.reorderVisually(bArr, 0, layoutHelper$BidiRunArr, 0, runCount);
            if (i == lineStart) {
                int i8 = 0;
                while (true) {
                    if (i8 >= runCount) {
                        i3 = -1;
                        break;
                    }
                    if (layoutHelper$BidiRunArr[i8].start == i) {
                        i3 = i8;
                        break;
                    }
                    i8++;
                }
                boolean z4 = (z || z3 == layoutHelper$BidiRunArr[i3].isRtl) ? !z3 : z3;
                return (i3 == 0 && z4) ? layout.getLineLeft(lineForOffset) : (i3 != runCount - 1 || z4) ? z4 ? layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i3 - 1].start) : layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i3 + 1].start) : layout.getLineRight(lineForOffset);
            }
            int lineEndToVisibleEnd2 = i > lineEndToVisibleEnd ? lineEndToVisibleEnd(i, lineStart) : i;
            int i9 = 0;
            while (true) {
                if (i9 >= runCount) {
                    i2 = -1;
                    break;
                }
                if (layoutHelper$BidiRunArr[i9].end == lineEndToVisibleEnd2) {
                    i2 = i9;
                    break;
                }
                i9++;
            }
            boolean z5 = (z || z3 == layoutHelper$BidiRunArr[i2].isRtl) ? z3 : !z3;
            return (i2 == 0 && z5) ? layout.getLineLeft(lineForOffset) : (i2 != runCount - 1 || z5) ? z5 ? layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i2 - 1].end) : layout.getPrimaryHorizontal(layoutHelper$BidiRunArr[i2 + 1].end) : layout.getLineRight(lineForOffset);
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMaxIntrinsicWidth() {
            return ((Number) ((Lazy) this.this$0).getValue()).floatValue();
        }

        @Override // androidx.compose.ui.text.ParagraphIntrinsics
        public float getMinIntrinsicWidth() {
            return ((Number) ((Lazy) this.val$folder).getValue()).floatValue();
        }

        public int getParagraphForOffset(int i, boolean z) {
            ArrayList arrayList = (ArrayList) this.val$messages;
            int binarySearch$default = IntOffsetKt.binarySearch$default(arrayList, Integer.valueOf(i));
            int i2 = binarySearch$default < 0 ? -(binarySearch$default + 1) : binarySearch$default + 1;
            if (z && i2 > 0) {
                int i3 = i2 - 1;
                if (i == ((Number) arrayList.get(i3)).intValue()) {
                    return i3;
                }
            }
            return i2;
        }

        public int getParagraphStart(int i) {
            if (i == 0) {
                return 0;
            }
            return ((Number) ((ArrayList) this.val$messages).get(i - 1)).intValue();
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsCopy() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsExpunge() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsFlags() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsFolderSubscriptions() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsMove() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsSearchByDate() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsTrashFolder() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean getSupportsUpload() {
            return false;
        }

        @Override // com.fsck.k9.backend.api.Backend
        public boolean isPushCapable() {
            return false;
        }

        public void layoutSingleChildHorizontal(View view, FlexLine flexLine, int i, int i2, int i3, int i4) {
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) view.getLayoutParams();
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int i5 = flexboxLayoutManager.mAlignItems;
            int i6 = layoutParams.mAlignSelf;
            if (i6 != -1) {
                i5 = i6;
            }
            int i7 = flexLine.mCrossSize;
            if (i5 != 0) {
                if (i5 == 1) {
                    if (flexboxLayoutManager.mFlexWrap != 2) {
                        int i8 = i2 + i7;
                        int measuredHeight = i8 - view.getMeasuredHeight();
                        int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                        view.layout(i, measuredHeight - i9, i3, i8 - i9);
                        return;
                    }
                    view.layout(i, view.getMeasuredHeight() + (i2 - i7) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, i3, view.getMeasuredHeight() + (i4 - i7) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                    return;
                }
                if (i5 == 2) {
                    int measuredHeight2 = (((i7 - view.getMeasuredHeight()) + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) / 2;
                    if (flexboxLayoutManager.mFlexWrap != 2) {
                        int i10 = i2 + measuredHeight2;
                        view.layout(i, i10, i3, view.getMeasuredHeight() + i10);
                        return;
                    } else {
                        int i11 = i2 - measuredHeight2;
                        view.layout(i, i11, i3, view.getMeasuredHeight() + i11);
                        return;
                    }
                }
                if (i5 == 3) {
                    int i12 = flexboxLayoutManager.mFlexWrap;
                    int i13 = flexLine.mMaxBaseline;
                    if (i12 != 2) {
                        int max = Math.max(i13 - view.getBaseline(), ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                        view.layout(i, i2 + max, i3, i4 + max);
                        return;
                    } else {
                        int max2 = Math.max(view.getBaseline() + (i13 - view.getMeasuredHeight()), ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                        view.layout(i, i2 - max2, i3, i4 - max2);
                        return;
                    }
                }
                if (i5 != 4) {
                    return;
                }
            }
            if (flexboxLayoutManager.mFlexWrap != 2) {
                int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                view.layout(i, i2 + i14, i3, i4 + i14);
            } else {
                int i15 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                view.layout(i, i2 - i15, i3, i4 - i15);
            }
        }

        public void layoutSingleChildVertical(View view, FlexLine flexLine, boolean z, int i, int i2, int i3, int i4) {
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) view.getLayoutParams();
            int i5 = ((FlexboxLayoutManager) this.val$queryString).mAlignItems;
            int i6 = layoutParams.mAlignSelf;
            if (i6 != -1) {
                i5 = i6;
            }
            int i7 = flexLine.mCrossSize;
            if (i5 != 0) {
                if (i5 == 1) {
                    if (!z) {
                        view.layout(((i + i7) - view.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i2, ((i3 + i7) - view.getMeasuredWidth()) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i4);
                        return;
                    }
                    view.layout(view.getMeasuredWidth() + (i - i7) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i2, view.getMeasuredWidth() + (i3 - i7) + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i4);
                    return;
                }
                if (i5 == 2) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                    int marginStart = ((marginLayoutParams.getMarginStart() + (i7 - view.getMeasuredWidth())) - marginLayoutParams.getMarginEnd()) / 2;
                    if (z) {
                        view.layout(i - marginStart, i2, i3 - marginStart, i4);
                        return;
                    } else {
                        view.layout(i + marginStart, i2, i3 + marginStart, i4);
                        return;
                    }
                }
                if (i5 != 3 && i5 != 4) {
                    return;
                }
            }
            if (z) {
                int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                view.layout(i - i8, i2, i3 - i8, i4);
            } else {
                int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                view.layout(i + i9, i2, i3 + i9, i4);
            }
        }

        public int lineEndToVisibleEnd(int i, int i2) {
            while (i > i2) {
                char charAt = ((Layout) this.val$queryString).getText().charAt(i - 1);
                if (charAt != ' ' && charAt != '\n' && charAt != 5760 && ((Intrinsics.compare((int) charAt, 8192) < 0 || Intrinsics.compare((int) charAt, 8202) > 0 || charAt == 8199) && charAt != 8287 && charAt != 12288)) {
                    return i;
                }
                i--;
            }
            return i;
        }

        @Override // app.k9mail.legacy.mailstore.MessageMapper
        public Object map(MessageDetailsAccessor messageDetailsAccessor) {
            String str;
            String obj;
            int i;
            String str2 = "";
            switch (this.$r8$classId) {
                case 11:
                    MessageHelper messageHelper = (MessageHelper) this.val$queryString;
                    LegacyAccount legacyAccount = (LegacyAccount) this.val$placeHolders;
                    List fromAddresses = messageDetailsAccessor.getFromAddresses();
                    List toAddresses = messageDetailsAccessor.getToAddresses();
                    PriorityQueue preview = messageDetailsAccessor.getPreview();
                    int i2 = preview.size;
                    if (i2 != 2) {
                        str = "";
                    } else {
                        if (i2 != 2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Preview is not available");
                            return null;
                        }
                        str = (String) preview.array;
                    }
                    long id = ((legacyAccount.accountNumber + 1) << 52) + messageDetailsAccessor.getId();
                    boolean shouldShowRecipients = IntRectKt.shouldShowRecipients((DefaultOutboxFolderManager) this.val$messages, legacyAccount, messageDetailsAccessor.getFolderId());
                    Address address = (Address) (shouldShowRecipients ? CollectionsKt.firstOrNull(toAddresses) : CollectionsKt.firstOrNull(fromAddresses));
                    if (shouldShowRecipients) {
                        DisplayMessageListSettings displayMessageListSettings = (DisplayMessageListSettings) ((DefaultMessageListPreferencesManager) this.val$folder).getConfig();
                        obj = messageHelper.getRecipientDisplayNames((Address[]) toAddresses.toArray(new Address[0]), displayMessageListSettings.isShowCorrespondentNames, displayMessageListSettings.isChangeContactNameColor, displayMessageListSettings.contactNameColor).toString();
                    } else {
                        obj = messageHelper.getSenderDisplayName(address).toString();
                    }
                    String str3 = obj;
                    long messageDate = messageDetailsAccessor.getMessageDate();
                    Calendar calendar = (Calendar) this.this$0;
                    calendar.setTimeInMillis(messageDate);
                    String format = String.format("%d %s", Arrays.copyOf(new Object[]{Integer.valueOf(calendar.get(5)), calendar.getDisplayName(2, 1, Locale.getDefault())}, 2));
                    String subject = messageDetailsAccessor.getSubject();
                    String str4 = subject == null ? "" : subject;
                    str.getClass();
                    return new MessageListItem(str3, format, str4, str, messageDetailsAccessor.isRead(), messageDetailsAccessor.getHasAttachments(), messageDetailsAccessor.getThreadCount(), legacyAccount.profile.color, new MessageReference(messageDetailsAccessor.getFolderId(), legacyAccount.uuid, messageDetailsAccessor.getMessageServerId()), id, messageDetailsAccessor.getSubject(), messageDetailsAccessor.getMessageDate(), messageDetailsAccessor.getInternalDate(), messageDetailsAccessor.isStarred(), messageDetailsAccessor.getId());
                default:
                    LegacyAccount legacyAccount2 = (LegacyAccount) this.val$placeHolders;
                    List fromAddresses2 = messageDetailsAccessor.getFromAddresses();
                    List toAddresses2 = messageDetailsAccessor.getToAddresses();
                    PriorityQueue preview2 = messageDetailsAccessor.getPreview();
                    int i3 = preview2.size;
                    boolean z = i3 == 3;
                    if (i3 == 2) {
                        if (i3 != 2) {
                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Preview is not available");
                            return null;
                        }
                        str2 = (String) preview2.array;
                    }
                    String str5 = str2;
                    long id2 = ((legacyAccount2.accountNumber + 1) << 52) + messageDetailsAccessor.getId();
                    boolean shouldShowRecipients2 = IntRectKt.shouldShowRecipients((DefaultOutboxFolderManager) this.val$messages, legacyAccount2, messageDetailsAccessor.getFolderId());
                    Address address2 = (Address) (shouldShowRecipients2 ? CollectionsKt.firstOrNull(toAddresses2) : CollectionsKt.firstOrNull(fromAddresses2));
                    DisplayMessageListSettings displayMessageListSettings2 = (DisplayMessageListSettings) ((DefaultMessageListPreferencesManager) this.val$folder).getConfig();
                    MessageHelper messageHelper2 = (MessageHelper) this.val$queryString;
                    CharSequence recipientDisplayNames = shouldShowRecipients2 ? messageHelper2.getRecipientDisplayNames((Address[]) toAddresses2.toArray(new Address[0]), displayMessageListSettings2.isShowCorrespondentNames, displayMessageListSettings2.isChangeContactNameColor, displayMessageListSettings2.contactNameColor) : messageHelper2.getSenderDisplayName(address2);
                    String subject2 = messageDetailsAccessor.getSubject();
                    int threadCount = messageDetailsAccessor.getThreadCount();
                    long messageDate2 = messageDetailsAccessor.getMessageDate();
                    long internalDate = messageDetailsAccessor.getInternalDate();
                    str5.getClass();
                    boolean isRead = messageDetailsAccessor.isRead();
                    boolean isStarred = messageDetailsAccessor.isStarred();
                    boolean isAnswered = messageDetailsAccessor.isAnswered();
                    boolean isForwarded = messageDetailsAccessor.isForwarded();
                    boolean hasAttachments = messageDetailsAccessor.getHasAttachments();
                    long folderId = messageDetailsAccessor.getFolderId();
                    String messageServerId = messageDetailsAccessor.getMessageServerId();
                    long id3 = messageDetailsAccessor.getId();
                    long threadRoot = messageDetailsAccessor.getThreadRoot();
                    if (address2 != null) {
                        ContactLetterBitmapCreator contactLetterBitmapCreator = (ContactLetterBitmapCreator) this.this$0;
                        Integer valueOf = contactLetterBitmapCreator != null ? Integer.valueOf(contactLetterBitmapCreator.calcUnknownContactColor(address2)) : null;
                        if (valueOf != null) {
                            i = valueOf.intValue();
                            return new com.fsck.k9.ui.messagelist.MessageListItem(legacyAccount2, subject2, threadCount, messageDate2, internalDate, recipientDisplayNames, address2, "undefined", str5, z, isRead, isStarred, isAnswered, isForwarded, hasAttachments, id2, folderId, messageServerId, id3, threadRoot, i);
                        }
                    }
                    i = -1;
                    return new com.fsck.k9.ui.messagelist.MessageListItem(legacyAccount2, subject2, threadCount, messageDate2, internalDate, recipientDisplayNames, address2, "undefined", str5, z, isRead, isStarred, isAnswered, isForwarded, hasAttachments, id2, folderId, messageServerId, id3, threadRoot, i);
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void markAllAsRead(String str) {
            str.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public Map moveMessages(String str, String str2, List list) {
            str.getClass();
            str2.getClass();
            list.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public Map moveMessagesAndMarkAsRead(String str, String str2, List list) {
            str.getClass();
            str2.getClass();
            list.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public String refreshFolderList() {
            Dispatcher dispatcher = (Dispatcher) ((Configuration.Builder) this.val$folder).workerFactory;
            ListenableMessageStore listenableMessageStore = (ListenableMessageStore) dispatcher.executorServiceOrNull;
            if (((K9MessageStore) listenableMessageStore.messageStore.val$folders).getFolders(new Regex$$ExternalSyntheticBUOutline0(6)).contains("INBOX")) {
                return null;
            }
            K9BackendStorage$K9BackendFolderUpdater k9BackendStorage$K9BackendFolderUpdater = new K9BackendStorage$K9BackendFolderUpdater(dispatcher);
            try {
                k9BackendStorage$K9BackendFolderUpdater.createFolders(IntOffsetKt.listOf(new FolderInfo("INBOX", "INBOX", FolderType.INBOX)));
                k9BackendStorage$K9BackendFolderUpdater.close();
                return null;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(k9BackendStorage$K9BackendFolderUpdater, th);
                    throw th2;
                }
            }
        }

        public void releaseUnprocessedElements(Throwable th) {
            ArrayDeque arrayDeque = (ArrayDeque) this.this$0;
            BufferedChannel bufferedChannel = (BufferedChannel) this.val$messages;
            if (bufferedChannel.closeOrCancelImpl(th, false)) {
                for (Object mo1015tryReceivePtdJZtk = bufferedChannel.mo1015tryReceivePtdJZtk(); !(mo1015tryReceivePtdJZtk instanceof ChannelResult.Failed); mo1015tryReceivePtdJZtk = bufferedChannel.mo1015tryReceivePtdJZtk()) {
                    ChannelResult.m1018getOrThrowimpl(mo1015tryReceivePtdJZtk);
                    arrayDeque.addLast(mo1015tryReceivePtdJZtk);
                }
                if (arrayDeque.isEmpty()) {
                    return;
                }
                ((Function1) this.val$queryString).invoke(new ArrayList(arrayDeque));
                arrayDeque.clear();
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public List search(String str, String str2) {
            str.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void sendMessage(MimeMessage mimeMessage) {
            ((SmtpTransport) this.val$queryString).sendMessage(mimeMessage);
        }

        public void set(Object obj, String str) {
            str.getClass();
            ((LinkedHashMap) this.val$queryString).put(str, obj);
            MutableStateFlow mutableStateFlow = (MutableStateFlow) ((LinkedHashMap) this.val$folder).get(str);
            if (mutableStateFlow != null) {
                ((StateFlowImpl) mutableStateFlow).setValue(obj);
            }
            MutableStateFlow mutableStateFlow2 = (MutableStateFlow) ((LinkedHashMap) this.val$messages).get(str);
            if (mutableStateFlow2 != null) {
                ((StateFlowImpl) mutableStateFlow2).setValue(obj);
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public void setFlag(String str, List list, Flag flag, boolean z) {
            list.getClass();
            flag.getClass();
            ((CommandSetFlag) this.val$messages).setFlag(str, list, flag, z);
        }

        public void setVisible(boolean z) {
            ViewAnimator viewAnimator = (ViewAnimator) this.val$messages;
            ((View) this.val$folder).setVisibility(z ? 0 : 8);
            ((RecipientSelectView) this.val$queryString).setVisibility(z ? 0 : 8);
            ((View) this.val$placeHolders).setVisibility(z ? 0 : 8);
            if (z && viewAnimator.getDisplayedChild() == 0) {
                viewAnimator.setDisplayedChild(1);
            } else if (viewAnimator.getDisplayedChild() == 1) {
                viewAnimator.setDisplayedChild(0);
            }
        }

        public void shrinkFlexItems(FlexLine flexLine, int i, int i2, boolean z) {
            float f;
            float f2;
            int i3;
            boolean z2;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int i4 = flexLine.mMainSize;
            float f3 = flexLine.mTotalFlexShrink;
            float f4 = 0.0f;
            if (f3 <= 0.0f || i > i4) {
                return;
            }
            float f5 = (i4 - i) / f3;
            flexLine.mMainSize = i2 + flexLine.mDividerLengthInMainSize;
            if (!z) {
                flexLine.mCrossSize = Integer.MIN_VALUE;
            }
            int i5 = 0;
            boolean z3 = false;
            int i6 = 0;
            float f6 = 0.0f;
            while (i5 < flexLine.mItemCount) {
                int i7 = flexLine.mFirstIndex + i5;
                View flexItemAt = flexboxLayoutManager.getFlexItemAt(i7);
                if (flexItemAt != null) {
                    f = f4;
                    if (flexItemAt.getVisibility() != 8) {
                        FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) flexItemAt.getLayoutParams();
                        int i8 = flexboxLayoutManager.mFlexDirection;
                        if (i8 == 0 || i8 == 1) {
                            f2 = f5;
                            boolean z4 = z3;
                            int measuredWidth = flexItemAt.getMeasuredWidth();
                            long[] jArr = (long[]) this.this$0;
                            if (jArr != null) {
                                measuredWidth = (int) jArr[i7];
                            }
                            int measuredHeight = flexItemAt.getMeasuredHeight();
                            long[] jArr2 = (long[]) this.this$0;
                            if (jArr2 != null) {
                                measuredHeight = (int) (jArr2[i7] >> 32);
                            }
                            if (!((boolean[]) this.val$placeHolders)[i7]) {
                                float f7 = layoutParams.mFlexShrink;
                                if (f7 > f) {
                                    float f8 = measuredWidth - (f7 * f2);
                                    if (i5 == flexLine.mItemCount - 1) {
                                        f8 += f6;
                                        f6 = f;
                                    }
                                    int round = Math.round(f8);
                                    int i9 = layoutParams.mMinWidth;
                                    if (round < i9) {
                                        ((boolean[]) this.val$placeHolders)[i7] = true;
                                        flexLine.mTotalFlexShrink -= layoutParams.mFlexShrink;
                                        round = i9;
                                        z3 = true;
                                    } else {
                                        float f9 = (f8 - round) + f6;
                                        double d = f9;
                                        if (d > 1.0d) {
                                            round++;
                                            f9 -= 1.0f;
                                        } else if (d < -1.0d) {
                                            round--;
                                            f9 += 1.0f;
                                        }
                                        f6 = f9;
                                        z3 = z4;
                                    }
                                    int childHeightMeasureSpecInternal = getChildHeightMeasureSpecInternal(layoutParams, flexLine.mSumCrossSizeBefore);
                                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(round, 1073741824);
                                    flexItemAt.measure(makeMeasureSpec, childHeightMeasureSpecInternal);
                                    int measuredWidth2 = flexItemAt.getMeasuredWidth();
                                    int measuredHeight2 = flexItemAt.getMeasuredHeight();
                                    updateMeasureCache(i7, makeMeasureSpec, childHeightMeasureSpecInternal, flexItemAt);
                                    flexboxLayoutManager.updateViewCache(flexItemAt, i7);
                                    measuredWidth = measuredWidth2;
                                    measuredHeight = measuredHeight2;
                                    int max = Math.max(i6, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                                    flexLine.mMainSize = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + flexLine.mMainSize;
                                    i3 = max;
                                }
                            }
                            z3 = z4;
                            int max2 = Math.max(i6, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredHeight + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                            flexLine.mMainSize = measuredWidth + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + flexLine.mMainSize;
                            i3 = max2;
                        } else {
                            int measuredHeight3 = flexItemAt.getMeasuredHeight();
                            long[] jArr3 = (long[]) this.this$0;
                            if (jArr3 != null) {
                                long j = jArr3[i7];
                                f2 = f5;
                                z2 = z3;
                                measuredHeight3 = (int) (j >> 32);
                            } else {
                                f2 = f5;
                                z2 = z3;
                            }
                            int measuredWidth3 = flexItemAt.getMeasuredWidth();
                            long[] jArr4 = (long[]) this.this$0;
                            if (jArr4 != null) {
                                measuredWidth3 = (int) jArr4[i7];
                            }
                            if (!((boolean[]) this.val$placeHolders)[i7]) {
                                float f10 = layoutParams.mFlexShrink;
                                if (f10 > f) {
                                    float f11 = measuredHeight3 - (f10 * f2);
                                    if (i5 == flexLine.mItemCount - 1) {
                                        f11 += f6;
                                        f6 = f;
                                    }
                                    int round2 = Math.round(f11);
                                    int i10 = layoutParams.mMinHeight;
                                    if (round2 < i10) {
                                        ((boolean[]) this.val$placeHolders)[i7] = true;
                                        flexLine.mTotalFlexShrink -= layoutParams.mFlexShrink;
                                        round2 = i10;
                                        z2 = true;
                                    } else {
                                        float f12 = (f11 - round2) + f6;
                                        double d2 = f12;
                                        if (d2 > 1.0d) {
                                            round2++;
                                            f12 -= 1.0f;
                                        } else if (d2 < -1.0d) {
                                            round2--;
                                            f12 += 1.0f;
                                        }
                                        f6 = f12;
                                    }
                                    int childWidthMeasureSpecInternal = getChildWidthMeasureSpecInternal(layoutParams, flexLine.mSumCrossSizeBefore);
                                    int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(round2, 1073741824);
                                    flexItemAt.measure(childWidthMeasureSpecInternal, makeMeasureSpec2);
                                    measuredWidth3 = flexItemAt.getMeasuredWidth();
                                    measuredHeight3 = flexItemAt.getMeasuredHeight();
                                    updateMeasureCache(i7, childWidthMeasureSpecInternal, makeMeasureSpec2, flexItemAt);
                                    flexboxLayoutManager.updateViewCache(flexItemAt, i7);
                                }
                            }
                            z3 = z2;
                            i3 = Math.max(i6, flexboxLayoutManager.getDecorationLengthCrossAxis(flexItemAt) + measuredWidth3 + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                            flexLine.mMainSize = measuredHeight3 + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + flexLine.mMainSize;
                        }
                        flexLine.mCrossSize = Math.max(flexLine.mCrossSize, i3);
                        i6 = i3;
                        i5++;
                        f5 = f2;
                        f4 = f;
                    }
                } else {
                    f = f4;
                }
                f2 = f5;
                z3 = z3;
                i5++;
                f5 = f2;
                f4 = f;
            }
            if (!z3 || i4 == flexLine.mMainSize) {
                return;
            }
            shrinkFlexItems(flexLine, i, i2, true);
        }

        public void silentlyAddAddresses(Address[] addressArr) {
            RecipientSelectView recipientSelectView = (RecipientSelectView) this.val$queryString;
            LinkedHashSet linkedHashSet = (LinkedHashSet) this.this$0;
            Iterator it = linkedHashSet.iterator();
            while (it.hasNext()) {
                recipientSelectView.removeTextChangedListener((TextWatcher) it.next());
            }
            ArrayList arrayList = new ArrayList(addressArr.length);
            for (Address address : addressArr) {
                arrayList.add(new RecipientSelectView.Recipient(address));
            }
            RecipientSelectView.Recipient[] recipientArr = (RecipientSelectView.Recipient[]) arrayList.toArray(new RecipientSelectView.Recipient[0]);
            recipientSelectView.addRecipients((RecipientSelectView.Recipient[]) Arrays.copyOf(recipientArr, recipientArr.length));
            Iterator it2 = linkedHashSet.iterator();
            while (it2.hasNext()) {
                recipientSelectView.addTextChangedListener((TextWatcher) it2.next());
            }
        }

        public void stretchViewHorizontally(View view, int i, int i2) {
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) view.getLayoutParams();
            int i3 = (i - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int min = Math.min(Math.max(i3 - flexboxLayoutManager.getDecorationLengthCrossAxis(view), layoutParams.mMinWidth), layoutParams.mMaxWidth);
            long[] jArr = (long[]) this.this$0;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i2] >> 32) : view.getMeasuredHeight(), 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
            view.measure(makeMeasureSpec2, makeMeasureSpec);
            updateMeasureCache(i2, makeMeasureSpec2, makeMeasureSpec, view);
            flexboxLayoutManager.updateViewCache(view, i2);
        }

        public void stretchViewVertically(View view, int i, int i2) {
            FlexboxLayoutManager.LayoutParams layoutParams = (FlexboxLayoutManager.LayoutParams) view.getLayoutParams();
            int i3 = (i - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            int min = Math.min(Math.max(i3 - flexboxLayoutManager.getDecorationLengthCrossAxis(view), layoutParams.mMinHeight), layoutParams.mMaxHeight);
            long[] jArr = (long[]) this.this$0;
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i2] : view.getMeasuredWidth(), 1073741824);
            int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(min, 1073741824);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            updateMeasureCache(i2, makeMeasureSpec, makeMeasureSpec2, view);
            flexboxLayoutManager.updateViewCache(view, i2);
        }

        public void stretchViews(int i) {
            View flexItemAt;
            int i2;
            FlexboxLayoutManager flexboxLayoutManager = (FlexboxLayoutManager) this.val$queryString;
            if (i >= flexboxLayoutManager.mState.getItemCount()) {
                return;
            }
            int i3 = flexboxLayoutManager.mFlexDirection;
            if (flexboxLayoutManager.mAlignItems != 4) {
                for (FlexLine flexLine : flexboxLayoutManager.mFlexLines) {
                    Iterator it = flexLine.mIndicesAlignSelfStretch.iterator();
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        View flexItemAt2 = flexboxLayoutManager.getFlexItemAt(num.intValue());
                        if (i3 == 0 || i3 == 1) {
                            stretchViewVertically(flexItemAt2, flexLine.mCrossSize, num.intValue());
                        } else {
                            if (i3 != 2 && i3 != 3) {
                                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Invalid flex direction: ", i3));
                                return;
                            }
                            stretchViewHorizontally(flexItemAt2, flexLine.mCrossSize, num.intValue());
                        }
                    }
                }
                return;
            }
            int[] iArr = (int[]) this.val$folder;
            List list = flexboxLayoutManager.mFlexLines;
            int size = list.size();
            for (int i4 = iArr != null ? iArr[i] : 0; i4 < size; i4++) {
                FlexLine flexLine2 = (FlexLine) list.get(i4);
                int i5 = flexLine2.mItemCount;
                for (int i6 = 0; i6 < i5; i6++) {
                    int i7 = flexLine2.mFirstIndex + i6;
                    if (i6 < flexboxLayoutManager.mState.getItemCount() && (flexItemAt = flexboxLayoutManager.getFlexItemAt(i7)) != null && flexItemAt.getVisibility() != 8 && ((i2 = ((FlexboxLayoutManager.LayoutParams) flexItemAt.getLayoutParams()).mAlignSelf) == -1 || i2 == 4)) {
                        if (i3 == 0 || i3 == 1) {
                            stretchViewVertically(flexItemAt, flexLine2.mCrossSize, i7);
                        } else {
                            if (i3 != 2 && i3 != 3) {
                                UriKt$$ExternalSyntheticBUOutline0.m(CameraDevices$CC.m("Invalid flex direction: ", i3));
                                return;
                            }
                            stretchViewHorizontally(flexItemAt, flexLine2.mCrossSize, i7);
                        }
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:100:0x02d2  */
        /* JADX WARN: Removed duplicated region for block: B:107:0x0276  */
        /* JADX WARN: Removed duplicated region for block: B:112:0x02c0  */
        /* JADX WARN: Removed duplicated region for block: B:114:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x027b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x02cb  */
        /* JADX WARN: Removed duplicated region for block: B:96:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r4v10 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v15 */
        /* JADX WARN: Type inference failed for: r4v9, types: [app.k9mail.legacy.mailstore.ListenableMessageStore] */
        @Override // com.fsck.k9.backend.api.Backend
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void sync(java.lang.String r29, com.fsck.k9.backend.api.SyncConfig r30, androidx.room.RoomConnectionManager r31) {
            /*
                Method dump skipped, instructions count: 726
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalStore.AnonymousClass7.sync(java.lang.String, com.fsck.k9.backend.api.SyncConfig, androidx.room.RoomConnectionManager):void");
        }

        public JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            AtomicFU.put(jSONObject, "authorizationEndpoint", ((Uri) this.val$queryString).toString());
            AtomicFU.put(jSONObject, "tokenEndpoint", ((Uri) this.val$placeHolders).toString());
            Uri uri = (Uri) this.val$messages;
            if (uri != null) {
                AtomicFU.put(jSONObject, "registrationEndpoint", uri.toString());
            }
            Uri uri2 = (Uri) this.val$folder;
            if (uri2 != null) {
                AtomicFU.put(jSONObject, "endSessionEndpoint", uri2.toString());
            }
            AuthorizationServiceDiscovery authorizationServiceDiscovery = (AuthorizationServiceDiscovery) this.this$0;
            if (authorizationServiceDiscovery != null) {
                AtomicFU.put(jSONObject, "discoveryDoc", authorizationServiceDiscovery.docJson);
            }
            return jSONObject;
        }

        public boolean tryEmit(GraphCommand graphCommand) {
            return !(((BufferedChannel) this.val$messages).mo1016trySendJP2dKIU(graphCommand) instanceof ChannelResult.Failed);
        }

        public void updateMeasureCache(int i, int i2, int i3, View view) {
            long[] jArr = (long[]) this.val$messages;
            if (jArr != null) {
                jArr[i] = (i2 & 4294967295L) | (i3 << 32);
            }
            long[] jArr2 = (long[]) this.this$0;
            if (jArr2 != null) {
                jArr2[i] = (view.getMeasuredHeight() << 32) | (4294967295L & view.getMeasuredWidth());
            }
        }

        @Override // com.fsck.k9.backend.api.Backend
        public String uploadMessage(String str, LocalMessage localMessage) {
            str.getClass();
            throw new UnsupportedOperationException("not supported");
        }

        public void verifyAllDestinations() {
            Iterator it = ((ArrayList) this.val$messages).iterator();
            while (it.hasNext()) {
                int i = ((NavDeepLinkBuilder$DeepLinkDestination) it.next()).destinationId;
                if (findDestination(i) == null) {
                    int i2 = NavDestination.$r8$clinit;
                    Regex$$ExternalSyntheticBUOutline0.m((NavGraph) this.this$0, CameraDevices$CC.m31m("Navigation destination ", OperationKt.getDisplayName((NavContext) this.val$placeHolders, i), " cannot be found in the navigation graph "));
                    return;
                }
            }
        }

        public AnonymousClass7(MessageHelper messageHelper, LegacyAccount legacyAccount, DefaultMessageListPreferencesManager defaultMessageListPreferencesManager, DefaultOutboxFolderManager defaultOutboxFolderManager) {
            this.$r8$classId = 11;
            this.val$queryString = messageHelper;
            this.val$placeHolders = legacyAccount;
            this.val$folder = defaultMessageListPreferencesManager;
            this.val$messages = defaultOutboxFolderManager;
            Calendar calendar = Calendar.getInstance();
            calendar.getClass();
            this.this$0 = calendar;
        }

        public AnonymousClass7(MessageCompose messageCompose) {
            this.$r8$classId = 12;
            View findViewById = messageCompose.findViewById(R.id.reply_to);
            findViewById.getClass();
            this.val$queryString = (RecipientSelectView) findViewById;
            View findViewById2 = messageCompose.findViewById(R.id.reply_to_wrapper);
            findViewById2.getClass();
            this.val$placeHolders = findViewById2;
            View findViewById3 = messageCompose.findViewById(R.id.reply_to_divider);
            findViewById3.getClass();
            this.val$folder = findViewById3;
            View findViewById4 = messageCompose.findViewById(R.id.reply_to_expander_container);
            findViewById4.getClass();
            this.val$messages = (ViewAnimator) findViewById4;
            View findViewById5 = messageCompose.findViewById(R.id.reply_to_expander);
            findViewById5.getClass();
            this.this$0 = new LinkedHashSet();
            final int i = 0;
            findViewById5.setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.activity.compose.ReplyToView$$ExternalSyntheticLambda0
                public final /* synthetic */ LocalStore.AnonymousClass7 f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i2 = i;
                    LocalStore.AnonymousClass7 anonymousClass7 = this.f$0;
                    switch (i2) {
                        case 0:
                            anonymousClass7.setVisible(true);
                            ((RecipientSelectView) anonymousClass7.val$queryString).requestFocus();
                            break;
                        default:
                            ((RecipientSelectView) anonymousClass7.val$queryString).requestFocus();
                            break;
                    }
                }
            });
            final int i2 = 1;
            messageCompose.findViewById(R.id.reply_to_label).setOnClickListener(new View.OnClickListener(this) { // from class: com.fsck.k9.activity.compose.ReplyToView$$ExternalSyntheticLambda0
                public final /* synthetic */ LocalStore.AnonymousClass7 f$0;

                {
                    this.f$0 = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i22 = i2;
                    LocalStore.AnonymousClass7 anonymousClass7 = this.f$0;
                    switch (i22) {
                        case 0:
                            anonymousClass7.setVisible(true);
                            ((RecipientSelectView) anonymousClass7.val$queryString).requestFocus();
                            break;
                        default:
                            ((RecipientSelectView) anonymousClass7.val$queryString).requestFocus();
                            break;
                    }
                }
            });
        }

        public AnonymousClass7(String str, Dispatcher dispatcher, Pop3Store pop3Store, SmtpTransport smtpTransport) {
            this.$r8$classId = 13;
            this.val$queryString = smtpTransport;
            this.val$placeHolders = new ImapSync(str, dispatcher, pop3Store, 16);
            this.val$folder = new Configuration.Builder(21, dispatcher);
            this.val$messages = new CommandSetFlag(pop3Store);
            this.this$0 = new Base64Util(28, dispatcher, pop3Store);
        }

        public AnonymousClass7(Map map) {
            this.$r8$classId = 8;
            map.getClass();
            this.val$queryString = new LinkedHashMap(map);
            this.val$placeHolders = new LinkedHashMap();
            this.val$folder = new LinkedHashMap();
            this.val$messages = new LinkedHashMap();
            this.this$0 = new FragmentManager$$ExternalSyntheticLambda6(2, this);
        }

        public AnonymousClass7(AsyncTimeout.Companion companion, Scope scope, ClassReference classReference, Qualifier qualifier, ParametersHolder parametersHolder) {
            this.$r8$classId = 21;
            companion.getClass();
            scope.getClass();
            this.val$queryString = companion;
            this.val$placeHolders = scope;
            this.val$folder = classReference;
            this.val$messages = qualifier;
            this.this$0 = parametersHolder;
            KClassExtKt.getFullName(classReference);
            Objects.toString(qualifier);
        }

        public AnonymousClass7(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 5:
                    this.val$queryString = new Object();
                    this.val$folder = new AtomicInt(0);
                    this.val$messages = new MutableObjectList();
                    this.this$0 = new MutableObjectList();
                    break;
            }
        }

        public AnonymousClass7(Context context, Dispatcher dispatcher) {
            Object obj;
            this.$r8$classId = 10;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            BatteryNotLowTracker batteryNotLowTracker = new BatteryNotLowTracker(applicationContext, dispatcher, 1);
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            BatteryNotLowTracker batteryNotLowTracker2 = new BatteryNotLowTracker(applicationContext2, dispatcher, 0);
            int i = Build.VERSION.SDK_INT;
            if (i < 28) {
                Context applicationContext3 = context.getApplicationContext();
                applicationContext3.getClass();
                String str = NetworkStateTrackerKt.TAG;
                if (i >= 24) {
                    obj = new NetworkStateTrackerPre28(applicationContext3, dispatcher);
                } else {
                    obj = new NetworkStateTrackerPre24(applicationContext3, dispatcher);
                }
            } else {
                obj = null;
            }
            Context applicationContext4 = context.getApplicationContext();
            applicationContext4.getClass();
            BatteryNotLowTracker batteryNotLowTracker3 = new BatteryNotLowTracker(applicationContext4, dispatcher, 2);
            this.val$queryString = context;
            this.val$placeHolders = batteryNotLowTracker;
            this.val$folder = batteryNotLowTracker2;
            this.val$messages = obj;
            this.this$0 = batteryNotLowTracker3;
        }

        public AnonymousClass7(Layout layout) {
            this.$r8$classId = 7;
            this.val$queryString = layout;
            ArrayList arrayList = new ArrayList();
            int i = 0;
            do {
                int indexOf$default = StringsKt.indexOf$default(((Layout) this.val$queryString).getText(), '\n', i, 4);
                i = indexOf$default < 0 ? ((Layout) this.val$queryString).getText().length() : indexOf$default + 1;
                arrayList.add(Integer.valueOf(i));
            } while (i < ((Layout) this.val$queryString).getText().length());
            this.val$messages = arrayList;
            int size = arrayList.size();
            ArrayList arrayList2 = new ArrayList(size);
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(null);
            }
            this.val$placeHolders = arrayList2;
            this.val$folder = new boolean[((ArrayList) this.val$messages).size()];
            ((ArrayList) this.val$messages).size();
        }

        public AnonymousClass7(Context context, MessagingController messagingController, MessageViewFragment messageViewFragment, AttachmentViewInfo attachmentViewInfo) {
            this.$r8$classId = 16;
            this.val$queryString = context;
            this.val$placeHolders = messagingController;
            this.val$folder = messageViewFragment;
            this.val$messages = attachmentViewInfo;
            this.this$0 = new NavContext(context, 14);
        }

        public /* synthetic */ AnonymousClass7(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i) {
            this.$r8$classId = i;
            this.val$queryString = obj;
            this.val$placeHolders = obj2;
            this.val$folder = obj3;
            this.val$messages = obj4;
            this.this$0 = obj5;
        }

        public AnonymousClass7(NavHostController navHostController) {
            Intent launchIntentForPackage;
            this.$r8$classId = 9;
            Context context = navHostController.context;
            context.getClass();
            this.val$queryString = context;
            this.val$placeHolders = new NavContext(context, 0);
            Activity activity = (Activity) SequencesKt.firstOrNull(SequencesKt.filterNotNull(new TakeWhileSequence(SequencesKt.generateSequence(context, new RoomDatabase$$ExternalSyntheticLambda0(12)), new RoomDatabase$$ExternalSyntheticLambda0(13), 2)));
            if (activity != null) {
                launchIntentForPackage = new Intent(context, activity.getClass());
            } else {
                launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(context.getPackageName());
                if (launchIntentForPackage == null) {
                    launchIntentForPackage = new Intent();
                }
            }
            launchIntentForPackage.addFlags(268468224);
            this.val$folder = launchIntentForPackage;
            this.val$messages = new ArrayList();
            this.this$0 = navHostController.impl.getGraph$navigation_runtime_release();
        }

        public AnonymousClass7(Threads threads, CameraGraph$Config cameraGraph$Config, StreamGraphImpl streamGraphImpl, Camera2Quirks camera2Quirks, StrictMode strictMode) {
            this.$r8$classId = 1;
            threads.getClass();
            cameraGraph$Config.getClass();
            camera2Quirks.getClass();
            strictMode.getClass();
            this.val$queryString = threads;
            this.val$placeHolders = cameraGraph$Config;
            this.val$folder = streamGraphImpl;
            this.val$messages = camera2Quirks;
            this.this$0 = strictMode;
        }

        public AnonymousClass7(InvalidationTracker$implementation$1 invalidationTracker$implementation$1, MessageViewFragment$onCreate$1 messageViewFragment$onCreate$1) {
            this.$r8$classId = 2;
            this.val$queryString = invalidationTracker$implementation$1;
            this.val$placeHolders = messageViewFragment$onCreate$1;
            this.val$folder = AtomicFU.atomic(false);
            this.val$messages = Cookie.Companion.Channel$default(Integer.MAX_VALUE, null, new TorchControl$$ExternalSyntheticLambda1(6, this), 2);
            this.this$0 = new ArrayDeque();
        }

        public AnonymousClass7(CameraInternal cameraInternal, CameraInternal cameraInternal2, SurfaceProcessorInternal surfaceProcessorInternal) {
            this.$r8$classId = 4;
            this.val$placeHolders = cameraInternal;
            this.val$folder = cameraInternal2;
            this.val$queryString = surfaceProcessorInternal;
        }

        public AnonymousClass7(FlexboxLayoutManager flexboxLayoutManager) {
            this.$r8$classId = 18;
            this.val$queryString = flexboxLayoutManager;
        }

        public AnonymousClass7(Uri uri, Uri uri2, Uri uri3, Uri uri4) {
            this.$r8$classId = 19;
            uri.getClass();
            this.val$queryString = uri;
            uri2.getClass();
            this.val$placeHolders = uri2;
            this.val$messages = uri3;
            this.val$folder = uri4;
            this.this$0 = null;
        }

        public AnonymousClass7(AuthorizationServiceDiscovery authorizationServiceDiscovery) {
            this.$r8$classId = 19;
            this.this$0 = authorizationServiceDiscovery;
            this.val$queryString = (Uri) authorizationServiceDiscovery.get(AuthorizationServiceDiscovery.AUTHORIZATION_ENDPOINT);
            this.val$placeHolders = (Uri) authorizationServiceDiscovery.get(AuthorizationServiceDiscovery.TOKEN_ENDPOINT);
            this.val$messages = (Uri) authorizationServiceDiscovery.get(AuthorizationServiceDiscovery.REGISTRATION_ENDPOINT);
            this.val$folder = (Uri) authorizationServiceDiscovery.get(AuthorizationServiceDiscovery.END_SESSION_ENDPOINT);
        }

        public AnonymousClass7(View view) {
            this.$r8$classId = 17;
            view.getClass();
            View findViewById = view.findViewById(R.id.exportButton);
            findViewById.getClass();
            this.val$queryString = findViewById;
            View findViewById2 = view.findViewById(R.id.shareButton);
            findViewById2.getClass();
            this.val$placeHolders = findViewById2;
            View findViewById3 = view.findViewById(R.id.progressBar);
            findViewById3.getClass();
            this.val$folder = findViewById3;
            View findViewById4 = view.findViewById(R.id.statusText);
            findViewById4.getClass();
            this.val$messages = (MaterialTextView) findViewById4;
            View findViewById5 = view.findViewById(R.id.settingsExportList);
            findViewById5.getClass();
            this.this$0 = (RecyclerView) findViewById5;
        }

        public AnonymousClass7(LocalStore localStore, String str, String[] strArr, LocalFolder localFolder, ArrayList arrayList) {
            this.$r8$classId = 0;
            this.this$0 = localStore;
            this.val$queryString = str;
            this.val$placeHolders = strArr;
            this.val$folder = localFolder;
            this.val$messages = arrayList;
        }

        public AnonymousClass7(TaskRunner taskRunner) {
            this.$r8$classId = 20;
            taskRunner.getClass();
            this.val$placeHolders = taskRunner;
            this.val$messages = Http2Connection.Listener.REFUSE_INCOMING_STREAMS;
            this.this$0 = FlowControlListener$None.INSTANCE;
        }
    }
}
