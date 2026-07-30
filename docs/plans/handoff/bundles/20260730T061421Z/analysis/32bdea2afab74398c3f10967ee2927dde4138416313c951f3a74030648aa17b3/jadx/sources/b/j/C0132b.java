package b.j;

import androidx.lifecycle.Lifecycle$Event;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* renamed from: b.j.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0132b {

    /* renamed from: a, reason: collision with root package name */
    public final Map f986a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map f987b;

    public C0132b(Map map) {
        this.f987b = map;
        for (Map.Entry entry : map.entrySet()) {
            Lifecycle$Event lifecycle$Event = (Lifecycle$Event) entry.getValue();
            List list = (List) this.f986a.get(lifecycle$Event);
            if (list == null) {
                list = new ArrayList();
                this.f986a.put(lifecycle$Event, list);
            }
            list.add(entry.getKey());
        }
    }

    public static void a(List list, j jVar, Lifecycle$Event lifecycle$Event, Object obj) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0133c c0133c = (C0133c) list.get(size);
                Objects.requireNonNull(c0133c);
                try {
                    int i = c0133c.f988a;
                    if (i == 0) {
                        c0133c.f989b.invoke(obj, new Object[0]);
                    } else if (i == 1) {
                        c0133c.f989b.invoke(obj, jVar);
                    } else if (i == 2) {
                        c0133c.f989b.invoke(obj, jVar, lifecycle$Event);
                    }
                } catch (IllegalAccessException e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }
}
