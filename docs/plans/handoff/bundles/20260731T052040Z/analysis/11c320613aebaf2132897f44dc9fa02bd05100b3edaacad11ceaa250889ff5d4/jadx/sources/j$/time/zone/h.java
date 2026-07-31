package j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class h implements PrivilegedAction {
    public final /* synthetic */ List a;

    public h(List list) {
        this.a = list;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property == null) {
            i.b(new i());
            return null;
        }
        try {
            i iVar = (i) i.class.cast(Class.forName(property, true, i.class.getClassLoader()).newInstance());
            i.b(iVar);
            ((ArrayList) this.a).add(iVar);
            return null;
        } catch (Exception e) {
            throw new Error(e);
        }
    }
}
