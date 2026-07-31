package com.fsck.k9.mailstore;

import androidx.camera.view.PreviewView$1$$ExternalSyntheticLambda2;
import app.k9mail.legacy.mailstore.CreateFolderInfo;
import app.k9mail.legacy.mailstore.FolderSettings;
import app.k9mail.legacy.mailstore.ListenableMessageStore;
import com.fsck.k9.Preferences;
import com.fsck.k9.backend.api.FolderInfo;
import com.fsck.k9.backend.imap.ImapSync;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.preferences.K9StorageEditor;
import com.fsck.k9.storage.messages.K9MessageStore;
import com.google.zxing.BinaryBitmap;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptySet;
import kotlin.collections.builders.SetBuilder;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.preference.storage.InMemoryStorage;
import net.thunderbird.feature.account.AccountId;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class K9BackendStorage$K9BackendFolderUpdater implements Closeable {
    public final /* synthetic */ Dispatcher this$0;

    public K9BackendStorage$K9BackendFolderUpdater(Dispatcher dispatcher) {
        this.this$0 = dispatcher;
        Iterator it = ((List) dispatcher.runningSyncCalls).iterator();
        while (it.hasNext()) {
            ((BackendFoldersRefreshListener) it.next()).onBeforeFolderListRefresh();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Iterator it = ((List) this.this$0.runningSyncCalls).iterator();
        while (it.hasNext()) {
            ((BackendFoldersRefreshListener) it.next()).onAfterFolderListRefresh();
        }
    }

    public final Set createFolders(List list) {
        if (list.isEmpty()) {
            return EmptySet.INSTANCE;
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Dispatcher dispatcher = this.this$0;
            if (!hasNext) {
                ListenableMessageStore listenableMessageStore = (ListenableMessageStore) dispatcher.executorServiceOrNull;
                BinaryBitmap binaryBitmap = ((K9MessageStore) listenableMessageStore.messageStore.val$folders).createFolderOperations;
                binaryBitmap.getClass();
                SetBuilder setBuilder = new SetBuilder();
                ((LockableDatabase) binaryBitmap.binarizer).execute(true, new PreviewView$1$$ExternalSyntheticLambda2(arrayList, setBuilder, binaryBitmap, 4));
                SetBuilder build = Validate.build(setBuilder);
                listenableMessageStore.notifyFolderSettingsChanged();
                return build;
            }
            FolderInfo folderInfo = (FolderInfo) it.next();
            String str = folderInfo.serverId;
            String str2 = folderInfo.name;
            FolderType folderType = folderInfo.type;
            ImapSync imapSync = (ImapSync) dispatcher.readyAsyncCalls;
            str.getClass();
            Preferences preferences = (Preferences) imapSync.accountName;
            InMemoryStorage storage = preferences.getStorage();
            AccountId accountId = (AccountId) imapSync.imapStore;
            String str3 = accountId + "." + str;
            LegacyAccount byIdSync = ((DefaultLegacyAccountManager) imapSync.backendStorage).getByIdSync(accountId);
            if (byIdSync == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) accountId, "Account not found: ");
                return null;
            }
            Iterator it2 = it;
            FolderSettings folderSettings = new FolderSettings(byIdSync.displayCount, storage.getBoolean(str3.concat(".visible"), true), storage.getBoolean(str3.concat(".syncEnabled"), false), storage.getBoolean(str3.concat(".notificationsEnabled"), false), storage.getBoolean(str3.concat(".pushEnabled"), false), storage.getBoolean(str3.concat(".inTopGroup"), false), storage.getBoolean(str3.concat(".integrate"), false));
            K9StorageEditor createStorageEditor = preferences.createStorageEditor();
            createStorageEditor.remove(str3.concat(".visible"));
            createStorageEditor.remove(str3.concat(".syncEnabled"));
            createStorageEditor.remove(str3.concat(".notificationsEnabled"));
            createStorageEditor.remove(str3.concat(".pushEnabled"));
            createStorageEditor.remove(str3.concat(".inTopGroup"));
            createStorageEditor.remove(str3.concat(".integrate"));
            createStorageEditor.commit();
            arrayList = arrayList;
            arrayList.add(new CreateFolderInfo(str, str2, folderType, folderSettings));
            it = it2;
        }
    }
}
