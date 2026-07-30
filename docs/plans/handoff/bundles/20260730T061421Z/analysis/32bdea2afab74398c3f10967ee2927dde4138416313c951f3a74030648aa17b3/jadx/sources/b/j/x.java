package b.j;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class x implements b.n.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f1009a;

    public x(y yVar) {
        this.f1009a = yVar;
    }

    @Override // b.n.c
    public Bundle a() {
        for (Map.Entry entry : new HashMap(this.f1009a.f1011b).entrySet()) {
            Bundle a2 = ((b.n.c) entry.getValue()).a();
            y yVar = this.f1009a;
            String str = (String) entry.getKey();
            Objects.requireNonNull(yVar);
            if (a2 != null) {
                for (Class cls : y.e) {
                    if (!cls.isInstance(a2)) {
                    }
                }
                StringBuilder f = c.a.c.a.a.f("Can't put value with type ");
                f.append(a2.getClass());
                f.append(" into saved state");
                throw new IllegalArgumentException(f.toString());
            }
            s sVar = (s) yVar.f1012c.get(str);
            if (sVar != null) {
                sVar.g(a2);
            } else {
                yVar.f1010a.put(str, a2);
            }
        }
        Set<String> keySet = this.f1009a.f1010a.keySet();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(keySet.size());
        ArrayList<? extends Parcelable> arrayList2 = new ArrayList<>(arrayList.size());
        for (String str2 : keySet) {
            arrayList.add(str2);
            arrayList2.add(this.f1009a.f1010a.get(str2));
        }
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("keys", arrayList);
        bundle.putParcelableArrayList("values", arrayList2);
        return bundle;
    }
}
