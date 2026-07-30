package com.android.launcher3.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MultiHashMap extends HashMap {
    public MultiHashMap() {
    }

    public void addToList(Object obj, Object obj2) {
        ArrayList arrayList = (ArrayList) get(obj);
        if (arrayList != null) {
            arrayList.add(obj2);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(obj2);
        put(obj, arrayList2);
    }

    @Override // java.util.HashMap, java.util.AbstractMap
    public Object clone() {
        MultiHashMap multiHashMap = new MultiHashMap(size());
        for (Map.Entry entry : entrySet()) {
            multiHashMap.put(entry.getKey(), new ArrayList((Collection) entry.getValue()));
        }
        return multiHashMap;
    }

    public MultiHashMap(int i) {
        super(i);
    }
}
