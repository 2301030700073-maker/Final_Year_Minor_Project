package com.google.common.base;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class Suppliers$NonSerializableMemoizingSupplier implements Supplier {
    public static final Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0 SUCCESSFULLY_COMPUTED = new Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0(0);
    public volatile Supplier delegate;
    public Object value;

    @Override // java.util.function.Supplier
    public final Object get() {
        Supplier supplier = this.delegate;
        Suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0 suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0 = SUCCESSFULLY_COMPUTED;
        if (supplier != suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0) {
            synchronized (this) {
                try {
                    if (this.delegate != suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0) {
                        Object obj = this.delegate.get();
                        this.value = obj;
                        this.delegate = suppliers$NonSerializableMemoizingSupplier$$ExternalSyntheticLambda0;
                        return obj;
                    }
                } finally {
                }
            }
        }
        return this.value;
    }

    public final String toString() {
        Object obj = this.delegate;
        StringBuilder sb = new StringBuilder("Suppliers.memoize(");
        if (obj == SUCCESSFULLY_COMPUTED) {
            obj = "<supplier that returned " + this.value + ">";
        }
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
