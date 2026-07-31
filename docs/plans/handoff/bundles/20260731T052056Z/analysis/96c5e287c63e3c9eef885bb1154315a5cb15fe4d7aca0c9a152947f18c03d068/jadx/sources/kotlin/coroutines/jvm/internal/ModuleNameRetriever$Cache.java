package kotlin.coroutines.jvm.internal;

import android.os.Build;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ModuleNameRetriever$Cache {
    public Method getDescriptorMethod;
    public Method getModuleMethod;
    public Method nameMethod;

    public ModuleNameRetriever$Cache(Method method, Method method2, Method method3) {
        this.getModuleMethod = method;
        this.getDescriptorMethod = method2;
        this.nameMethod = method3;
    }

    public static void preApi29Check() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }
}
