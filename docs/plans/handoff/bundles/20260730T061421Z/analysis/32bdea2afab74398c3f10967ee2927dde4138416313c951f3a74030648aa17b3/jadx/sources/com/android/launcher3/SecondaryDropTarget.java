package com.android.launcher3;

import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.UserManager;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import b.l.W;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DropTarget;
import com.android.launcher3.Launcher;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.logging.LoggerUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.AppLaunchTracker;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.systemui.shared.R;
import java.net.URISyntaxException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SecondaryDropTarget extends ButtonDropTarget implements OnAlarmListener {
    public final Alarm mCacheExpireAlarm;
    public int mCurrentAccessibilityAction;
    public boolean mHadPendingAlarm;
    public final StatsLogManager mStatsLogManager;
    public final ArrayMap mUninstallDisabledCache;

    public class DeferredOnComplete implements DragSource, Launcher.OnResumeCallback {
        public final Context mContext;
        public DropTarget.DragObject mDragObject;
        public final DragSource mOriginal;
        public String mPackageName;

        public DeferredOnComplete(DragSource dragSource, Context context) {
            this.mOriginal = dragSource;
            this.mContext = context;
        }

        @Override // com.android.launcher3.logging.StatsLogUtils$LogContainerProvider
        public void fillInLogContainerData(ItemInfo itemInfo, LauncherLogProto$Target launcherLogProto$Target, ArrayList arrayList) {
            this.mOriginal.fillInLogContainerData(itemInfo, launcherLogProto$Target, arrayList);
        }

        @Override // com.android.launcher3.DragSource
        public void onDropCompleted(View view, DropTarget.DragObject dragObject, boolean z) {
            this.mDragObject = dragObject;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0029, code lost:
        
            if (r0.enabled != false) goto L19;
         */
        /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
        /* JADX WARN: Removed duplicated region for block: B:13:0x006b  */
        @Override // com.android.launcher3.Launcher.OnResumeCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onLauncherResume() {
            /*
                r7 = this;
                android.content.Context r0 = r7.mContext
                android.content.pm.PackageManager r1 = r0.getPackageManager()
                java.lang.Class<android.content.pm.LauncherApps> r2 = android.content.pm.LauncherApps.class
                java.lang.Object r0 = r0.getSystemService(r2)
                android.content.pm.LauncherApps r0 = (android.content.pm.LauncherApps) r0
                java.lang.String r2 = r7.mPackageName
                com.android.launcher3.DropTarget$DragObject r3 = r7.mDragObject
                com.android.launcher3.model.data.ItemInfo r3 = r3.dragInfo
                android.os.UserHandle r3 = r3.user
                boolean r4 = com.android.launcher3.Utilities.ATLEAST_OREO
                r5 = 8192(0x2000, float:1.148E-41)
                r6 = 8388608(0x800000, float:1.1754944E-38)
                if (r4 == 0) goto L2c
                android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r2, r5, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                int r1 = r0.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                r1 = r1 & r6
                if (r1 == 0) goto L46
                boolean r1 = r0.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                if (r1 != 0) goto L47
                goto L46
            L2c:
                android.os.UserHandle r0 = android.os.Process.myUserHandle()
                boolean r0 = r0.equals(r3)
                android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r2, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                if (r0 == 0) goto L3f
                int r0 = r1.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                r0 = r0 & r6
                if (r0 == 0) goto L46
            L3f:
                boolean r0 = r1.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L46
                if (r0 != 0) goto L44
                goto L46
            L44:
                r0 = r1
                goto L47
            L46:
                r0 = 0
            L47:
                r1 = 1
                if (r0 != 0) goto L6b
                com.android.launcher3.DropTarget$DragObject r0 = r7.mDragObject
                com.android.launcher3.DragSource r2 = r7.mOriginal
                r0.dragSource = r2
                com.android.launcher3.SecondaryDropTarget r3 = com.android.launcher3.SecondaryDropTarget.this
                r2.onDropCompleted(r3, r0, r1)
                com.android.launcher3.SecondaryDropTarget r0 = com.android.launcher3.SecondaryDropTarget.this
                com.android.launcher3.logging.StatsLogManager r0 = r0.mStatsLogManager
                com.android.launcher3.logging.StatsLogManager$StatsLogger r0 = r0.logger()
                com.android.launcher3.DropTarget$DragObject r7 = r7.mDragObject
                com.android.launcher3.logging.InstanceId r7 = r7.logInstanceId
                com.android.launcher3.logging.StatsLogManager$StatsLogger r7 = r0.withInstanceId(r7)
                com.android.launcher3.logging.StatsLogManager$LauncherEvent r0 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_ITEM_UNINSTALL_COMPLETED
                r7.log(r0)
                goto L8e
            L6b:
                com.android.launcher3.DropTarget$DragObject r0 = r7.mDragObject
                com.android.launcher3.DragSource r2 = r7.mOriginal
                r0.dragSource = r2
                r0.cancelled = r1
                com.android.launcher3.SecondaryDropTarget r1 = com.android.launcher3.SecondaryDropTarget.this
                r3 = 0
                r2.onDropCompleted(r1, r0, r3)
                com.android.launcher3.SecondaryDropTarget r0 = com.android.launcher3.SecondaryDropTarget.this
                com.android.launcher3.logging.StatsLogManager r0 = r0.mStatsLogManager
                com.android.launcher3.logging.StatsLogManager$StatsLogger r0 = r0.logger()
                com.android.launcher3.DropTarget$DragObject r7 = r7.mDragObject
                com.android.launcher3.logging.InstanceId r7 = r7.logInstanceId
                com.android.launcher3.logging.StatsLogManager$StatsLogger r7 = r0.withInstanceId(r7)
                com.android.launcher3.logging.StatsLogManager$LauncherEvent r0 = com.android.launcher3.logging.StatsLogManager.LauncherEvent.LAUNCHER_ITEM_UNINSTALL_CANCELLED
                r7.log(r0)
            L8e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.SecondaryDropTarget.DeferredOnComplete.onLauncherResume():void");
        }
    }

    public SecondaryDropTarget(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void completeDrop(DropTarget.DragObject dragObject) {
        ComponentName performDropAction = performDropAction(getViewUnderDrag(dragObject.dragInfo), dragObject.dragInfo);
        DragSource dragSource = dragObject.dragSource;
        if (dragSource instanceof DeferredOnComplete) {
            DeferredOnComplete deferredOnComplete = (DeferredOnComplete) dragSource;
            if (performDropAction != null) {
                deferredOnComplete.mPackageName = performDropAction.getPackageName();
                this.mLauncher.mOnResumeCallbacks.add(deferredOnComplete);
                return;
            }
            DropTarget.DragObject dragObject2 = deferredOnComplete.mDragObject;
            DragSource dragSource2 = deferredOnComplete.mOriginal;
            dragObject2.dragSource = dragSource2;
            dragObject2.cancelled = true;
            dragSource2.onDropCompleted(SecondaryDropTarget.this, dragObject2, false);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public int getAccessibilityAction() {
        return this.mCurrentAccessibilityAction;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public LauncherLogProto$Target getDropTargetForLogging() {
        LauncherLogProto$Target newTarget = LoggerUtils.newTarget(2);
        int i = this.mCurrentAccessibilityAction;
        if (i == R.id.action_uninstall) {
            newTarget.controlType = 6;
        } else if (i == R.id.action_dismiss_prediction) {
            newTarget.controlType = 21;
        } else {
            newTarget.controlType = 4;
        }
        return newTarget;
    }

    public final int getReconfigurableWidgetId(View view) {
        AppWidgetHostView appWidgetHostView;
        AppWidgetProviderInfo appWidgetInfo;
        if (!(view instanceof AppWidgetHostView) || (appWidgetInfo = (appWidgetHostView = (AppWidgetHostView) view).getAppWidgetInfo()) == null || appWidgetInfo.configure == null) {
            return 0;
        }
        if (((Utilities.ATLEAST_P ? ((AppWidgetProviderInfo) LauncherAppWidgetProviderInfo.fromProviderInfo(getContext(), appWidgetInfo)).widgetFeatures : 0) & 1) == 0) {
            return 0;
        }
        return appWidgetHostView.getAppWidgetId();
    }

    public final ComponentName getUninstallTarget(ItemInfo itemInfo) {
        UserHandle userHandle;
        Intent intent;
        LauncherActivityInfo resolveActivity;
        if (itemInfo == null || itemInfo.itemType != 0) {
            userHandle = null;
            intent = null;
        } else {
            intent = itemInfo.getIntent();
            userHandle = itemInfo.user;
        }
        if (intent == null || (resolveActivity = ((LauncherApps) this.mLauncher.getSystemService(LauncherApps.class)).resolveActivity(intent, userHandle)) == null || (resolveActivity.getApplicationInfo().flags & 1) != 0) {
            return null;
        }
        return resolveActivity.getComponentName();
    }

    public final View getViewUnderDrag(ItemInfo itemInfo) {
        CellLayout.CellInfo cellInfo;
        if ((itemInfo instanceof LauncherAppWidgetInfo) && itemInfo.container == -100 && (cellInfo = this.mLauncher.mWorkspace.mDragInfo) != null) {
            return cellInfo.cell;
        }
        return null;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public void onAccessibilityDrop(View view, ItemInfo itemInfo) {
        performDropAction(view, itemInfo);
    }

    @Override // com.android.launcher3.OnAlarmListener
    public void onAlarm(Alarm alarm) {
        this.mUninstallDisabledCache.clear();
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mHadPendingAlarm) {
            this.mCacheExpireAlarm.setAlarm(5000L);
            this.mCacheExpireAlarm.mAlarmListener = this;
            this.mHadPendingAlarm = false;
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Alarm alarm = this.mCacheExpireAlarm;
        if (alarm.mAlarmPending) {
            alarm.mAlarmPending = false;
            alarm.mAlarmListener = null;
            this.mHadPendingAlarm = true;
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget, com.android.launcher3.DropTarget
    public void onDrop(DropTarget.DragObject dragObject, DragOptions dragOptions) {
        dragObject.dragSource = new DeferredOnComplete(dragObject.dragSource, getContext());
        super.onDrop(dragObject, dragOptions);
        int i = this.mCurrentAccessibilityAction;
        if (i == R.id.action_uninstall) {
            this.mStatsLogManager.logger().withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_UNINSTALL);
        } else if (i == R.id.action_dismiss_prediction) {
            this.mStatsLogManager.logger().withInstanceId(dragObject.logInstanceId).log(StatsLogManager.LauncherEvent.LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget, android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        setupUi(R.id.action_uninstall);
    }

    public ComponentName performDropAction(View view, ItemInfo itemInfo) {
        int i = this.mCurrentAccessibilityAction;
        if (i == R.id.action_reconfigure) {
            int reconfigurableWidgetId = getReconfigurableWidgetId(view);
            if (reconfigurableWidgetId != 0) {
                Launcher launcher = this.mLauncher;
                launcher.mAppWidgetHost.startConfigActivity(launcher, reconfigurableWidgetId, -1);
            }
            return null;
        }
        if (i == R.id.action_dismiss_prediction) {
            ((AppLaunchTracker) AppLaunchTracker.INSTANCE.b(getContext())).onDismissApp(itemInfo.getTargetComponent(), itemInfo.user, AppLaunchTracker.CONTAINER_PREDICTIONS);
            return null;
        }
        ComponentName uninstallTarget = getUninstallTarget(itemInfo);
        if (uninstallTarget == null) {
            Toast.makeText(this.mLauncher, R.string.uninstall_system_app_text, 0).show();
            return null;
        }
        try {
            this.mLauncher.startActivity(Intent.parseUri(this.mLauncher.getString(R.string.delete_package_intent), 0).setData(Uri.fromParts("package", uninstallTarget.getPackageName(), uninstallTarget.getClassName())).putExtra("android.intent.extra.USER", itemInfo.user));
            FileLog.d("SecondaryDropTarget", "start uninstall activity " + uninstallTarget.getPackageName());
            return uninstallTarget;
        } catch (URISyntaxException unused) {
            Log.e("SecondaryDropTarget", "Failed to parse intent to start uninstall activity for item=" + itemInfo);
            return null;
        }
    }

    public void setupUi(int i) {
        if (i == this.mCurrentAccessibilityAction) {
            return;
        }
        this.mCurrentAccessibilityAction = i;
        if (i == R.id.action_uninstall) {
            this.mHoverColor = getResources().getColor(R.color.uninstall_target_hover_tint);
            setDrawable(R.drawable.ic_uninstall_shadow);
            updateText(R.string.uninstall_drop_target_label);
        } else if (i == R.id.action_dismiss_prediction) {
            this.mHoverColor = W.getColorAccent(getContext());
            setDrawable(R.drawable.ic_block_shadow);
            updateText(R.string.dismiss_prediction_label);
        } else if (i == R.id.action_reconfigure) {
            this.mHoverColor = W.getColorAccent(getContext());
            setDrawable(R.drawable.ic_setup_shadow);
            updateText(R.string.gadget_setup_text);
        }
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public boolean supportsAccessibilityDrop(ItemInfo itemInfo, View view) {
        if (view instanceof AppWidgetHostView) {
            if (getReconfigurableWidgetId(view) == 0) {
                return false;
            }
            setupUi(R.id.action_reconfigure);
            return true;
        }
        if (FeatureFlags.ENABLE_PREDICTION_DISMISS.get() && itemInfo.isPredictedItem()) {
            setupUi(R.id.action_dismiss_prediction);
            return true;
        }
        setupUi(R.id.action_uninstall);
        Boolean bool = (Boolean) this.mUninstallDisabledCache.get(itemInfo.user);
        if (bool == null) {
            Bundle userRestrictions = ((UserManager) getContext().getSystemService("user")).getUserRestrictions(itemInfo.user);
            bool = Boolean.valueOf(userRestrictions.getBoolean("no_control_apps", false) || userRestrictions.getBoolean("no_uninstall_apps", false));
            this.mUninstallDisabledCache.put(itemInfo.user, bool);
        }
        this.mCacheExpireAlarm.setAlarm(5000L);
        this.mCacheExpireAlarm.mAlarmListener = this;
        if (bool.booleanValue()) {
            return false;
        }
        if (itemInfo instanceof ItemInfoWithIcon) {
            int i = ((ItemInfoWithIcon) itemInfo).runtimeStatusFlags;
            if ((i & 192) != 0) {
                return (i & 128) != 0;
            }
        }
        return getUninstallTarget(itemInfo) != null;
    }

    @Override // com.android.launcher3.ButtonDropTarget
    public boolean supportsDrop(ItemInfo itemInfo) {
        return supportsAccessibilityDrop(itemInfo, getViewUnderDrag(itemInfo));
    }

    public SecondaryDropTarget(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mUninstallDisabledCache = new ArrayMap(1);
        this.mCurrentAccessibilityAction = -1;
        this.mCacheExpireAlarm = new Alarm();
        this.mStatsLogManager = StatsLogManager.newInstance(context);
    }
}
