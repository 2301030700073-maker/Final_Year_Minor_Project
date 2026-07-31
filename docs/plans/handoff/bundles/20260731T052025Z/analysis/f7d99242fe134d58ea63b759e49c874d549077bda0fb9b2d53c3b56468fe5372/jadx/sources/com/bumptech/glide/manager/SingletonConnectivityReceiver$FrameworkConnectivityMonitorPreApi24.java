package com.bumptech.glide.manager;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import com.bumptech.glide.util.GlideSuppliers$1;
import com.bumptech.glide.util.Util;
import com.fsck.k9.backends.AndroidAlarmManager;
import com.takisoft.datetimepicker.widget.NumberPicker;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 implements SingletonConnectivityReceiver$FrameworkConnectivityMonitor {
    public static final Executor EXECUTOR = AsyncTask.SERIAL_EXECUTOR;
    public final GlideSuppliers$1 connectivityManager;
    public final AndroidAlarmManager.AnonymousClass1 connectivityReceiver = new AndroidAlarmManager.AnonymousClass1(3, this);
    public final Context context;
    public volatile boolean isConnected;
    public volatile boolean isRegistered;
    public final SingletonConnectivityReceiver$2 listener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24$2, reason: invalid class name */
    public final class AnonymousClass2 implements Runnable {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 this$0;

        public /* synthetic */ AnonymousClass2(SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24, int i) {
            this.$r8$classId = i;
            this.this$0 = singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (this.$r8$classId) {
                case 0:
                    SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 = this.this$0;
                    singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24.isConnected = singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24.isConnected();
                    try {
                        SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi242 = this.this$0;
                        singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi242.context.registerReceiver(singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi242.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                        this.this$0.isRegistered = true;
                        break;
                    } catch (SecurityException e) {
                        if (Log.isLoggable("ConnectivityMonitor", 5)) {
                            Log.w("ConnectivityMonitor", "Failed to register", e);
                        }
                        this.this$0.isRegistered = false;
                        return;
                    }
                case 1:
                    if (this.this$0.isRegistered) {
                        this.this$0.isRegistered = false;
                        SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi243 = this.this$0;
                        singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi243.context.unregisterReceiver(singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi243.connectivityReceiver);
                        break;
                    }
                    break;
                default:
                    boolean z = this.this$0.isConnected;
                    SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi244 = this.this$0;
                    singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi244.isConnected = singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi244.isConnected();
                    if (z != this.this$0.isConnected) {
                        if (Log.isLoggable("ConnectivityMonitor", 3)) {
                            Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.this$0.isConnected);
                        }
                        SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24 singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi245 = this.this$0;
                        Util.getUiThreadHandler().post(new NumberPicker.ChangeCurrentByOneFromLongPressCommand(2, singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi245, singletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi245.isConnected));
                        break;
                    }
                    break;
            }
        }
    }

    public SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24(Context context, GlideSuppliers$1 glideSuppliers$1, SingletonConnectivityReceiver$2 singletonConnectivityReceiver$2) {
        this.context = context.getApplicationContext();
        this.connectivityManager = glideSuppliers$1;
        this.listener = singletonConnectivityReceiver$2;
    }

    public final boolean isConnected() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.connectivityManager.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e) {
            if (!Log.isLoggable("ConnectivityMonitor", 5)) {
                return true;
            }
            Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitor
    public final boolean register() {
        EXECUTOR.execute(new AnonymousClass2(this, 0));
        return true;
    }

    @Override // com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitor
    public final void unregister() {
        EXECUTOR.execute(new AnonymousClass2(this, 1));
    }
}
