package curtains.internal;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class WindowManagerSpy {
    public static final Lazy mViewsField$delegate;
    public static final Lazy windowManagerClass$delegate;
    public static final Lazy windowManagerInstance$delegate;

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        windowManagerClass$delegate = ContextsKt.lazy(lazyThreadSafetyMode, WindowManagerSpy$mViewsField$2.INSTANCE$1);
        windowManagerInstance$delegate = ContextsKt.lazy(lazyThreadSafetyMode, WindowManagerSpy$mViewsField$2.INSTANCE$2);
        mViewsField$delegate = ContextsKt.lazy(lazyThreadSafetyMode, WindowManagerSpy$mViewsField$2.INSTANCE);
    }
}
