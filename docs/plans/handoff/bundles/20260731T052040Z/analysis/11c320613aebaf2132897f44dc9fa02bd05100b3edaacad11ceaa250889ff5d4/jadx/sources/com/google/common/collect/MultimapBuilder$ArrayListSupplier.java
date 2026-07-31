package com.google.common.collect;

import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MultimapBuilder$ArrayListSupplier implements Supplier, Serializable {
    private final int expectedValuesPerKey;

    public MultimapBuilder$ArrayListSupplier() {
        Maps.checkNonnegative(2, "expectedValuesPerKey");
        this.expectedValuesPerKey = 2;
    }

    @Override // java.util.function.Supplier
    public final Object get() {
        return new ArrayList(this.expectedValuesPerKey);
    }
}
