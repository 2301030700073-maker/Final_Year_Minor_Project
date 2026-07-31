package com.fsck.k9.mailstore;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Trace;
import android.text.TextUtils;
import androidx.appcompat.app.ActionBar;
import androidx.biometric.BiometricPrompt;
import androidx.camera.camera2.adapter.CameraCoordinatorAdapter;
import androidx.camera.camera2.adapter.CameraInternalAdapter;
import androidx.camera.core.CameraFilter;
import androidx.camera.core.CameraIdentifier;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.CameraX;
import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.AutoValue_Identifier;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraPresenceProvider;
import androidx.camera.core.impl.CameraPresenceProvider$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.ExtendedCameraConfigProviderStore;
import androidx.camera.core.impl.utils.executor.HandlerScheduledExecutorService;
import androidx.camera.lifecycle.LifecycleCameraRepository;
import androidx.compose.ui.node.NodeChain;
import com.fsck.k9.helper.FileHelper;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.preferences.DefaultGeneralSettingsManager;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.io.Sink$CC;
import net.openid.appauth.TokenResponse;
import net.thunderbird.core.common.state.StateMachine;
import net.thunderbird.core.logging.Logger;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.preference.GeneralSettingsManager;
import okhttp3.ConnectionPool;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.Okio;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.helper.Validate;
import org.slf4j.event.EventRecodingLogger;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LockableDatabase implements StateMachine {
    public Object context;
    public Object generalSettingsManager;
    public Object inTransaction;
    public Object mDb;
    public Object mReadLock;
    public Object mSchemaDefinition;
    public Object mWriteLock;
    public Object storageFilesProvider;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface DbCallback {
        Object doDbWork(SQLiteDatabase sQLiteDatabase);
    }

    public static final BiometricPrompt access$getCameraConfig(LockableDatabase lockableDatabase, CameraSelector cameraSelector) {
        Iterator it = cameraSelector.mCameraFilterSet.iterator();
        it.getClass();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            AutoValue_Identifier autoValue_Identifier = CameraFilter.DEFAULT_ID;
            if (!Intrinsics.areEqual(autoValue_Identifier, autoValue_Identifier)) {
                synchronized (ExtendedCameraConfigProviderStore.LOCK) {
                }
                ((Context) lockableDatabase.context).getClass();
            }
        }
        return CameraConfigs.DEFAULT_CAMERA_CONFIG;
    }

    public static final void access$setCameraOperatingMode(LockableDatabase lockableDatabase, int i) {
        CameraRepository cameraRepository;
        CameraX cameraX = (CameraX) lockableDatabase.storageFilesProvider;
        if (cameraX != null) {
            cameraX.getClass();
            NodeChain nodeChain = cameraX.mCameraFactory;
            if (nodeChain == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("CameraX not initialized yet.");
                return;
            }
            CameraCoordinatorAdapter cameraCoordinatorAdapter = (CameraCoordinatorAdapter) nodeChain.tail;
            synchronized (cameraCoordinatorAdapter.lock) {
                cameraCoordinatorAdapter.concurrentMode = i;
                cameraRepository = cameraCoordinatorAdapter.cameraRepository;
            }
            if (cameraRepository == null) {
                return;
            }
            cameraCoordinatorAdapter.concurrentModeOn = i == 2;
            Iterator it = cameraRepository.getCameras().iterator();
            it.getClass();
            while (it.hasNext()) {
                CameraInternal cameraInternal = (CameraInternal) it.next();
                CameraInternalAdapter cameraInternalAdapter = cameraInternal instanceof CameraInternalAdapter ? (CameraInternalAdapter) cameraInternal : null;
                if (cameraInternalAdapter != null) {
                    if (i == 1) {
                        cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(true);
                    } else if (i == 2) {
                        cameraInternalAdapter.setCameraGraphCreationMode$camera_camera2(false);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0073 A[Catch: all -> 0x0079, TryCatch #0 {all -> 0x0079, blocks: (B:6:0x0041, B:8:0x0055, B:10:0x0061, B:12:0x0065, B:17:0x0073, B:18:0x0076, B:58:0x007c), top: B:5:0x0041, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.camera.lifecycle.LifecycleCamera bindToLifecycleInternal$default(com.fsck.k9.mailstore.LockableDatabase r17, androidx.lifecycle.LifecycleOwner r18, androidx.camera.core.CameraSelector r19, androidx.camera.core.LegacySessionConfig r20) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LockableDatabase.bindToLifecycleInternal$default(com.fsck.k9.mailstore.LockableDatabase, androidx.lifecycle.LifecycleOwner, androidx.camera.core.CameraSelector, androidx.camera.core.LegacySessionConfig):androidx.camera.lifecycle.LifecycleCamera");
    }

    public void debug(Function0 function0) {
        Logger logger;
        if (((EventRecodingLogger) this.mWriteLock) == null || (logger = (Logger) this.mDb) == null) {
            return;
        }
        Sink$CC.debug$default(logger, (String) this.mReadLock, null, function0, 2);
    }

    public Object execute(boolean z, DbCallback dbCallback) {
        long currentTimeMillis;
        ThreadLocal threadLocal = (ThreadLocal) this.inTransaction;
        Lock lock = (Lock) this.mReadLock;
        lock.lock();
        boolean z2 = z && threadLocal.get() == null;
        try {
            boolean z3 = ((DefaultGeneralSettingsManager) ((GeneralSettingsManager) this.generalSettingsManager)).getConfig().debugging.isDebugLoggingEnabled;
            if (z2) {
                threadLocal.set(Boolean.TRUE);
                ((SQLiteDatabase) this.mDb).beginTransaction();
            }
            try {
                Object doDbWork = dbCallback.doDbWork((SQLiteDatabase) this.mDb);
                if (z2) {
                    ((SQLiteDatabase) this.mDb).setTransactionSuccessful();
                }
                if (z2) {
                    currentTimeMillis = z3 ? System.currentTimeMillis() : 0L;
                    ((SQLiteDatabase) this.mDb).endTransaction();
                    if (z3) {
                        Log.v("LockableDatabase: Transaction ended, took %d ms / %s", Long.valueOf(System.currentTimeMillis() - currentTimeMillis), new Exception().getStackTrace()[1]);
                    }
                }
                return doDbWork;
            } catch (Throwable th) {
                if (z2) {
                    currentTimeMillis = z3 ? System.currentTimeMillis() : 0L;
                    ((SQLiteDatabase) this.mDb).endTransaction();
                    if (z3) {
                        Log.v("LockableDatabase: Transaction ended, took %d ms / %s", Long.valueOf(System.currentTimeMillis() - currentTimeMillis), new Exception().getStackTrace()[1]);
                    }
                }
                throw th;
            }
        } finally {
            if (z2) {
                threadLocal.set(null);
            }
            lock.unlock();
        }
    }

    public void fromResponseJson(JSONObject jSONObject) {
        String string = AtomicFU.getString(jSONObject, "token_type");
        Okio.checkNotEmpty(string, "token type must not be empty if defined");
        this.mReadLock = string;
        String stringIfDefined = AtomicFU.getStringIfDefined(jSONObject, "access_token");
        if (stringIfDefined != null) {
            Okio.checkNotEmpty(stringIfDefined, "access token cannot be empty if specified");
        }
        this.mWriteLock = stringIfDefined;
        this.context = AtomicFU.getLongIfDefined(jSONObject, "expires_at");
        if (jSONObject.has("expires_in")) {
            long j = jSONObject.getLong("expires_in");
            this.context = Long.valueOf(TimeUnit.SECONDS.toMillis(j) + System.currentTimeMillis());
        }
        String stringIfDefined2 = AtomicFU.getStringIfDefined(jSONObject, "refresh_token");
        if (stringIfDefined2 != null) {
            Okio.checkNotEmpty(stringIfDefined2, "refresh token must not be empty if defined");
        }
        this.inTransaction = stringIfDefined2;
        String stringIfDefined3 = AtomicFU.getStringIfDefined(jSONObject, "id_token");
        if (stringIfDefined3 != null) {
            Okio.checkNotEmpty(stringIfDefined3, "id token must not be empty if defined");
        }
        this.storageFilesProvider = stringIfDefined3;
        String stringIfDefined4 = AtomicFU.getStringIfDefined(jSONObject, "scope");
        if (TextUtils.isEmpty(stringIfDefined4)) {
            this.mSchemaDefinition = null;
        } else {
            String[] split = stringIfDefined4.split(" +");
            if (split == null) {
                split = new String[0];
            }
            this.mSchemaDefinition = Jsoup.iterableToString(Arrays.asList(split));
        }
        HashSet hashSet = TokenResponse.BUILT_IN_PARAMS;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!hashSet.contains(next)) {
                linkedHashMap.put(next, jSONObject.get(next).toString());
            }
        }
        this.generalSettingsManager = StringsKt__IndentKt.checkAdditionalParams(linkedHashMap, TokenResponse.BUILT_IN_PARAMS);
    }

    public AdapterCameraInfo getCameraInfo(CameraSelector cameraSelector) {
        Object obj;
        Trace.beginSection(Util.truncatedTraceSectionLabel("CX:getCameraInfo"));
        try {
            CameraX cameraX = (CameraX) this.storageFilesProvider;
            cameraX.getClass();
            CameraInfoInternal cameraInfoInternal = cameraSelector.select(cameraX.mCameraRepository.getCameras()).getCameraInfoInternal();
            cameraInfoInternal.getClass();
            BiometricPrompt access$getCameraConfig = access$getCameraConfig(this, cameraSelector);
            String cameraId = cameraInfoInternal.getCameraId();
            cameraId.getClass();
            CameraIdentifier create = ActionBar.create(cameraId, null, (AutoValue_Identifier) access$getCameraConfig.mClientFragmentManager);
            synchronized (this.mDb) {
                obj = ((HashMap) this.mSchemaDefinition).get(create);
                if (obj == null) {
                    obj = new AdapterCameraInfo(cameraInfoInternal, access$getCameraConfig);
                    ((HashMap) this.mSchemaDefinition).put(create, obj);
                }
            }
            return (AdapterCameraInfo) obj;
        } finally {
            Trace.endSection();
        }
    }

    @Override // net.thunderbird.core.common.state.StateMachine
    public StateFlow getCurrentState() {
        return (ReadonlyStateFlow) this.generalSettingsManager;
    }

    @Override // net.thunderbird.core.common.state.StateMachine
    public Object getCurrentStateSnapshot() {
        return ((ReadonlyStateFlow) this.generalSettingsManager).$$delegate_0.getValue();
    }

    public void initInternal(CameraX cameraX, Context context) {
        CameraPresenceProvider cameraPresenceProvider;
        synchronized (this.mDb) {
            this.storageFilesProvider = cameraX;
            this.context = context;
            if (cameraX != null && (cameraPresenceProvider = cameraX.mCameraPresenceProvider) != null) {
                HandlerScheduledExecutorService mainThreadExecutor = Util.mainThreadExecutor();
                mainThreadExecutor.getClass();
                cameraPresenceProvider.publicApiListeners.add(new CameraPresenceProvider.ListenerWrapper(this, mainThreadExecutor));
                mainThreadExecutor.execute(new CameraPresenceProvider$$ExternalSyntheticLambda0(cameraPresenceProvider, this));
            }
        }
    }

    public void openOrCreateDataspace() {
        Context context = (Context) this.context;
        ConnectionPool connectionPool = (ConnectionPool) this.mSchemaDefinition;
        ((Lock) this.mWriteLock).lock();
        try {
            File prepareStorage = prepareStorage();
            try {
                this.mDb = context.openOrCreateDatabase(prepareStorage.getName(), 0, null);
            } catch (SQLiteException e) {
                Log.w(e, "Unable to open DB %s - removing file and retrying", prepareStorage);
                if (prepareStorage.exists() && !prepareStorage.delete()) {
                    Log.d("Failed to remove %s that couldn't be opened", prepareStorage);
                }
                this.mDb = context.openOrCreateDatabase(prepareStorage.getName(), 0, null);
            }
            ((SQLiteDatabase) this.mDb).execSQL("PRAGMA foreign_keys = ON;");
            int version = ((SQLiteDatabase) this.mDb).getVersion();
            connectionPool.getClass();
            if (version != 91) {
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.mDb;
                try {
                    connectionPool.upgradeDatabase(sQLiteDatabase);
                } catch (Exception e2) {
                    Log.e(e2, "Exception while upgrading database. Resetting the DB to v0", new Object[0]);
                    sQLiteDatabase.setVersion(0);
                    connectionPool.upgradeDatabase(sQLiteDatabase);
                }
            }
            unlockWrite();
        } catch (Throwable th) {
            unlockWrite();
            throw th;
        }
    }

    public File prepareStorage() {
        LocalStore.AnonymousClass1 anonymousClass1 = (LocalStore.AnonymousClass1) this.storageFilesProvider;
        File databaseFile = anonymousClass1.getDatabaseFile();
        File parentFile = databaseFile.getParentFile();
        if (parentFile.isFile()) {
            parentFile.delete();
        }
        if (!parentFile.exists()) {
            if (!parentFile.mkdirs()) {
                Regex$$ExternalSyntheticBUOutline0.m(parentFile, "Unable to access: ");
                return null;
            }
            FileHelper.touchFile(parentFile);
        }
        File attachmentDirectory = anonymousClass1.getAttachmentDirectory();
        File parentFile2 = attachmentDirectory.getParentFile();
        if (!parentFile2.exists()) {
            parentFile2.mkdirs();
            FileHelper.touchFile(parentFile2);
        }
        if (!attachmentDirectory.exists()) {
            attachmentDirectory.mkdirs();
        }
        return databaseFile;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00a0 A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:11:0x0071, B:13:0x00a0, B:14:0x00ad, B:16:0x00b3, B:19:0x00cf, B:22:0x00dd, B:28:0x00ec, B:29:0x00f4, B:31:0x00fa, B:39:0x010e, B:42:0x0118, B:44:0x011d, B:46:0x012b, B:48:0x0149, B:50:0x0153, B:52:0x0159, B:54:0x015c, B:58:0x0168, B:59:0x0184, B:61:0x019b, B:67:0x018e, B:69:0x0196), top: B:10:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x010e A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:11:0x0071, B:13:0x00a0, B:14:0x00ad, B:16:0x00b3, B:19:0x00cf, B:22:0x00dd, B:28:0x00ec, B:29:0x00f4, B:31:0x00fa, B:39:0x010e, B:42:0x0118, B:44:0x011d, B:46:0x012b, B:48:0x0149, B:50:0x0153, B:52:0x0159, B:54:0x015c, B:58:0x0168, B:59:0x0184, B:61:0x019b, B:67:0x018e, B:69:0x0196), top: B:10:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x011d A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:11:0x0071, B:13:0x00a0, B:14:0x00ad, B:16:0x00b3, B:19:0x00cf, B:22:0x00dd, B:28:0x00ec, B:29:0x00f4, B:31:0x00fa, B:39:0x010e, B:42:0x0118, B:44:0x011d, B:46:0x012b, B:48:0x0149, B:50:0x0153, B:52:0x0159, B:54:0x015c, B:58:0x0168, B:59:0x0184, B:61:0x019b, B:67:0x018e, B:69:0x0196), top: B:10:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x019b A[Catch: all -> 0x00e9, TRY_LEAVE, TryCatch #0 {all -> 0x00e9, blocks: (B:11:0x0071, B:13:0x00a0, B:14:0x00ad, B:16:0x00b3, B:19:0x00cf, B:22:0x00dd, B:28:0x00ec, B:29:0x00f4, B:31:0x00fa, B:39:0x010e, B:42:0x0118, B:44:0x011d, B:46:0x012b, B:48:0x0149, B:50:0x0153, B:52:0x0159, B:54:0x015c, B:58:0x0168, B:59:0x0184, B:61:0x019b, B:67:0x018e, B:69:0x0196), top: B:10:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0196 A[Catch: all -> 0x00e9, TryCatch #0 {all -> 0x00e9, blocks: (B:11:0x0071, B:13:0x00a0, B:14:0x00ad, B:16:0x00b3, B:19:0x00cf, B:22:0x00dd, B:28:0x00ec, B:29:0x00f4, B:31:0x00fa, B:39:0x010e, B:42:0x0118, B:44:0x011d, B:46:0x012b, B:48:0x0149, B:50:0x0153, B:52:0x0159, B:54:0x015c, B:58:0x0168, B:59:0x0184, B:61:0x019b, B:67:0x018e, B:69:0x0196), top: B:10:0x0071 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0040  */
    @Override // net.thunderbird.core.common.state.StateMachine
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object process(java.lang.Object r20, kotlin.coroutines.Continuation r21) {
        /*
            Method dump skipped, instructions count: 422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LockableDatabase.process(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00da A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* renamed from: tryOpenCamera-7pD7j80$camera_camera2_pipe, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m938tryOpenCamera7pD7j80$camera_camera2_pipe(java.lang.String r24, int r25, long r26, androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl r28, androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl r29, kotlin.coroutines.jvm.internal.ContinuationImpl r30) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.mailstore.LockableDatabase.m938tryOpenCamera7pD7j80$camera_camera2_pipe(java.lang.String, int, long, androidx.camera.camera2.pipe.compat.Camera2DeviceCloserImpl, androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public void unbindAll() {
        Trace.beginSection(Util.truncatedTraceSectionLabel("CX:unbindAll"));
        try {
            Validate.checkMainThread();
            access$setCameraOperatingMode(this, 0);
            LifecycleCameraRepository lifecycleCameraRepository = (LifecycleCameraRepository) this.inTransaction;
            lifecycleCameraRepository.getClass();
            lifecycleCameraRepository.unbindAll((HashSet) this.generalSettingsManager);
        } finally {
            Trace.endSection();
        }
    }

    public void unlockWrite() {
        ((Lock) this.mWriteLock).unlock();
    }
}
