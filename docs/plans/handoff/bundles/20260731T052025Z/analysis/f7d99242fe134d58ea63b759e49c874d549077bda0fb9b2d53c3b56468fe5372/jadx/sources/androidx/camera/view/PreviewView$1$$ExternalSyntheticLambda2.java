package androidx.camera.view;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Size;
import androidx.camera.core.AutoValue_SurfaceRequest_TransformationInfo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.view.PreviewView;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment$$ExternalSyntheticLambda0;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.work.DirectExecutor;
import androidx.work.WorkRequest;
import androidx.work.WorkerKt$$ExternalSyntheticLambda1;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import app.k9mail.legacy.mailstore.CreateFolderInfo;
import app.k9mail.legacy.mailstore.FolderMapper;
import app.k9mail.legacy.mailstore.FolderSettings;
import com.fsck.k9.Preferences$getAccountFlow$1;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.storage.messages.K9MessageStoreFactoryKt;
import com.google.zxing.BinaryBitmap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import kotlin.Unit;
import kotlin.collections.builders.SetBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import net.thunderbird.feature.account.AccountId;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class PreviewView$1$$ExternalSyntheticLambda2 implements SurfaceRequest.TransformationInfoListener, CallbackToFutureAdapter$Resolver, LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ Object f$2;

    public /* synthetic */ PreviewView$1$$ExternalSyntheticLambda2(PreviewView.AnonymousClass1 anonymousClass1, CameraInternal cameraInternal, SurfaceRequest surfaceRequest) {
        this.$r8$classId = 1;
        this.f$0 = anonymousClass1;
        this.f$2 = cameraInternal;
        this.f$1 = surfaceRequest;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        int i = this.$r8$classId;
        DirectExecutor directExecutor = DirectExecutor.INSTANCE;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 2:
                String str = (String) obj2;
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                callbackToFutureAdapter$Completer.addCancellationListener(new WorkerKt$$ExternalSyntheticLambda1(atomicBoolean, 1), directExecutor);
                ((Executor) obj3).execute(new WorkerKt$$ExternalSyntheticLambda2(atomicBoolean, callbackToFutureAdapter$Completer, (Function0) obj, 1));
                return str;
            default:
                CoroutineContext coroutineContext = (CoroutineContext) obj3;
                callbackToFutureAdapter$Completer.addCancellationListener(new Fragment$$ExternalSyntheticLambda0(4, (Job) coroutineContext.get(Job.Key.$$INSTANCE)), directExecutor);
                return JobKt.launch$default(JobKt.CoroutineScope(coroutineContext), null, (CoroutineStart) obj2, new Preferences$getAccountFlow$1((Function2) obj, callbackToFutureAdapter$Completer, null, 10), 1);
        }
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        Object obj = this.f$2;
        Object obj2 = this.f$1;
        Object obj3 = this.f$0;
        switch (i) {
            case 4:
                SetBuilder setBuilder = (SetBuilder) obj2;
                BinaryBitmap binaryBitmap = (BinaryBitmap) obj;
                Iterator it = ((ArrayList) obj3).iterator();
                while (it.hasNext()) {
                    CreateFolderInfo createFolderInfo = (CreateFolderInfo) it.next();
                    FolderSettings folderSettings = createFolderInfo.settings;
                    ContentValues contentValues = new ContentValues();
                    String str = createFolderInfo.name;
                    Pattern compile = Pattern.compile("\\[(Gmail|Google Mail)]/");
                    compile.getClass();
                    str.getClass();
                    String replaceAll = compile.matcher(str).replaceAll("");
                    replaceAll.getClass();
                    contentValues.put("name", replaceAll);
                    contentValues.put("visible_limit", Integer.valueOf(folderSettings.visibleLimit));
                    contentValues.put("integrate", Boolean.valueOf(folderSettings.integrate));
                    contentValues.put("top_group", Boolean.valueOf(folderSettings.inTopGroup));
                    contentValues.put("sync_enabled", Boolean.valueOf(folderSettings.isSyncEnabled));
                    contentValues.put("push_enabled", Boolean.valueOf(folderSettings.isPushEnabled));
                    contentValues.put("visible", Boolean.valueOf(folderSettings.isVisible));
                    contentValues.put("notifications_enabled", Boolean.valueOf(folderSettings.isNotificationsEnabled));
                    contentValues.put("server_id", createFolderInfo.serverId);
                    contentValues.put("local_only", Boolean.FALSE);
                    contentValues.put("type", SchemaInfoUtilKt.toDatabaseFolderType(createFolderInfo.type));
                    contentValues.put("account_id", ((AccountId) binaryBitmap.matrix).value.toString());
                    long insert = sQLiteDatabase.insert("folders", null, contentValues);
                    Long valueOf = Long.valueOf(insert);
                    if (insert == -1) {
                        valueOf = null;
                    }
                    if (valueOf != null) {
                        setBuilder.add(Long.valueOf(valueOf.longValue()));
                    }
                }
                return Unit.INSTANCE;
            case 5:
                FolderMapper folderMapper = (FolderMapper) obj;
                Cursor query = sQLiteDatabase.query("folders", K9MessageStoreFactoryKt.FOLDER_COLUMNS, (String) obj3, (String[]) obj2, null, null, null);
                try {
                    Object map = query.moveToFirst() ? folderMapper.map(new ConnectionPool(5, query)) : null;
                    query.close();
                    return map;
                } finally {
                }
            default:
                ContentValues contentValues2 = new ContentValues();
                Pattern compile2 = Pattern.compile("\\[(Gmail|Google Mail)]/");
                compile2.getClass();
                String replaceAll2 = compile2.matcher((String) obj2).replaceAll("");
                replaceAll2.getClass();
                contentValues2.put("name", replaceAll2);
                contentValues2.put("type", SchemaInfoUtilKt.toDatabaseFolderType((FolderType) obj));
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues2, "server_id = ?", new String[]{(String) obj3}));
        }
    }

    public void onSurfaceNotInUse() {
        PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) this.f$0;
        PreviewStreamStateObserver previewStreamStateObserver = (PreviewStreamStateObserver) this.f$1;
        CameraInternal cameraInternal = (CameraInternal) this.f$2;
        AtomicReference atomicReference = ((PreviewView) anonymousClass1.this$0).mActiveStreamStateObserver;
        while (true) {
            if (atomicReference.compareAndSet(previewStreamStateObserver, null)) {
                previewStreamStateObserver.updatePreviewStreamState(PreviewView.StreamState.IDLE);
                break;
            } else if (atomicReference.get() != previewStreamStateObserver) {
                break;
            }
        }
        FutureChain futureChain = previewStreamStateObserver.mFlowFuture;
        if (futureChain != null) {
            futureChain.cancel(false);
            previewStreamStateObserver.mFlowFuture = null;
        }
        cameraInternal.getCameraState().removeObserver(previewStreamStateObserver);
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo) {
        WorkRequest.Builder builder;
        PreviewView.AnonymousClass1 anonymousClass1 = (PreviewView.AnonymousClass1) this.f$0;
        CameraInternal cameraInternal = (CameraInternal) this.f$2;
        SurfaceRequest surfaceRequest = (SurfaceRequest) this.f$1;
        PreviewView previewView = (PreviewView) anonymousClass1.this$0;
        Utf8.SafeProcessor.d("PreviewView", "Preview transformation info updated. " + autoValue_SurfaceRequest_TransformationInfo);
        boolean z = cameraInternal.getCameraInfoInternal().getLensFacing() == 0;
        PreviewTransformation previewTransformation = previewView.mPreviewTransform;
        Size size = surfaceRequest.mResolution;
        previewTransformation.getClass();
        Utf8.SafeProcessor.d("PreviewTransform", "Transformation info set: " + autoValue_SurfaceRequest_TransformationInfo + " " + size + " " + z);
        previewTransformation.mSurfaceCropRect = autoValue_SurfaceRequest_TransformationInfo.getCropRect;
        previewTransformation.mPreviewRotationDegrees = autoValue_SurfaceRequest_TransformationInfo.getRotationDegrees;
        int i = autoValue_SurfaceRequest_TransformationInfo.getTargetRotation;
        previewTransformation.mTargetRotation = i;
        previewTransformation.mResolution = size;
        previewTransformation.mIsFrontCamera = z;
        previewTransformation.mHasCameraTransform = autoValue_SurfaceRequest_TransformationInfo.hasCameraTransform;
        previewTransformation.mSensorToBufferTransform = autoValue_SurfaceRequest_TransformationInfo.getSensorToBufferTransform;
        if (i == -1 || ((builder = previewView.mImplementation) != null && (builder instanceof SurfaceViewImplementation))) {
            previewView.mUseDisplayRotation = true;
        } else {
            previewView.mUseDisplayRotation = false;
        }
        previewView.redrawPreview();
    }

    public /* synthetic */ PreviewView$1$$ExternalSyntheticLambda2(Object obj, Object obj2, Object obj3, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = obj3;
    }
}
