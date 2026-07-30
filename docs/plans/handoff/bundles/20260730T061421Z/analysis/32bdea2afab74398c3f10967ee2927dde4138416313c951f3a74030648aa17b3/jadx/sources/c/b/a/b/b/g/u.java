package c.b.a.b.b.g;

import android.util.Pair;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public final List f2570a = new ArrayList();

    public u(String str) {
        String[] split = str.split(",");
        for (int i = 0; i < split.length; i++) {
            if (!split[i].isEmpty()) {
                this.f2570a.add(Pair.create(Integer.valueOf(split[i], 16), Float.valueOf(1.0f - (i * 0.05f))));
            }
        }
    }

    public String toString() {
        return (String) this.f2570a.stream().map(new Function() { // from class: c.b.a.b.b.g.n
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Pair pair = (Pair) obj;
                return pair.first + "(" + pair.second + ")";
            }
        }).collect(Collectors.joining(","));
    }
}
