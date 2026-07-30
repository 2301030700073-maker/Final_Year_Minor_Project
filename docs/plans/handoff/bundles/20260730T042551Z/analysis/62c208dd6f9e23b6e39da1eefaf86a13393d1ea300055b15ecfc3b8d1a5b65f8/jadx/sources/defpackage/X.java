package defpackage;

import android.content.Context;
import android.content.Intent;
import defpackage.W;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class X extends W<String[], Map<String, Boolean>> {
    @Override // defpackage.W
    public final Intent createIntent(Context context, String[] strArr) {
        String[] strArr2 = strArr;
        C0173Do.m401try(context, "context");
        C0173Do.m401try(strArr2, "input");
        Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr2);
        C0173Do.m399new(putExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
        return putExtra;
    }

    @Override // defpackage.W
    public final W.Cdo<Map<String, Boolean>> getSynchronousResult(Context context, String[] strArr) {
        String[] strArr2 = strArr;
        C0173Do.m401try(context, "context");
        C0173Do.m401try(strArr2, "input");
        boolean z = true;
        if (strArr2.length == 0) {
            return new W.Cdo<>(C0493Sf.f3532do);
        }
        int length = strArr2.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            if (!(C0466Ra.checkSelfPermission(context, strArr2[i]) == 0)) {
                z = false;
                break;
            }
            i++;
        }
        if (!z) {
            return null;
        }
        int m1180switch = C0315Kc.m1180switch(strArr2.length);
        if (m1180switch < 16) {
            m1180switch = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m1180switch);
        for (String str : strArr2) {
            linkedHashMap.put(str, Boolean.TRUE);
        }
        return new W.Cdo<>(linkedHashMap);
    }

    @Override // defpackage.W
    public final Map<String, Boolean> parseResult(int i, Intent intent) {
        C0493Sf c0493Sf = C0493Sf.f3532do;
        if (i != -1 || intent == null) {
            return c0493Sf;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return c0493Sf;
        }
        ArrayList arrayList = new ArrayList(intArrayExtra.length);
        for (int i2 : intArrayExtra) {
            arrayList.add(Boolean.valueOf(i2 == 0));
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : stringArrayExtra) {
            if (str != null) {
                arrayList2.add(str);
            }
        }
        Iterator it = arrayList2.iterator();
        Iterator it2 = arrayList.iterator();
        ArrayList arrayList3 = new ArrayList(Math.min(B8.c(arrayList2), B8.c(arrayList)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList3.add(new C3653rw(it.next(), it2.next()));
        }
        return C4120zr.m8814instanceof(arrayList3);
    }
}
