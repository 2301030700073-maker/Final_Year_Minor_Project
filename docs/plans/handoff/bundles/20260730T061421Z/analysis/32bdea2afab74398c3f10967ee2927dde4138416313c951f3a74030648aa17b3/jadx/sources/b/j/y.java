package b.j;

import android.os.Binder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Size;
import android.util.SizeF;
import android.util.SparseArray;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class y {
    public static final Class[] e = {Boolean.TYPE, boolean[].class, Double.TYPE, double[].class, Integer.TYPE, int[].class, Long.TYPE, long[].class, String.class, String[].class, Binder.class, Bundle.class, Byte.TYPE, byte[].class, Character.TYPE, char[].class, CharSequence.class, CharSequence[].class, ArrayList.class, Float.TYPE, float[].class, Parcelable.class, Parcelable[].class, Serializable.class, Short.TYPE, short[].class, SparseArray.class, Size.class, SizeF.class};

    /* renamed from: a, reason: collision with root package name */
    public final Map f1010a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f1011b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f1012c;

    /* renamed from: d, reason: collision with root package name */
    public final b.n.c f1013d;

    public y(Map map) {
        this.f1011b = new HashMap();
        this.f1012c = new HashMap();
        this.f1013d = new x(this);
        this.f1010a = new HashMap(map);
    }

    public static y a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return new y();
        }
        HashMap hashMap = new HashMap();
        if (bundle2 != null) {
            for (String str : bundle2.keySet()) {
                hashMap.put(str, bundle2.get(str));
            }
        }
        if (bundle == null) {
            return new y(hashMap);
        }
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("keys");
        ArrayList parcelableArrayList2 = bundle.getParcelableArrayList("values");
        if (parcelableArrayList == null || parcelableArrayList2 == null || parcelableArrayList.size() != parcelableArrayList2.size()) {
            throw new IllegalStateException("Invalid bundle passed as restored state");
        }
        for (int i = 0; i < parcelableArrayList.size(); i++) {
            hashMap.put((String) parcelableArrayList.get(i), parcelableArrayList2.get(i));
        }
        return new y(hashMap);
    }

    public y() {
        this.f1011b = new HashMap();
        this.f1012c = new HashMap();
        this.f1013d = new x(this);
        this.f1010a = new HashMap();
    }
}
