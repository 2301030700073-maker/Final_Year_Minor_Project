package com.android.quickstep;

import android.content.ComponentName;
import android.content.Context;
import android.os.UserHandle;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.ComponentKey;
import com.android.systemui.shared.recents.model.Task;
import com.android.systemui.shared.system.RemoteAnimationTargetCompat;
import java.util.List;

/* loaded from: classes.dex */
public final class TaskUtils {
    public static final String TAG = "TaskUtils";

    public static boolean checkCurrentOrManagedUserId(int i, Context context) {
        if (i == UserHandle.myUserId()) {
            return true;
        }
        List userProfiles = ((UserCache) UserCache.INSTANCE.b(context)).getUserProfiles();
        for (int size = userProfiles.size() - 1; size >= 0; size--) {
            if (i == ((UserHandle) userProfiles.get(size)).getIdentifier()) {
                return true;
            }
        }
        return false;
    }

    public static ComponentKey getLaunchComponentKeyForTask(Task.TaskKey taskKey) {
        ComponentName componentName = taskKey.sourceComponent;
        if (componentName == null) {
            componentName = taskKey.getComponent();
        }
        return new ComponentKey(componentName, UserHandle.of(taskKey.userId));
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        if ((r1.flags & 8388608) == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
    
        if (r1.enabled == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x002f, code lost:
    
        if (r1.enabled != false) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0032, code lost:
    
        r6 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.CharSequence getTitle(android.content.Context r8, com.android.systemui.shared.recents.model.Task r9) {
        /*
            com.android.systemui.shared.recents.model.Task$TaskKey r0 = r9.key
            int r0 = r0.userId
            android.os.UserHandle r0 = android.os.UserHandle.of(r0)
            android.content.pm.PackageManager r1 = r8.getPackageManager()
            java.lang.Class<android.content.pm.LauncherApps> r2 = android.content.pm.LauncherApps.class
            java.lang.Object r2 = r8.getSystemService(r2)
            android.content.pm.LauncherApps r2 = (android.content.pm.LauncherApps) r2
            android.content.ComponentName r3 = r9.getTopComponent()
            java.lang.String r3 = r3.getPackageName()
            boolean r4 = com.android.launcher3.Utilities.ATLEAST_OREO
            r5 = 8388608(0x800000, float:1.1754944E-38)
            r6 = 0
            r7 = 0
            if (r4 == 0) goto L34
            android.content.pm.ApplicationInfo r1 = r2.getApplicationInfo(r3, r7, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            int r2 = r1.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r2 = r2 & r5
            if (r2 == 0) goto L62
            boolean r2 = r1.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            if (r2 != 0) goto L32
            goto L62
        L32:
            r6 = r1
            goto L62
        L34:
            android.os.UserHandle r4 = android.os.Process.myUserHandle()
            boolean r4 = r4.equals(r0)
            if (r4 != 0) goto L53
            java.util.List r1 = r2.getActivityList(r3, r0)
            int r2 = r1.size()
            if (r2 <= 0) goto L62
            java.lang.Object r1 = r1.get(r7)
            android.content.pm.LauncherActivityInfo r1 = (android.content.pm.LauncherActivityInfo) r1
            android.content.pm.ApplicationInfo r6 = r1.getApplicationInfo()
            goto L62
        L53:
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r3, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            if (r4 == 0) goto L5e
            int r2 = r1.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            r2 = r2 & r5
            if (r2 == 0) goto L62
        L5e:
            boolean r2 = r1.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L62
            if (r2 != 0) goto L32
        L62:
            if (r6 != 0) goto L7d
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r0 = "Failed to get title for task "
            r8.append(r0)
            r8.append(r9)
            java.lang.String r8 = r8.toString()
            java.lang.String r9 = "TaskUtils"
            android.util.Log.e(r9, r8)
            java.lang.String r8 = ""
            return r8
        L7d:
            android.content.pm.PackageManager r8 = r8.getPackageManager()
            java.lang.CharSequence r9 = r6.loadLabel(r8)
            java.lang.CharSequence r8 = r8.getUserBadgedLabel(r9, r0)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.quickstep.TaskUtils.getTitle(android.content.Context, com.android.systemui.shared.recents.model.Task):java.lang.CharSequence");
    }

    public static boolean taskIsATargetWithMode(RemoteAnimationTargetCompat[] remoteAnimationTargetCompatArr, int i, int i2) {
        for (RemoteAnimationTargetCompat remoteAnimationTargetCompat : remoteAnimationTargetCompatArr) {
            if (remoteAnimationTargetCompat.mode == i2 && remoteAnimationTargetCompat.taskId == i) {
                return true;
            }
        }
        return false;
    }
}
