package androidx.datastore.preferences.core;

import androidx.fragment.app.Fragment;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MutablePreferences {
    public final Fragment.AnonymousClass7 frozen;
    public final LinkedHashMap preferencesMap;

    public MutablePreferences(LinkedHashMap linkedHashMap, boolean z) {
        this.preferencesMap = linkedHashMap;
        Fragment.AnonymousClass7 anonymousClass7 = new Fragment.AnonymousClass7();
        anonymousClass7.this$0 = new AtomicBoolean(z);
        this.frozen = anonymousClass7;
    }

    public final Map asMap() {
        Pair pair;
        Set<Map.Entry> entrySet = this.preferencesMap.entrySet();
        int mapCapacity = MapsKt__MapsKt.mapCapacity(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(entrySet, 10));
        if (mapCapacity < 16) {
            mapCapacity = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(mapCapacity);
        for (Map.Entry entry : entrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                pair = new Pair(entry.getKey(), Arrays.copyOf(bArr, bArr.length));
            } else {
                pair = new Pair(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(pair.first, pair.second);
        }
        Map unmodifiableMap = DesugarCollections.unmodifiableMap(linkedHashMap);
        unmodifiableMap.getClass();
        return unmodifiableMap;
    }

    public final void checkNotFrozen$datastore_preferences_core() {
        if (((AtomicBoolean) this.frozen.this$0).get()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("Do mutate preferences once returned to DataStore.");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[LOOP:0: B:10:0x002a->B:24:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof androidx.datastore.preferences.core.MutablePreferences
            r1 = 0
            if (r0 != 0) goto L6
            goto L60
        L6:
            androidx.datastore.preferences.core.MutablePreferences r6 = (androidx.datastore.preferences.core.MutablePreferences) r6
            java.util.LinkedHashMap r6 = r6.preferencesMap
            java.util.LinkedHashMap r5 = r5.preferencesMap
            r0 = 1
            if (r6 != r5) goto L10
            goto L61
        L10:
            int r2 = r6.size()
            int r3 = r5.size()
            if (r2 == r3) goto L1b
            goto L60
        L1b:
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L22
            goto L61
        L22:
            java.util.Set r6 = r6.entrySet()
            java.util.Iterator r6 = r6.iterator()
        L2a:
            boolean r2 = r6.hasNext()
            if (r2 == 0) goto L61
            java.lang.Object r2 = r6.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            java.lang.Object r3 = r2.getKey()
            java.lang.Object r3 = r5.get(r3)
            if (r3 == 0) goto L5d
            java.lang.Object r2 = r2.getValue()
            boolean r4 = r2 instanceof byte[]
            if (r4 == 0) goto L58
            boolean r4 = r3 instanceof byte[]
            if (r4 == 0) goto L5d
            byte[] r2 = (byte[]) r2
            byte[] r3 = (byte[]) r3
            boolean r2 = java.util.Arrays.equals(r2, r3)
            if (r2 == 0) goto L5d
            r2 = r0
            goto L5e
        L58:
            boolean r2 = kotlin.jvm.internal.Intrinsics.areEqual(r2, r3)
            goto L5e
        L5d:
            r2 = r1
        L5e:
            if (r2 != 0) goto L2a
        L60:
            return r1
        L61:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.core.MutablePreferences.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = this.preferencesMap.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            i += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return i;
    }

    public final void setUnchecked$datastore_preferences_core(Preferences$Key preferences$Key, Object obj) {
        preferences$Key.getClass();
        checkNotFrozen$datastore_preferences_core();
        LinkedHashMap linkedHashMap = this.preferencesMap;
        if (obj == null) {
            checkNotFrozen$datastore_preferences_core();
            linkedHashMap.remove(preferences$Key);
        } else if (obj instanceof Set) {
            Set unmodifiableSet = DesugarCollections.unmodifiableSet(CollectionsKt.toSet((Set) obj));
            unmodifiableSet.getClass();
            linkedHashMap.put(preferences$Key, unmodifiableSet);
        } else if (!(obj instanceof byte[])) {
            linkedHashMap.put(preferences$Key, obj);
        } else {
            byte[] bArr = (byte[]) obj;
            linkedHashMap.put(preferences$Key, Arrays.copyOf(bArr, bArr.length));
        }
    }

    public final String toString() {
        return CollectionsKt.joinToString$default(this.preferencesMap.entrySet(), ",\n", "{\n", "\n}", new RoomDatabase$$ExternalSyntheticLambda0(8), 24);
    }

    public /* synthetic */ MutablePreferences(boolean z) {
        this(new LinkedHashMap(), z);
    }
}
