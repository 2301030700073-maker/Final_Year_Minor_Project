package c.b.a.c.d.g.u;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: c.b.a.c.d.g.u.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0412c {

    /* renamed from: a, reason: collision with root package name */
    public final Map f2899a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b, reason: collision with root package name */
    public final Map f2900b = Collections.synchronizedMap(new WeakHashMap());

    public final void a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f2899a) {
            hashMap = new HashMap(this.f2899a);
        }
        synchronized (this.f2900b) {
            hashMap2 = new HashMap(this.f2900b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).g(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((c.b.a.c.j.a) entry2.getKey()).a(new ApiException(status));
            }
        }
    }
}
