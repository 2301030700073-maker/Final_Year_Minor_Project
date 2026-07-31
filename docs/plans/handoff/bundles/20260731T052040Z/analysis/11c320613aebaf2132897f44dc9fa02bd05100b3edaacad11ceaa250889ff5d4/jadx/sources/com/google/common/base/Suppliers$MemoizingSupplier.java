package com.google.common.base;

import com.google.android.exoplayer2.upstream.DataSourceBitmapLoader$$ExternalSyntheticLambda0;
import java.io.Serializable;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Suppliers$MemoizingSupplier implements Supplier, Serializable {
    private static final long serialVersionUID = 0;
    final Supplier delegate;
    public volatile transient boolean initialized;
    public transient Object value;

    public Suppliers$MemoizingSupplier(DataSourceBitmapLoader$$ExternalSyntheticLambda0 dataSourceBitmapLoader$$ExternalSyntheticLambda0) {
        this.delegate = dataSourceBitmapLoader$$ExternalSyntheticLambda0;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        if (!this.initialized) {
            synchronized (this) {
                try {
                    if (!this.initialized) {
                        Object obj = this.delegate.get();
                        this.value = obj;
                        this.initialized = true;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (this.initialized) {
            obj = "<supplier that returned " + this.value + ">";
        } else {
            obj = this.delegate;
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
