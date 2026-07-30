package b.a.l.j;

import android.content.Context;
import android.content.Intent;
import b.d.g;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class c extends b {
    @Override // b.a.l.j.b
    public Intent a(Context context, Object obj) {
        return new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", (String[]) obj);
    }

    @Override // b.a.l.j.b
    public a b(Context context, Object obj) {
        String[] strArr = (String[]) obj;
        if (strArr == null || strArr.length == 0) {
            return new a(Collections.emptyMap());
        }
        g gVar = new g();
        boolean z = true;
        for (String str : strArr) {
            boolean z2 = b.e.b.b.a(context, str) == 0;
            gVar.put(str, Boolean.valueOf(z2));
            if (!z2) {
                z = false;
            }
        }
        if (z) {
            return new a(gVar);
        }
        return null;
    }

    @Override // b.a.l.j.b
    public Object c(int i, Intent intent) {
        if (i != -1) {
            return Collections.emptyMap();
        }
        if (intent == null) {
            return Collections.emptyMap();
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        int length = stringArrayExtra.length;
        for (int i2 = 0; i2 < length; i2++) {
            hashMap.put(stringArrayExtra[i2], Boolean.valueOf(intArrayExtra[i2] == 0));
        }
        return hashMap;
    }
}
