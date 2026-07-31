package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor$$ExternalSyntheticLambda0;
import androidx.paging.HintHandler;
import java.io.File;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            Encoding.writeProfile(context, new ArchTaskExecutor$$ExternalSyntheticLambda0(1), new HintHandler(29, this), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if (!"WRITE_SKIP_FILE".equals(string)) {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        Log.d("ProfileInstaller", "RESULT_DELETE_SKIP_FILE_SUCCESS");
                        setResultCode(11);
                        return;
                    }
                    return;
                }
                HintHandler hintHandler = new HintHandler(29, this);
                try {
                    Encoding.noteProfileWrittenFor(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                    hintHandler.onResultReceived(10, null);
                    return;
                } catch (PackageManager.NameNotFoundException e) {
                    hintHandler.onResultReceived(7, e);
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            HintHandler hintHandler2 = new HintHandler(29, this);
            int myPid = Process.myPid();
            if (Build.VERSION.SDK_INT < 24) {
                hintHandler2.onResultReceived(13, null);
                return;
            } else {
                Process.sendSignal(myPid, 10);
                hintHandler2.onResultReceived(12, null);
                return;
            }
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
        HintHandler hintHandler3 = new HintHandler(29, this);
        if ("DROP_SHADER_CACHE".equals(string2)) {
            int i = Build.VERSION.SDK_INT;
            if (Encoding.deleteFilesRecursively(i >= 34 ? BenchmarkOperation$Api24ContextHelper.createDeviceProtectedStorageContext(context).getCacheDir() : i >= 24 ? BenchmarkOperation$Api24ContextHelper.createDeviceProtectedStorageContext(context).getCodeCacheDir() : i == 23 ? context.getCodeCacheDir() : context.getCacheDir())) {
                hintHandler3.onResultReceived(14, null);
                return;
            } else {
                hintHandler3.onResultReceived(15, null);
                return;
            }
        }
        if (!"SAVE_PROFILE".equals(string2)) {
            hintHandler3.onResultReceived(16, null);
            return;
        }
        int i2 = extras.getInt("EXTRA_PID", Process.myPid());
        if (Build.VERSION.SDK_INT < 24) {
            hintHandler3.onResultReceived(13, null);
        } else {
            Process.sendSignal(i2, 10);
            hintHandler3.onResultReceived(12, null);
        }
    }
}
