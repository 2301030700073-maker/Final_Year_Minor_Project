package j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes2.dex */
public final class g implements PrivilegedAction {
    public final /* synthetic */ List a;

    public g(List list) {
        this.a = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            h.b(new h());
            return null;
        }
        try {
            h hVar = (h) h.class.cast(Class.forName(property, true, h.class.getClassLoader()).newInstance());
            h.b(hVar);
            ((ArrayList) this.a).add(hVar);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
