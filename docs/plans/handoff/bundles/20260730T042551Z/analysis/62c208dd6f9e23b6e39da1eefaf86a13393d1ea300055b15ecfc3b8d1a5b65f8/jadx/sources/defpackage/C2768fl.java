package defpackage;

import j$.util.DesugarCollections;
import java.util.HashSet;
import java.util.Set;

/* renamed from: fl, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C2768fl {

    /* renamed from: do, reason: not valid java name */
    public static volatile C2768fl f12983do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final HashSet f12984do = new HashSet();

    /* renamed from: do, reason: not valid java name */
    public final Set<AbstractC0657Zp> m6680do() {
        Set<AbstractC0657Zp> unmodifiableSet;
        synchronized (this.f12984do) {
            unmodifiableSet = DesugarCollections.unmodifiableSet(this.f12984do);
        }
        return unmodifiableSet;
    }
}
