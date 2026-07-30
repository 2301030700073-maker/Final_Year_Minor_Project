package b.m.b;

import android.database.Observable;

/* loaded from: classes.dex */
public class S extends Observable {
    public boolean a() {
        return !((Observable) this).mObservers.isEmpty();
    }

    public void b() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((T) ((Observable) this).mObservers.get(size)).onChanged();
        }
    }

    public void c(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((T) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i, i2, obj);
        }
    }

    public void d(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((T) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i, i2);
        }
    }

    public void e(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((T) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i, i2);
        }
    }
}
