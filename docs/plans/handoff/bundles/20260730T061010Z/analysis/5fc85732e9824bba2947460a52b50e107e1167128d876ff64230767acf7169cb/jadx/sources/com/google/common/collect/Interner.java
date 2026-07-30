package com.google.common.collect;

import com.google.errorprone.annotations.CanIgnoreReturnValue;

/* loaded from: classes.dex */
public interface Interner<E> {
    @CanIgnoreReturnValue
    E intern(E e);
}
