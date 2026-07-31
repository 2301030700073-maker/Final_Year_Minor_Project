package kotlin.concurrent;

import android.content.Intent;
import com.fsck.k9.K9;
import com.fsck.k9.Preferences;
import com.fsck.k9.mailstore.LocalStoreProvider;
import com.fsck.k9.service.DatabaseUpgradeService;
import java.util.List;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import net.thunderbird.core.android.account.LegacyAccountDto;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThreadsKt$thread$thread$1 extends Thread {
    public final /* synthetic */ Object $block;
    public final /* synthetic */ int $r8$classId = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThreadsKt$thread$thread$1(DatabaseUpgradeService databaseUpgradeService) {
        super("DatabaseUpgradeService");
        this.$block = databaseUpgradeService;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.$block;
        switch (i) {
            case 0:
                ((Function0) obj).invoke();
                break;
            default:
                DatabaseUpgradeService databaseUpgradeService = (DatabaseUpgradeService) obj;
                int i2 = DatabaseUpgradeService.$r8$clinit;
                List<LegacyAccountDto> accounts = ((Preferences) CloseableKt.get$default(Preferences.class)).getAccounts();
                databaseUpgradeService.mProgressEnd = accounts.size();
                databaseUpgradeService.mProgress = 0;
                for (LegacyAccountDto legacyAccountDto : accounts) {
                    String str = legacyAccountDto.uuid;
                    databaseUpgradeService.mAccountUuid = str;
                    databaseUpgradeService.sendProgressBroadcast(databaseUpgradeService.mProgress, str, databaseUpgradeService.mProgressEnd);
                    try {
                        ((LocalStoreProvider) CloseableKt.get$default(LocalStoreProvider.class)).getInstance(legacyAccountDto);
                    } catch (Exception e) {
                        Log.e(e, "Error while upgrading database", new Object[0]);
                    }
                    databaseUpgradeService.mProgress++;
                }
                K9.setDatabasesUpToDate(true);
                Intent intent = new Intent();
                intent.setAction("DatabaseUpgradeService.upgradeComplete");
                databaseUpgradeService.mLocalBroadcastManager.sendBroadcast(intent);
                databaseUpgradeService.stopSelf();
                Log.i("DatabaseUpgradeService stopped", new Object[0]);
                databaseUpgradeService.mWakeLock.release();
                databaseUpgradeService.mRunning.set(false);
                break;
        }
    }

    public ThreadsKt$thread$thread$1(Function0 function0) {
        this.$block = function0;
    }
}
