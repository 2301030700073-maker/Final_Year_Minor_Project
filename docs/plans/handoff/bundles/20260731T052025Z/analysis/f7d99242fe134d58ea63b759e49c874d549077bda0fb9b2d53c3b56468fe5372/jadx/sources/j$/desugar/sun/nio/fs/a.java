package j$.desugar.sun.nio.fs;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class a {
    public Set a;
    public Map b;
    public boolean c;

    public final void a(Object obj, String str) {
        ((HashMap) this.b).put(str, obj);
    }

    public final boolean b(String str) {
        return this.c || ((HashSet) this.a).contains(str);
    }
}
