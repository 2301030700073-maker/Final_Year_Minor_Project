package com.fsck.k9.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.fsck.k9.power.AndroidPowerManager;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.concurrent.ThreadsKt$thread$thread$1;
import kotlin.io.CloseableKt;
import net.thunderbird.core.logging.legacy.Log;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class DatabaseUpgradeService extends Service {
    public static final /* synthetic */ int $r8$clinit = 0;
    public String mAccountUuid;
    public LocalBroadcastManager mLocalBroadcastManager;
    public int mProgress;
    public int mProgressEnd;
    public final AtomicBoolean mRunning = new AtomicBoolean(false);
    public AndroidPowerManager.AndroidWakeLock mWakeLock;

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        this.mLocalBroadcastManager = LocalBroadcastManager.getInstance(this);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        if (!this.mRunning.compareAndSet(false, true)) {
            sendProgressBroadcast(this.mProgress, this.mAccountUuid, this.mProgressEnd);
            return 1;
        }
        Log.i("DatabaseUpgradeService started", new Object[0]);
        AndroidPowerManager.AndroidWakeLock androidWakeLock = new AndroidPowerManager.AndroidWakeLock((AndroidPowerManager) CloseableKt.get$default(AndroidPowerManager.class), "DatabaseUpgradeService");
        this.mWakeLock = androidWakeLock;
        synchronized (androidWakeLock.wakeLock) {
            androidWakeLock.wakeLock.setReferenceCounted(false);
        }
        this.mWakeLock.acquire(600000L);
        new ThreadsKt$thread$thread$1(this).start();
        return 1;
    }

    public final void sendProgressBroadcast(int i, String str, int i2) {
        Intent intent = new Intent();
        intent.setAction("DatabaseUpgradeService.upgradeProgress");
        intent.putExtra("account_uuid", str);
        intent.putExtra("progress", i);
        intent.putExtra("progress_end", i2);
        this.mLocalBroadcastManager.sendBroadcast(intent);
    }
}
