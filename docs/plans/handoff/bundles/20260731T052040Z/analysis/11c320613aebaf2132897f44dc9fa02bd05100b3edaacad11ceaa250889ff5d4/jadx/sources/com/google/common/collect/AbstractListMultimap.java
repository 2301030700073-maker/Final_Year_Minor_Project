package com.google.common.collect;

import android.util.Pair;
import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class AbstractListMultimap extends AbstractMapBasedMultimap implements ListMultimap {
    private static final long serialVersionUID = 6588350623831699109L;

    @Override // com.google.common.collect.Multimap
    public final Map asMap() {
        Map map = this.asMap;
        if (map != null) {
            return map;
        }
        AbstractMapBasedMultimap.AsMap createAsMap = createAsMap();
        this.asMap = createAsMap;
        return createAsMap;
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.Multimap
    public final Collection get(Object obj) {
        return (List) super.get(obj);
    }

    @Override // com.google.common.collect.AbstractMapBasedMultimap
    public final Collection wrapCollection(Object obj, Collection collection) {
        List list = (List) collection;
        return list instanceof RandomAccess ? new AbstractMapBasedMultimap.RandomAccessWrappedList(obj, list, null) : new AbstractMapBasedMultimap.WrappedList(obj, list, null);
    }

    public final List get(Pair pair) {
        return (List) super.get((Object) pair);
    }
}
