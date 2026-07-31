package retrofit2;

import android.os.Build;
import retrofit2.Reflection;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class Platform {
    public static final Reflection builtInFactories;
    public static final AndroidMainExecutor callbackExecutor;
    public static final Reflection reflection;

    static {
        String property = System.getProperty("java.vm.name");
        property.getClass();
        if (property.equals("RoboVM")) {
            callbackExecutor = null;
            reflection = new Reflection(0);
            builtInFactories = new Reflection(6);
        } else {
            if (!property.equals("Dalvik")) {
                callbackExecutor = null;
                reflection = new Reflection.Java8(0);
                builtInFactories = new BuiltInFactories$Java8(6);
                return;
            }
            callbackExecutor = new AndroidMainExecutor();
            if (Build.VERSION.SDK_INT >= 24) {
                reflection = new Reflection.Android24(0);
                builtInFactories = new BuiltInFactories$Java8(6);
            } else {
                reflection = new Reflection(0);
                builtInFactories = new Reflection(6);
            }
        }
    }
}
