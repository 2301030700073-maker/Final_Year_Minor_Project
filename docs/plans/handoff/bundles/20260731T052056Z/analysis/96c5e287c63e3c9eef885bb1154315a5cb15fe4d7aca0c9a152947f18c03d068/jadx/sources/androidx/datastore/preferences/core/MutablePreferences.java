package androidx.datastore.preferences.core;

import j$.util.DesugarCollections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class MutablePreferences {
    public final AtomicBoolean frozen;
    public final LinkedHashMap preferencesMap;

    public MutablePreferences(LinkedHashMap linkedHashMap, boolean z) {
        this.preferencesMap = linkedHashMap;
        this.frozen = new AtomicBoolean(z);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MutablePreferences)) {
            return false;
        }
        return Intrinsics.areEqual(this.preferencesMap, ((MutablePreferences) obj).preferencesMap);
    }

    public final Object get(Preferences$Key preferences$Key) {
        preferences$Key.getClass();
        return this.preferencesMap.get(preferences$Key);
    }

    public final int hashCode() {
        return this.preferencesMap.hashCode();
    }

    public final void set(Preferences$Key preferences$Key, Set set) {
        preferences$Key.getClass();
        setUnchecked$datastore_preferences_core(preferences$Key, set);
    }

    public final void setUnchecked$datastore_preferences_core(Preferences$Key preferences$Key, Object obj) {
        preferences$Key.getClass();
        if (this.frozen.get()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Do mutate preferences once returned to DataStore.");
            return;
        }
        boolean z = obj instanceof Set;
        LinkedHashMap linkedHashMap = this.preferencesMap;
        if (!z) {
            linkedHashMap.put(preferences$Key, obj);
            return;
        }
        Set unmodifiableSet = DesugarCollections.unmodifiableSet(CollectionsKt.toSet((Iterable) obj));
        unmodifiableSet.getClass();
        linkedHashMap.put(preferences$Key, unmodifiableSet);
    }

    public final MutablePreferences toMutablePreferences() {
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(this.preferencesMap);
        unmodifiableMap.getClass();
        return new MutablePreferences(new LinkedHashMap(unmodifiableMap), false);
    }

    public final MutablePreferences toPreferences() {
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(this.preferencesMap);
        unmodifiableMap.getClass();
        return new MutablePreferences(new LinkedHashMap(unmodifiableMap), true);
    }

    public final String toString() {
        return CollectionsKt.joinToString$default(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", MutablePreferences$toString$1.INSTANCE, 24);
    }

    public /* synthetic */ MutablePreferences(boolean z) {
        this(new LinkedHashMap(), z);
    }
}
