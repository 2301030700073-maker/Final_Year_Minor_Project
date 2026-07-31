package androidx.core.util;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class Pools$SimplePool {
    public final Object[] pool;
    public int poolSize;

    public Pools$SimplePool(int i) {
        if (i > 0) {
            this.pool = new Object[i];
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("The max pool size must be > 0");
            throw null;
        }
    }

    public Object acquire() {
        int i = this.poolSize;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.pool;
        Object obj = objArr[i2];
        obj.getClass();
        objArr[i2] = null;
        this.poolSize--;
        return obj;
    }

    /* renamed from: release, reason: collision with other method in class */
    public boolean mo741release(Object obj) {
        int i = this.poolSize;
        int i2 = 0;
        while (true) {
            Object[] objArr = this.pool;
            if (i2 >= i) {
                int i3 = this.poolSize;
                if (i3 >= objArr.length) {
                    return false;
                }
                objArr[i3] = obj;
                this.poolSize = i3 + 1;
                return true;
            }
            if (objArr[i2] == obj) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Already in the pool!");
                return false;
            }
            i2++;
        }
    }

    public Pools$SimplePool() {
        this.pool = new Object[256];
    }

    public void release(Object obj) {
        int i = this.poolSize;
        Object[] objArr = this.pool;
        if (i < objArr.length) {
            objArr[i] = obj;
            this.poolSize = i + 1;
        }
    }
}
