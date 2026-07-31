package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface Applier {
    void apply(Object obj, Function2 function2);

    void down(Object obj);

    void insertBottomUp(int i, Object obj);

    void insertTopDown(int i, Object obj);

    void move(int i, int i2, int i3);

    void onEndChanges();

    void remove(int i, int i2);

    void reuse();

    void up();
}
