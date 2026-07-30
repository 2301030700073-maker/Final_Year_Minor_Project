package com.android.launcher3.dragndrop;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.os.Process;
import b.l.W;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherState;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.ShortcutConfigActivityInfo;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.ISystemUiProxy;

@TargetApi(ISystemUiProxy.Stub.TRANSACTION_onQuickSwitchToNewTask)
/* loaded from: classes.dex */
public class PinShortcutRequestActivityInfo extends ShortcutConfigActivityInfo {
    public final Context mContext;
    public final ShortcutInfo mInfo;
    public final LauncherApps.PinItemRequest mRequest;

    public PinShortcutRequestActivityInfo(LauncherApps.PinItemRequest pinItemRequest, Context context) {
        super(new ComponentName(pinItemRequest.getShortcutInfo().getPackage(), "pinned-shortcut"), pinItemRequest.getShortcutInfo().getUserHandle());
        this.mRequest = pinItemRequest;
        this.mInfo = pinItemRequest.getShortcutInfo();
        this.mContext = context;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public WorkspaceItemInfo createWorkspaceItemInfo() {
        return W.createWorkspaceItemFromPinItemRequest(this.mContext, this.mRequest, LauncherState.SPRING_LOADED.getTransitionDuration(Launcher.getLauncher(this.mContext)) + this.mContext.getResources().getInteger(R.integer.config_dropAnimMaxDuration) + 500);
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo, com.android.launcher3.icons.ComponentWithLabelAndIcon
    public Drawable getFullResIcon(IconCache iconCache) {
        Drawable shortcutIconDrawable = ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).getShortcutIconDrawable(this.mInfo, LauncherAppState.getIDP(this.mContext).fillResIconDpi);
        return shortcutIconDrawable == null ? new FastBitmapDrawable(iconCache.getDefaultIcon(Process.myUserHandle())) : shortcutIconDrawable;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public int getItemType() {
        return 6;
    }

    @Override // com.android.launcher3.icons.ComponentWithLabel
    public CharSequence getLabel(PackageManager packageManager) {
        return this.mInfo.getShortLabel();
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public boolean isPersistable() {
        return false;
    }

    @Override // com.android.launcher3.pm.ShortcutConfigActivityInfo
    public boolean startConfigActivity(Activity activity, int i) {
        return false;
    }
}
