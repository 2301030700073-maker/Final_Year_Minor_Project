package app.k9mail.feature.account.setup.domain.usecase;

import androidx.compose.ui.unit.IntOffsetKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import app.k9mail.feature.account.common.domain.AccountDomainContract$AccountStateRepository;
import app.k9mail.feature.account.common.domain.entity.SpecialFolderOption;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.mail.FolderType;
import com.fsck.k9.mail.folders.RemoteFolder;
import com.fsck.k9.mail.oauth.AuthStateStorage;
import com.fsck.k9.mail.store.imap.ImapFolderFetcher;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class GetSpecialFolderOptions {
    public final AccountDomainContract$AccountStateRepository accountStateRepository;
    public final AuthStateStorage authStateStorage;
    public final CoroutineDispatcher coroutineDispatcher;
    public final ImapFolderFetcher folderFetcher;

    public GetSpecialFolderOptions(ImapFolderFetcher imapFolderFetcher, AccountDomainContract$AccountStateRepository accountDomainContract$AccountStateRepository, AuthStateStorage authStateStorage) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.folderFetcher = imapFolderFetcher;
        this.accountStateRepository = accountDomainContract$AccountStateRepository;
        this.authStateStorage = authStateStorage;
        this.coroutineDispatcher = defaultIoScheduler;
    }

    public static final ArrayList access$mapByFolderType(GetSpecialFolderOptions getSpecialFolderOptions, FolderType folderType, List list) {
        Object obj;
        SpecialFolderOption none;
        SpecialFolderOption regular;
        getSpecialFolderOptions.getClass();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((RemoteFolder) obj).type == folderType) {
                break;
            }
        }
        RemoteFolder remoteFolder = (RemoteFolder) obj;
        if (remoteFolder != null) {
            switch (remoteFolder.type.ordinal()) {
                case 0:
                    none = new SpecialFolderOption.Regular(remoteFolder);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    none = new SpecialFolderOption.Special(true, remoteFolder);
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
            }
        } else {
            none = new SpecialFolderOption.None(true);
        }
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            RemoteFolder remoteFolder2 = (RemoteFolder) it2.next();
            switch (remoteFolder2.type.ordinal()) {
                case 0:
                    regular = new SpecialFolderOption.Regular(remoteFolder2);
                    break;
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    regular = new SpecialFolderOption.Special(false, remoteFolder2);
                    break;
                default:
                    UriKt$$ExternalSyntheticBUOutline0.m857m();
                    return null;
            }
            arrayList.add(regular);
        }
        return CollectionsKt.plus((Collection) IntOffsetKt.listOf((Object[]) new SpecialFolderOption[]{none, new SpecialFolderOption.None(false)}), (Iterable) arrayList);
    }
}
