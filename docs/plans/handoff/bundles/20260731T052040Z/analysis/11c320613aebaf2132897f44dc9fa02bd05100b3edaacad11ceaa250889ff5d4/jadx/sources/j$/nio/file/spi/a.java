package j$.nio.file.spi;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.ServiceLoader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes2.dex */
public final class a implements PrivilegedAction {
    public final /* synthetic */ int a;

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.a) {
            case 0:
                ArrayList arrayList = new ArrayList();
                Iterator it = ServiceLoader.load(d.class, ClassLoader.getSystemClassLoader()).iterator();
                while (it.hasNext()) {
                    d dVar = (d) it.next();
                    String l = dVar.l();
                    if (!l.equalsIgnoreCase("file")) {
                        int size = arrayList.size();
                        int i = 0;
                        while (true) {
                            if (i < size) {
                                Object obj = arrayList.get(i);
                                i++;
                                if (((d) obj).l().equalsIgnoreCase(l)) {
                                    break;
                                }
                            } else {
                                arrayList.add(dVar);
                            }
                        }
                    }
                }
                return arrayList;
            case 1:
                String property = System.getProperty("file.encoding");
                if (property == null) {
                    return null;
                }
                return property;
            case 2:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
            case 3:
                return Boolean.valueOf(Boolean.getBoolean("java.util.secureRandomSeed"));
            default:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    }
}
