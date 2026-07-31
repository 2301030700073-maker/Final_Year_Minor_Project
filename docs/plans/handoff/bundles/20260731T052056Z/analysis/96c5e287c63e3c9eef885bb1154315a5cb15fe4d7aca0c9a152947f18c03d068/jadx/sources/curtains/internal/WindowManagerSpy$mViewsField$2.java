package curtains.internal;

import android.util.Log;
import java.lang.reflect.Field;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class WindowManagerSpy$mViewsField$2 extends Lambda implements Function0 {
    public static final WindowManagerSpy$mViewsField$2 INSTANCE;
    public static final WindowManagerSpy$mViewsField$2 INSTANCE$1;
    public static final WindowManagerSpy$mViewsField$2 INSTANCE$2;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 0;
        INSTANCE = new WindowManagerSpy$mViewsField$2(i, 0);
        INSTANCE$1 = new WindowManagerSpy$mViewsField$2(i, 1);
        INSTANCE$2 = new WindowManagerSpy$mViewsField$2(i, 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ WindowManagerSpy$mViewsField$2(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.$r8$classId) {
            case 0:
                Class cls = (Class) WindowManagerSpy.windowManagerClass$delegate.getValue();
                if (cls == null) {
                    return null;
                }
                Field declaredField = cls.getDeclaredField("mViews");
                declaredField.setAccessible(true);
                return declaredField;
            case 1:
                try {
                    return Class.forName("android.view.WindowManagerGlobal");
                } catch (Throwable th) {
                    Log.w("WindowManagerSpy", th);
                    return null;
                }
            default:
                Class cls2 = (Class) WindowManagerSpy.windowManagerClass$delegate.getValue();
                if (cls2 != null) {
                    return cls2.getMethod("getInstance", null).invoke(null, null);
                }
                return null;
        }
    }
}
