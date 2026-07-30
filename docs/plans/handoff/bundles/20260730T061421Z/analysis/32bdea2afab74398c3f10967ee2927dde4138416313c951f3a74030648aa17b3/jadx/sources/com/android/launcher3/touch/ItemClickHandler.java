package com.android.launcher3.touch;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.net.Uri;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Toast;
import b.l.W;
import c.a.a.Y0.e;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.launcher3.Workspace;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.touch.ItemClickHandler;
import com.android.launcher3.views.FloatingIconView;
import com.android.systemui.shared.R;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class ItemClickHandler {
    public static final View.OnClickListener INSTANCE = new e(null);

    public static void onClickAppShortcut(View view, WorkspaceItemInfo workspaceItemInfo, Launcher launcher, String str) {
        if (!workspaceItemInfo.isDisabled() || (workspaceItemInfo.runtimeStatusFlags & 63 & (-5) & (-9)) == 0) {
            if ((view instanceof BubbleTextView) && workspaceItemInfo.hasPromiseIconUi()) {
                String packageName = workspaceItemInfo.intent.getComponent() != null ? workspaceItemInfo.intent.getComponent().getPackageName() : workspaceItemInfo.intent.getPackage();
                if (!TextUtils.isEmpty(packageName)) {
                    onClickPendingAppItem(view, launcher, packageName, workspaceItemInfo.hasStatusFlag(4));
                    return;
                }
            }
            startAppShortcutOrInfoActivity(view, workspaceItemInfo, launcher, str);
            return;
        }
        if (!TextUtils.isEmpty(workspaceItemInfo.disabledMessage)) {
            Toast.makeText(launcher, workspaceItemInfo.disabledMessage, 0).show();
            return;
        }
        int i = R.string.activity_not_available;
        int i2 = workspaceItemInfo.runtimeStatusFlags;
        if ((i2 & 1) != 0) {
            i = R.string.safemode_shortcut_error;
        } else if ((i2 & 16) != 0 || (i2 & 32) != 0) {
            i = R.string.shortcut_not_available;
        }
        Toast.makeText(launcher, i, 0).show();
    }

    public static void onClickPendingAppItem(final View view, final Launcher launcher, final String str, boolean z) {
        if (z) {
            startMarketIntentForPackage(view, launcher, str);
        } else {
            final UserHandle myUserHandle = view.getTag() instanceof ItemInfo ? ((ItemInfo) view.getTag()).user : Process.myUserHandle();
            new AlertDialog.Builder(launcher).setTitle(R.string.abandoned_promises_title).setMessage(R.string.abandoned_promise_explanation).setPositiveButton(R.string.abandoned_search, new DialogInterface.OnClickListener() { // from class: c.a.a.Y0.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    ItemClickHandler.startMarketIntentForPackage(view, launcher, str);
                }
            }).setNeutralButton(R.string.abandoned_clean_this, new DialogInterface.OnClickListener() { // from class: c.a.a.Y0.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    Launcher launcher2 = Launcher.this;
                    String str2 = str;
                    UserHandle userHandle = myUserHandle;
                    Workspace workspace = launcher2.mWorkspace;
                    Objects.requireNonNull(workspace);
                    HashSet hashSet = new HashSet(1);
                    hashSet.add(str2);
                    c.a.a.a1.h hVar = new c.a.a.a1.h(hashSet, userHandle);
                    ModelWriter modelWriter = workspace.mLauncher.mModelWriter;
                    modelWriter.deleteItemsFromDatabase(hVar.filterItemInfos(modelWriter.mBgDataModel.itemsIdMap));
                    workspace.removeItemsByMatcher(hVar);
                }
            }).create().show();
        }
    }

    public static void startAppShortcutOrInfoActivity(View view, ItemInfo itemInfo, Launcher launcher, String str) {
        W.recordEvent("Main", "start: startAppShortcutOrInfoActivity");
        Intent marketIntent = itemInfo instanceof PromiseAppInfo ? ((PromiseAppInfo) itemInfo).getMarketIntent(launcher) : itemInfo.getIntent();
        if (marketIntent == null) {
            throw new IllegalArgumentException("Input must have a valid intent");
        }
        if ((itemInfo instanceof WorkspaceItemInfo) && ((WorkspaceItemInfo) itemInfo).hasStatusFlag(16) && "android.intent.action.VIEW".equals(marketIntent.getAction())) {
            Intent intent = new Intent(marketIntent);
            intent.setPackage(null);
            marketIntent = intent;
        }
        if (view != null && launcher.mAppTransitionManager.supportsAdaptiveIconAnimation()) {
            FloatingIconView.fetchIcon(launcher, view, itemInfo, true);
        }
        launcher.k(view, marketIntent, itemInfo, str);
    }

    public static void startMarketIntentForPackage(View view, Launcher launcher, String str) {
        PackageInstaller.SessionInfo activeSessionInfo;
        ItemInfo itemInfo = (ItemInfo) view.getTag();
        if (Utilities.ATLEAST_Q && (activeSessionInfo = ((InstallSessionHelper) InstallSessionHelper.INSTANCE.b(launcher)).getActiveSessionInfo(itemInfo.user, str)) != null) {
            try {
                ((LauncherApps) launcher.getSystemService(LauncherApps.class)).startPackageInstallerSessionDetailsActivity(activeSessionInfo, null, launcher.getActivityLaunchOptionsAsBundle(view));
                return;
            } catch (Exception e) {
                Log.e("ItemClickHandler", "Unable to launch market intent for package=" + str, e);
            }
        }
        launcher.getPackageManager();
        launcher.k(view, new Intent("android.intent.action.VIEW").setData(new Uri.Builder().scheme("market").authority("details").appendQueryParameter("id", str).build()).putExtra("android.intent.extra.REFERRER", new Uri.Builder().scheme("android-app").authority(launcher.getPackageName()).build()), itemInfo, null);
    }
}
