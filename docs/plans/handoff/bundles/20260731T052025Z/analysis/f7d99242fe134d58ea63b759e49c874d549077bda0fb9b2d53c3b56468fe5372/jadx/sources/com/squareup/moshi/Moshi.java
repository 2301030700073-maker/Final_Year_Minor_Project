package com.squareup.moshi;

import com.squareup.moshi.MapJsonAdapter;
import com.squareup.moshi.internal.Util;
import j$.util.DesugarCollections;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.Headers;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class Moshi {
    public static final ArrayList BUILT_IN_FACTORIES;
    public final List factories;
    public final ThreadLocal lookupChainThreadLocal = new ThreadLocal();
    public final LinkedHashMap adapterCache = new LinkedHashMap();

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Lookup extends JsonAdapter {
        public JsonAdapter adapter;
        public final Object cacheKey;
        public final String fieldName;
        public final Type type;

        public Lookup(Type type, String str, Object obj) {
            this.type = type;
            this.fieldName = str;
            this.cacheKey = obj;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public final Object fromJson(JsonUtf8Reader jsonUtf8Reader) {
            JsonAdapter jsonAdapter = this.adapter;
            if (jsonAdapter != null) {
                return jsonAdapter.fromJson(jsonUtf8Reader);
            }
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JsonAdapter isn't ready");
            return null;
        }

        @Override // com.squareup.moshi.JsonAdapter
        public final void toJson(JsonUtf8Writer jsonUtf8Writer, Object obj) {
            JsonAdapter jsonAdapter = this.adapter;
            if (jsonAdapter != null) {
                jsonAdapter.toJson(jsonUtf8Writer, obj);
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$2("JsonAdapter isn't ready");
            }
        }

        public final String toString() {
            JsonAdapter jsonAdapter = this.adapter;
            return jsonAdapter != null ? jsonAdapter.toString() : super.toString();
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class LookupChain {
        public boolean exceptionAnnotated;
        public final ArrayList callLookups = new ArrayList();
        public final ArrayDeque stack = new ArrayDeque();

        public LookupChain() {
        }

        public final IllegalArgumentException exceptionWithLookupStack(IllegalArgumentException illegalArgumentException) {
            if (!this.exceptionAnnotated) {
                this.exceptionAnnotated = true;
                ArrayDeque arrayDeque = this.stack;
                if (arrayDeque.size() != 1 || ((Lookup) arrayDeque.getFirst()).fieldName != null) {
                    StringBuilder sb = new StringBuilder(illegalArgumentException.getMessage());
                    Iterator descendingIterator = arrayDeque.descendingIterator();
                    while (descendingIterator.hasNext()) {
                        Lookup lookup = (Lookup) descendingIterator.next();
                        sb.append("\nfor ");
                        Type type = lookup.type;
                        String str = lookup.fieldName;
                        sb.append(type);
                        if (str != null) {
                            sb.append(' ');
                            sb.append(str);
                        }
                    }
                    return new IllegalArgumentException(sb.toString(), illegalArgumentException);
                }
            }
            return illegalArgumentException;
        }

        public final void pop(boolean z) {
            this.stack.removeLast();
            if (this.stack.isEmpty()) {
                Moshi.this.lookupChainThreadLocal.remove();
                if (z) {
                    synchronized (Moshi.this.adapterCache) {
                        try {
                            int size = this.callLookups.size();
                            for (int i = 0; i < size; i++) {
                                Lookup lookup = (Lookup) this.callLookups.get(i);
                                JsonAdapter jsonAdapter = (JsonAdapter) Moshi.this.adapterCache.put(lookup.cacheKey, lookup.adapter);
                                if (jsonAdapter != null) {
                                    lookup.adapter = jsonAdapter;
                                    Moshi.this.adapterCache.put(lookup.cacheKey, jsonAdapter);
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList(5);
        BUILT_IN_FACTORIES = arrayList;
        arrayList.add(Types.FACTORY);
        arrayList.add(CollectionJsonAdapter$2.FACTORY);
        arrayList.add(MapJsonAdapter.FACTORY);
        arrayList.add(MapJsonAdapter.FACTORY$1);
        arrayList.add(RecordJsonAdapter.FACTORY);
        arrayList.add(ClassJsonAdapter.FACTORY);
    }

    public Moshi(Headers.Builder builder) {
        ArrayList arrayList = builder.namesAndValues;
        int size = arrayList.size();
        ArrayList arrayList2 = BUILT_IN_FACTORIES;
        ArrayList arrayList3 = new ArrayList(arrayList2.size() + size);
        arrayList3.addAll(arrayList);
        arrayList3.addAll(arrayList2);
        this.factories = DesugarCollections.unmodifiableList(arrayList3);
    }

    public final JsonAdapter adapter(Type type, Set set, String str) {
        JsonAdapter jsonAdapter = null;
        if (type == null) {
            Regex$$ExternalSyntheticBUOutline0.m("type == null");
            return null;
        }
        if (set == null) {
            Regex$$ExternalSyntheticBUOutline0.m("annotations == null");
            return null;
        }
        Type canonicalize = Util.canonicalize(type);
        if (canonicalize instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) canonicalize;
            if (wildcardType.getLowerBounds().length == 0) {
                Type[] upperBounds = wildcardType.getUpperBounds();
                if (upperBounds.length != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$1();
                    return null;
                }
                canonicalize = upperBounds[0];
            }
        }
        Object asList = set.isEmpty() ? canonicalize : Arrays.asList(canonicalize, set);
        synchronized (this.adapterCache) {
            try {
                JsonAdapter jsonAdapter2 = (JsonAdapter) this.adapterCache.get(asList);
                if (jsonAdapter2 != null) {
                    return jsonAdapter2;
                }
                LookupChain lookupChain = (LookupChain) this.lookupChainThreadLocal.get();
                if (lookupChain == null) {
                    lookupChain = new LookupChain();
                    this.lookupChainThreadLocal.set(lookupChain);
                }
                ArrayDeque arrayDeque = lookupChain.stack;
                ArrayList arrayList = lookupChain.callLookups;
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        Lookup lookup = new Lookup(canonicalize, str, asList);
                        arrayList.add(lookup);
                        arrayDeque.add(lookup);
                        break;
                    }
                    Lookup lookup2 = (Lookup) arrayList.get(i);
                    if (lookup2.cacheKey.equals(asList)) {
                        arrayDeque.add(lookup2);
                        jsonAdapter = lookup2.adapter;
                        if (jsonAdapter == null) {
                            jsonAdapter = lookup2;
                        }
                    } else {
                        i++;
                    }
                }
                try {
                    if (jsonAdapter != null) {
                        return jsonAdapter;
                    }
                    try {
                        int size2 = this.factories.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            JsonAdapter create = ((MapJsonAdapter.AnonymousClass1) this.factories.get(i2)).create(canonicalize, set, this);
                            if (create != null) {
                                ((Lookup) lookupChain.stack.getLast()).adapter = create;
                                lookupChain.pop(true);
                                return create;
                            }
                        }
                        throw new IllegalArgumentException("No JsonAdapter for " + Util.typeAnnotatedWithAnnotations(canonicalize, set));
                    } catch (IllegalArgumentException e) {
                        throw lookupChain.exceptionWithLookupStack(e);
                    }
                } finally {
                    lookupChain.pop(false);
                }
            } finally {
            }
        }
    }

    public final JsonAdapter adapter(Class cls) {
        return adapter(cls, Util.NO_ANNOTATIONS, null);
    }
}
