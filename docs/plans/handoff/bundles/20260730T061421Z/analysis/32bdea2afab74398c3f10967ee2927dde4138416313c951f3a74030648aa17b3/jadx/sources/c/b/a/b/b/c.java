package c.b.a.b.b;

import android.content.BroadcastReceiver;
import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.LoaderResults;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class c implements LauncherModel.ModelUpdateTask {

    /* renamed from: a, reason: collision with root package name */
    public final BroadcastReceiver.PendingResult f2532a;
    public AllAppsList mAllAppsList;
    public LauncherAppState mApp;
    public BgDataModel mBgDataModel;
    public LauncherModel mModel;

    public c(BroadcastReceiver.PendingResult pendingResult) {
        this.f2532a = pendingResult;
    }

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public final void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
        this.mApp = launcherAppState;
        this.mModel = launcherModel;
        this.mBgDataModel = bgDataModel;
        this.mAllAppsList = allAppsList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        LauncherModel launcherModel = this.mModel;
        LoaderResults loaderResults = new LoaderResults(this.mApp, this.mBgDataModel, this.mAllAppsList, new BgDataModel.Callbacks[0]);
        synchronized (launcherModel.mLock) {
            if (!launcherModel.isModelLoaded()) {
                Log.d("Launcher.Model", "Workspace not loaded, loading now");
                launcherModel.startLoaderForResults(loaderResults);
            }
        }
        StringBuilder f = c.a.c.a.a.f("Preload completed : ");
        f.append(this.mModel.isModelLoaded());
        Log.d("ModelPreload", f.toString());
        this.f2532a.setResultCode(this.mModel.isModelLoaded() ? -1 : 0);
        this.f2532a.finish();
    }
}
