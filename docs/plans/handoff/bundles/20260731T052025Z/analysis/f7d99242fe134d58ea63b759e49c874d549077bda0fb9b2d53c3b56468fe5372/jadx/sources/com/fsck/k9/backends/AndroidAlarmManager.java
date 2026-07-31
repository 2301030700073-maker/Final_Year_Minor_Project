package com.fsck.k9.backends;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.tracing.TraceApi29Impl;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import com.bumptech.glide.manager.SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24;
import com.fsck.k9.R;
import com.fsck.k9.activity.UpgradeDatabaseActivity;
import com.fsck.k9.controller.push.AlarmPermissionManagerApi31;
import com.fsck.k9.controller.push.AutoSyncManager;
import com.fsck.k9.controller.push.PushController$alarmPermissionListener$1;
import com.fsck.k9.controller.push.PushController$autoSyncListener$1;
import com.google.android.material.textview.MaterialTextView;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.openid.appauth.JsonUtil$Field;
import net.thunderbird.app.common.account.data.DefaultLegacyAccountManager;
import net.thunderbird.core.android.account.LegacyAccount;
import net.thunderbird.core.logging.legacy.Log;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidAlarmManager {
    public final AlarmManager alarmManager;
    public final AtomicReference callback;
    public final ContextScope coroutineScope;
    public final PendingIntent pendingIntent;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    /* renamed from: com.fsck.k9.backends.AndroidAlarmManager$1, reason: invalid class name */
    public final class AnonymousClass1 extends BroadcastReceiver {
        public final /* synthetic */ int $r8$classId;
        public final /* synthetic */ Object this$0;

        public /* synthetic */ AnonymousClass1(int i, Object obj) {
            this.$r8$classId = i;
            this.this$0 = obj;
        }

        private final void onReceive$com$fsck$k9$controller$push$AlarmPermissionManagerApi31$receiver$1(Context context, Intent intent) {
            PushController$alarmPermissionListener$1 pushController$alarmPermissionListener$1;
            context.getClass();
            AlarmPermissionManagerApi31 alarmPermissionManagerApi31 = (AlarmPermissionManagerApi31) this.this$0;
            synchronized (alarmPermissionManagerApi31) {
                pushController$alarmPermissionListener$1 = alarmPermissionManagerApi31.listener;
            }
            if (pushController$alarmPermissionListener$1 != null) {
                pushController$alarmPermissionListener$1.$tmp0.launchUpdatePushers();
            }
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            PushController$autoSyncListener$1 pushController$autoSyncListener$1;
            Continuation continuation = null;
            int i = 0;
            switch (this.$r8$classId) {
                case 0:
                    AndroidAlarmManager androidAlarmManager = (AndroidAlarmManager) this.this$0;
                    Function0 function0 = (Function0) androidAlarmManager.callback.getAndSet(null);
                    if (function0 == null) {
                        Log.w("Alarm triggered but 'callback' was null", new Object[0]);
                        return;
                    } else {
                        JobKt.launch$default(androidAlarmManager.coroutineScope, null, null, new AndroidAlarmManager$1$onReceive$1(function0, continuation, i), 3);
                        return;
                    }
                case 1:
                    ((JsonUtil$Field) this.this$0).onChange();
                    return;
                case 2:
                    context.getClass();
                    intent.getClass();
                    ((BroadcastReceiverConstraintTracker) this.this$0).onBroadcastReceive(intent);
                    return;
                case 3:
                    SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24.EXECUTOR.execute(new SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24.AnonymousClass2((SingletonConnectivityReceiver$FrameworkConnectivityMonitorPreApi24) this.this$0, 2));
                    return;
                case 4:
                    UpgradeDatabaseActivity upgradeDatabaseActivity = (UpgradeDatabaseActivity) this.this$0;
                    intent.getClass();
                    String action = intent.getAction();
                    if (!"DatabaseUpgradeService.upgradeProgress".equals(action)) {
                        if ("DatabaseUpgradeService.upgradeComplete".equals(action)) {
                            int i2 = UpgradeDatabaseActivity.$r8$clinit;
                            upgradeDatabaseActivity.finish();
                            upgradeDatabaseActivity.startActivity(upgradeDatabaseActivity.mStartIntent);
                            return;
                        }
                        return;
                    }
                    String stringExtra = intent.getStringExtra("account_uuid");
                    if (stringExtra == null) {
                        _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Missing Intent extra 'account_uuid'");
                        return;
                    }
                    LegacyAccount account = ((DefaultLegacyAccountManager) upgradeDatabaseActivity.accountManager$delegate.getValue()).getAccount(stringExtra);
                    if (account != null) {
                        String string = upgradeDatabaseActivity.getString(R.string.upgrade_database_format, account.profile.name);
                        string.getClass();
                        MaterialTextView materialTextView = upgradeDatabaseActivity.mUpgradeText;
                        if (materialTextView != null) {
                            materialTextView.setText(string);
                            return;
                        } else {
                            Intrinsics.throwUninitializedPropertyAccessException("mUpgradeText");
                            throw null;
                        }
                    }
                    return;
                case 5:
                    onReceive$com$fsck$k9$controller$push$AlarmPermissionManagerApi31$receiver$1(context, intent);
                    return;
                default:
                    context.getClass();
                    AutoSyncManager autoSyncManager = (AutoSyncManager) this.this$0;
                    synchronized (autoSyncManager) {
                        pushController$autoSyncListener$1 = autoSyncManager.listener;
                    }
                    if (pushController$autoSyncListener$1 != null) {
                        pushController$autoSyncListener$1.$tmp0.launchUpdatePushers();
                        return;
                    }
                    return;
            }
        }
    }

    public AndroidAlarmManager(Context context, AlarmManager alarmManager) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.alarmManager = alarmManager;
        this.coroutineScope = JobKt.CoroutineScope(defaultIoScheduler);
        Intent intent = new Intent("com.fsck.k9.backends.ALARM");
        intent.setPackage(context.getPackageName());
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 1, intent, 67108864);
        broadcast.getClass();
        this.pendingIntent = broadcast;
        this.callback = new AtomicReference(null);
        TraceApi29Impl.registerReceiver(context, new AnonymousClass1(0, this), new IntentFilter("com.fsck.k9.backends.ALARM"), 4);
    }
}
