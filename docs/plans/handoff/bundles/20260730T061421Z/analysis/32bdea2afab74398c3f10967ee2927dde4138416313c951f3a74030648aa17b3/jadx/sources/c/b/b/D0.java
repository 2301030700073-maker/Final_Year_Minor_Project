package c.b.b;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class D0 extends K0 {
    public D0(int i) {
        super(i, null);
    }

    @Override // c.b.b.K0
    public void h() {
        if (!this.f3133d) {
            for (int i = 0; i < e(); i++) {
                Map.Entry d2 = d(i);
                if (((B) d2.getKey()).a()) {
                    d2.setValue(Collections.unmodifiableList((List) d2.getValue()));
                }
            }
            for (Map.Entry entry : f()) {
                if (((B) entry.getKey()).a()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.h();
    }
}
