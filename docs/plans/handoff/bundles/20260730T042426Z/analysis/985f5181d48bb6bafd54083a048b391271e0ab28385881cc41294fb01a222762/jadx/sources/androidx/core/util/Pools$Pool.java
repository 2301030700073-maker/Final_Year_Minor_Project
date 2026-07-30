package androidx.core.util;

/* compiled from: Pools.kt */
/* loaded from: classes.dex */
public interface Pools$Pool {
    Object acquire();

    boolean release(Object obj);
}
