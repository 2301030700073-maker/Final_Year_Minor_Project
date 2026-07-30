package b.j;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class B {

    /* renamed from: a, reason: collision with root package name */
    public final Map f980a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public volatile boolean f981b = false;

    public void a() {
    }

    public Object b(String str, Object obj) {
        Object obj2;
        synchronized (this.f980a) {
            obj2 = this.f980a.get(str);
            if (obj2 == null) {
                this.f980a.put(str, obj);
            }
        }
        if (obj2 != null) {
            obj = obj2;
        }
        if (this.f981b && (obj instanceof Closeable)) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return obj;
    }
}
