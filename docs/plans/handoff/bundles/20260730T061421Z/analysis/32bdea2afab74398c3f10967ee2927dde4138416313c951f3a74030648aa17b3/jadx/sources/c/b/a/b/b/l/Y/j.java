package c.b.a.b.b.l.Y;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class j extends SystemShortcut.AppInfo {
    public j(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        super(baseDraggingActivity, itemInfo);
    }

    @Override // com.android.launcher3.popup.SystemShortcut.AppInfo, android.view.View.OnClickListener
    public void onClick(View view) {
        Rect viewBounds = this.mTarget.getViewBounds(view);
        BaseDraggingActivity baseDraggingActivity = this.mTarget;
        baseDraggingActivity.getPackageManager();
        LauncherApps launcherApps = (LauncherApps) baseDraggingActivity.getSystemService(LauncherApps.class);
        ItemInfo itemInfo = this.mItemInfo;
        if (itemInfo instanceof PromiseAppInfo) {
            baseDraggingActivity.startActivity(((PromiseAppInfo) itemInfo).getMarketIntent(baseDraggingActivity));
        } else {
            ComponentName targetComponent = itemInfo instanceof AppInfo ? ((AppInfo) itemInfo).componentName : itemInfo instanceof WorkspaceItemInfo ? itemInfo.getTargetComponent() : itemInfo instanceof PendingAddItemInfo ? ((PendingAddItemInfo) itemInfo).componentName : itemInfo instanceof LauncherAppWidgetInfo ? ((LauncherAppWidgetInfo) itemInfo).providerName : null;
            if (targetComponent != null) {
                try {
                    launcherApps.startAppDetailsActivity(targetComponent, itemInfo.user, viewBounds, null);
                } catch (ActivityNotFoundException | SecurityException e) {
                    Toast.makeText(baseDraggingActivity, R.string.activity_not_found, 0).show();
                    Log.e("PackageManagerHelper", "Unable to launch settings", e);
                }
            }
        }
        this.mTarget.getUserEventDispatcher().logActionOnControl(0, 7, view, new int[0]);
    }
}
