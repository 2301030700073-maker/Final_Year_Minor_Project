package com.android.launcher3.popup;

import android.app.ActivityOptions;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.Launcher;
import com.android.launcher3.PendingAddItemInfo;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.util.InstantAppResolver;
import com.android.launcher3.util.PackageUserKey;
import com.android.launcher3.widget.WidgetsBottomSheet;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public abstract class SystemShortcut extends ItemInfo implements View.OnClickListener {
    public final int mAccessibilityActionId;
    public final int mIconResId;
    public final ItemInfo mItemInfo;
    public final int mLabelResId;
    public final BaseDraggingActivity mTarget;
    public static final Factory WIDGETS = new Factory() { // from class: c.a.a.R0.q
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return SystemShortcut.e((Launcher) baseDraggingActivity, itemInfo);
        }
    };
    public static final Factory APP_INFO = new Factory() { // from class: c.a.a.R0.b
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return new SystemShortcut.AppInfo(baseDraggingActivity, itemInfo);
        }
    };
    public static final Factory INSTALL = new Factory() { // from class: c.a.a.R0.p
        @Override // com.android.launcher3.popup.SystemShortcut.Factory
        public final SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            return SystemShortcut.g(baseDraggingActivity, itemInfo);
        }
    };

    public class AppInfo extends SystemShortcut {
        public AppInfo(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            super(R.drawable.ic_info_no_shadow, R.string.app_info_drop_target_label, baseDraggingActivity, itemInfo);
        }

        public void onClick(View view) {
            SystemShortcut.dismissTaskMenuView(this.mTarget);
            Rect viewBounds = this.mTarget.getViewBounds(view);
            BaseDraggingActivity baseDraggingActivity = this.mTarget;
            baseDraggingActivity.getPackageManager();
            LauncherApps launcherApps = (LauncherApps) baseDraggingActivity.getSystemService(LauncherApps.class);
            ItemInfo itemInfo = this.mItemInfo;
            Bundle bundle = ActivityOptions.makeBasic().toBundle();
            if (itemInfo instanceof PromiseAppInfo) {
                baseDraggingActivity.startActivity(((PromiseAppInfo) itemInfo).getMarketIntent(baseDraggingActivity));
            } else {
                ComponentName componentName = null;
                if (itemInfo instanceof com.android.launcher3.model.data.AppInfo) {
                    componentName = ((com.android.launcher3.model.data.AppInfo) itemInfo).componentName;
                } else if (itemInfo instanceof WorkspaceItemInfo) {
                    componentName = itemInfo.getTargetComponent();
                } else if (itemInfo instanceof PendingAddItemInfo) {
                    componentName = ((PendingAddItemInfo) itemInfo).componentName;
                } else if (itemInfo instanceof LauncherAppWidgetInfo) {
                    componentName = ((LauncherAppWidgetInfo) itemInfo).providerName;
                }
                if (componentName != null) {
                    try {
                        launcherApps.startAppDetailsActivity(componentName, itemInfo.user, viewBounds, bundle);
                    } catch (ActivityNotFoundException | SecurityException e) {
                        Toast.makeText(baseDraggingActivity, R.string.activity_not_found, 0).show();
                        Log.e("PackageManagerHelper", "Unable to launch settings", e);
                    }
                }
            }
            this.mTarget.getUserEventDispatcher().logActionOnControl(0, 7, view, new int[0]);
            this.mTarget.getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP);
        }
    }

    public interface Factory {
        SystemShortcut getShortcut(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo);
    }

    public class Install extends SystemShortcut {
        public Install(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
            super(R.drawable.ic_install_no_shadow, R.string.install_drop_target_label, baseDraggingActivity, itemInfo);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = view.getContext();
            context.getPackageManager();
            this.mTarget.k(view, new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", this.mItemInfo.getTargetComponent().getPackageName()).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(context.getPackageName()).build()), this.mItemInfo, null);
            AbstractFloatingView.closeAllOpenViews(this.mTarget);
        }
    }

    public class Widgets extends SystemShortcut {
        public Widgets(Launcher launcher, ItemInfo itemInfo) {
            super(R.drawable.ic_widget, R.string.widget_button_text, launcher, itemInfo);
        }

        public void onClick(View view) {
            AbstractFloatingView.closeAllOpenViews(this.mTarget);
            ((WidgetsBottomSheet) ((Launcher) this.mTarget).getLayoutInflater().inflate(R.layout.widgets_bottom_sheet, (ViewGroup) ((Launcher) this.mTarget).mDragLayer, false)).populateAndShow(this.mItemInfo);
            ((Launcher) this.mTarget).getUserEventDispatcher().logActionOnControl(0, 2, view, new int[0]);
            ((Launcher) this.mTarget).getStatsLogManager().logger().withItemInfo(this.mItemInfo).log(StatsLogManager.LauncherEvent.LAUNCHER_SYSTEM_SHORTCUT_WIDGETS_TAP);
        }
    }

    public SystemShortcut(int i, int i2, BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        this.mIconResId = i;
        this.mLabelResId = i2;
        this.mAccessibilityActionId = i2;
        this.mTarget = baseDraggingActivity;
        this.mItemInfo = itemInfo;
    }

    public static void dismissTaskMenuView(BaseDraggingActivity baseDraggingActivity) {
        AbstractFloatingView.closeOpenViews(baseDraggingActivity, true, 3467);
    }

    public static SystemShortcut e(Launcher launcher, ItemInfo itemInfo) {
        if (itemInfo.getTargetComponent() == null || launcher.mPopupDataProvider.getWidgetsForPackageUser(new PackageUserKey(itemInfo.getTargetComponent().getPackageName(), itemInfo.user)) == null) {
            return null;
        }
        return new Widgets(launcher, itemInfo);
    }

    public static /* synthetic */ SystemShortcut g(BaseDraggingActivity baseDraggingActivity, ItemInfo itemInfo) {
        boolean z = true;
        boolean z2 = (itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasStatusFlag(16);
        boolean isInstantApp = itemInfo instanceof com.android.launcher3.model.data.AppInfo ? InstantAppResolver.newInstance(baseDraggingActivity).isInstantApp((com.android.launcher3.model.data.AppInfo) itemInfo) : false;
        if (!z2 && !isInstantApp) {
            z = false;
        }
        if (z) {
            return new Install(baseDraggingActivity, itemInfo);
        }
        return null;
    }

    public AccessibilityNodeInfo.AccessibilityAction createAccessibilityAction(Context context) {
        return new AccessibilityNodeInfo.AccessibilityAction(this.mAccessibilityActionId, context.getText(this.mLabelResId));
    }

    public boolean hasHandlerForAction(int i) {
        return this.mAccessibilityActionId == i;
    }

    public boolean isLeftGroup() {
        return false;
    }

    public void setIconAndContentDescriptionFor(ImageView imageView) {
        imageView.setImageResource(this.mIconResId);
        imageView.setContentDescription(imageView.getContext().getText(this.mLabelResId));
    }

    public void setIconAndLabelFor(View view, TextView textView) {
        view.setBackgroundResource(this.mIconResId);
        textView.setText(this.mLabelResId);
    }

    public SystemShortcut(SystemShortcut systemShortcut) {
        this.mIconResId = systemShortcut.mIconResId;
        this.mLabelResId = systemShortcut.mLabelResId;
        this.mAccessibilityActionId = systemShortcut.mAccessibilityActionId;
        this.mTarget = systemShortcut.mTarget;
        this.mItemInfo = systemShortcut.mItemInfo;
    }
}
