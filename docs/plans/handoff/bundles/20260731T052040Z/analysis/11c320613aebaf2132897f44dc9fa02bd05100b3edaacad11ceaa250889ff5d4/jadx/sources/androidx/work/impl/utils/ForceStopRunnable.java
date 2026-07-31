package androidx.work.impl.utils;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteAccessPermException;
import android.database.sqlite.SQLiteCantOpenDatabaseException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteTableLockedException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import androidx.work.Configuration;
import androidx.work.Logger$LogcatLogger;
import androidx.work.impl.WorkManagerImpl;
import com.google.android.exoplayer2.C;
import org.jsoup.Jsoup;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ForceStopRunnable implements Runnable {
    public static final String TAG = Logger$LogcatLogger.tagWithPrefix("ForceStopRunnable");
    public static final long TEN_YEARS = 315360000000L;
    public final Context mContext;
    public final IdGenerator mPreferenceUtils;
    public int mRetryCount = 0;
    public final WorkManagerImpl mWorkManager;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public class BroadcastReceiver extends android.content.BroadcastReceiver {
        public static final String TAG = Logger$LogcatLogger.tagWithPrefix("ForceStopRunnable$Rcvr");

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent == null || !"ACTION_FORCE_STOP_RESCHEDULE".equals(intent.getAction())) {
                return;
            }
            if (Logger$LogcatLogger.get().mLoggingLevel <= 2) {
                Log.v(TAG, "Rescheduling alarm that keeps track of force-stops.");
            }
            ForceStopRunnable.setAlarm(context);
        }
    }

    public ForceStopRunnable(Context context, WorkManagerImpl workManagerImpl) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManagerImpl;
        this.mPreferenceUtils = workManagerImpl.mPreferenceUtils;
    }

    public static void setAlarm(Context context) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i = Build.VERSION.SDK_INT >= 31 ? 167772160 : C.BUFFER_FLAG_FIRST_SAMPLE;
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, (Class<?>) BroadcastReceiver.class));
        intent.setAction("ACTION_FORCE_STOP_RESCHEDULE");
        PendingIntent broadcast = PendingIntent.getBroadcast(context, -1, intent, i);
        long currentTimeMillis = System.currentTimeMillis() + TEN_YEARS;
        if (alarmManager != null) {
            alarmManager.setExact(0, currentTimeMillis, broadcast);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0208  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void forceStopRunnable() {
        /*
            Method dump skipped, instructions count: 581
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.ForceStopRunnable.forceStopRunnable():void");
    }

    public final boolean multiProcessChecks() {
        Configuration configuration = this.mWorkManager.mConfiguration;
        configuration.getClass();
        boolean isEmpty = TextUtils.isEmpty(null);
        String str = TAG;
        if (isEmpty) {
            Logger$LogcatLogger.get().debug(str, "The default process name was not specified.");
            return true;
        }
        boolean isDefaultProcess = ProcessUtils.isDefaultProcess(this.mContext, configuration);
        Logger$LogcatLogger.get().debug(str, "Is default app process = " + isDefaultProcess);
        return isDefaultProcess;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.mContext;
        String str = TAG;
        WorkManagerImpl workManagerImpl = this.mWorkManager;
        try {
            if (!multiProcessChecks()) {
                return;
            }
            while (true) {
                try {
                    Jsoup.migrateDatabase(context);
                    Logger$LogcatLogger.get().debug(str, "Performing cleanup operations.");
                    try {
                        forceStopRunnable();
                        return;
                    } catch (SQLiteAccessPermException | SQLiteCantOpenDatabaseException | SQLiteConstraintException | SQLiteDatabaseCorruptException | SQLiteDatabaseLockedException | SQLiteDiskIOException | SQLiteFullException | SQLiteTableLockedException e) {
                        int i = this.mRetryCount + 1;
                        this.mRetryCount = i;
                        if (i >= 3) {
                            String str2 = Build.VERSION.SDK_INT >= 24 ? Utility.isUserUnlocked(context) : true ? "The file system on the device is in a bad state. WorkManager cannot access the app's internal data store." : "WorkManager can't be accessed from direct boot, because credential encrypted storage isn't accessible.\nDon't access or initialise WorkManager from directAware components. See https://developer.android.com/training/articles/direct-boot";
                            Logger$LogcatLogger.get().error(str, str2, e);
                            IllegalStateException illegalStateException = new IllegalStateException(str2, e);
                            workManagerImpl.mConfiguration.getClass();
                            throw illegalStateException;
                        }
                        Logger$LogcatLogger.get().debug(str, "Retrying after " + (i * 300), e);
                        try {
                            Thread.sleep(this.mRetryCount * 300);
                        } catch (InterruptedException unused) {
                        }
                    }
                } catch (SQLiteException e2) {
                    Logger$LogcatLogger.get().error(str, "Unexpected SQLite exception during migrations");
                    IllegalStateException illegalStateException2 = new IllegalStateException("Unexpected SQLite exception during migrations", e2);
                    workManagerImpl.mConfiguration.getClass();
                    throw illegalStateException2;
                }
            }
        } finally {
            workManagerImpl.onForceStopRunnableCompleted();
        }
    }
}
