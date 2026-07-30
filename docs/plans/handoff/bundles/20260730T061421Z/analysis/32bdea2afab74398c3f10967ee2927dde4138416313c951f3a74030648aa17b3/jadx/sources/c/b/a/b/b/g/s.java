package c.b.a.b.b.g;

import android.util.Pair;
import com.android.quickstep.fallback.RecentsState;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class s {
    public static float a(Integer num, List list, int i) {
        if (list.isEmpty()) {
            return RecentsState.NO_OFFSET;
        }
        while (list.size() < i) {
            list.add(Float.valueOf(0.01f));
        }
        return list.size() / ((Float) list.stream().map(new Function() { // from class: c.b.a.b.b.g.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Float.valueOf(1.0f / ((Float) obj).floatValue());
            }
        }).reduce(new BinaryOperator() { // from class: c.b.a.b.b.g.o
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Float.valueOf(Float.sum(((Float) obj).floatValue(), ((Float) obj2).floatValue()));
            }
        }).orElse(Float.valueOf(RecentsState.NO_OFFSET))).floatValue();
    }

    public static List constructPostingList(List list) {
        HashMap hashMap = new HashMap();
        Iterator it = list.iterator();
        int i = 0;
        while (it.hasNext()) {
            u uVar = (u) it.next();
            if (uVar != null) {
                for (Pair pair : uVar.f2570a) {
                    float floatValue = ((Float) pair.second).floatValue() - (i * 0.01f);
                    if (floatValue > 0.01f) {
                        List list2 = (List) hashMap.getOrDefault(pair.first, new ArrayList());
                        list2.add(Float.valueOf(floatValue));
                        hashMap.put((Integer) pair.first, list2);
                    }
                }
                i++;
            }
        }
        Iterator it2 = hashMap.entrySet().iterator();
        while (it2.hasNext()) {
            ((List) ((Map.Entry) it2.next()).getValue()).sort(Comparator.reverseOrder());
        }
        return (List) hashMap.entrySet().stream().map(new Function() { // from class: c.b.a.b.b.g.b
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Map.Entry entry = (Map.Entry) obj;
                return Pair.create((Integer) entry.getKey(), (List) entry.getValue());
            }
        }).collect(Collectors.toList());
    }

    public static Comparator suggestionsComparator(final Set set) {
        return Comparator.comparing(new Function() { // from class: c.b.a.b.b.g.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Float) ((Pair) obj).second).floatValue() > 0.5f);
            }
        }).thenComparing(new Function() { // from class: c.b.a.b.b.g.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return Boolean.valueOf(!set.contains(((String) ((Pair) obj).first).toLowerCase()));
            }
        }).thenComparing(new Function() { // from class: c.b.a.b.b.g.k
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (Float) ((Pair) obj).second;
            }
        }).thenComparing(new Function() { // from class: c.b.a.b.b.g.g
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return (String) ((Pair) obj).first;
            }
        }).reversed();
    }
}
