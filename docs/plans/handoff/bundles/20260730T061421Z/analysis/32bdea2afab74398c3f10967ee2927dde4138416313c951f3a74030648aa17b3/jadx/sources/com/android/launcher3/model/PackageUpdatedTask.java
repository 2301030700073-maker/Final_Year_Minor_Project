package com.android.launcher3.model;

import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.UserHandle;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import java.util.List;

/* loaded from: classes.dex */
public class PackageUpdatedTask extends BaseModelUpdateTask {
    public final int mOp;
    public final String[] mPackages;
    public final UserHandle mUser;

    public PackageUpdatedTask(int i, UserHandle userHandle, String... strArr) {
        this.mOp = i;
        this.mUser = userHandle;
        this.mPackages = strArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x03f6 A[Catch: all -> 0x051a, TryCatch #3 {, blocks: (B:49:0x024d, B:50:0x0253, B:54:0x025e, B:56:0x026c, B:58:0x0278, B:60:0x027f, B:62:0x028b, B:64:0x029c, B:65:0x02a5, B:67:0x02ac, B:69:0x02b2, B:71:0x02c2, B:77:0x02da, B:80:0x02e2, B:82:0x02e7, B:84:0x0305, B:85:0x030b, B:87:0x030f, B:88:0x032b, B:91:0x0360, B:93:0x0367, B:98:0x03c6, B:100:0x03ca, B:101:0x03d2, B:107:0x03f6, B:108:0x03f1, B:109:0x0371, B:111:0x0377, B:116:0x0388, B:117:0x03a7, B:118:0x0333, B:121:0x0322, B:122:0x0342, B:124:0x0350, B:128:0x03b2, B:130:0x03b8, B:140:0x040d, B:143:0x0419, B:145:0x0425, B:147:0x042c, B:149:0x0438, B:154:0x046a), top: B:48:0x024d, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x049b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x04cd  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0134 A[LOOP:5: B:197:0x0132->B:198:0x0134, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x024d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ac A[Catch: all -> 0x051a, TryCatch #3 {, blocks: (B:49:0x024d, B:50:0x0253, B:54:0x025e, B:56:0x026c, B:58:0x0278, B:60:0x027f, B:62:0x028b, B:64:0x029c, B:65:0x02a5, B:67:0x02ac, B:69:0x02b2, B:71:0x02c2, B:77:0x02da, B:80:0x02e2, B:82:0x02e7, B:84:0x0305, B:85:0x030b, B:87:0x030f, B:88:0x032b, B:91:0x0360, B:93:0x0367, B:98:0x03c6, B:100:0x03ca, B:101:0x03d2, B:107:0x03f6, B:108:0x03f1, B:109:0x0371, B:111:0x0377, B:116:0x0388, B:117:0x03a7, B:118:0x0333, B:121:0x0322, B:122:0x0342, B:124:0x0350, B:128:0x03b2, B:130:0x03b8, B:140:0x040d, B:143:0x0419, B:145:0x0425, B:147:0x042c, B:149:0x0438, B:154:0x046a), top: B:48:0x024d, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0225  */
    @Override // com.android.launcher3.model.BaseModelUpdateTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void execute(com.android.launcher3.LauncherAppState r27, com.android.launcher3.model.BgDataModel r28, com.android.launcher3.model.AllAppsList r29) {
        /*
            Method dump skipped, instructions count: 1328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.PackageUpdatedTask.execute(com.android.launcher3.LauncherAppState, com.android.launcher3.model.BgDataModel, com.android.launcher3.model.AllAppsList):void");
    }

    public final boolean updateWorkspaceItemIntent(Context context, WorkspaceItemInfo workspaceItemInfo, String str) {
        context.getPackageManager();
        List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(str, this.mUser);
        Intent makeLaunchIntent = activityList.isEmpty() ? null : AppInfo.makeLaunchIntent(activityList.get(0));
        if (makeLaunchIntent == null) {
            return false;
        }
        workspaceItemInfo.intent = makeLaunchIntent;
        workspaceItemInfo.status = 0;
        return true;
    }
}
