package app.k9mail.legacy.mailstore;

import android.database.Cursor;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.FolderDetails;
import net.thunderbird.feature.mail.folder.api.FolderType;
import okhttp3.ConnectionPool;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DefaultFolderRepository$$ExternalSyntheticLambda0 implements FolderMapper {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ DefaultFolderRepository f$0;
    public final /* synthetic */ LegacyAccount f$1;
    public final /* synthetic */ long f$2;

    public /* synthetic */ DefaultFolderRepository$$ExternalSyntheticLambda0(DefaultFolderRepository defaultFolderRepository, LegacyAccount legacyAccount, long j, int i) {
        this.$r8$classId = i;
        this.f$0 = defaultFolderRepository;
        this.f$1 = legacyAccount;
        this.f$2 = j;
    }

    @Override // app.k9mail.legacy.mailstore.FolderMapper
    public final Object map(ConnectionPool connectionPool) {
        int i = this.$r8$classId;
        long j = this.f$2;
        LegacyAccount legacyAccount = this.f$1;
        DefaultFolderRepository defaultFolderRepository = this.f$0;
        switch (i) {
            case 0:
                long id = connectionPool.getId();
                String name = connectionPool.getName();
                defaultFolderRepository.getClass();
                return new Folder(id, name, DefaultFolderRepository.getFolderType(connectionPool, legacyAccount, j), ((Cursor) connectionPool.delegate).getInt(4) == 1);
            default:
                long id2 = connectionPool.getId();
                String name2 = connectionPool.getName();
                defaultFolderRepository.getClass();
                FolderType folderType = DefaultFolderRepository.getFolderType(connectionPool, legacyAccount, j);
                Cursor cursor = (Cursor) connectionPool.delegate;
                return new FolderDetails(new Folder(id2, name2, folderType, cursor.getInt(4) == 1), cursor.getInt(5) == 1, cursor.getInt(6) == 1, cursor.getInt(7) == 1, cursor.getInt(8) == 1, cursor.getInt(9) == 1, cursor.getInt(10) == 1);
        }
    }
}
