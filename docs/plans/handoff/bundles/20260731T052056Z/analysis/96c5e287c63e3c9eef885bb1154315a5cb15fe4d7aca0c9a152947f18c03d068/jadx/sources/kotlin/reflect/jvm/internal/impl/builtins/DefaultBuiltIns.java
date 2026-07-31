package kotlin.reflect.jvm.internal.impl.builtins;

import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DefaultBuiltIns extends KotlinBuiltIns {
    public static final DefaultBuiltIns Instance;

    static {
        DefaultBuiltIns defaultBuiltIns = new DefaultBuiltIns(new LockBasedStorageManager("DefaultBuiltIns"));
        defaultBuiltIns.createBuiltInsModule();
        Instance = defaultBuiltIns;
    }
}
