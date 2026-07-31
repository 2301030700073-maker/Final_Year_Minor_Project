package okhttp3.internal;

import kotlin.reflect.KClass;
import okio.Okio__OkioKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmptyTags extends Okio__OkioKt {
    public static final EmptyTags INSTANCE = new EmptyTags();

    @Override // okio.Okio__OkioKt
    public final Object get(KClass kClass) {
        return null;
    }

    @Override // okio.Okio__OkioKt
    public final Okio__OkioKt plus(KClass kClass, Object obj) {
        kClass.getClass();
        return obj != null ? new LinkedTags(kClass, obj, this) : this;
    }

    public final String toString() {
        return "{}";
    }
}
