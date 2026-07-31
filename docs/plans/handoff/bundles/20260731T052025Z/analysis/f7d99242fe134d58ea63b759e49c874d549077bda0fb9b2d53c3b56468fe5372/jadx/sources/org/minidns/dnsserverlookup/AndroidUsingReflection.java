package org.minidns.dnsserverlookup;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.text.StringsKt__IndentKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidUsingReflection extends AbstractDnsServerLookupMechanism {
    public static final AndroidUsingReflection INSTANCE = new AndroidUsingReflection();
    public final Method systemPropertiesGet;

    public AndroidUsingReflection() {
        super("AndroidUsingReflection", 1000);
        Method method;
        if (StringsKt__IndentKt.isAndroid()) {
            try {
                method = Class.forName("android.os.SystemProperties").getMethod("get", String.class);
            } catch (ClassNotFoundException | NoSuchMethodException | SecurityException e) {
                AbstractDnsServerLookupMechanism.LOGGER.log(Level.FINE, "Can not get method handle for android.os.SystemProperties.get(String).", e);
            }
            this.systemPropertiesGet = method;
        }
        method = null;
        this.systemPropertiesGet = method;
    }

    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    public final List getDnsServerAddresses() {
        String hostAddress;
        Logger logger = AbstractDnsServerLookupMechanism.LOGGER;
        ArrayList arrayList = new ArrayList(5);
        String[] strArr = {"net.dns1", "net.dns2", "net.dns3", "net.dns4"};
        for (int i = 0; i < 4; i++) {
            try {
                String str = (String) this.systemPropertiesGet.invoke(null, strArr[i]);
                if (str != null && str.length() != 0 && !arrayList.contains(str)) {
                    try {
                        InetAddress byName = InetAddress.getByName(str);
                        if (byName != null && (hostAddress = byName.getHostAddress()) != null && hostAddress.length() != 0 && !arrayList.contains(hostAddress)) {
                            arrayList.add(hostAddress);
                        }
                    } catch (UnknownHostException e) {
                        logger.log(Level.WARNING, "Exception in findDNSByReflection", (Throwable) e);
                    }
                }
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e2) {
                logger.log(Level.WARNING, "Exception in findDNSByReflection", e2);
                return null;
            }
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    @Override // org.minidns.dnsserverlookup.AbstractDnsServerLookupMechanism
    public final boolean isAvailable() {
        return this.systemPropertiesGet != null;
    }
}
