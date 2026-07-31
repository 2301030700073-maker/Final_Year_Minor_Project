package net.thunderbird.core.preference;

import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultPreferenceChangeBroker implements PreferenceChangeBroker, PreferenceChangePublisher {
    public final Set subscribers = new LinkedHashSet();
    public final Object lock = new Object();

    public final void publish(PreferenceScope preferenceScope) {
        HashSet hashSet;
        preferenceScope.getClass();
        synchronized (this.lock) {
            hashSet = new HashSet(this.subscribers);
        }
        Iterator it = hashSet.iterator();
        it.getClass();
        while (it.hasNext()) {
            ((PreferenceChangeSubscriber) it.next()).receive(preferenceScope);
        }
    }

    public final void subscribe(PreferenceChangeSubscriber preferenceChangeSubscriber) {
        preferenceChangeSubscriber.getClass();
        synchronized (this.lock) {
            this.subscribers.add(preferenceChangeSubscriber);
        }
    }
}
