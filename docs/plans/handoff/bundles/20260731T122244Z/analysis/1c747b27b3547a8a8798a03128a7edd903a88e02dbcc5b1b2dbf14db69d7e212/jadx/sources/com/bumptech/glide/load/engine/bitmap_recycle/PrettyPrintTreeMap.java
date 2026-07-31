package com.bumptech.glide.load.engine.bitmap_recycle;

import com.android.volley.BuildConfig;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
class PrettyPrintTreeMap<K, V> extends TreeMap<K, V> {
    PrettyPrintTreeMap() {
    }

    @Override // java.util.AbstractMap
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("( ");
        for (Map.Entry<K, V> entry : entrySet()) {
            sb.append('{');
            sb.append(entry.getKey());
            sb.append(':');
            sb.append(entry.getValue());
            sb.append("}, ");
        }
        if (!isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), BuildConfig.FLAVOR);
        }
        sb.append(" )");
        return sb.toString();
    }
}
