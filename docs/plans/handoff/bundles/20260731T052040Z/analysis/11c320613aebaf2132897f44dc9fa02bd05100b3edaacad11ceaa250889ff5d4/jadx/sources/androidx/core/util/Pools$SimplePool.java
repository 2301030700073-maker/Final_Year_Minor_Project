package androidx.core.util;

import androidx.constraintlayout.core.ArrayRow;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class Pools$SimplePool {
    public final Object[] pool;
    public int poolSize;

    public Pools$SimplePool(int i) {
        if (i > 0) {
            this.pool = new Object[i];
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("The max pool size must be > 0");
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

    public boolean release(Object obj) {
        obj.getClass();
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
                _UtilJvmKt$$ExternalSyntheticLambda1.m$2("Already in the pool!");
                return false;
            }
            i2++;
        }
    }

    public Pools$SimplePool() {
        this.pool = new Object[256];
    }

    public void release(ArrayRow arrayRow) {
        int i = this.poolSize;
        Object[] objArr = this.pool;
        if (i < objArr.length) {
            objArr[i] = arrayRow;
            this.poolSize = i + 1;
        }
    }
}
