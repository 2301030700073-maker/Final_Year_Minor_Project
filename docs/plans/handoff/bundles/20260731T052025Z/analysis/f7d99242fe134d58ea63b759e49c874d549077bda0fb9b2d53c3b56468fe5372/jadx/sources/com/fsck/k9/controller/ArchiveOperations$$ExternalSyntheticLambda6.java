package com.fsck.k9.controller;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CaptureRequest;
import android.view.Surface;
import androidx.camera.camera2.adapter.CameraUseCaseAdapter;
import androidx.camera.camera2.compat.Api24Compat;
import app.k9mail.legacy.message.controller.SimpleMessagingListener;
import com.fsck.k9.backend.api.Backend;
import com.fsck.k9.mailstore.LocalFolder;
import com.fsck.k9.mailstore.LocalStore;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function4;
import kotlinx.io.Sink$CC;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.common.exception.MessagingException;
import net.thunderbird.core.logging.legacy.Log;
import net.thunderbird.core.logging.legacy.Log$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ArchiveOperations$$ExternalSyntheticLambda6 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;
    public final /* synthetic */ Object f$1;
    public final /* synthetic */ long f$2;
    public final /* synthetic */ Object f$3;
    public final /* synthetic */ Object f$4;

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda6(CameraUseCaseAdapter.CaptureCallbackContainer captureCallbackContainer, CameraCaptureSession cameraCaptureSession, CaptureRequest captureRequest, Surface surface, long j) {
        this.$r8$classId = 1;
        this.f$0 = captureCallbackContainer;
        this.f$1 = cameraCaptureSession;
        this.f$3 = captureRequest;
        this.f$4 = surface;
        this.f$2 = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LocalStore localStoreProvider;
        LocalFolder localFolder;
        LocalFolder localFolder2;
        switch (this.$r8$classId) {
            case 0:
                ((Function4) this.f$0).invoke((LegacyAccountDto) this.f$1, Long.valueOf(this.f$2), (List) this.f$3, (Long) this.f$4);
                return;
            case 1:
                Api24Compat.onCaptureBufferLost(((CameraUseCaseAdapter.CaptureCallbackContainer) this.f$0).captureCallback, (CameraCaptureSession) this.f$1, (CaptureRequest) this.f$3, (Surface) this.f$4, this.f$2);
                return;
            case 2:
                MessagingController messagingController = (MessagingController) this.f$0;
                String str = (String) this.f$1;
                long j = this.f$2;
                String str2 = (String) this.f$3;
                SimpleMessagingListener simpleMessagingListener = (SimpleMessagingListener) this.f$4;
                LegacyAccountDto account = messagingController.preferences.getAccount(str);
                if (simpleMessagingListener != null) {
                    simpleMessagingListener.remoteSearchStarted();
                }
                List arrayList = new ArrayList();
                try {
                    try {
                        localStoreProvider = messagingController.localStoreProvider.getInstance(account);
                        localFolder = new LocalFolder(localStoreProvider, j);
                    } catch (Throwable th) {
                        if (simpleMessagingListener != null) {
                            simpleMessagingListener.remoteSearchFinished(account.getRemoteSearchNumResults(), arrayList);
                        }
                        throw th;
                    }
                } catch (Exception e) {
                    if (Thread.currentThread().isInterrupted()) {
                        Sink$CC.info$default(Log.getLogger(), null, e, new Log$$ExternalSyntheticLambda0("Caught exception on aborted remote search; safe to ignore.", new Object[0], 9), 1);
                    } else {
                        Log.e(e, "Could not complete remote search", new Object[0]);
                        if (simpleMessagingListener != null) {
                            e.getMessage();
                            simpleMessagingListener.remoteSearchFailed();
                        }
                        Log.e(e, "Remote search failed for account %s, folder %d", str, Long.valueOf(j));
                    }
                    if (simpleMessagingListener == null) {
                        return;
                    }
                }
                if (!localFolder.exists()) {
                    throw new MessagingException("Folder not found");
                }
                localFolder.open();
                String str3 = localFolder.serverId;
                Backend backend = messagingController.getBackend(account);
                synchronized (account) {
                }
                List search = backend.search(str3, str2);
                Log.i("Remote search got %d results", Integer.valueOf(search.size()));
                List<String> list = (List) localStoreProvider.database.execute(false, new LocalStore.AnonymousClass1(7, localFolder, search, false));
                if (simpleMessagingListener != null) {
                    simpleMessagingListener.remoteSearchServerQueryComplete(list.size(), account.getRemoteSearchNumResults());
                }
                int remoteSearchNumResults = account.getRemoteSearchNumResults();
                if (remoteSearchNumResults > 0 && list.size() > remoteSearchNumResults) {
                    arrayList = list.subList(remoteSearchNumResults, list.size());
                    list = list.subList(0, remoteSearchNumResults);
                }
                Backend backend2 = messagingController.getBackend(account);
                String str4 = localFolder.serverId;
                for (String str5 : list) {
                    if (localFolder.getMessage(str5) == null) {
                        backend2.downloadMessageStructure(str4, str5);
                    }
                }
                if (simpleMessagingListener == null) {
                    return;
                }
                simpleMessagingListener.remoteSearchFinished(account.getRemoteSearchNumResults(), arrayList);
                return;
            default:
                MessagingController messagingController2 = (MessagingController) this.f$0;
                SimpleMessagingListener simpleMessagingListener2 = (SimpleMessagingListener) this.f$4;
                LegacyAccountDto legacyAccountDto = (LegacyAccountDto) this.f$1;
                long j2 = this.f$2;
                List<String> list2 = (List) this.f$3;
                if (simpleMessagingListener2 != null) {
                    simpleMessagingListener2.enableProgressIndicator(true);
                }
                try {
                    try {
                        localFolder2 = new LocalFolder(messagingController2.localStoreProvider.getInstance(legacyAccountDto), j2);
                    } catch (MessagingException e2) {
                        Log.e(e2, "Exception in loadSearchResults", new Object[0]);
                        if (simpleMessagingListener2 == null) {
                            return;
                        }
                    }
                    if (!localFolder2.exists()) {
                        throw new MessagingException("Folder not found");
                    }
                    localFolder2.open();
                    Backend backend3 = messagingController2.getBackend(legacyAccountDto);
                    String str6 = localFolder2.serverId;
                    for (String str7 : list2) {
                        if (localFolder2.getMessage(str7) == null) {
                            backend3.downloadMessageStructure(str6, str7);
                        }
                    }
                    if (simpleMessagingListener2 == null) {
                        return;
                    }
                    simpleMessagingListener2.enableProgressIndicator(false);
                    return;
                } finally {
                }
        }
    }

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda6(MessagingController messagingController, SimpleMessagingListener simpleMessagingListener, LegacyAccountDto legacyAccountDto, long j, List list) {
        this.$r8$classId = 3;
        this.f$0 = messagingController;
        this.f$4 = simpleMessagingListener;
        this.f$1 = legacyAccountDto;
        this.f$2 = j;
        this.f$3 = list;
    }

    public /* synthetic */ ArchiveOperations$$ExternalSyntheticLambda6(Object obj, Object obj2, long j, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.f$0 = obj;
        this.f$1 = obj2;
        this.f$2 = j;
        this.f$3 = obj3;
        this.f$4 = obj4;
    }
}
