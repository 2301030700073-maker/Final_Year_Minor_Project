package com.google.common.util.concurrent;

import sun.misc.Unsafe;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding1 {
    public static /* synthetic */ boolean m(Unsafe unsafe, AbstractFuture abstractFuture, long j, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(abstractFuture, j, obj, obj2)) {
            if (unsafe.getObject(abstractFuture, j) != obj) {
                return false;
            }
        }
        return true;
    }
}
