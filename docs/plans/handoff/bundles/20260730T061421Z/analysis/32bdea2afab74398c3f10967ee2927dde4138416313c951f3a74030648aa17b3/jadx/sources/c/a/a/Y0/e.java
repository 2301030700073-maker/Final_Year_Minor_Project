package c.a.a.Y0;

import android.view.View;
import android.widget.Toast;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.util.PendingRequestArgs;
import com.android.launcher3.widget.PendingAppWidgetHostView;
import com.android.launcher3.widget.WidgetAddFlowHandler;
import com.android.launcher3.widget.WidgetManagerHelper;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f1707a;

    public /* synthetic */ e(String str) {
        this.f1707a = str;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        String str = this.f1707a;
        if (view.getWindowToken() == null) {
            return;
        }
        Launcher launcher = Launcher.getLauncher(view.getContext());
        if (launcher.mWorkspace.isFinishedSwitchingState()) {
            Object tag = view.getTag();
            if (tag instanceof WorkspaceItemInfo) {
                ItemClickHandler.onClickAppShortcut(view, (WorkspaceItemInfo) tag, launcher, str);
                return;
            }
            if (tag instanceof FolderInfo) {
                if (view instanceof FolderIcon) {
                    Folder folder = ((FolderIcon) view).mFolder;
                    if (folder.isOpen() || folder.mDestroyed) {
                        return;
                    }
                    folder.animateOpen(folder.mInfo.contents, 0);
                    StatsLogManager.newInstance(view.getContext()).logger().withItemInfo(folder.mInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_FOLDER_OPEN);
                    return;
                }
                return;
            }
            if (tag instanceof AppInfo) {
                AppInfo appInfo = (AppInfo) tag;
                if (str == null) {
                    str = AppLaunchTracker.CONTAINER_ALL_APPS;
                }
                ItemClickHandler.startAppShortcutOrInfoActivity(view, appInfo, launcher, str);
                return;
            }
            if ((tag instanceof LauncherAppWidgetInfo) && (view instanceof PendingAppWidgetHostView)) {
                PendingAppWidgetHostView pendingAppWidgetHostView = (PendingAppWidgetHostView) view;
                if (launcher.getPackageManager().isSafeMode()) {
                    Toast.makeText(launcher, R.string.safemode_widget_error, 0).show();
                    return;
                }
                LauncherAppWidgetInfo launcherAppWidgetInfo = (LauncherAppWidgetInfo) pendingAppWidgetHostView.getTag();
                if (!pendingAppWidgetHostView.isReadyForClickSetup()) {
                    ItemClickHandler.onClickPendingAppItem(pendingAppWidgetHostView, launcher, launcherAppWidgetInfo.providerName.getPackageName(), launcherAppWidgetInfo.installProgress >= 0);
                    return;
                }
                LauncherAppWidgetProviderInfo findProvider = new WidgetManagerHelper(launcher).findProvider(launcherAppWidgetInfo.providerName, launcherAppWidgetInfo.user);
                if (findProvider == null) {
                    return;
                }
                WidgetAddFlowHandler widgetAddFlowHandler = new WidgetAddFlowHandler(findProvider);
                if (!launcherAppWidgetInfo.hasRestoreFlag(1)) {
                    widgetAddFlowHandler.startConfigActivity(launcher, launcherAppWidgetInfo.appWidgetId, launcherAppWidgetInfo, 13);
                    return;
                }
                if (launcherAppWidgetInfo.hasRestoreFlag(16)) {
                    int i = launcherAppWidgetInfo.appWidgetId;
                    PendingRequestArgs pendingRequestArgs = new PendingRequestArgs(i, 2, widgetAddFlowHandler);
                    pendingRequestArgs.copyFrom(launcherAppWidgetInfo);
                    launcher.mPendingRequestArgs = pendingRequestArgs;
                    launcher.mAppWidgetHost.startBindFlow(launcher, i, widgetAddFlowHandler.mProviderInfo, 12);
                }
            }
        }
    }
}
