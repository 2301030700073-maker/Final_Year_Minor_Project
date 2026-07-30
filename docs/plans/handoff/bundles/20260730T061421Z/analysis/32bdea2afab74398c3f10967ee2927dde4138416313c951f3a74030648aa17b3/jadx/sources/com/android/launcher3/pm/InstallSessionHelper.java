package com.android.launcher3.pm;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.os.Process;
import android.os.UserHandle;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class InstallSessionHelper {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new MainThreadInitializedObject.ObjectProvider() { // from class: c.a.a.Q0.c
        @Override // com.android.launcher3.util.MainThreadInitializedObject.ObjectProvider
        public final Object get(Context context) {
            return new InstallSessionHelper(context);
        }
    });
    public final Context mAppContext;
    public final PackageInstaller mInstaller;
    public final LauncherApps mLauncherApps;
    public final IntSet mPromiseIconIds;
    public final HashMap mSessionVerifiedMap = new HashMap();

    public InstallSessionHelper(Context context) {
        this.mInstaller = context.getPackageManager().getPackageInstaller();
        this.mAppContext = context.getApplicationContext();
        this.mLauncherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
        IntArray fromConcatString = IntArray.fromConcatString(Utilities.getPrefs(context).getString("promise_icon_ids", ""));
        IntSet intSet = new IntSet();
        intSet.mArray.addAll(fromConcatString);
        IntArray intArray = intSet.mArray;
        Arrays.sort(intArray.mValues, 0, intArray.mSize);
        this.mPromiseIconIds = intSet;
        int[] iArr = new int[10];
        Iterator it = getActiveSessions().values().iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            int sessionId = ((PackageInstaller.SessionInfo) it.next()).getSessionId();
            int i2 = i + 1;
            if (i2 >= iArr.length) {
                int i3 = (i >= 6 ? i >> 1 : 12) + i;
                int[] iArr2 = new int[i3 <= i2 ? i2 : i3];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                iArr = iArr2;
            }
            int i4 = i - i;
            IntArray.checkBounds(i2, i);
            if (i4 != 0) {
                System.arraycopy(iArr, i, iArr, i2, i4);
            }
            iArr[i] = sessionId;
            i = i2;
        }
        int[] iArr3 = new int[10];
        int i5 = 0;
        for (int i6 = this.mPromiseIconIds.mArray.mSize - 1; i6 >= 0; i6--) {
            int i7 = this.mPromiseIconIds.mArray.get(i6);
            int i8 = 0;
            while (true) {
                if (i8 >= i) {
                    i8 = -1;
                    break;
                } else if (iArr[i8] == i7) {
                    break;
                } else {
                    i8++;
                }
            }
            if (!(i8 >= 0)) {
                int i9 = this.mPromiseIconIds.mArray.get(i6);
                int i10 = 1 + i5;
                if (i10 >= iArr3.length) {
                    int i11 = (i5 < 6 ? 12 : i5 >> 1) + i5;
                    int[] iArr4 = new int[i11 <= i10 ? i10 : i11];
                    System.arraycopy(iArr3, 0, iArr4, 0, i5);
                    iArr3 = iArr4;
                }
                int i12 = i5 - i5;
                IntArray.checkBounds(i10, i5);
                if (i12 != 0) {
                    System.arraycopy(iArr3, i5, iArr3, i10, i12);
                }
                iArr3[i5] = i9;
                i5 = i10;
            }
        }
        for (int i13 = i5 - 1; i13 >= 0; i13--) {
            IntArray intArray2 = this.mPromiseIconIds.mArray;
            IntArray.checkBounds(i5, i13);
            intArray2.removeValue(iArr3[i13]);
        }
    }

    public static UserHandle getUserHandle(PackageInstaller.SessionInfo sessionInfo) {
        return Utilities.ATLEAST_Q ? sessionInfo.getUser() : Process.myUserHandle();
    }

    public PackageInstaller.SessionInfo getActiveSessionInfo(UserHandle userHandle, String str) {
        Iterator it = ((ArrayList) getAllVerifiedSessions()).iterator();
        while (it.hasNext()) {
            PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) it.next();
            boolean equals = str.equals(sessionInfo.getAppPackageName());
            if (Utilities.ATLEAST_Q && !userHandle.equals(getUserHandle(sessionInfo))) {
                equals = false;
            }
            if (equals) {
                return sessionInfo;
            }
        }
        return null;
    }

    public HashMap getActiveSessions() {
        HashMap hashMap = new HashMap();
        Iterator it = ((ArrayList) getAllVerifiedSessions()).iterator();
        while (it.hasNext()) {
            PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) it.next();
            hashMap.put(new PackageUserKey(sessionInfo.getAppPackageName(), getUserHandle(sessionInfo)), sessionInfo);
        }
        return hashMap;
    }

    public List getAllVerifiedSessions() {
        ArrayList arrayList = new ArrayList(Utilities.ATLEAST_Q ? this.mLauncherApps.getAllPackageInstallerSessions() : this.mInstaller.getAllSessions());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (verify((PackageInstaller.SessionInfo) it.next()) == null) {
                it.remove();
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0066, code lost:
    
        if (r0.enabled != false) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0098, code lost:
    
        r6 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
    
        if ((r0.flags & 8388608) == 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0095, code lost:
    
        if (r0.enabled == false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void tryQueuePromiseAppIcon(android.content.pm.PackageInstaller.SessionInfo r9) {
        /*
            r8 = this;
            boolean r0 = com.android.launcher3.Utilities.ATLEAST_OREO
            if (r0 == 0) goto Ld2
            com.android.launcher3.config.FeatureFlags$BooleanFlag r0 = com.android.launcher3.config.FeatureFlags.PROMISE_APPS_NEW_INSTALLS
            boolean r0 = r0.get()
            if (r0 == 0) goto Ld2
            android.content.Context r0 = r8.mAppContext
            boolean r0 = com.android.launcher3.SessionCommitReceiver.isEnabled(r0)
            if (r0 == 0) goto Ld2
            android.content.pm.PackageInstaller$SessionInfo r0 = r8.verify(r9)
            if (r0 == 0) goto Ld2
            int r0 = r9.getInstallReason()
            r1 = 4
            if (r0 != r1) goto Ld2
            android.graphics.Bitmap r0 = r9.getAppIcon()
            if (r0 == 0) goto Ld2
            java.lang.CharSequence r0 = r9.getAppLabel()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Ld2
            com.android.launcher3.util.IntSet r0 = r8.mPromiseIconIds
            int r1 = r9.getSessionId()
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto Ld2
            android.content.Context r0 = r8.mAppContext
            android.content.pm.PackageManager r1 = r0.getPackageManager()
            java.lang.Class<android.content.pm.LauncherApps> r2 = android.content.pm.LauncherApps.class
            java.lang.Object r0 = r0.getSystemService(r2)
            android.content.pm.LauncherApps r0 = (android.content.pm.LauncherApps) r0
            java.lang.String r2 = r9.getAppPackageName()
            android.os.UserHandle r3 = getUserHandle(r9)
            boolean r4 = com.android.launcher3.Utilities.ATLEAST_OREO
            r5 = 8388608(0x800000, float:1.1754944E-38)
            r6 = 0
            r7 = 0
            if (r4 == 0) goto L69
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r2, r7, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            int r1 = r0.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            r1 = r1 & r5
            if (r1 == 0) goto L99
            boolean r1 = r0.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            if (r1 != 0) goto L98
            goto L99
        L69:
            android.os.UserHandle r4 = android.os.Process.myUserHandle()
            boolean r4 = r4.equals(r3)
            if (r4 != 0) goto L88
            java.util.List r0 = r0.getActivityList(r2, r3)
            int r1 = r0.size()
            if (r1 <= 0) goto L99
            java.lang.Object r0 = r0.get(r7)
            android.content.pm.LauncherActivityInfo r0 = (android.content.pm.LauncherActivityInfo) r0
            android.content.pm.ApplicationInfo r6 = r0.getApplicationInfo()
            goto L99
        L88:
            android.content.pm.ApplicationInfo r0 = r1.getApplicationInfo(r2, r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            if (r4 == 0) goto L93
            int r1 = r0.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            r1 = r1 & r5
            if (r1 == 0) goto L99
        L93:
            boolean r1 = r0.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L99
            if (r1 != 0) goto L98
            goto L99
        L98:
            r6 = r0
        L99:
            if (r6 != 0) goto Ld2
            android.content.Context r0 = r8.mAppContext
            java.lang.String r1 = r9.getAppPackageName()
            java.lang.Class<android.content.pm.LauncherApps> r2 = android.content.pm.LauncherApps.class
            java.lang.Object r2 = r0.getSystemService(r2)
            android.content.pm.LauncherApps r2 = (android.content.pm.LauncherApps) r2
            android.os.UserHandle r3 = getUserHandle(r9)
            java.util.List r2 = r2.getActivityList(r1, r3)
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto Lc6
            java.lang.CharSequence r2 = r9.getAppLabel()
            android.graphics.Bitmap r3 = r9.getAppIcon()
            android.os.UserHandle r4 = getUserHandle(r9)
            com.android.launcher3.SessionCommitReceiver.queueAppIconAddition(r0, r1, r2, r3, r4)
        Lc6:
            com.android.launcher3.util.IntSet r0 = r8.mPromiseIconIds
            int r9 = r9.getSessionId()
            r0.add(r9)
            r8.updatePromiseIconPrefs()
        Ld2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.pm.InstallSessionHelper.tryQueuePromiseAppIcon(android.content.pm.PackageInstaller$SessionInfo):void");
    }

    public final void updatePromiseIconPrefs() {
        Utilities.getPrefs(this.mAppContext).edit().putString("promise_icon_ids", this.mPromiseIconIds.mArray.toConcatString()).apply();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r3.enabled != false) goto L30;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.content.pm.PackageInstaller.SessionInfo verify(android.content.pm.PackageInstaller.SessionInfo r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 == 0) goto L87
            java.lang.String r1 = r10.getInstallerPackageName()
            if (r1 == 0) goto L87
            java.lang.String r1 = r10.getAppPackageName()
            boolean r1 = android.text.TextUtils.isEmpty(r1)
            if (r1 == 0) goto L15
            goto L87
        L15:
            java.lang.String r1 = r10.getInstallerPackageName()
            java.util.HashMap r2 = r9.mSessionVerifiedMap
            monitor-enter(r2)
            java.util.HashMap r3 = r9.mSessionVerifiedMap     // Catch: java.lang.Throwable -> L84
            boolean r3 = r3.containsKey(r1)     // Catch: java.lang.Throwable -> L84
            if (r3 != 0) goto L72
            android.content.Context r3 = r9.mAppContext     // Catch: java.lang.Throwable -> L84
            android.content.pm.PackageManager r4 = r3.getPackageManager()     // Catch: java.lang.Throwable -> L84
            java.lang.Class<android.content.pm.LauncherApps> r5 = android.content.pm.LauncherApps.class
            java.lang.Object r3 = r3.getSystemService(r5)     // Catch: java.lang.Throwable -> L84
            android.content.pm.LauncherApps r3 = (android.content.pm.LauncherApps) r3     // Catch: java.lang.Throwable -> L84
            android.os.UserHandle r5 = getUserHandle(r10)     // Catch: java.lang.Throwable -> L84
            boolean r6 = com.android.launcher3.Utilities.ATLEAST_OREO     // Catch: java.lang.Throwable -> L84
            r7 = 8388608(0x800000, float:1.1754944E-38)
            r8 = 1
            if (r6 == 0) goto L4c
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo(r1, r8, r5)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            int r4 = r3.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            r4 = r4 & r7
            if (r4 == 0) goto L4a
            boolean r4 = r3.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            if (r4 != 0) goto L65
        L4a:
            r3 = r0
            goto L65
        L4c:
            android.os.UserHandle r3 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> L84
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Throwable -> L84
            android.content.pm.ApplicationInfo r4 = r4.getApplicationInfo(r1, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            if (r3 == 0) goto L5f
            int r3 = r4.flags     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            r3 = r3 & r7
            if (r3 == 0) goto L4a
        L5f:
            boolean r3 = r4.enabled     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4a java.lang.Throwable -> L84
            if (r3 != 0) goto L64
            goto L4a
        L64:
            r3 = r4
        L65:
            if (r3 == 0) goto L68
            goto L69
        L68:
            r8 = 0
        L69:
            java.util.HashMap r3 = r9.mSessionVerifiedMap     // Catch: java.lang.Throwable -> L84
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r8)     // Catch: java.lang.Throwable -> L84
            r3.put(r1, r4)     // Catch: java.lang.Throwable -> L84
        L72:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L84
            java.util.HashMap r9 = r9.mSessionVerifiedMap
            java.lang.Object r9 = r9.get(r1)
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L82
            goto L83
        L82:
            r10 = r0
        L83:
            return r10
        L84:
            r9 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L84
            throw r9
        L87:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.pm.InstallSessionHelper.verify(android.content.pm.PackageInstaller$SessionInfo):android.content.pm.PackageInstaller$SessionInfo");
    }
}
