package curtains;

import android.util.Log;
import curtains.internal.RootViewsSpy;
import curtains.internal.RootViewsSpy$delegatingViewList$1;
import curtains.internal.WindowManagerSpy;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Curtains$rootViewsSpy$2 extends Lambda implements Function0 {
    public static final Curtains$rootViewsSpy$2 INSTANCE = new Curtains$rootViewsSpy$2(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Field field;
        RootViewsSpy rootViewsSpy = new RootViewsSpy();
        try {
            Object value = WindowManagerSpy.windowManagerInstance$delegate.getValue();
            if (value == null || (field = (Field) WindowManagerSpy.mViewsField$delegate.getValue()) == null) {
                return rootViewsSpy;
            }
            Object obj = field.get(value);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.ArrayList<android.view.View> /* = java.util.ArrayList<android.view.View> */");
            }
            RootViewsSpy$delegatingViewList$1 rootViewsSpy$delegatingViewList$1 = rootViewsSpy.delegatingViewList;
            rootViewsSpy$delegatingViewList$1.addAll((ArrayList) obj);
            field.set(value, rootViewsSpy$delegatingViewList$1);
            return rootViewsSpy;
        } catch (Throwable th) {
            Log.w("WindowManagerSpy", th);
            return rootViewsSpy;
        }
    }
}
