package com.fsck.k9.mailstore;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.hardware.camera2.CameraCharacteristics;
import android.media.Image;
import android.media.ImageReader;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.app.ToolbarActionBar;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionMenuPresenter;
import androidx.appcompat.widget.ActionMenuView;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.compat.Api34Compat;
import androidx.camera.camera2.compat.DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.compat.Camera2CameraMetadata;
import androidx.camera.core.AndroidImageProxy;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.AutoValue_AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.CameraValidator$CameraIdListIncorrectException;
import androidx.camera.core.impl.CameraValidatorImpl$ValidationCriteria;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.utils.executor.SequentialExecutor;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;
import androidx.camera.core.internal.compat.quirk.LowMemoryQuirk;
import androidx.camera.core.streamsharing.StreamSharing$$ExternalSyntheticLambda0;
import androidx.collection.CircularArray;
import androidx.collection.LongSparseArray;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.RepeatMode;
import androidx.compose.animation.core.VectorizedAnimationSpec;
import androidx.compose.animation.core.VectorizedDurationBasedAnimationSpec;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.foundation.text.selection.CrossStatus;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.material3.IconKt$$ExternalSyntheticLambda1;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputEventData;
import androidx.compose.ui.platform.WeakCache;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.window.Api33Impl;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.navigation.internal.NavContext;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import androidx.room.util.RelationUtil;
import androidx.room.util.SchemaInfoUtilKt;
import app.k9mail.legacy.mailstore.MessageDetailsAccessor;
import app.k9mail.legacy.message.controller.MessageReference;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import com.beetstra.jutf7.CharsetProvider;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$2;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.backends.RealOAuth2TokenProvider$$ExternalSyntheticLambda0;
import com.fsck.k9.helper.Utility;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.AuthenticationFailedException;
import com.fsck.k9.mail.FetchProfile;
import com.fsck.k9.mail.K9MailLib;
import com.fsck.k9.mail.Multipart;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.filter.CountingOutputStream;
import com.fsck.k9.mail.internet.JisSupport;
import com.fsck.k9.mail.internet.MimeHeader$Field;
import com.fsck.k9.mail.internet.MimeHeaderParserException;
import com.fsck.k9.mail.internet.MimeMultipart;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.SendState;
import com.fsck.k9.message.extractors.AttachmentInfoExtractor;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import j$.util.DesugarCollections;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.serialization.json.internal.StringOpsKt;
import net.openid.appauth.AuthState;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationService;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.common.mail.Flag;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import net.thunderbird.feature.mail.message.list.internal.DefaultLocalMessageUidPrefixProvider;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import org.apache.commons.io.IOUtils;
import org.jsoup.helper.Validate;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.NodeVisitor;
import org.slf4j.ILoggerFactory;
import org.slf4j.Logger;
import org.slf4j.helpers.SubstituteLogger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LocalFolder {
    public final AttachmentInfoExtractor attachmentInfoExtractor;
    public long databaseId;
    public final GeneralSettingsManager generalSettingsManager;
    public long lastChecked;
    public final DefaultLocalMessageUidPrefixProvider localMessageUidPrefixProvider;
    public boolean localOnly;
    public final LocalStore localStore;
    public int moreMessages;
    public String name;
    public boolean notificationsEnabled;
    public String serverId;
    public boolean syncEnabled;
    public boolean visible;
    public int visibleLimit;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$1, reason: invalid class name */
    public final class AnonymousClass1 implements LockableDatabase.DbCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LocalFolder this$0;

        public /* synthetic */ AnonymousClass1(LocalFolder localFolder, int i) {
            this.$r8$classId = i;
            this.this$0 = localFolder;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Boolean bool;
            int i = this.$r8$classId;
            boolean z = true;
            LocalFolder localFolder = this.this$0;
            Cursor cursor = null;
            switch (i) {
                case 0:
                    try {
                        String str = localFolder.serverId;
                        Cursor rawQuery = str != null ? sQLiteDatabase.rawQuery("SELECT folders.id, name, visible_limit, last_updated, status, integrate, top_group, sync_enabled, visible, notifications_enabled, more_messages, server_id, local_only, type FROM folders where folders.server_id = ?", new String[]{str}) : sQLiteDatabase.rawQuery("SELECT folders.id, name, visible_limit, last_updated, status, integrate, top_group, sync_enabled, visible, notifications_enabled, more_messages, server_id, local_only, type FROM folders where folders.id = ?", new String[]{Long.toString(localFolder.databaseId)});
                        try {
                            if (rawQuery.moveToFirst() && !rawQuery.isNull(0)) {
                                localFolder.open(rawQuery);
                                Pattern pattern = Utility.RESPONSE_PATTERN;
                                rawQuery.close();
                                return null;
                            }
                            throw new MessagingException("LocalFolder.open(): Folder not found: " + localFolder.serverId + " (" + localFolder.databaseId + ")", true, null);
                        } catch (Throwable th) {
                            th = th;
                            cursor = rawQuery;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                    break;
                default:
                    try {
                        Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT id FROM folders where id = ?", new String[]{Long.toString(localFolder.databaseId)});
                        if (rawQuery2.moveToFirst()) {
                            if (rawQuery2.getInt(0) <= 0) {
                                z = false;
                            }
                            bool = Boolean.valueOf(z);
                        } else {
                            bool = Boolean.FALSE;
                        }
                        Pattern pattern2 = Utility.RESPONSE_PATTERN;
                        rawQuery2.close();
                        return bool;
                    } finally {
                        Utility.closeQuietly(null);
                    }
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$15, reason: invalid class name */
    public final class AnonymousClass15 implements LockableDatabase.DbCallback {
        public final long val$rootMessagePartId;

        public /* synthetic */ AnonymousClass15(long j) {
            this.val$rootMessagePartId = j;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.delete("message_parts", "root = ?", new String[]{Long.toString(this.val$rootMessagePartId)});
            return null;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$6, reason: invalid class name */
    public final class AnonymousClass6 implements LockableDatabase.DbCallback {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ LocalFolder this$0;
        public final /* synthetic */ long val$id;

        public /* synthetic */ AnonymousClass6(LocalFolder localFolder, long j, int i) {
            this.$r8$classId = i;
            this.this$0 = localFolder;
            this.val$id = j;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public final Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Throwable th;
            int i = this.$r8$classId;
            Cursor cursor = null;
            long j = this.val$id;
            LocalFolder localFolder = this.this$0;
            switch (i) {
                case 0:
                    localFolder.open();
                    try {
                        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT uid FROM messages WHERE id = ? AND folder_id = ?", new String[]{Long.toString(j), Long.toString(localFolder.databaseId)});
                        try {
                            String string = rawQuery.moveToNext() ? rawQuery.getString(0) : null;
                            Pattern pattern = Utility.RESPONSE_PATTERN;
                            rawQuery.close();
                            return string;
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = rawQuery;
                            Utility.closeQuietly(cursor);
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                default:
                    Cursor query = sQLiteDatabase.query("message_parts", new String[]{"id"}, "root = ? AND data_location = 2", new String[]{Long.toString(j)}, null, null, null);
                    while (query.moveToNext()) {
                        try {
                            File file = new File(localFolder.localStore.storageFilesProvider.getAttachmentDirectory(), query.getString(0));
                            if (file.exists() && !file.delete() && ((DefaultGeneralSettingsManager) localFolder.generalSettingsManager).getConfig().debugging.isDebugLoggingEnabled) {
                                Log.d("Couldn't delete message part file: %s", file.getAbsolutePath());
                            }
                        } finally {
                            query.close();
                        }
                    }
                    return null;
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$9, reason: invalid class name */
    public final class AnonymousClass9 implements LockableDatabase.DbCallback {
        public List val$messages;

        public /* synthetic */ AnonymousClass9(List list) {
            this.val$messages = list;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            Iterator it = this.val$messages.iterator();
            while (it.hasNext()) {
                ((LocalMessage) it.next()).destroy();
            }
            return null;
        }
    }

    /* renamed from: -$$Nest$mgetEmptyThreadParent, reason: not valid java name */
    public static long m932$$Nest$mgetEmptyThreadParent(LocalFolder localFolder, SQLiteDatabase sQLiteDatabase, long j) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT m.id FROM threads t1 JOIN threads t2 ON (t1.parent = t2.id) LEFT JOIN messages m ON (t2.message_id = m.id) WHERE t1.message_id = ? AND m.empty = 1", new String[]{Long.toString(j)});
        try {
            return (!rawQuery.moveToFirst() || rawQuery.isNull(0)) ? -1L : rawQuery.getLong(0);
        } finally {
            rawQuery.close();
        }
    }

    /* renamed from: -$$Nest$mhasThreadChildren, reason: not valid java name */
    public static boolean m933$$Nest$mhasThreadChildren(LocalFolder localFolder, SQLiteDatabase sQLiteDatabase, long j) {
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(t2.id) FROM threads t1 JOIN threads t2 ON (t2.parent = t1.id) WHERE t1.message_id = ?", new String[]{Long.toString(j)});
        try {
            boolean z = false;
            if (rawQuery.moveToFirst() && !rawQuery.isNull(0)) {
                if (rawQuery.getLong(0) > 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            rawQuery.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0179  */
    /* renamed from: -$$Nest$mupdateOrInsertMessagePart, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m934$$Nest$mupdateOrInsertMessagePart(com.fsck.k9.mailstore.LocalFolder r18, android.database.sqlite.SQLiteDatabase r19, android.content.ContentValues r20, com.fsck.k9.mail.Part r21, long r22) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LocalFolder.m934$$Nest$mupdateOrInsertMessagePart(com.fsck.k9.mailstore.LocalFolder, android.database.sqlite.SQLiteDatabase, android.content.ContentValues, com.fsck.k9.mail.Part, long):void");
    }

    public LocalFolder(LocalStore localStore, String str, GeneralSettingsManager generalSettingsManager, DefaultLocalMessageUidPrefixProvider defaultLocalMessageUidPrefixProvider) {
        this.lastChecked = 0L;
        this.databaseId = -1L;
        this.visibleLimit = -1;
        this.visible = true;
        this.syncEnabled = false;
        this.notificationsEnabled = false;
        this.moreMessages = 1;
        this.localOnly = false;
        this.localStore = localStore;
        this.serverId = str;
        this.name = null;
        this.generalSettingsManager = generalSettingsManager;
        this.attachmentInfoExtractor = localStore.attachmentInfoExtractor;
        this.localMessageUidPrefixProvider = defaultLocalMessageUidPrefixProvider;
    }

    public final void changeUid(LocalMessage localMessage) {
        open();
        ContentValues contentValues = new ContentValues();
        contentValues.put("uid", localMessage.mUid);
        LocalStore localStore = this.localStore;
        localStore.database.execute(false, new LocalStore.AnonymousClass1(5, contentValues, localMessage));
        localStore.notifyChange();
    }

    public final void clearAllMessages() {
        String[] strArr = {Long.toString(this.databaseId)};
        open();
        LocalStore localStore = this.localStore;
        localStore.database.execute(false, new LocalStore.AnonymousClass1(6, this, strArr, false));
        localStore.notifyChange();
        int displayCount = localStore.account.getDisplayCount();
        int i = this.visibleLimit;
        boolean z = displayCount > i;
        boolean z2 = displayCount < i;
        boolean z3 = this.moreMessages == 3;
        if (z || (z2 && !z3)) {
            this.moreMessages = 1;
            localStore.database.execute(false, new ImapSync(this, "more_messages", "unknown", false, 23));
        }
        this.visibleLimit = displayCount;
        localStore.database.execute(false, new ImapSync(this, "visible_limit", Integer.valueOf(displayCount), false, 23));
    }

    public final long decodeAndCountBytes(InputStream inputStream, String str, long j) {
        InputStream anonymousClass12;
        try {
            this.localStore.getClass();
            int i = 0;
            try {
                try {
                    if (!"base64".equals(str)) {
                        if ("quoted-printable".equals(str)) {
                            anonymousClass12 = new LocalStore.AnonymousClass12(inputStream, inputStream, i);
                        }
                        CountingOutputStream countingOutputStream = new CountingOutputStream();
                        IOUtils.copy(inputStream, countingOutputStream);
                        long j2 = countingOutputStream.mCount;
                        countingOutputStream.close();
                        inputStream.close();
                        return j2;
                    }
                    anonymousClass12 = new LocalStore.AnonymousClass11(inputStream, inputStream, i);
                    IOUtils.copy(inputStream, countingOutputStream);
                    long j22 = countingOutputStream.mCount;
                    countingOutputStream.close();
                    inputStream.close();
                    return j22;
                } finally {
                }
                CountingOutputStream countingOutputStream2 = new CountingOutputStream();
            } finally {
            }
            inputStream = anonymousClass12;
        } catch (IOException unused) {
            return j;
        }
    }

    public final boolean equals(Object obj) {
        return obj instanceof LocalFolder ? ((LocalFolder) obj).databaseId == this.databaseId : this == obj;
    }

    public final boolean exists() {
        return ((Boolean) this.localStore.database.execute(false, new AnonymousClass1(this, 1))).booleanValue();
    }

    public final void fetch(List list, FetchProfile fetchProfile) {
        this.localStore.database.execute(false, new ImapSync(this, fetchProfile, list, false, 24));
    }

    public final LocalMessage getMessage(String str) {
        return (LocalMessage) this.localStore.database.execute(false, new LocalStore.AnonymousClass1(8, this, str, false));
    }

    public final List getMessages(boolean z) {
        return (List) this.localStore.database.execute(false, new AnonymousClass8(0, this, z));
    }

    public final ArrayList getMessagesByReference(List list) {
        open();
        String str = this.localStore.account.uuid;
        long j = this.databaseId;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            MessageReference messageReference = (MessageReference) it.next();
            if (!str.equals(messageReference.accountUuid)) {
                UriKt$$ExternalSyntheticBUOutline0.m("all message references must belong to this Account!");
                return null;
            }
            if (j != messageReference.folderId) {
                UriKt$$ExternalSyntheticBUOutline0.m("all message references must belong to this LocalFolder!");
                return null;
            }
            LocalMessage message = getMessage(messageReference.uid);
            if (message != null) {
                arrayList.add(message);
            }
        }
        return arrayList;
    }

    public final int hashCode() {
        long j = this.databaseId;
        return (int) (j ^ (j >>> 32));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [com.fsck.k9.mail.internet.MimeBodyPart, com.fsck.k9.mailstore.LocalBodyPart] */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.fsck.k9.mail.Multipart] */
    /* JADX WARN: Type inference failed for: r3v4, types: [byte[], java.io.Serializable] */
    public final void loadMessagePart(LocalMessage localMessage, HashMap hashMap, Cursor cursor) {
        LocalMimeMessage localMimeMessage;
        Part part;
        long j = cursor.getLong(0);
        long j2 = cursor.getLong(2);
        String string = cursor.getString(3);
        long j3 = cursor.getLong(4);
        byte[] blob = cursor.getBlob(6);
        int i = cursor.getInt(9);
        String string2 = cursor.getString(15);
        long j4 = localMessage.messagePartId;
        LocalStore localStore = this.localStore;
        if (j == j4) {
            part = localMessage;
        } else {
            Part part2 = (Part) hashMap.get(Long.valueOf(j2));
            if (part2 == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Parent part not found");
                return;
            }
            String mimeType = part2.getMimeType();
            if (JisSupport.isMultipart(mimeType)) {
                ?? localBodyPart = new LocalBodyPart(localStore.account.uuid, localMessage, j, j3);
                ((Multipart) part2.getBody()).addBodyPart(localBodyPart);
                localMimeMessage = localBodyPart;
            } else if (!JisSupport.isSameMimeType(mimeType, "message/rfc822")) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Parent is neither a multipart nor a message");
                return;
            } else {
                LocalMimeMessage localMimeMessage2 = new LocalMimeMessage(localStore.account.uuid, localMessage, j);
                part2.setBody(localMimeMessage2);
                localMimeMessage = localMimeMessage2;
            }
            Validate.parse(new ByteArrayInputStream(blob), new OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(23, localMimeMessage));
            part = localMimeMessage;
        }
        hashMap.put(Long.valueOf(j), part);
        part.setServerExtra(string2);
        if (JisSupport.isMultipart(string)) {
            byte[] blob2 = cursor.getBlob(11);
            byte[] blob3 = cursor.getBlob(12);
            MimeMultipart mimeMultipart = new MimeMultipart(string, cursor.getString(13));
            part.setBody(mimeMultipart);
            mimeMultipart.preamble = blob2;
            mimeMultipart.epilogue = blob3;
            return;
        }
        int i2 = 1;
        if (i == 1) {
            part.setBody(new FileBackedBody(i2, cursor.getBlob(10), cursor.getString(7)));
        } else if (i == 2) {
            String string3 = cursor.getString(7);
            File file = new File(localStore.storageFilesProvider.getAttachmentDirectory(), Long.toString(j));
            if (file.exists()) {
                part.setBody(new FileBackedBody(0, file, string3));
            }
        }
    }

    public final void open(Cursor cursor) {
        this.databaseId = cursor.getLong(0);
        this.serverId = cursor.getString(11);
        this.visibleLimit = cursor.getInt(2);
        cursor.getString(4);
        this.lastChecked = cursor.getLong(3);
        cursor.getInt(6);
        cursor.getInt(5);
        this.visible = cursor.getInt(8) == 1;
        this.notificationsEnabled = cursor.getInt(9) == 1;
        this.syncEnabled = cursor.getInt(7) == 1;
        this.moreMessages = ViewSizeResolver.CC._fromDatabaseName(cursor.getString(10));
        this.name = cursor.getString(1);
        this.localOnly = cursor.getInt(12) == 1;
        SchemaInfoUtilKt.fromDatabaseFolderType(cursor.getString(13));
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$8, reason: invalid class name */
    public class AnonymousClass8 implements MenuPresenter.Callback, LockableDatabase.DbCallback, MessageDetailsAccessor {
        public final /* synthetic */ int $r8$classId;
        public final Object this$0;
        public boolean val$includeDeleted;

        public AnonymousClass8(Context context, CameraSelector cameraSelector) {
            this.$r8$classId = 3;
            context.getClass();
            boolean z = false;
            this.val$includeDeleted = Build.VERSION.SDK_INT >= 34 && Api34Compat.getDeviceId(context) != 0;
            PackageManager packageManager = context.getPackageManager();
            Integer lensFacing = cameraSelector != null ? cameraSelector.getLensFacing() : null;
            boolean hasSystemFeature = packageManager.hasSystemFeature("android.hardware.camera");
            boolean hasSystemFeature2 = packageManager.hasSystemFeature("android.hardware.camera.front");
            boolean z2 = hasSystemFeature && (lensFacing == null || lensFacing.intValue() == 1);
            if (hasSystemFeature2 && (lensFacing == null || lensFacing.intValue() == 0)) {
                z = true;
            }
            this.this$0 = new CameraValidatorImpl$ValidationCriteria(z2, z);
        }

        public static boolean hasCamera(Set set, CameraSelector cameraSelector) {
            try {
                cameraSelector.select(new LinkedHashSet(set));
                return true;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }

        public void addHeader(String str, String str2) {
            str2.getClass();
            if (this.val$includeDeleted) {
                try {
                    JisSupport.checkHeader(str, str2);
                } catch (MimeHeaderParserException e) {
                    throw new AssertionError("Invalid header", e);
                }
            }
            ((ArrayList) this.this$0).add(new MimeHeader$Field.NameValueField(str, str2));
        }

        public void addRawHeader(String str, String str2) {
            str.getClass();
            str2.getClass();
            if (this.val$includeDeleted) {
                int i = 0;
                if (!StringsKt__StringsJVMKt.startsWith(str2, str, false)) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1((Object) "Raw header value needs to start with header name");
                    return;
                }
                int indexOf$default = StringsKt.indexOf$default(str2, ':', 0, 6);
                CharSequence charSequence = "";
                String str3 = charSequence;
                if (indexOf$default != str2.length() - 1) {
                    String substring = str2.substring(indexOf$default + 1);
                    int length = substring.length();
                    while (true) {
                        if (i >= length) {
                            break;
                        }
                        if (!CharsKt__CharKt.isWhitespace(substring.charAt(i))) {
                            charSequence = substring.subSequence(i, substring.length());
                            break;
                        }
                        i++;
                    }
                    str3 = charSequence.toString();
                }
                try {
                    JisSupport.checkHeader(str, str3);
                } catch (MimeHeaderParserException e) {
                    throw new AssertionError("Invalid header", e);
                }
            }
            ((ArrayList) this.this$0).add(new MimeHeader$Field.RawField(str, str2));
        }

        public void appendFields(Appendable appendable) {
            Iterator it = ((ArrayList) this.this$0).iterator();
            while (it.hasNext()) {
                MimeHeader$Field mimeHeader$Field = (MimeHeader$Field) it.next();
                if (mimeHeader$Field instanceof MimeHeader$Field.RawField) {
                    appendable.append(((MimeHeader$Field.RawField) mimeHeader$Field).raw);
                } else if (!(mimeHeader$Field instanceof MimeHeader$Field.NameValueField)) {
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return;
                } else {
                    appendable.append(mimeHeader$Field.name);
                    appendable.append(": ");
                    appendable.append(((MimeHeader$Field.NameValueField) mimeHeader$Field).value);
                }
                appendable.append("\r\n");
            }
        }

        public boolean defaultIsRtl() {
            return this.val$includeDeleted;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            LocalFolder localFolder = (LocalFolder) this.this$0;
            localFolder.open();
            LocalStore localStore = localFolder.localStore;
            String m = CameraDevices$CC.m(new StringBuilder("SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header FROM messages LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN threads ON (threads.message_id = messages.id) WHERE empty = 0 AND "), this.val$includeDeleted ? "" : "deleted = 0 AND ", "folder_id = ? ORDER BY date DESC");
            String[] strArr = {Long.toString(localFolder.databaseId)};
            localStore.getClass();
            ArrayList arrayList = new ArrayList();
            localStore.database.execute(false, new LocalStore.AnonymousClass7(localStore, m, strArr, localFolder, arrayList));
            return DesugarCollections.unmodifiableList(arrayList);
        }

        public String getFirstHeader(String str) {
            return (String) ArraysKt___ArraysKt.firstOrNull(getHeader(str));
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getFolderId() {
            return ((Cursor) this.this$0).getLong(2);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public List getFromAddresses() {
            Pattern pattern = Address.ATOM;
            return ArraysKt___ArraysKt.toList(K9MailLib.unpack(((Cursor) this.this$0).getString(3)));
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean getHasAttachments() {
            return ((Cursor) this.this$0).getInt(15) > 0;
        }

        public String[] getHeader(String str) {
            return (String[]) SequencesKt.toList(new TakeWhileSequence(new FilteringSequence(CollectionsKt.asSequence((ArrayList) this.this$0), true, new IconKt$$ExternalSyntheticLambda1(str, 28)), new KoinModuleKt$$ExternalSyntheticLambda0(6), 2)).toArray(new String[0]);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getId() {
            return ((Cursor) this.this$0).getLong(0);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getInternalDate() {
            return ((Cursor) this.this$0).getLong(7);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getMessageDate() {
            return ((Cursor) this.this$0).getLong(6);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public String getMessageServerId() {
            String string = ((Cursor) this.this$0).getString(1);
            string.getClass();
            return string;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public PriorityQueue getPreview() {
            Cursor cursor = (Cursor) this.this$0;
            String string = cursor.getString(9);
            string.getClass();
            DatabasePreviewType.Companion.getClass();
            int ordinal = SendState.Companion.fromDatabaseValue(string).ordinal();
            int i = 8;
            int i2 = 1;
            Serializable serializable = null;
            if (ordinal == 0) {
                return new PriorityQueue(i2, serializable, i);
            }
            int i3 = 2;
            if (ordinal == 1) {
                return new PriorityQueue(i3, cursor.getString(10), i);
            }
            int i4 = 3;
            if (ordinal == 2) {
                return new PriorityQueue(i4, serializable, i);
            }
            if (ordinal == 3) {
                return new PriorityQueue(4, serializable, i);
            }
            UriKt$$ExternalSyntheticBUOutline0.m857m();
            return null;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public String getSubject() {
            return ((Cursor) this.this$0).getString(8);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public int getThreadCount() {
            if (this.val$includeDeleted) {
                return ((Cursor) this.this$0).getInt(17);
            }
            return 0;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public long getThreadRoot() {
            return ((Cursor) this.this$0).getLong(16);
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public List getToAddresses() {
            Pattern pattern = Address.ATOM;
            return ArraysKt___ArraysKt.toList(K9MailLib.unpack(((Cursor) this.this$0).getString(4)));
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isAnswered() {
            return ((Cursor) this.this$0).getInt(13) == 1;
        }

        public boolean isChangeInvalid(LinkedHashSet linkedHashSet, Set set) {
            CameraValidatorImpl$ValidationCriteria cameraValidatorImpl$ValidationCriteria = (CameraValidatorImpl$ValidationCriteria) this.this$0;
            if (!this.val$includeDeleted) {
                boolean z = cameraValidatorImpl$ValidationCriteria.checkBack;
                boolean z2 = cameraValidatorImpl$ValidationCriteria.checkFront;
                if (z || z2) {
                    CameraSelector cameraSelector = CameraSelector.DEFAULT_BACK_CAMERA;
                    cameraSelector.getClass();
                    boolean hasCamera = hasCamera(linkedHashSet, cameraSelector);
                    CameraSelector cameraSelector2 = CameraSelector.DEFAULT_FRONT_CAMERA;
                    cameraSelector2.getClass();
                    boolean hasCamera2 = hasCamera(linkedHashSet, cameraSelector2);
                    Set set2 = set;
                    ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(set2, 10));
                    Iterator it = set2.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((CameraIdentifier) it.next()).getInternalId());
                    }
                    Set set3 = CollectionsKt.toSet(arrayList);
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj : linkedHashSet) {
                        if (!set3.contains(((CameraInternal) obj).getCameraInfoInternal().getCameraId())) {
                            arrayList2.add(obj);
                        }
                    }
                    Set set4 = CollectionsKt.toSet(arrayList2);
                    CameraSelector cameraSelector3 = CameraSelector.DEFAULT_BACK_CAMERA;
                    cameraSelector3.getClass();
                    boolean hasCamera3 = hasCamera(set4, cameraSelector3);
                    CameraSelector cameraSelector4 = CameraSelector.DEFAULT_FRONT_CAMERA;
                    cameraSelector4.getClass();
                    boolean hasCamera4 = hasCamera(set4, cameraSelector4);
                    boolean z3 = cameraValidatorImpl$ValidationCriteria.checkBack && hasCamera && !hasCamera3;
                    boolean z4 = z2 && hasCamera2 && !hasCamera4;
                    if (z3 || z4) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isForwarded() {
            return ((Cursor) this.this$0).getInt(14) == 1;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isRead() {
            return ((Cursor) this.this$0).getInt(11) == 1;
        }

        public boolean isRtl(int i, CharSequence charSequence) {
            if (charSequence == null || i < 0 || charSequence.length() - i < 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                return false;
            }
            if (((TextDirectionHeuristicsCompat.FirstStrong) this.this$0) == null) {
                return defaultIsRtl();
            }
            char c = 2;
            for (int i2 = 0; i2 < i && c == 2; i2++) {
                byte directionality = Character.getDirectionality(charSequence.charAt(i2));
                AnonymousClass8 anonymousClass8 = TextDirectionHeuristicsCompat.LTR;
                if (directionality != 0) {
                    if (directionality != 1 && directionality != 2) {
                        switch (directionality) {
                            case 14:
                            case OffsetKt.Horizontal /* 15 */:
                                break;
                            case 16:
                            case 17:
                                break;
                            default:
                                c = 2;
                                break;
                        }
                    }
                    c = 0;
                }
                c = 1;
            }
            if (c == 0) {
                return true;
            }
            if (c != 1) {
                return defaultIsRtl();
            }
            return false;
        }

        @Override // app.k9mail.legacy.mailstore.MessageDetailsAccessor
        public boolean isStarred() {
            return ((Cursor) this.this$0).getInt(12) == 1;
        }

        public void nextItem() {
            this.val$includeDeleted = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
            ActionMenuPresenter actionMenuPresenter;
            ToolbarActionBar toolbarActionBar = (ToolbarActionBar) this.this$0;
            if (this.val$includeDeleted) {
                return;
            }
            this.val$includeDeleted = true;
            ActionMenuView actionMenuView = toolbarActionBar.mDecorToolbar.mToolbar.mMenuView;
            if (actionMenuView != null && (actionMenuPresenter = actionMenuView.mPresenter) != null) {
                actionMenuPresenter.hideOverflowMenu();
                ActionMenuPresenter.OverflowPopup overflowPopup = actionMenuPresenter.mActionButtonPopup;
                if (overflowPopup != null && overflowPopup.isShowing()) {
                    overflowPopup.mPopup.dismiss();
                }
            }
            toolbarActionBar.mWindowCallback.onPanelClosed(108, menuBuilder);
            this.val$includeDeleted = false;
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            ((ToolbarActionBar) this.this$0).mWindowCallback.onMenuOpened(108, menuBuilder);
            return true;
        }

        public void print(char c) {
            PriorityQueue priorityQueue = (PriorityQueue) this.this$0;
            priorityQueue.ensureTotalCapacity(priorityQueue.size, 1);
            char[] cArr = (char[]) priorityQueue.array;
            int i = priorityQueue.size;
            priorityQueue.size = i + 1;
            cArr[i] = c;
        }

        public void printQuoted(String str) {
            int i;
            str.getClass();
            PriorityQueue priorityQueue = (PriorityQueue) this.this$0;
            priorityQueue.ensureTotalCapacity(priorityQueue.size, str.length() + 2);
            char[] cArr = (char[]) priorityQueue.array;
            int i2 = priorityQueue.size;
            int i3 = i2 + 1;
            cArr[i2] = '\"';
            int length = str.length();
            str.getChars(0, length, cArr, i3);
            int i4 = length + i3;
            int i5 = i3;
            while (i5 < i4) {
                char c = cArr[i5];
                byte[] bArr = StringOpsKt.ESCAPE_MARKERS;
                if (c < bArr.length && bArr[c] != 0) {
                    int length2 = str.length();
                    for (int i6 = i5 - i3; i6 < length2; i6++) {
                        priorityQueue.ensureTotalCapacity(i5, 2);
                        char charAt = str.charAt(i6);
                        byte[] bArr2 = StringOpsKt.ESCAPE_MARKERS;
                        if (charAt < bArr2.length) {
                            byte b = bArr2[charAt];
                            if (b == 0) {
                                i = i5 + 1;
                                ((char[]) priorityQueue.array)[i5] = charAt;
                            } else {
                                if (b == 1) {
                                    String str2 = StringOpsKt.ESCAPE_STRINGS[charAt];
                                    str2.getClass();
                                    priorityQueue.ensureTotalCapacity(i5, str2.length());
                                    str2.getChars(0, str2.length(), (char[]) priorityQueue.array, i5);
                                    int length3 = str2.length() + i5;
                                    priorityQueue.size = length3;
                                    i5 = length3;
                                } else {
                                    char[] cArr2 = (char[]) priorityQueue.array;
                                    cArr2[i5] = '\\';
                                    cArr2[i5 + 1] = (char) b;
                                    i5 += 2;
                                    priorityQueue.size = i5;
                                }
                            }
                        } else {
                            i = i5 + 1;
                            ((char[]) priorityQueue.array)[i5] = charAt;
                        }
                        i5 = i;
                    }
                    priorityQueue.ensureTotalCapacity(i5, 1);
                    ((char[]) priorityQueue.array)[i5] = '\"';
                    priorityQueue.size = i5 + 1;
                    return;
                }
                i5++;
            }
            cArr[i4] = '\"';
            priorityQueue.size = i4 + 1;
        }

        public synchronized void recycle(Resource resource, boolean z) {
            try {
                if (!this.val$includeDeleted && !z) {
                    this.val$includeDeleted = true;
                    resource.recycle();
                    this.val$includeDeleted = false;
                }
                ((Handler) this.this$0).obtainMessage(1, resource).sendToTarget();
            } catch (Throwable th) {
                throw th;
            }
        }

        public void removeHeader(String str) {
            CollectionsKt.removeAll((ArrayList) this.this$0, new IconKt$$ExternalSyntheticLambda1(str, 27));
        }

        public void setHeader(String str, String str2) {
            str2.getClass();
            removeHeader(str);
            addHeader(str, str2);
        }

        public String toString() {
            switch (this.$r8$classId) {
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    StringBuilder sb = new StringBuilder();
                    appendFields(sb);
                    return sb.toString();
                default:
                    return super.toString();
            }
        }

        public void validateOnFirstInit(CameraRepository cameraRepository) {
            CameraValidatorImpl$ValidationCriteria cameraValidatorImpl$ValidationCriteria = (CameraValidatorImpl$ValidationCriteria) this.this$0;
            cameraRepository.getClass();
            if (this.val$includeDeleted) {
                Utf8.SafeProcessor.d("CameraValidator", "Virtual device with " + cameraRepository.getCameras().size() + " cameras. Skipping validation.");
                return;
            }
            Utf8.SafeProcessor.d("CameraValidator", "Verifying camera lens facing on " + Build.DEVICE);
            if (cameraValidatorImpl$ValidationCriteria.checkBack) {
                try {
                    CameraSelector.DEFAULT_BACK_CAMERA.select(cameraRepository.getCameras()).getClass();
                } catch (RuntimeException e) {
                    e = e;
                    Utf8.SafeProcessor.w("CameraValidator", "Camera LENS_FACING_BACK verification failed", e);
                }
            }
            e = null;
            if (cameraValidatorImpl$ValidationCriteria.checkFront) {
                try {
                    CameraSelector.DEFAULT_FRONT_CAMERA.select(cameraRepository.getCameras()).getClass();
                } catch (RuntimeException e2) {
                    Utf8.SafeProcessor.w("CameraValidator", "Camera LENS_FACING_FRONT verification failed", e2);
                    if (e == null) {
                        e = e2;
                    }
                }
            }
            if (e != null) {
                throw new CameraValidator$CameraIdListIncorrectException(cameraRepository.getCameras().size(), e);
            }
        }

        public void writeTo(OutputStream outputStream) {
            outputStream.getClass();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, Charsets.UTF_8), 1024);
            appendFields(bufferedWriter);
            bufferedWriter.flush();
        }

        public void space() {
        }

        public void unIndent() {
        }

        public void print(byte b) {
            ((PriorityQueue) this.this$0).write(String.valueOf(b));
        }

        public void print(short s) {
            ((PriorityQueue) this.this$0).write(String.valueOf(s));
        }

        public void print(int i) {
            ((PriorityQueue) this.this$0).write(String.valueOf(i));
        }

        public void print(long j) {
            ((PriorityQueue) this.this$0).write(String.valueOf(j));
        }

        public /* synthetic */ AnonymousClass8(int i, Object obj, boolean z) {
            this.$r8$classId = i;
            this.this$0 = obj;
            this.val$includeDeleted = z;
        }

        public AnonymousClass8(int i) {
            this.$r8$classId = i;
            switch (i) {
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    this.this$0 = new ArrayList();
                    break;
                default:
                    this.this$0 = new Handler(Looper.getMainLooper(), new BaseTransientBottomBar.AnonymousClass1(1));
                    break;
            }
        }

        public AnonymousClass8(PriorityQueue priorityQueue) {
            this.$r8$classId = 11;
            this.this$0 = priorityQueue;
            this.val$includeDeleted = true;
        }

        public AnonymousClass8(HashSet hashSet, boolean z) {
            this.$r8$classId = 8;
            this.this$0 = DesugarCollections.unmodifiableSet(hashSet);
            this.val$includeDeleted = z;
        }

        public AnonymousClass8(String str, boolean z) {
            this.$r8$classId = 5;
            this.val$includeDeleted = z;
            this.this$0 = str;
        }

        public AnonymousClass8(Executor executor, CameraCharacteristics cameraCharacteristics) {
            this.$r8$classId = 2;
            Quirks quirks = DeviceQuirks.sQuirks;
            if (DeviceQuirks.sQuirks.get(LowMemoryQuirk.class) != null) {
                new SequentialExecutor(executor);
            }
            this.this$0 = quirks;
            this.val$includeDeleted = quirks.contains(IncorrectJpegMetadataQuirk.class);
        }

        public /* synthetic */ AnonymousClass8(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AnonymousClass8(TextDirectionHeuristicsCompat.FirstStrong firstStrong, boolean z) {
            this(4, firstStrong);
            this.$r8$classId = 4;
            this.val$includeDeleted = z;
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$14, reason: invalid class name */
    public final class AnonymousClass14 implements VectorizedAnimationSpec, LockableDatabase.DbCallback {
        public final Object this$0;
        public final long val$messageId;
        public final Object val$messageIdHeader;
        public final long val$messagePartId;

        public AnonymousClass14(VectorizedDurationBasedAnimationSpec vectorizedDurationBasedAnimationSpec, RepeatMode repeatMode) {
            this.val$messageIdHeader = vectorizedDurationBasedAnimationSpec;
            this.this$0 = repeatMode;
            this.val$messagePartId = (vectorizedDurationBasedAnimationSpec.getDurationMillis() + vectorizedDurationBasedAnimationSpec.getDelayMillis()) * 1000000;
            this.val$messageId = 0L;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            LocalFolder localFolder = (LocalFolder) this.this$0;
            LocalStore localStore = localFolder.localStore;
            LockableDatabase lockableDatabase = localStore.database;
            long j = this.val$messagePartId;
            lockableDatabase.execute(false, new AnonymousClass6(localFolder, j, 1));
            localStore.database.execute(false, new AnonymousClass15(j));
            long j2 = this.val$messageId;
            sQLiteDatabase.delete("messages_fulltext", "docid = ?", new String[]{Long.toString(j2)});
            if (LocalFolder.m933$$Nest$mhasThreadChildren(localFolder, sQLiteDatabase, j2)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("id", Long.valueOf(j2));
                contentValues.put("folder_id", Long.valueOf(localFolder.databaseId));
                contentValues.put("deleted", (Integer) 0);
                contentValues.put("message_id", (String) this.val$messageIdHeader);
                contentValues.put("empty", (Integer) 1);
                sQLiteDatabase.replace("messages", null, contentValues);
                return null;
            }
            long m932$$Nest$mgetEmptyThreadParent = LocalFolder.m932$$Nest$mgetEmptyThreadParent(localFolder, sQLiteDatabase, j2);
            sQLiteDatabase.delete("messages", "id = ?", new String[]{Long.toString(j2)});
            while (m932$$Nest$mgetEmptyThreadParent != -1 && !LocalFolder.m933$$Nest$mhasThreadChildren(localFolder, sQLiteDatabase, m932$$Nest$mgetEmptyThreadParent)) {
                long m932$$Nest$mgetEmptyThreadParent2 = LocalFolder.m932$$Nest$mgetEmptyThreadParent(localFolder, sQLiteDatabase, m932$$Nest$mgetEmptyThreadParent);
                sQLiteDatabase.delete("messages", "id = ?", new String[]{Long.toString(m932$$Nest$mgetEmptyThreadParent)});
                m932$$Nest$mgetEmptyThreadParent = m932$$Nest$mgetEmptyThreadParent2;
            }
            return null;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return Long.MAX_VALUE;
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return getVelocityFromNanos(Long.MAX_VALUE, animationVector, animationVector2, animationVector3);
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((VectorizedDurationBasedAnimationSpec) this.val$messageIdHeader).getValueFromNanos(repetitionPlayTimeNanos(j), animationVector, animationVector2, repetitionStartVelocity(j, animationVector, animationVector3, animationVector2));
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            return ((VectorizedDurationBasedAnimationSpec) this.val$messageIdHeader).getVelocityFromNanos(repetitionPlayTimeNanos(j), animationVector, animationVector2, repetitionStartVelocity(j, animationVector, animationVector3, animationVector2));
        }

        @Override // androidx.compose.animation.core.VectorizedAnimationSpec
        public boolean isInfinite() {
            return true;
        }

        public long repetitionPlayTimeNanos(long j) {
            long j2 = this.val$messageId;
            if (j + j2 <= 0) {
                return 0L;
            }
            long j3 = j + j2;
            long j4 = this.val$messagePartId;
            long j5 = j3 / j4;
            if (((RepeatMode) this.this$0) != RepeatMode.Restart && j5 % 2 != 0) {
                return ((j5 + 1) * j4) - j3;
            }
            Long.signum(j5);
            return j3 - (j5 * j4);
        }

        public AnimationVector repetitionStartVelocity(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
            long j2 = this.val$messageId;
            long j3 = j + j2;
            long j4 = this.val$messagePartId;
            return j3 > j4 ? ((VectorizedDurationBasedAnimationSpec) this.val$messageIdHeader).getVelocityFromNanos(j4 - j2, animationVector, animationVector3, animationVector2) : animationVector2;
        }

        public AnonymousClass14(LocalFolder localFolder, long j, long j2, String str) {
            this.this$0 = localFolder;
            this.val$messagePartId = j;
            this.val$messageId = j2;
            this.val$messageIdHeader = str;
        }
    }

    public LocalFolder(LocalStore localStore, long j) {
        this.lastChecked = 0L;
        this.serverId = null;
        this.visibleLimit = -1;
        this.visible = true;
        this.syncEnabled = false;
        this.notificationsEnabled = false;
        this.moreMessages = 1;
        this.localOnly = false;
        this.localStore = localStore;
        this.databaseId = j;
        this.attachmentInfoExtractor = localStore.attachmentInfoExtractor;
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.mailstore.LocalFolder$12, reason: invalid class name */
    public final class AnonymousClass12 implements ImageReaderProxy, LockableDatabase.DbCallback, NodeVisitor, ILoggerFactory {
        public static volatile AnonymousClass12 instance;
        public final /* synthetic */ int $r8$classId;
        public final Object val$flags;
        public Object val$messages;
        public boolean val$value;

        public AnonymousClass12(int i) {
            this.$r8$classId = i;
            switch (i) {
                case 9:
                    this.val$messages = new CharsetProvider().charsetForName("X-RFC-3501");
                    this.val$flags = StandardCharsets.US_ASCII;
                    break;
                case 10:
                default:
                    this.val$flags = Collections.newSetFromMap(new WeakHashMap());
                    this.val$messages = new HashSet();
                    break;
                case 11:
                    this.val$messages = new StringBuilder();
                    this.val$flags = new StringBuilder();
                    break;
                case BasicTextKt.ShiftMeta /* 12 */:
                    this.val$value = false;
                    this.val$messages = new HashMap();
                    this.val$flags = new LinkedBlockingQueue();
                    break;
            }
        }

        public static boolean canResolveDynamicRange(DynamicRange dynamicRange, DynamicRange dynamicRange2) {
            int i;
            boolean isFullySpecified = dynamicRange2.isFullySpecified();
            int i2 = dynamicRange2.mEncoding;
            if (isFullySpecified) {
                int i3 = dynamicRange.mEncoding;
                return !(i3 == 2 && i2 == 1) && (i3 == 2 || i3 == 0 || i3 == i2) && ((i = dynamicRange.mBitDepth) == 0 || i == dynamicRange2.mBitDepth);
            }
            UriKt$$ExternalSyntheticBUOutline0.m(dynamicRange2, " not actually fully specified.", "Fully specified range ");
            return false;
        }

        public static boolean canResolveWithinConstraints(DynamicRange dynamicRange, DynamicRange dynamicRange2, Set set) {
            if (set.contains(dynamicRange2)) {
                return canResolveDynamicRange(dynamicRange, dynamicRange2);
            }
            if (!Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                return false;
            }
            android.util.Log.d("CXCP", "DynamicRangeResolver: Candidate Dynamic range is not within constraints.\nDynamic range to resolve:\n  " + dynamicRange + "\nCandidate dynamic range:\n  " + dynamicRange2);
            return false;
        }

        public static DynamicRange findSupportedHdrMatch(DynamicRange dynamicRange, LinkedHashSet linkedHashSet, Set set) {
            if (dynamicRange.mEncoding != 1) {
                Iterator it = linkedHashSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    DynamicRange dynamicRange2 = (DynamicRange) it.next();
                    int i = dynamicRange2.mEncoding;
                    if (!dynamicRange2.isFullySpecified()) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Fully specified DynamicRange must have fully defined encoding.");
                        break;
                    }
                    if (i != 1 && canResolveWithinConstraints(dynamicRange, dynamicRange2, set)) {
                        return dynamicRange2;
                    }
                }
            }
            return null;
        }

        public static AnonymousClass12 get(Context context) {
            if (instance == null) {
                synchronized (AnonymousClass12.class) {
                    try {
                        if (instance == null) {
                            instance = new AnonymousClass12(context.getApplicationContext());
                        }
                    } finally {
                    }
                }
            }
            return instance;
        }

        public static void updateConstraints(Set set, DynamicRange dynamicRange, BiometricPrompt biometricPrompt) {
            Set set2 = set;
            RelationUtil.checkState("Cannot update already-empty constraints.", !set2.isEmpty());
            biometricPrompt.getClass();
            dynamicRange.getClass();
            Set dynamicRangeCaptureRequestConstraints = ((DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl) biometricPrompt.mClientFragmentManager).getDynamicRangeCaptureRequestConstraints(dynamicRange);
            Set set3 = dynamicRangeCaptureRequestConstraints;
            if (set3.isEmpty()) {
                return;
            }
            Set set4 = CollectionsKt.toSet(set);
            set.retainAll(set3);
            if (set2.isEmpty()) {
                DBUtil$$ExternalSyntheticBUOutline0.m("Constraints of dynamic range cannot be combined with existing constraints.\nDynamic range:\n  ", dynamicRange, "\nConstraints:\n  ", dynamicRangeCaptureRequestConstraints, "\nExisting constraints:\n  ", set4);
            }
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public ImageProxy acquireLatestImage() {
            Image image;
            synchronized (this.val$flags) {
                try {
                    image = ((ImageReader) this.val$messages).acquireLatestImage();
                } catch (RuntimeException e) {
                    if (!"ImageReaderContext is not initialized".equals(e.getMessage())) {
                        throw e;
                    }
                    image = null;
                }
                if (image == null) {
                    return null;
                }
                return new AndroidImageProxy(image);
            }
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public ImageProxy acquireNextImage() {
            Image image;
            synchronized (this.val$flags) {
                try {
                    image = ((ImageReader) this.val$messages).acquireNextImage();
                } catch (RuntimeException e) {
                    if (!"ImageReaderContext is not initialized".equals(e.getMessage())) {
                        throw e;
                    }
                    image = null;
                }
                if (image == null) {
                    return null;
                }
                return new AndroidImageProxy(image);
            }
        }

        /* renamed from: activeHoverEvent-0FcD4WY, reason: not valid java name */
        public boolean m935activeHoverEvent0FcD4WY(long j) {
            Object obj;
            List list = (List) ((WeakCache) this.val$flags).values;
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    obj = null;
                    break;
                }
                obj = list.get(i);
                if (PointerId.m564equalsimpl0(((PointerInputEventData) obj).id, j)) {
                    break;
                }
                i++;
            }
            PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
            if (pointerInputEventData != null) {
                return pointerInputEventData.activeHover;
            }
            return false;
        }

        public void append(String str) {
            StringBuilder sb = (StringBuilder) this.val$messages;
            if (str.equals(" ") && (sb.length() == 0 || IntOffsetKt.listOf((Object[]) new Character[]{' ', '\n'}).contains(Character.valueOf(StringsKt.last(sb))))) {
                return;
            }
            sb.append(str);
        }

        public boolean clearAndRemove(Request request) {
            boolean z = true;
            if (request == null) {
                return true;
            }
            boolean remove = ((Set) this.val$flags).remove(request);
            if (!((HashSet) this.val$messages).remove(request) && !remove) {
                z = false;
            }
            if (z) {
                request.clear();
            }
            return z;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public void clearOnImageAvailableListener() {
            synchronized (this.val$flags) {
                this.val$value = true;
                ((ImageReader) this.val$messages).setOnImageAvailableListener(null, null);
            }
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public void close() {
            synchronized (this.val$flags) {
                ((ImageReader) this.val$messages).close();
            }
        }

        public String decode(String str) {
            str.getClass();
            if (this.val$value) {
                return str;
            }
            CharsetDecoder onMalformedInput = ((Charset) this.val$messages).newDecoder().onMalformedInput(CodingErrorAction.REPORT);
            Charset charset = (Charset) this.val$flags;
            charset.getClass();
            byte[] bytes = str.getBytes(charset);
            bytes.getClass();
            String charBuffer = onMalformedInput.decode(ByteBuffer.wrap(bytes)).toString();
            charBuffer.getClass();
            return charBuffer;
        }

        @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
        public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
            int i = this.$r8$classId;
            Object obj = this.val$flags;
            switch (i) {
                case 0:
                    for (LocalMessage localMessage : (List) this.val$messages) {
                        try {
                            boolean z = this.val$value;
                            localMessage.getClass();
                            Iterator it = ((Set) obj).iterator();
                            while (it.hasNext()) {
                                localMessage.setFlag((Flag) it.next(), z);
                            }
                        } catch (MessagingException e) {
                            Log.e(e, "Something went wrong while setting flag", new Object[0]);
                        }
                    }
                    break;
                default:
                    boolean z2 = this.val$value;
                    LocalMessage localMessage2 = (LocalMessage) obj;
                    Flag flag = (Flag) this.val$messages;
                    if (flag == Flag.DELETED && z2) {
                        LocalStore localStore = localMessage2.localStore;
                        localStore.database.execute(true, new ConnectionPool(1, localMessage2));
                        localStore.notifyChange();
                    }
                    super/*com.fsck.k9.mail.internet.MimeMessage*/.setFlag(flag, z2);
                    EnumSet enumSet = localMessage2.mFlags;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("flags", LocalStore.serializeFlags(DesugarCollections.unmodifiableSet(enumSet)));
                    contentValues.put("read", Integer.valueOf(enumSet.contains(Flag.SEEN) ? 1 : 0));
                    contentValues.put("flagged", Integer.valueOf(enumSet.contains(Flag.FLAGGED) ? 1 : 0));
                    contentValues.put("answered", Integer.valueOf(enumSet.contains(Flag.ANSWERED) ? 1 : 0));
                    contentValues.put("forwarded", Integer.valueOf(enumSet.contains(Flag.FORWARDED) ? 1 : 0));
                    sQLiteDatabase.update("messages", contentValues, "id = ?", new String[]{Long.toString(localMessage2.databaseId)});
                    break;
            }
            return null;
        }

        public String encode(String str) {
            if (this.val$value) {
                return str;
            }
            ByteBuffer encode = ((Charset) this.val$messages).encode(str);
            byte[] bArr = new byte[encode.limit()];
            encode.get(bArr);
            Charset charset = (Charset) this.val$flags;
            charset.getClass();
            return new String(bArr, charset);
        }

        public CrossStatus getCrossStatus() {
            CircularArray circularArray = (CircularArray) this.val$flags;
            int i = circularArray.head;
            int i2 = circularArray.tail;
            return i < i2 ? CrossStatus.NOT_CROSSED : i > i2 ? CrossStatus.CROSSED : CrossStatus.COLLAPSED;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public int getHeight() {
            int height;
            synchronized (this.val$flags) {
                height = ((ImageReader) this.val$messages).getHeight();
            }
            return height;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public int getImageFormat() {
            int imageFormat;
            synchronized (this.val$flags) {
                imageFormat = ((ImageReader) this.val$messages).getImageFormat();
            }
            return imageFormat;
        }

        @Override // org.slf4j.ILoggerFactory
        public synchronized Logger getLogger(String str) {
            SubstituteLogger substituteLogger;
            substituteLogger = (SubstituteLogger) ((HashMap) this.val$messages).get(str);
            if (substituteLogger == null) {
                substituteLogger = new SubstituteLogger(str, (LinkedBlockingQueue) this.val$flags, this.val$value);
                ((HashMap) this.val$messages).put(str, substituteLogger);
            }
            return substituteLogger;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public int getMaxImages() {
            int maxImages;
            synchronized (this.val$flags) {
                maxImages = ((ImageReader) this.val$messages).getMaxImages();
            }
            return maxImages;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public Surface getSurface() {
            Surface surface;
            synchronized (this.val$flags) {
                surface = ((ImageReader) this.val$messages).getSurface();
            }
            return surface;
        }

        public String getToken() {
            AuthStateStorage authStateStorage = (AuthStateStorage) this.val$messages;
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            String authorizationState = authStateStorage.getAuthorizationState();
            if (authorizationState == null) {
                throw new AuthenticationFailedException("Login required", (Exception) null, 6);
            }
            AuthState jsonDeserialize = AuthState.jsonDeserialize(authorizationState);
            if (this.val$value) {
                jsonDeserialize.mNeedsTokenRefreshOverride = true;
            }
            String accessToken = jsonDeserialize.getAccessToken();
            try {
                jsonDeserialize.performActionWithFreshTokens((AuthorizationService) this.val$flags, new RealOAuth2TokenProvider$$ExternalSyntheticLambda0(ref$ObjectRef, ref$ObjectRef2, countDownLatch));
                countDownLatch.await(30000L, TimeUnit.MILLISECONDS);
                AuthorizationException authorizationException = (AuthorizationException) ref$ObjectRef2.element;
                if (Intrinsics.areEqual(authorizationException, AuthorizationException.GeneralErrors.NETWORK_ERROR) || Intrinsics.areEqual(authorizationException, AuthorizationException.GeneralErrors.SERVER_ERROR) || Intrinsics.areEqual(authorizationException, AuthorizationException.AuthorizationRequestErrors.SERVER_ERROR) || Intrinsics.areEqual(authorizationException, AuthorizationException.AuthorizationRequestErrors.TEMPORARILY_UNAVAILABLE)) {
                    throw new IOException("Error while fetching an access token", authorizationException);
                }
                if (authorizationException != null) {
                    authStateStorage.updateAuthorizationState(null);
                    throw new AuthenticationFailedException("Failed to fetch an access token", authorizationException.error, authorizationException);
                }
                if (!Intrinsics.areEqual(ref$ObjectRef.element, accessToken)) {
                    this.val$value = false;
                    authStateStorage.updateAuthorizationState(jsonDeserialize.jsonSerializeString());
                }
                String str = (String) ref$ObjectRef.element;
                if (str != null) {
                    return str;
                }
                throw new AuthenticationFailedException("Failed to fetch an access token", (Exception) null, 6);
            } catch (Exception e) {
                Log.w(e, "Failed to fetch an access token. Clearing authorization state.", new Object[0]);
                authStateStorage.updateAuthorizationState(null);
                throw new AuthenticationFailedException("Failed to fetch an access token", e, 4);
            }
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public int getWidth() {
            int width;
            synchronized (this.val$flags) {
                width = ((ImageReader) this.val$messages).getWidth();
            }
            return width;
        }

        @Override // org.jsoup.select.NodeVisitor
        public void head(Node node, int i) {
            StringBuilder sb = (StringBuilder) this.val$flags;
            String nodeName = node.nodeName();
            nodeName.getClass();
            if (node instanceof TextNode) {
                String text = ((TextNode) node).text();
                text.getClass();
                append(text);
                if (this.val$value) {
                    sb.append(text);
                    return;
                }
                return;
            }
            if (nodeName.equals("li")) {
                startNewLine();
                append("* ");
            } else if (nodeName.equals("a") && node.hasAttr("href")) {
                this.val$value = true;
                sb.setLength(0);
            } else if ((node instanceof Element) && ((Element) node).tag.isBlock) {
                startNewLine();
            }
        }

        public void onDragDone() {
            if (this.val$value) {
                TextFieldSelectionManager.m307access$maybeSuggestSelectionOEnZFl4((TextFieldSelectionManager) this.val$flags, (TextRange) this.val$messages);
            }
        }

        public LinkedHashMap resolveAndValidateDynamicRanges(ArrayList arrayList, List list, List list2) {
            DynamicRange dynamicRange;
            Iterator it;
            Set set;
            DynamicRange dynamicRange2;
            BiometricPrompt biometricPrompt = (BiometricPrompt) this.val$flags;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                DynamicRange dynamicRange3 = ((AutoValue_AttachedSurfaceInfo) it2.next()).dynamicRange;
                dynamicRange3.getClass();
                linkedHashSet.add(dynamicRange3);
            }
            Set supportedDynamicRanges = ((DynamicRangeProfilesCompat$DynamicRangeProfilesCompatImpl) biometricPrompt.mClientFragmentManager).getSupportedDynamicRanges();
            Set mutableSet = CollectionsKt.toMutableSet(supportedDynamicRanges);
            Iterator it3 = linkedHashSet.iterator();
            while (it3.hasNext()) {
                updateConstraints(mutableSet, (DynamicRange) it3.next(), biometricPrompt);
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            Iterator it4 = list2.iterator();
            while (it4.hasNext()) {
                UseCaseConfig useCaseConfig = (UseCaseConfig) list.get(((Number) it4.next()).intValue());
                DynamicRange dynamicRange4 = useCaseConfig.getDynamicRange();
                if (dynamicRange4.equals(DynamicRange.UNSPECIFIED)) {
                    arrayList4.add(useCaseConfig);
                } else {
                    int i = dynamicRange4.mEncoding;
                    int i2 = dynamicRange4.mBitDepth;
                    if (i == 2 || ((i != 0 && i2 == 0) || (i == 0 && i2 != 0))) {
                        arrayList3.add(useCaseConfig);
                    } else {
                        arrayList2.add(useCaseConfig);
                    }
                }
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet();
            ArrayList arrayList5 = new ArrayList();
            arrayList5.addAll(arrayList2);
            arrayList5.addAll(arrayList3);
            arrayList5.addAll(arrayList4);
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                UseCaseConfig useCaseConfig2 = (UseCaseConfig) it5.next();
                DynamicRange dynamicRange5 = useCaseConfig2.getDynamicRange();
                String targetName = useCaseConfig2.getTargetName();
                targetName.getClass();
                if (dynamicRange5.isFullySpecified()) {
                    set = supportedDynamicRanges;
                    it = it5;
                    dynamicRange = mutableSet.contains(dynamicRange5) ? dynamicRange5 : null;
                } else {
                    int i3 = dynamicRange5.mEncoding;
                    int i4 = dynamicRange5.mBitDepth;
                    dynamicRange = DynamicRange.SDR;
                    if (i3 == 1 && i4 == 0) {
                        if (!mutableSet.contains(dynamicRange)) {
                            dynamicRange = null;
                        }
                        set = supportedDynamicRanges;
                        it = it5;
                    } else {
                        DynamicRange findSupportedHdrMatch = findSupportedHdrMatch(dynamicRange5, linkedHashSet, mutableSet);
                        it = it5;
                        set = supportedDynamicRanges;
                        if (findSupportedHdrMatch == null) {
                            findSupportedHdrMatch = findSupportedHdrMatch(dynamicRange5, linkedHashSet2, mutableSet);
                            if (findSupportedHdrMatch == null) {
                                if (!canResolveWithinConstraints(dynamicRange5, dynamicRange, mutableSet)) {
                                    if (i3 == 2 && (i4 == 10 || i4 == 0)) {
                                        LinkedHashSet linkedHashSet3 = new LinkedHashSet();
                                        if (Build.VERSION.SDK_INT >= 33) {
                                            dynamicRange2 = Api33Impl.getRecommended10BitDynamicRange((CameraMetadata) this.val$messages);
                                            if (dynamicRange2 != null) {
                                                linkedHashSet3.add(dynamicRange2);
                                            }
                                        } else {
                                            dynamicRange2 = null;
                                        }
                                        linkedHashSet3.add(DynamicRange.HLG_10_BIT);
                                        DynamicRange findSupportedHdrMatch2 = findSupportedHdrMatch(dynamicRange5, linkedHashSet3, mutableSet);
                                        if (findSupportedHdrMatch2 != null) {
                                            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                                StringBuilder m31m = CameraDevices$CC.m31m("DynamicRangeResolver: Resolved dynamic range for use case ", targetName, "from ");
                                                m31m.append(findSupportedHdrMatch2.equals(dynamicRange2) ? "recommended" : "required");
                                                m31m.append(" 10-bit supported dynamic range.\n");
                                                m31m.append(dynamicRange5);
                                                m31m.append("\n->\n");
                                                m31m.append(findSupportedHdrMatch2);
                                                android.util.Log.d("CXCP", m31m.toString());
                                            }
                                            dynamicRange = findSupportedHdrMatch2;
                                        }
                                    }
                                    Iterator it6 = mutableSet.iterator();
                                    while (true) {
                                        if (!it6.hasNext()) {
                                            dynamicRange = null;
                                            break;
                                        }
                                        DynamicRange dynamicRange6 = (DynamicRange) it6.next();
                                        if (!dynamicRange6.isFullySpecified()) {
                                            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Candidate dynamic range must be fully specified.");
                                            return null;
                                        }
                                        if (!dynamicRange6.equals(dynamicRange) && canResolveDynamicRange(dynamicRange5, dynamicRange6)) {
                                            if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                                android.util.Log.d("CXCP", "DynamicRangeResolver: Resolved dynamic range for use case " + targetName + " from validated dynamic range constraints or supported HDR dynamic ranges.\n" + dynamicRange5 + "\n->\n" + dynamicRange6);
                                            }
                                            dynamicRange = dynamicRange6;
                                        }
                                    }
                                } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                    android.util.Log.d("CXCP", "DynamicRangeResolver: Resolved dynamic range for use case " + targetName + " to no compatible HDR dynamic ranges.\n" + dynamicRange5 + "\n->\n" + dynamicRange);
                                }
                            } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                                android.util.Log.d("CXCP", "DynamicRangeResolver: Resolved dynamic range for use case " + targetName + " from concurrently bound use case.\n" + dynamicRange5 + "\n->\n" + findSupportedHdrMatch);
                            }
                        } else if (Utf8.SafeProcessor.isDebugEnabled("CXCP")) {
                            android.util.Log.d("CXCP", "DynamicRangeResolver: Resolved dynamic range for use case " + targetName + " from existing attached surface.\n" + dynamicRange5 + "\n->\n" + findSupportedHdrMatch);
                        }
                        dynamicRange = findSupportedHdrMatch;
                    }
                }
                if (dynamicRange == null) {
                    throw new IllegalArgumentException("Unable to resolve supported dynamic range. The dynamic range may not be supported on the device or may not be allowed concurrently with other attached use cases.\nUse case:\n  " + useCaseConfig2.getTargetName() + "\nRequested dynamic range:\n  " + dynamicRange5 + "\nSupported dynamic ranges:\n  " + set + "\nConstrained set of concurrent dynamic ranges:\n  " + mutableSet);
                }
                updateConstraints(mutableSet, dynamicRange, biometricPrompt);
                linkedHashMap.put(useCaseConfig2, dynamicRange);
                if (!linkedHashSet.contains(dynamicRange)) {
                    linkedHashSet2.add(dynamicRange);
                }
                it5 = it;
                supportedDynamicRanges = set;
            }
            return linkedHashMap;
        }

        @Override // androidx.camera.core.impl.ImageReaderProxy
        public void setOnImageAvailableListener(final ImageReaderProxy.OnImageAvailableListener onImageAvailableListener, final Executor executor) {
            synchronized (this.val$flags) {
                this.val$value = false;
                ((ImageReader) this.val$messages).setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: androidx.camera.core.AndroidImageReaderProxy$$ExternalSyntheticLambda0
                    @Override // android.media.ImageReader.OnImageAvailableListener
                    public final void onImageAvailable(ImageReader imageReader) {
                        LocalFolder.AnonymousClass12 anonymousClass12 = LocalFolder.AnonymousClass12.this;
                        Executor executor2 = executor;
                        ImageReaderProxy.OnImageAvailableListener onImageAvailableListener2 = onImageAvailableListener;
                        synchronized (anonymousClass12.val$flags) {
                            try {
                                if (!anonymousClass12.val$value) {
                                    executor2.execute(new CameraX$$ExternalSyntheticLambda2(9, anonymousClass12, onImageAvailableListener2));
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, RelationUtil.getInstance());
            }
        }

        public void startNewLine() {
            StringBuilder sb = (StringBuilder) this.val$messages;
            if (sb.length() == 0 || StringsKt.last(sb) == '\n') {
                return;
            }
            append("\n");
        }

        @Override // org.jsoup.select.NodeVisitor
        public void tail(Node node, int i) {
            char c;
            String nodeName = node.nodeName();
            nodeName.getClass();
            if (nodeName.equals("li")) {
                append("\n");
                return;
            }
            if (nodeName.equals("br")) {
                append("\n");
                return;
            }
            if (node instanceof Element) {
                Element element = (Element) node;
                if (element.tag.isBlock) {
                    AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                    Node node2 = element;
                    int i2 = 0;
                    while (node2 != null) {
                        char c2 = 1;
                        if (!(node2 instanceof TextNode) || StringUtil.isBlank(((TextNode) node2).coreValue())) {
                            c = 1;
                        } else {
                            atomicBoolean.set(true);
                            c = 5;
                        }
                        if (c == 5) {
                            break;
                        }
                        if (c != 1 || node2.childNodeSize() <= 0) {
                            while (node2.nextSibling() == null && i2 > 0) {
                                if (c == 1 || c == 2) {
                                    c = 1;
                                }
                                Node node3 = node2.parentNode;
                                i2--;
                                if (c == 4) {
                                    node2.remove();
                                }
                                c = 1;
                                node2 = node3;
                            }
                            if (c != 1 && c != 2) {
                                c2 = c;
                            }
                            if (node2 == element) {
                                break;
                            }
                            Node nextSibling = node2.nextSibling();
                            if (c2 == 4) {
                                node2.remove();
                            }
                            node2 = nextSibling;
                        } else {
                            node2 = node2.childNode(0);
                            i2++;
                        }
                    }
                    if (atomicBoolean.get()) {
                        StringBuilder sb = (StringBuilder) this.val$messages;
                        if (sb.length() == 0 || StringsKt.endsWith$default(sb, "\n\n")) {
                            return;
                        }
                        startNewLine();
                        append("\n");
                        return;
                    }
                    return;
                }
            }
            if (nodeName.equals("a") && node.hasAttr("href")) {
                this.val$value = false;
                String absUrl = node.absUrl("href");
                absUrl.getClass();
                if (absUrl.length() <= 0 || ((StringBuilder) this.val$flags).toString().equals(node.attr("href"))) {
                    return;
                }
                append(" <" + node.attr("href") + ">");
            }
        }

        public String toString() {
            int i = this.$r8$classId;
            Object obj = this.val$flags;
            switch (i) {
                case 4:
                    return "SingleSelectionLayout(isStartHandle=" + this.val$value + ", crossed=" + getCrossStatus() + ", info=\n\t" + ((CircularArray) obj) + ')';
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    StringBuilder sb = new StringBuilder();
                    sb.append(super.toString());
                    sb.append("{numRequests=");
                    sb.append(((Set) obj).size());
                    sb.append(", isPaused=");
                    return CameraDevices$CC.m("}", sb, this.val$value);
                case 11:
                    StringBuilder sb2 = (StringBuilder) this.val$messages;
                    if (sb2.length() == 0) {
                        return "";
                    }
                    int length = sb2.length() - 1;
                    while (length >= 0 && sb2.charAt(length) == '\n') {
                        length--;
                    }
                    String substring = sb2.substring(0, length + 1);
                    substring.getClass();
                    return substring;
                default:
                    return super.toString();
            }
        }

        public long updateMouseSelection(TextFieldValue textFieldValue, long j, boolean z, StreamSharing$$ExternalSyntheticLambda0 streamSharing$$ExternalSyntheticLambda0) {
            TextFieldSelectionManager textFieldSelectionManager = (TextFieldSelectionManager) this.val$flags;
            long m308access$updateSelectionjSglsI8 = TextFieldSelectionManager.m308access$updateSelectionjSglsI8(textFieldSelectionManager, textFieldValue, j, z, false, streamSharing$$ExternalSyntheticLambda0, false, null);
            if (!TextRange.m697equalsimpl(m308access$updateSelectionjSglsI8, (TextRange) this.val$messages)) {
                this.val$value = false;
            }
            textFieldSelectionManager.setHandleState(TextRange.m699getCollapsedimpl(m308access$updateSelectionjSglsI8) ? HandleState.Cursor : HandleState.Selection);
            return m308access$updateSelectionjSglsI8;
        }

        public AnonymousClass12(Context context, AuthStateStorage authStateStorage) {
            this.$r8$classId = 8;
            authStateStorage.getClass();
            this.val$messages = authStateStorage;
            this.val$flags = new AuthorizationService(context);
        }

        public AnonymousClass12(LongSparseArray longSparseArray, WeakCache weakCache) {
            this.$r8$classId = 6;
            this.val$messages = longSparseArray;
            this.val$flags = weakCache;
        }

        public AnonymousClass12(CameraMetadata cameraMetadata) {
            this.$r8$classId = 2;
            cameraMetadata.getClass();
            this.val$messages = cameraMetadata;
            CameraCharacteristics.Key key = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
            key.getClass();
            int[] iArr = (int[]) ((Camera2CameraMetadata) cameraMetadata).get(key);
            this.val$value = iArr != null ? ArraysKt___ArraysKt.contains(iArr, 18) : false;
            this.val$flags = Api33Impl.fromCameraMetaData(cameraMetadata);
        }

        public AnonymousClass12(ImageReader imageReader) {
            this.$r8$classId = 3;
            this.val$flags = new Object();
            this.val$value = true;
            this.val$messages = imageReader;
        }

        public AnonymousClass12(Context context) {
            Object singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
            this.$r8$classId = 1;
            this.val$flags = new HashSet();
            GlideSuppliers$1 glideSuppliers$1 = new GlideSuppliers$1(new NavContext(context, 11));
            SingletonConnectivityReceiver$2 singletonConnectivityReceiver$2 = new SingletonConnectivityReceiver$2(this);
            if (Build.VERSION.SDK_INT >= 24) {
                singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 = new SingletonConnectivityReceiver$FrameworkConnectivityMonitorPostApi24(glideSuppliers$1, singletonConnectivityReceiver$2);
            } else {
                singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 = new SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24(context, glideSuppliers$1, singletonConnectivityReceiver$2);
            }
            this.val$messages = singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
        }

        public AnonymousClass12(LocalMessage localMessage, Flag flag, boolean z) {
            this.$r8$classId = 10;
            this.val$flags = localMessage;
            this.val$messages = flag;
            this.val$value = z;
        }

        public AnonymousClass12(boolean z, Selection selection, CircularArray circularArray) {
            this.$r8$classId = 4;
            this.val$value = z;
            this.val$messages = selection;
            this.val$flags = circularArray;
        }

        public AnonymousClass12(TextFieldSelectionManager textFieldSelectionManager) {
            this.$r8$classId = 5;
            this.val$flags = textFieldSelectionManager;
            this.val$value = true;
        }

        public AnonymousClass12(List list, Set set, boolean z) {
            this.$r8$classId = 0;
            this.val$messages = list;
            this.val$flags = set;
            this.val$value = z;
        }
    }

    public final void open() {
        if (this.databaseId == -1 || this.name == null) {
            this.localStore.database.execute(false, new AnonymousClass1(this, 0));
        }
    }
}
