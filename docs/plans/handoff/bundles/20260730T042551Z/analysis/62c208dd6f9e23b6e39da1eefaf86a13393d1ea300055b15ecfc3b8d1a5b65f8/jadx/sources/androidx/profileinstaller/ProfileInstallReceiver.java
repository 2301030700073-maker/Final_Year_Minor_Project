package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import androidx.profileinstaller.Cfor;
import defpackage.ExecutorC2951is;
import java.io.File;

/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {

    /* renamed from: androidx.profileinstaller.ProfileInstallReceiver$do, reason: invalid class name */
    public class Cdo implements Cfor.InterfaceC0040for {
        public Cdo() {
        }

        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: do, reason: not valid java name */
        public final void mo4289do() {
        }

        @Override // androidx.profileinstaller.Cfor.InterfaceC0040for
        /* renamed from: if, reason: not valid java name */
        public final void mo4290if(int i, Object obj) {
            if (i == 6 || i == 7 || i == 8) {
            }
            ProfileInstallReceiver.this.setResultCode(i);
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        File codeCacheDir;
        Context createDeviceProtectedStorageContext;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if ("androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            Cfor.m4295if(context, new ExecutorC2951is(1), new Cdo(), true);
            return;
        }
        if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
            Bundle extras2 = intent.getExtras();
            if (extras2 != null) {
                String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                if (!"WRITE_SKIP_FILE".equals(string)) {
                    if ("DELETE_SKIP_FILE".equals(string)) {
                        new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                        setResultCode(11);
                        return;
                    }
                    return;
                }
                Cdo cdo = new Cdo();
                try {
                    Cfor.m4294do(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                    cdo.mo4290if(10, null);
                    return;
                } catch (PackageManager.NameNotFoundException e) {
                    cdo.mo4290if(7, e);
                    return;
                }
            }
            return;
        }
        if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
            if (Build.VERSION.SDK_INT < 24) {
                setResultCode(13);
                return;
            } else {
                Process.sendSignal(Process.myPid(), 10);
                setResultCode(12);
                return;
            }
        }
        if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
            return;
        }
        if (!"DROP_SHADER_CACHE".equals(extras.getString("EXTRA_BENCHMARK_OPERATION"))) {
            setResultCode(16);
            return;
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            createDeviceProtectedStorageContext = context.createDeviceProtectedStorageContext();
            codeCacheDir = createDeviceProtectedStorageContext.getCodeCacheDir();
        } else {
            codeCacheDir = i >= 23 ? context.getCodeCacheDir() : context.getCacheDir();
        }
        if (androidx.profileinstaller.Cdo.m4293do(codeCacheDir)) {
            setResultCode(14);
        } else {
            setResultCode(15);
        }
    }
}
