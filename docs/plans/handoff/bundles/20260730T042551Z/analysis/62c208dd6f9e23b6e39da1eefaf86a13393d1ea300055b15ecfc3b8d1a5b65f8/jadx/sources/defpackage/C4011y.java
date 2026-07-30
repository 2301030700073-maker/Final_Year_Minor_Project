package defpackage;

import sun.misc.Unsafe;

/* renamed from: y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C4011y {
    /* renamed from: if, reason: not valid java name */
    public static /* synthetic */ boolean m8689if(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
