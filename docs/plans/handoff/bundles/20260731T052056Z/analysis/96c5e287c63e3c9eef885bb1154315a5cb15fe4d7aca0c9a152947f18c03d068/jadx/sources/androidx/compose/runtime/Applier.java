package androidx.compose.runtime;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
