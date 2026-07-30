package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class Ix {
    /* renamed from: do, reason: not valid java name */
    public static ArrayList m992do(Context context) {
        int i = context.getApplicationInfo().uid;
        String str = context.getApplicationInfo().processName;
        Object systemService = context.getSystemService("activity");
        ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager != null ? activityManager.getRunningAppProcesses() : null;
        if (runningAppProcesses == null) {
            runningAppProcesses = C0471Rf.f3217do;
        }
        ArrayList e = E8.e(runningAppProcesses);
        ArrayList arrayList = new ArrayList();
        Iterator it = e.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (((ActivityManager.RunningAppProcessInfo) next).uid == i) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(B8.c(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) it2.next();
            String str2 = runningAppProcessInfo.processName;
            C0173Do.m399new(str2, "runningAppProcessInfo.processName");
            arrayList2.add(new Hx(C0173Do.m394do(runningAppProcessInfo.processName, str), str2, runningAppProcessInfo.pid, runningAppProcessInfo.importance));
        }
        return arrayList2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0014, code lost:
    
        r0 = android.app.Application.getProcessName();
     */
    /* renamed from: if, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m993if() {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r0 < r1) goto L10
            java.lang.String r0 = android.os.Process.myProcessName()
            java.lang.String r1 = "myProcessName()"
            defpackage.C0173Do.m399new(r0, r1)
            return r0
        L10:
            r1 = 28
            if (r0 < r1) goto L1b
            java.lang.String r0 = defpackage.C2724f.m6614case()
            if (r0 == 0) goto L1b
            return r0
        L1b:
            java.lang.String r0 = com.google.android.gms.common.util.ProcessUtils.getMyProcessName()
            if (r0 == 0) goto L22
            return r0
        L22:
            java.lang.String r0 = ""
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Ix.m993if():java.lang.String");
    }
}
