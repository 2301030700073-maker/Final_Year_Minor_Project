package net.thunderbird.feature.changelog.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.preference.PreferenceManager;
import android.util.Log;
import com.fsck.k9.R;
import com.google.zxing.BinaryBitmap;
import de.cketti.changelog.ChangeLog;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SubscribedSharedFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.PriorityQueue;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChangeLogManager {
    public final CoroutineScope appCoroutineScope;
    public final CoroutineDispatcher backgroundDispatcher;
    public final SynchronizedLazyImpl changeLog$delegate;
    public final SynchronizedLazyImpl changeLogFlow$delegate;
    public final Context context;
    public final SharedFlowImpl mutableChangeLogFlow;

    public ChangeLogManager(Context context, CoroutineScope coroutineScope) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        defaultIoScheduler.getClass();
        this.context = context;
        this.appCoroutineScope = coroutineScope;
        this.backgroundDispatcher = defaultIoScheduler;
        final int i = 0;
        this.mutableChangeLogFlow = FlowKt.MutableSharedFlow$default(0, 6, null);
        this.changeLog$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: net.thunderbird.feature.changelog.internal.ChangeLogManager$$ExternalSyntheticLambda0
            public final /* synthetic */ ChangeLogManager f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                int i3 = 0;
                ChangeLogManager changeLogManager = this.f$0;
                switch (i2) {
                    case 0:
                        Context context2 = changeLogManager.context;
                        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context2);
                        Resources resources = context2.getResources();
                        ChangeLog changeLog = new ChangeLog(context2, defaultSharedPreferences, new BinaryBitmap(23, new PriorityQueue(R.raw.changelog_master, 16, resources), new PriorityQueue(R.raw.changelog, 16, resources)));
                        changeLog.firstVersionCode = defaultSharedPreferences.getInt("ckChangeLog_first_version_code", -1);
                        changeLog.lastVersionCode = defaultSharedPreferences.getInt("ckChangeLog_last_version_code", -1);
                        try {
                            changeLog.currentVersionCode = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
                        } catch (PackageManager.NameNotFoundException e) {
                            changeLog.currentVersionCode = -1;
                            Log.e("ckChangeLog", "Could not get version information from manifest!", e);
                        }
                        if (changeLog.firstVersionCode == -1) {
                            int i4 = changeLog.lastVersionCode;
                            if (i4 == -1) {
                                i4 = changeLog.currentVersionCode;
                            }
                            changeLog.firstVersionCode = i4;
                            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                            edit.putInt("ckChangeLog_first_version_code", changeLog.firstVersionCode);
                            edit.putInt("ckChangeLog_last_version_code", changeLog.firstVersionCode);
                            edit.apply();
                        }
                        changeLogManager.mutableChangeLogFlow.tryEmit(changeLog);
                        return changeLog;
                    default:
                        return new SubscribedSharedFlow(changeLogManager.mutableChangeLogFlow, new ChangeLogManager$changeLogFlow$2$1(changeLogManager, null, i3));
                }
            }
        });
        final int i2 = 1;
        this.changeLogFlow$delegate = new SynchronizedLazyImpl(new Function0(this) { // from class: net.thunderbird.feature.changelog.internal.ChangeLogManager$$ExternalSyntheticLambda0
            public final /* synthetic */ ChangeLogManager f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                int i3 = 0;
                ChangeLogManager changeLogManager = this.f$0;
                switch (i22) {
                    case 0:
                        Context context2 = changeLogManager.context;
                        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context2);
                        Resources resources = context2.getResources();
                        ChangeLog changeLog = new ChangeLog(context2, defaultSharedPreferences, new BinaryBitmap(23, new PriorityQueue(R.raw.changelog_master, 16, resources), new PriorityQueue(R.raw.changelog, 16, resources)));
                        changeLog.firstVersionCode = defaultSharedPreferences.getInt("ckChangeLog_first_version_code", -1);
                        changeLog.lastVersionCode = defaultSharedPreferences.getInt("ckChangeLog_last_version_code", -1);
                        try {
                            changeLog.currentVersionCode = context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode;
                        } catch (PackageManager.NameNotFoundException e) {
                            changeLog.currentVersionCode = -1;
                            Log.e("ckChangeLog", "Could not get version information from manifest!", e);
                        }
                        if (changeLog.firstVersionCode == -1) {
                            int i4 = changeLog.lastVersionCode;
                            if (i4 == -1) {
                                i4 = changeLog.currentVersionCode;
                            }
                            changeLog.firstVersionCode = i4;
                            SharedPreferences.Editor edit = defaultSharedPreferences.edit();
                            edit.putInt("ckChangeLog_first_version_code", changeLog.firstVersionCode);
                            edit.putInt("ckChangeLog_last_version_code", changeLog.firstVersionCode);
                            edit.apply();
                        }
                        changeLogManager.mutableChangeLogFlow.tryEmit(changeLog);
                        return changeLog;
                    default:
                        return new SubscribedSharedFlow(changeLogManager.mutableChangeLogFlow, new ChangeLogManager$changeLogFlow$2$1(changeLogManager, null, i3));
                }
            }
        });
    }
}
