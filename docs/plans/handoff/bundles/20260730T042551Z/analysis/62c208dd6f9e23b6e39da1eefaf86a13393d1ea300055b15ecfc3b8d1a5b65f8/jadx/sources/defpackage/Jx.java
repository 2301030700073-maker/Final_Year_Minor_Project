package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import defpackage.M3;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class Jx {

    /* renamed from: do, reason: not valid java name */
    public static final Jx f1732do = new Jx();

    /* renamed from: do, reason: not valid java name */
    public static M3 m1088do(Jx jx, String str, int i, int i2, int i3) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = 0;
        }
        jx.getClass();
        M3.Cdo cdo = new M3.Cdo();
        cdo.f2091do = str;
        cdo.f2090do = i;
        byte b = (byte) (cdo.f2089do | 1);
        cdo.f2093if = i2;
        cdo.f2092do = false;
        cdo.f2089do = (byte) (((byte) (b | 2)) | 4);
        return cdo.m1390do();
    }

    /* renamed from: if, reason: not valid java name */
    public static ArrayList m1089if(Context context) {
        C0173Do.m401try(context, "context");
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
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (((ActivityManager.RunningAppProcessInfo) next).uid == i) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = new ArrayList(B8.c(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = (ActivityManager.RunningAppProcessInfo) it2.next();
            M3.Cdo cdo = new M3.Cdo();
            String str2 = runningAppProcessInfo.processName;
            if (str2 == null) {
                throw new NullPointerException("Null processName");
            }
            cdo.f2091do = str2;
            cdo.f2090do = runningAppProcessInfo.pid;
            byte b = (byte) (cdo.f2089do | 1);
            cdo.f2093if = runningAppProcessInfo.importance;
            cdo.f2089do = (byte) (b | 2);
            cdo.f2092do = C0173Do.m394do(str2, str);
            cdo.f2089do = (byte) (cdo.f2089do | 4);
            arrayList2.add(cdo.m1390do());
        }
        return arrayList2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        r5 = android.app.Application.getProcessName();
     */
    /* renamed from: for, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor m1090for(android.content.Context r5) {
        /*
            r4 = this;
            java.lang.String r0 = "context"
            defpackage.C0173Do.m401try(r5, r0)
            int r0 = android.os.Process.myPid()
            java.util.ArrayList r5 = m1089if(r5)
            java.util.Iterator r5 = r5.iterator()
        L11:
            boolean r1 = r5.hasNext()
            r2 = 0
            if (r1 == 0) goto L2b
            java.lang.Object r1 = r5.next()
            r3 = r1
            Ub$try$new$do$for r3 = (defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor) r3
            int r3 = r3.mo1388if()
            if (r3 != r0) goto L27
            r3 = 1
            goto L28
        L27:
            r3 = 0
        L28:
            if (r3 == 0) goto L11
            goto L2c
        L2b:
            r1 = 0
        L2c:
            Ub$try$new$do$for r1 = (defpackage.AbstractC0533Ub.Ctry.Cnew.Cdo.Cfor) r1
            if (r1 != 0) goto L52
            int r5 = android.os.Build.VERSION.SDK_INT
            r1 = 33
            if (r5 < r1) goto L40
            java.lang.String r5 = android.os.Process.myProcessName()
            java.lang.String r1 = "{\n      Process.myProcessName()\n    }"
            defpackage.C0173Do.m399new(r5, r1)
            goto L4c
        L40:
            r1 = 28
            if (r5 < r1) goto L4a
            java.lang.String r5 = defpackage.C2724f.m6614case()
            if (r5 != 0) goto L4c
        L4a:
            java.lang.String r5 = ""
        L4c:
            r1 = 12
            M3 r1 = m1088do(r4, r5, r0, r2, r1)
        L52:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.Jx.m1090for(android.content.Context):Ub$try$new$do$for");
    }
}
