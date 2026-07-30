package com.android.quickstep.util;

import android.util.Log;
import com.android.quickstep.util.TaskKeyLruCache;
import com.android.systemui.shared.recents.model.Task;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.function.Predicate;

/* loaded from: classes.dex */
public class TaskKeyLruCache {
    public final MyLinkedHashMap mMap;

    public class Entry {
        public final Task.TaskKey mKey;
        public Object mValue;

        public Entry(Task.TaskKey taskKey, Object obj) {
            this.mKey = taskKey;
            this.mValue = obj;
        }

        public int hashCode() {
            return this.mKey.id;
        }
    }

    public class MyLinkedHashMap extends LinkedHashMap {
        public final int mMaxSize;

        public MyLinkedHashMap(int i) {
            super(0, 0.75f, true);
            this.mMaxSize = i;
        }

        @Override // java.util.LinkedHashMap
        public boolean removeEldestEntry(Map.Entry entry) {
            return size() > this.mMaxSize;
        }
    }

    public TaskKeyLruCache(int i) {
        this.mMap = new MyLinkedHashMap(i);
    }

    public synchronized void evictAll() {
        this.mMap.clear();
    }

    public synchronized Object getAndInvalidateIfModified(Task.TaskKey taskKey) {
        Entry entry = (Entry) this.mMap.get(Integer.valueOf(taskKey.id));
        if (entry != null && entry.mKey.windowingMode == taskKey.windowingMode && entry.mKey.lastActiveTime == taskKey.lastActiveTime) {
            return entry.mValue;
        }
        remove(taskKey);
        return null;
    }

    public final synchronized void put(Task.TaskKey taskKey, Object obj) {
        if (taskKey == null || obj == null) {
            Log.e("TaskKeyCache", "Unexpected null key or value: " + taskKey + ", " + obj);
        } else {
            this.mMap.put(Integer.valueOf(taskKey.id), new Entry(taskKey, obj));
        }
    }

    public synchronized void remove(Task.TaskKey taskKey) {
        this.mMap.remove(Integer.valueOf(taskKey.id));
    }

    public synchronized void removeAll(final Predicate predicate) {
        this.mMap.entrySet().removeIf(new Predicate() { // from class: c.a.b.c2.k
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return predicate.test(((TaskKeyLruCache.Entry) ((Map.Entry) obj).getValue()).mKey);
            }
        });
    }

    public synchronized void updateIfAlreadyInCache(int i, Object obj) {
        Entry entry = (Entry) this.mMap.get(Integer.valueOf(i));
        if (entry != null) {
            entry.mValue = obj;
        }
    }
}
