package b.j;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class H {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f985a = new HashMap();

    public final void a() {
        for (B b2 : this.f985a.values()) {
            b2.f981b = true;
            Map map = b2.f980a;
            if (map != null) {
                synchronized (map) {
                    for (Object obj : b2.f980a.values()) {
                        if (obj instanceof Closeable) {
                            try {
                                ((Closeable) obj).close();
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        }
                    }
                }
            }
            b2.a();
        }
        this.f985a.clear();
    }
}
