package org.minidns.dnsserverlookup;

import java.util.List;
import java.util.logging.Logger;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class AbstractDnsServerLookupMechanism implements Comparable {
    public static final Logger LOGGER = Logger.getLogger(AbstractDnsServerLookupMechanism.class.getName());
    public final String name;
    public final int priority;

    public AbstractDnsServerLookupMechanism(String str, int i) {
        this.name = str;
        this.priority = i;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.priority, ((AbstractDnsServerLookupMechanism) obj).priority);
    }

    public abstract List getDnsServerAddresses();

    public abstract boolean isAvailable();
}
