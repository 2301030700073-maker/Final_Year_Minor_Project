package androidx.camera.camera2.interop;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.view.MenuItem;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.PopupMenu;
import androidx.biometric.BiometricPrompt;
import androidx.camera.core.AutoValue_SurfaceRequest_TransformationInfo;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.ImageReaderProxy;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.util.GLUtils;
import androidx.camera.view.TextureViewImplementation;
import androidx.camera.view.TextureViewImplementation$$ExternalSyntheticLambda3;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.lazy.layout.Averages;
import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider$HandleAndRequestImpl;
import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.concurrent.futures.CallbackToFutureAdapter$Completer;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.datastore.preferences.protobuf.Utf8;
import androidx.work.DirectExecutor;
import androidx.work.WorkerKt$$ExternalSyntheticLambda1;
import androidx.work.WorkerKt$$ExternalSyntheticLambda2;
import app.k9mail.legacy.mailstore.FolderMapper;
import app.k9mail.legacy.message.controller.MessageReference;
import com.fsck.k9.R;
import com.fsck.k9.activity.MessageCompose;
import com.fsck.k9.mail.Address;
import com.fsck.k9.mail.message.MessageHeaderCollector;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import com.fsck.k9.mailstore.LockableDatabase;
import com.fsck.k9.storage.messages.DeleteFolderOperations;
import com.fsck.k9.storage.messages.FlagMessageOperations$setSpecialFlags$1$1;
import com.fsck.k9.storage.messages.K9MessageStoreFactoryKt;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import com.fsck.k9.ui.messagedetails.MessageDetailsFragment;
import com.fsck.k9.ui.messagedetails.MessageDetailsViewModel;
import com.fsck.k9.ui.messagedetails.Participant;
import com.fsck.k9.ui.settings.AboutFragmentKt$$ExternalSyntheticLambda7;
import com.google.android.material.appbar.AppBarLayout;
import com.google.zxing.BinaryBitmap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import okhttp3.ConnectionPool;
import okhttp3.internal.connection.RouteSelector;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0 implements ImageReaderProxy.OnImageAvailableListener, CallbackToFutureAdapter$Resolver, SurfaceRequest.TransformationInfoListener, ShouldPauseCallback, LockableDatabase.DbCallback, MessageHeaderCollector, OnApplyWindowInsetsListener, PopupMenu.OnMenuItemClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;

    public /* synthetic */ CaptureRequestOptions$Builder$Companion$$ExternalSyntheticLambda0(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
    }

    @Override // com.fsck.k9.mail.message.MessageHeaderCollector
    public void addRawHeader(String str, String str2) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case OffsetKt.Horizontal /* 15 */:
                Set set = (Set) obj2;
                LocalFolder.AnonymousClass8 anonymousClass8 = (LocalFolder.AnonymousClass8) obj;
                str2.getClass();
                if (set != null) {
                    String lowerCase = str.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                    if (!set.contains(lowerCase)) {
                    }
                }
                anonymousClass8.addRawHeader(str, str2);
                break;
            default:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) obj;
                str2.getClass();
                String lowerCase2 = str.toLowerCase(Locale.ROOT);
                lowerCase2.getClass();
                if (!lowerCase2.equals("in-reply-to")) {
                    if (lowerCase2.equals("references")) {
                        ref$ObjectRef2.element = str2;
                        break;
                    }
                } else {
                    ref$ObjectRef.element = str2;
                    break;
                }
                break;
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter$Resolver
    public Object attachCompleter(CallbackToFutureAdapter$Completer callbackToFutureAdapter$Completer) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        int i2 = 0;
        switch (i) {
            case 2:
                ((AtomicReference) obj).set(callbackToFutureAdapter$Completer);
                return "SurfaceRequest-surface-recreation(" + ((SurfaceRequest) obj2).hashCode() + ")";
            case 5:
                TextureViewImplementation textureViewImplementation = (TextureViewImplementation) obj2;
                Surface surface = (Surface) obj;
                Utf8.SafeProcessor.d("TextureViewImpl", "Surface set on Preview.");
                textureViewImplementation.mSurfaceRequest.provideSurface(surface, Util.directExecutor(), new TextureViewImplementation$$ExternalSyntheticLambda3(i2, callbackToFutureAdapter$Completer));
                return "provideSurface[request=" + textureViewImplementation.mSurfaceRequest + " surface=" + surface + "]";
            default:
                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                callbackToFutureAdapter$Completer.addCancellationListener(new WorkerKt$$ExternalSyntheticLambda1(atomicBoolean, 0), DirectExecutor.INSTANCE);
                ((Executor) obj2).execute(new WorkerKt$$ExternalSyntheticLambda2(atomicBoolean, callbackToFutureAdapter$Completer, (Function0) obj, 0));
                return Unit.INSTANCE;
        }
    }

    @Override // com.fsck.k9.mailstore.LockableDatabase.DbCallback
    public Object doDbWork(SQLiteDatabase sQLiteDatabase) {
        Cursor rawQuery;
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 9:
                LocalFolder localFolder = (LocalFolder) obj2;
                Cursor query = sQLiteDatabase.query("messages", new String[]{"id", "message_part_id", "message_id"}, "folder_id = ? AND ".concat((String) obj), new String[]{Long.toString(localFolder.databaseId)}, null, null, null);
                while (query.moveToNext()) {
                    try {
                        long j = query.getLong(0);
                        long j2 = query.getLong(1);
                        String string = query.getString(2);
                        LocalStore localStore = localFolder.localStore;
                        LocalFolder localFolder2 = localFolder;
                        localStore.database.execute(true, new LocalFolder.AnonymousClass14(localFolder2, j2, j, string));
                        localStore.notifyChange();
                        localFolder = localFolder2;
                    } finally {
                    }
                }
                query.close();
                sQLiteDatabase.execSQL("INSERT INTO messages_fulltext(messages_fulltext) VALUES('optimize')");
                return null;
            case 10:
                BinaryBitmap binaryBitmap = (BinaryBitmap) obj;
                File[] listFiles = ((File) obj2).listFiles();
                if (listFiles == null) {
                    listFiles = new File[0];
                }
                FilteringSequence$iterator$1 filteringSequence$iterator$1 = new FilteringSequence$iterator$1(new FilteringSequence(ArraysKt___ArraysKt.asSequence(listFiles), true, new KoinModuleKt$$ExternalSyntheticLambda0(21)));
                long j3 = 0;
                while (filteringSequence$iterator$1.hasNext()) {
                    j3 += ((File) filteringSequence$iterator$1.next()).length();
                }
                return Long.valueOf(((LocalStore.AnonymousClass1) binaryBitmap.matrix).getDatabaseFile().length() + j3);
            case 11:
                DeleteFolderOperations deleteFolderOperations = (DeleteFolderOperations) obj;
                for (String str : (List) obj2) {
                    sQLiteDatabase.getClass();
                    deleteFolderOperations.getClass();
                    rawQuery = sQLiteDatabase.rawQuery("\nSELECT message_parts.id \nFROM folders \nJOIN messages ON (messages.folder_id = folders.id) \nJOIN message_parts ON (\n  message_parts.root = messages.message_part_id \n  AND \n  message_parts.data_location = 2\n) \nWHERE folders.server_id = ?\n            ", new String[]{str});
                    while (rawQuery.moveToNext()) {
                        try {
                            deleteFolderOperations.attachmentFileManager.deleteFile(rawQuery.getLong(0));
                        } finally {
                            try {
                                throw th;
                            } finally {
                            }
                        }
                    }
                    rawQuery.close();
                    sQLiteDatabase.delete("folders", "server_id = ?", new String[]{str});
                }
                return unit;
            case BasicTextKt.ShiftMeta /* 12 */:
                K9MessageStoreFactoryKt.performChunkedOperation$default((Collection) obj2, FlagMessageOperations$setSpecialFlags$1$1.INSTANCE, new AboutFragmentKt$$ExternalSyntheticLambda7(6, sQLiteDatabase, (ContentValues) obj));
                return unit;
            case 13:
                String str2 = (String) obj2;
                FolderMapper folderMapper = (FolderMapper) obj;
                Cursor query2 = sQLiteDatabase.query("folders", K9MessageStoreFactoryKt.FOLDER_COLUMNS, str2, null, null, null, "id");
                try {
                    query2.getClass();
                    ConnectionPool connectionPool = new ConnectionPool(5, query2);
                    int count = query2.getCount();
                    ArrayList arrayList = new ArrayList(count);
                    while (r3 < count) {
                        query2.moveToPosition(r3);
                        arrayList.add(folderMapper.map(connectionPool));
                        r3++;
                    }
                    query2.close();
                    return arrayList;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(query2, th);
                        throw th2;
                    }
                }
            default:
                rawQuery = sQLiteDatabase.rawQuery((String) obj2, (String[]) obj);
                try {
                    Integer valueOf = Integer.valueOf(rawQuery.moveToFirst() ? rawQuery.getInt(0) : 0);
                    rawQuery.close();
                    return valueOf;
                } catch (Throwable th3) {
                }
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        AppBarLayout appBarLayout = (AppBarLayout) this.f$0;
        ViewGroup viewGroup = (ViewGroup) this.f$1;
        view.getClass();
        WindowInsetsCompat.Impl impl = windowInsetsCompat.mImpl;
        Insets insets = impl.getInsets(647);
        insets.getClass();
        Insets insets2 = impl.getInsets(8);
        insets2.getClass();
        int i = insets.top;
        int i2 = insets.left;
        int i3 = insets.right;
        appBarLayout.setPadding(i2, i, i3, appBarLayout.getPaddingBottom());
        viewGroup.setPadding(i2, viewGroup.getPaddingTop(), i3, Math.max(insets.bottom, insets2.bottom));
        return WindowInsetsCompat.CONSUMED;
    }

    @Override // androidx.camera.core.impl.ImageReaderProxy.OnImageAvailableListener
    public void onImageAvailable(ImageReaderProxy imageReaderProxy) {
        int i = this.$r8$classId;
        Object obj = this.f$1;
        Object obj2 = this.f$0;
        switch (i) {
            case 1:
                ((ImageReaderProxy.OnImageAvailableListener) obj).onImageAvailable((RouteSelector) obj2);
                break;
            default:
                ((ImageReaderProxy.OnImageAvailableListener) obj).onImageAvailable((BiometricPrompt) obj2);
                break;
        }
    }

    @Override // androidx.appcompat.widget.PopupMenu.OnMenuItemClickListener
    public void onMenuItemClick(MenuItem menuItem) {
        MessageDetailsFragment messageDetailsFragment = (MessageDetailsFragment) this.f$0;
        Participant participant = (Participant) this.f$1;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.compose_to) {
            Address address = participant.getAddress();
            Intent intent = new Intent(messageDetailsFragment.getContext(), (Class<?>) MessageCompose.class);
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.EMAIL", new String[]{address.toString()});
            MessageReference messageReference = messageDetailsFragment.messageReference;
            if (messageReference == null) {
                Intrinsics.throwUninitializedPropertyAccessException("messageReference");
                throw null;
            }
            intent.putExtra("account", messageReference.accountUuid);
            messageDetailsFragment.dismissAllowingStateLoss();
            messageDetailsFragment.requireContext().startActivity(intent);
            return;
        }
        if (itemId == R.id.copy_email_address) {
            MessageDetailsViewModel viewModel = messageDetailsFragment.getViewModel();
            viewModel.getClass();
            participant.getClass();
            String string = viewModel.resources.getString(R.string.clipboard_label_email_address);
            string.getClass();
            viewModel.clipboardManager.setText(string, participant.getAddress().address);
            return;
        }
        if (itemId == R.id.copy_name_and_email_address) {
            MessageDetailsViewModel viewModel2 = messageDetailsFragment.getViewModel();
            viewModel2.getClass();
            participant.getClass();
            String string2 = viewModel2.resources.getString(R.string.clipboard_label_name_and_email_address);
            string2.getClass();
            viewModel2.clipboardManager.setText(string2, participant.getAddress().toString());
        }
    }

    @Override // androidx.camera.core.SurfaceRequest.TransformationInfoListener
    public void onTransformationInfoUpdate(AutoValue_SurfaceRequest_TransformationInfo autoValue_SurfaceRequest_TransformationInfo) {
        DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) this.f$0;
        GLUtils.InputFormat inputFormat = (((SurfaceRequest) this.f$1).mDynamicRange.is10BitHdr() && autoValue_SurfaceRequest_TransformationInfo.hasCameraTransform) ? GLUtils.InputFormat.YUV : GLUtils.InputFormat.DEFAULT;
        OpenGlRenderer openGlRenderer = defaultSurfaceProcessor.mGlRenderer;
        GLUtils.checkInitializedOrThrow((AtomicBoolean) openGlRenderer.mInitialized, true);
        GLUtils.checkGlThreadOrThrow((Thread) openGlRenderer.mGlThread);
        if (((GLUtils.InputFormat) openGlRenderer.mCurrentInputformat) != inputFormat) {
            openGlRenderer.mCurrentInputformat = inputFormat;
            openGlRenderer.useAndConfigureProgramWithTexture(openGlRenderer.mExternalTextureId);
        }
    }

    @Override // androidx.compose.runtime.ShouldPauseCallback
    public boolean shouldPause() {
        PrefetchHandleProvider$HandleAndRequestImpl prefetchHandleProvider$HandleAndRequestImpl = (PrefetchHandleProvider$HandleAndRequestImpl) this.f$0;
        Averages averages = (Averages) this.f$1;
        if (!prefetchHandleProvider$HandleAndRequestImpl.pauseRequested) {
            prefetchHandleProvider$HandleAndRequestImpl.updateElapsedAndAvailableTime();
            averages.resumeTimeNanos = Averages.calculateAverageTime(prefetchHandleProvider$HandleAndRequestImpl.elapsedTimeNanos, averages.resumeTimeNanos);
            prefetchHandleProvider$HandleAndRequestImpl.pauseRequested = !prefetchHandleProvider$HandleAndRequestImpl.shouldExecute(prefetchHandleProvider$HandleAndRequestImpl.availableTimeNanos, r1 + averages.pauseTimeNanos);
        }
        return prefetchHandleProvider$HandleAndRequestImpl.pauseRequested;
    }
}
