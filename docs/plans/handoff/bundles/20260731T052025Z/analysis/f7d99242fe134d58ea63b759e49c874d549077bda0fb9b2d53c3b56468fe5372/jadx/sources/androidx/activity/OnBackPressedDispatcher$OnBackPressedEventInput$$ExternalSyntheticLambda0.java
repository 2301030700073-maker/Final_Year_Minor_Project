package androidx.activity;

import android.content.ClipData;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.PopupMenu;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.adapter.ZslControlImpl;
import androidx.camera.camera2.adapter.ZslControlImpl$$ExternalSyntheticLambda1;
import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.camera.core.CameraX;
import androidx.camera.core.CameraX$$ExternalSyntheticLambda2;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageInfo;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.MetadataImageReader;
import androidx.camera.core.RotationProvider;
import androidx.camera.core.SettableImageProxy;
import androidx.camera.core.impl.CameraCaptureMetaData$AeState;
import androidx.camera.core.impl.CameraCaptureMetaData$AfState;
import androidx.camera.core.impl.CameraCaptureMetaData$AwbState;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraRepository;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.internal.CameraCaptureResultImageInfo;
import androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.scrollcapture.ScrollCapture;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.core.graphics.Insets;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.MenuHostHelper;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat$InputContentInfoCompatImpl;
import androidx.core.view.insets.ProtectionGroup;
import androidx.core.view.insets.SystemBarStateMonitor;
import androidx.datastore.core.SimpleActor$$ExternalSyntheticLambda0;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.viewmodel.internal.CloseableCoroutineScope;
import androidx.room.util.SchemaInfoUtilKt;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper;
import androidx.work.impl.Schedulers$$ExternalSyntheticLambda1;
import app.k9mail.feature.migration.qrcode.domain.usecase.QrCodeAnalyzer;
import app.k9mail.feature.settings.p000import.ui.AuthFlowState;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel;
import app.k9mail.feature.settings.p000import.ui.AuthViewModel$exchangeToken$1$1$1;
import app.k9mail.legacy.message.controller.MessageReference;
import app.k9mail.ui.utils.bottomsheet.ToolbarBottomSheetDialog;
import coil3.EventListener;
import coil3.ImageLoader;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.request.ImageRequest;
import com.bytehamster.lib.preferencesearch.SearchPreferenceFragment;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageHomeActivity;
import com.fsck.k9.controller.ArchiveOperations$$ExternalSyntheticLambda2;
import com.fsck.k9.controller.MessagingController;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.Part;
import com.fsck.k9.mail.message.MessageHeaderCollector;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalMessage;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.mailstore.NotificationMessage;
import com.fsck.k9.notification.NotificationStoreOperation;
import com.google.common.util.concurrent.ListenableFuture;
import com.mikepenz.fastadapter.VerboseLogger;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.openid.appauth.AuthState;
import net.openid.appauth.AuthorizationException;
import net.openid.appauth.AuthorizationService;
import net.openid.appauth.TokenResponse;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.feature.mail.folder.api.FolderDetails;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 implements CallbackToFutureAdapter$Resolver, ImageReaderProxy.OnImageAvailableListener, ImageAnalysis.Analyzer, AsyncFunction, Function, Arrangement$SpacingAlignmentCalculator, OnApplyWindowInsetsListener, SupportSQLiteOpenHelper.Factory, AuthorizationService.TokenResponseCallback, EventListener.Factory, PopupMenu.OnMenuItemClickListener, MessagingController.MessageActor, MessageHeaderCollector, LockableDatabase.DbCallback {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(List list, VerboseLogger verboseLogger) {
        this.$r8$classId = 29;
        this.f$0 = list;
    }

    private final Object attachCompleter$androidx$camera$core$CameraX$$ExternalSyntheticLambda1(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        CameraX cameraX = (CameraX) this.f$0;
        cameraX.mCameraPresenceProvider.shutdown();
        if (cameraX.mRotationProvider.isInitialized()) {
            RotationProvider rotationProvider = (RotationProvider) cameraX.mRotationProvider.getValue();
            synchronized (rotationProvider.lock) {
                rotationProvider.orientationListener.disable();
                rotationProvider.listeners.clear();
                rotationProvider.rotation = -1;
            }
        }
        cameraX.mCameraRepository.deinit().addListener(new CameraX$$ExternalSyntheticLambda2(0, cameraX, callbackToFutureAdapter$Completer), cameraX.mCameraExecutor);
        return "CameraX shutdownInternal";
    }

    private final void onImageAvailable$androidx$camera$camera2$adapter$ZslControlImpl$$ExternalSyntheticLambda3(ImageReaderProxy imageReaderProxy) {
        Object dequeue;
        ZslControlImpl zslControlImpl = (ZslControlImpl) this.f$0;
        imageReaderProxy.getClass();
        try {
            ImageProxy acquireLatestImage = imageReaderProxy.acquireLatestImage();
            if (acquireLatestImage != null) {
                MenuHostHelper menuHostHelper = zslControlImpl.zslRingBuffer;
                menuHostHelper.getClass();
                ImageInfo imageInfo = acquireLatestImage.getImageInfo();
                CameraCaptureResult cameraCaptureResult = imageInfo instanceof CameraCaptureResultImageInfo ? ((CameraCaptureResultImageInfo) imageInfo).mCameraCaptureResult : null;
                if (cameraCaptureResult != null && ((cameraCaptureResult.getAfState() == CameraCaptureMetaData$AfState.LOCKED_FOCUSED || cameraCaptureResult.getAfState() == CameraCaptureMetaData$AfState.PASSIVE_FOCUSED) && cameraCaptureResult.getAeState() == CameraCaptureMetaData$AeState.CONVERGED && cameraCaptureResult.getAwbState() == CameraCaptureMetaData$AwbState.CONVERGED)) {
                    synchronized (menuHostHelper.mMenuProviders) {
                        try {
                            dequeue = ((ArrayDeque) menuHostHelper.mOnInvalidateMenuCallback).size() >= 3 ? menuHostHelper.dequeue() : null;
                            ((ArrayDeque) menuHostHelper.mOnInvalidateMenuCallback).addFirst(acquireLatestImage);
                        } finally {
                        }
                    }
                    if (((ZslControlImpl$$ExternalSyntheticLambda1) menuHostHelper.mProviderToLifecycleContainers) == null || dequeue == null) {
                        return;
                    }
                    ((ImageProxy) dequeue).close();
                    return;
                }
                ((ZslControlImpl$$ExternalSyntheticLambda1) menuHostHelper.mProviderToLifecycleContainers).getClass();
                acquireLatestImage.close();
            }
        } catch (IllegalStateException unused) {
            if (Utf8.SafeProcessor.isErrorEnabled()) {
                Log.e("CXCP", "Failed to acquire latest image");
            }
        }
    }

    @Override // com.fsck.k9.controller.MessagingController.MessageActor
    public void act(LegacyAccountDto legacyAccountDto, LocalFolder localFolder, ArrayList arrayList) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 20:
                legacyAccountDto.getClass();
                ((ArchiveOperations$$ExternalSyntheticLambda2) obj).invoke(legacyAccountDto, localFolder, arrayList);
                break;
            default:
                MessagingController messagingController = (MessagingController) obj;
                MessagingController.suppressMessages(legacyAccountDto, arrayList);
                messagingController.putBackground("deleteThreads", new Schedulers$$ExternalSyntheticLambda1(messagingController, legacyAccountDto, localFolder, arrayList, 4));
                break;
        }
    }

    @Override // com.fsck.k9.mail.message.MessageHeaderCollector
    public void addRawHeader(String str, String str2) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case 23:
                ((Part) obj).addRawHeader(str, str2);
                break;
            default:
                ((LocalMessage) obj).mHeader.addRawHeader(str, str2);
                break;
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement$SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return ((BiasAlignment.Horizontal) this.f$0).align(0, i, layoutDirection);
    }

    @Override // androidx.camera.core.ImageAnalysis.Analyzer
    public void analyze(SettableImageProxy settableImageProxy) {
        ((QrCodeAnalyzer) this.f$0).analyze(settableImageProxy);
    }

    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction, androidx.arch.core.util.Function
    public ListenableFuture apply(Object obj) {
        return (ListenableFuture) ((TorchControl$$ExternalSyntheticLambda1) this.f$0).invoke(obj);
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        switch (this.$r8$classId) {
            case 1:
                ((JobSupport) this.f$0).invokeOnCompletion(new TorchControl$$ExternalSyntheticLambda1(1, callbackToFutureAdapter$Completer));
                return "Job.asListenableFuture";
            case 2:
            default:
                CameraRepository cameraRepository = (CameraRepository) this.f$0;
                synchronized (cameraRepository.mCamerasLock) {
                    cameraRepository.mDeinitCompleter = callbackToFutureAdapter$Completer;
                }
                return "CameraRepository-deinit";
            case 3:
                return attachCompleter$androidx$camera$core$CameraX$$ExternalSyntheticLambda1(callbackToFutureAdapter$Completer);
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(MessageHomeActivity.LaunchData launchData) {
        Context context = (Context) this.f$0;
        String str = (String) launchData.account;
        PriorityQueue priorityQueue = (PriorityQueue) launchData.messageReference;
        priorityQueue.getClass();
        if (str != null && str.length() != 0) {
            return new FrameworkSQLiteOpenHelper(context, str, priorityQueue, true, true);
        }
        UriKt$$ExternalSyntheticBUOutline0.m("Must set a non-null database name to a configuration that uses the no backup directory.");
        return null;
    }

    public void dispose() {
        Function2 function2 = (Function2) this.f$0;
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.minus(SnapshotKt.applyObservers, function2);
        }
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        boolean z = true;
        Object obj = this.f$0;
        switch (i) {
            case 25:
                LocalStore localStore = (LocalStore) obj;
                Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT subject, sender_list, date, uid, flags, messages.id, to_list, cc_list, bcc_list, reply_to_list, attachment_count, internal_date, messages.message_id, folder_id, preview, threads.id, threads.root, deleted, read, flagged, answered, forwarded, message_part_id, messages.mime_type, preview_type, header , notifications.notification_id, notifications.timestamp FROM notifications JOIN messages ON (messages.id = notifications.message_id) LEFT JOIN threads ON (threads.message_id = messages.id) LEFT JOIN message_parts ON (message_parts.id = messages.message_part_id) LEFT JOIN folders ON (folders.id = messages.folder_id) ORDER BY notifications.timestamp DESC", null);
                try {
                    ArrayList arrayList = new ArrayList(rawQuery.getCount());
                    while (rawQuery.moveToNext()) {
                        LocalMessage localMessage = new LocalMessage(localStore, (String) null, new LocalFolder(localStore, rawQuery.getLong(13)), localStore.generalSettingsManager);
                        localMessage.populateFromGetMessageCursor(rawQuery);
                        arrayList.add(new NotificationMessage(localMessage, rawQuery.isNull(26) ? null : Integer.valueOf(rawQuery.getInt(26)), rawQuery.getLong(27)));
                    }
                    rawQuery.close();
                    return arrayList;
                } finally {
                }
            case 26:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj;
                Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT COUNT(1) FROM messages\nWHERE\n    empty = 0\n    AND deleted = 0\n    AND folder_id = (\n        SELECT id FROM folders WHERE\n            folders.type = ?\n            AND folders.local_only = 1\n    )", new String[]{SchemaInfoUtilKt.toDatabaseFolderType(FolderType.OUTBOX)});
                try {
                    if (rawQuery2.moveToFirst()) {
                        if (rawQuery2.getInt(0) <= 0) {
                            z = false;
                        }
                        ref$BooleanRef.element = z;
                    }
                    rawQuery2.close();
                    return unit;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(rawQuery2, th);
                        throw th2;
                    }
                }
            case 27:
                Cursor query = sQLiteDatabase.query("folders", new String[]{"id"}, "server_id = ?", new String[]{(String) obj}, null, null, null);
                try {
                    Long valueOf = query.moveToFirst() ? Long.valueOf(query.getLong(0)) : null;
                    query.close();
                    return valueOf;
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(query, th3);
                        throw th4;
                    }
                }
            case 28:
                FolderDetails folderDetails = (FolderDetails) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("top_group", Boolean.valueOf(folderDetails.isInTopGroup));
                contentValues.put("integrate", Boolean.valueOf(folderDetails.isIntegrate));
                contentValues.put("sync_enabled", Boolean.valueOf(folderDetails.isSyncEnabled));
                contentValues.put("visible", Boolean.valueOf(folderDetails.isVisible));
                contentValues.put("notifications_enabled", Boolean.valueOf(folderDetails.isNotificationsEnabled));
                contentValues.put("push_enabled", Boolean.valueOf(folderDetails.isPushEnabled));
                return Integer.valueOf(sQLiteDatabase.update("folders", contentValues, "id = ?", new String[]{String.valueOf(folderDetails.folder.id)}));
            default:
                for (NotificationStoreOperation notificationStoreOperation : (List) obj) {
                    if (notificationStoreOperation instanceof NotificationStoreOperation.Add) {
                        sQLiteDatabase.getClass();
                        NotificationStoreOperation.Add add = (NotificationStoreOperation.Add) notificationStoreOperation;
                        MessageReference messageReference = add.messageReference;
                        sQLiteDatabase.execSQL("INSERT INTO notifications(message_id, notification_id, timestamp) SELECT id, ?, ? FROM messages WHERE folder_id = ? AND uid = ?", new Object[]{Integer.valueOf(add.notificationId), Long.valueOf(add.timestamp), Long.valueOf(messageReference.folderId), messageReference.uid});
                    } else if (notificationStoreOperation instanceof NotificationStoreOperation.ChangeToActive) {
                        sQLiteDatabase.getClass();
                        NotificationStoreOperation.ChangeToActive changeToActive = (NotificationStoreOperation.ChangeToActive) notificationStoreOperation;
                        MessageReference messageReference2 = changeToActive.messageReference;
                        sQLiteDatabase.execSQL("UPDATE notifications SET notification_id = ? WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)", new Object[]{Integer.valueOf(changeToActive.notificationId), Long.valueOf(messageReference2.folderId), messageReference2.uid});
                    } else if (notificationStoreOperation instanceof NotificationStoreOperation.ChangeToInactive) {
                        sQLiteDatabase.getClass();
                        MessageReference messageReference3 = ((NotificationStoreOperation.ChangeToInactive) notificationStoreOperation).messageReference;
                        sQLiteDatabase.execSQL("UPDATE notifications SET notification_id = NULL WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)", new Object[]{Long.valueOf(messageReference3.folderId), messageReference3.uid});
                    } else {
                        if (!(notificationStoreOperation instanceof NotificationStoreOperation.Remove)) {
                            UriKt$$ExternalSyntheticBUOutline0.m857m();
                            return null;
                        }
                        sQLiteDatabase.getClass();
                        MessageReference messageReference4 = ((NotificationStoreOperation.Remove) notificationStoreOperation).messageReference;
                        sQLiteDatabase.execSQL("DELETE FROM notifications WHERE message_id IN (SELECT id FROM messages WHERE folder_id = ? AND uid = ?)", new Object[]{Long.valueOf(messageReference4.folderId), messageReference4.uid});
                    }
                }
                return unit;
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = this.$r8$classId;
        Object obj = this.f$0;
        switch (i) {
            case BasicTextKt.ShiftMeta /* 12 */:
                SystemBarStateMonitor systemBarStateMonitor = (SystemBarStateMonitor) obj;
                ArrayList arrayList = systemBarStateMonitor.mCallbacks;
                WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
                Insets min = Insets.min(impl.getInsets(519), impl.getInsets(64));
                Insets min2 = Insets.min(impl.getInsetsIgnoringVisibility(519), impl.getInsetsIgnoringVisibility(64));
                if (!min.equals(systemBarStateMonitor.mInsets) || !min2.equals(systemBarStateMonitor.mInsetsIgnoringVisibility)) {
                    systemBarStateMonitor.mInsets = min;
                    systemBarStateMonitor.mInsetsIgnoringVisibility = min2;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ProtectionGroup protectionGroup = (ProtectionGroup) arrayList.get(size);
                        protectionGroup.mInsets = min;
                        protectionGroup.mInsetsIgnoringVisibility = min2;
                        protectionGroup.updateInsets();
                    }
                }
                return windowInsetsCompat;
            default:
                view.getClass();
                Insets insets = windowInsetsCompat.mImpl.getInsets(519);
                insets.getClass();
                ((ToolbarBottomSheetDialog) obj).setToolbarVisibilityCallback(insets.top);
                return WindowInsetsCompat.CONSUMED;
        }
    }

    public boolean onCommitContent(Fragment.AnonymousClass7 anonymousClass7, int i, Bundle bundle) {
        ContentInfoCompat.BuilderCompat builderCompat;
        AppCompatEditText appCompatEditText = (AppCompatEditText) this.f$0;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 25 && (i & 1) != 0) {
            try {
                ((InputContentInfoCompat$InputContentInfoCompatImpl) anonymousClass7.this$0).requestPermission();
                Parcelable parcelable = (Parcelable) ((InputContentInfoCompat$InputContentInfoCompatImpl) anonymousClass7.this$0).getInputContentInfo();
                bundle = bundle == null ? new Bundle() : new Bundle(bundle);
                bundle.putParcelable("androidx.core.view.extra.INPUT_CONTENT_INFO", parcelable);
            } catch (Exception e) {
                Log.w("InputConnectionCompat", "Can't insert content from IME; requestPermission() failed", e);
                return false;
            }
        }
        InputContentInfoCompat$InputContentInfoCompatImpl inputContentInfoCompat$InputContentInfoCompatImpl = (InputContentInfoCompat$InputContentInfoCompatImpl) anonymousClass7.this$0;
        ClipData clipData = new ClipData(inputContentInfoCompat$InputContentInfoCompatImpl.getDescription(), new ClipData.Item(inputContentInfoCompat$InputContentInfoCompatImpl.getContentUri()));
        if (i2 >= 31) {
            builderCompat = new ScrollCapture(clipData, 2);
        } else {
            ContentInfoCompat.CompatImpl compatImpl = new ContentInfoCompat.CompatImpl();
            compatImpl.mClip = clipData;
            compatImpl.mSource = 2;
            builderCompat = compatImpl;
        }
        builderCompat.setLinkUri(inputContentInfoCompat$InputContentInfoCompatImpl.getLinkUri());
        builderCompat.setExtras(bundle);
        return ViewCompat.performReceiveContent(appCompatEditText, builderCompat.build()) == null;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void onImageAvailable(ImageReaderProxy imageReaderProxy) {
        switch (this.$r8$classId) {
            case 2:
                onImageAvailable$androidx$camera$camera2$adapter$ZslControlImpl$$ExternalSyntheticLambda3(imageReaderProxy);
                return;
            default:
                MetadataImageReader metadataImageReader = (MetadataImageReader) this.f$0;
                synchronized (metadataImageReader.mLock) {
                    metadataImageReader.mUnAcquiredAvailableImageCount++;
                }
                metadataImageReader.imageIncoming(imageReaderProxy);
                return;
        }
    }

    @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
    public void onMenuItemClick(MenuItem menuItem) {
        SearchPreferenceFragment searchPreferenceFragment = (SearchPreferenceFragment) this.f$0;
        if (menuItem.getItemId() == R.id.clear_history) {
            ((EditText) searchPreferenceFragment.viewHolder.authority).setText("");
            searchPreferenceFragment.history.clear();
            searchPreferenceFragment.saveHistory();
            searchPreferenceFragment.updateSearchResults("");
        }
    }

    @Override // net.openid.appauth.AuthorizationService.TokenResponseCallback
    public void onTokenRequestCompleted(TokenResponse tokenResponse, AuthorizationException authorizationException) {
        Object value;
        Object value2;
        AuthViewModel authViewModel = (AuthViewModel) this.f$0;
        AuthState authState = authViewModel.authState;
        authState.update(tokenResponse, authorizationException);
        LegacyAccountDto legacyAccountDto = authViewModel.account;
        legacyAccountDto.getClass();
        legacyAccountDto.setOAuthState(authState.jsonSerializeString());
        CloseableCoroutineScope viewModelScope = ViewModelKt.getViewModelScope(authViewModel);
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        JobKt.launch$default(viewModelScope, DefaultIoScheduler.INSTANCE, null, new AuthViewModel$exchangeToken$1$1$1(authViewModel, legacyAccountDto, null, 0), 2);
        StateFlowImpl stateFlowImpl = authViewModel._uiState;
        if (authorizationException != null) {
            do {
                value2 = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value2, new AuthFlowState.Failed(authorizationException.error, authorizationException.errorDescription)));
        } else {
            do {
                value = stateFlowImpl.getValue();
            } while (!stateFlowImpl.compareAndSet(value, AuthFlowState.Idle.INSTANCE$4));
        }
    }

    public /* synthetic */ OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // androidx.arch.core.util.Function
    public Object apply(Object obj) {
        return (Void) ((SimpleActor$$ExternalSyntheticLambda0) this.f$0).invoke(obj);
    }

    @Override // coil3.EventListener.Factory
    public EventListener create(ImageRequest imageRequest) {
        EventListener eventListener$lambda$0;
        eventListener$lambda$0 = ImageLoader.Builder.eventListener$lambda$0((EventListener) this.f$0, imageRequest);
        return eventListener$lambda$0;
    }
}
