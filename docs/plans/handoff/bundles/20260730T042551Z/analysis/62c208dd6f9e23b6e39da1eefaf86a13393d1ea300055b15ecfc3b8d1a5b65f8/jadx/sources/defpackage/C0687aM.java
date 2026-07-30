package defpackage;

import android.os.Build;
import android.webkit.WebView;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;

/* renamed from: aM, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0687aM {

    /* renamed from: aM$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public static final InterfaceC0747bM f4943do;

        static {
            InterfaceC0747bM c3645ro;
            try {
                c3645ro = new C0806cM((WebViewProviderFactoryBoundaryInterface) P5.m1747do(WebViewProviderFactoryBoundaryInterface.class, C0687aM.m3121do()), 0);
            } catch (ClassNotFoundException unused) {
                c3645ro = new C3645ro();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
            f4943do = c3645ro;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static InvocationHandler m3121do() {
        ClassLoader classLoader;
        if (Build.VERSION.SDK_INT >= 28) {
            classLoader = C3542q1.m7847if();
        } else {
            try {
                Method declaredMethod = WebView.class.getDeclaredMethod("getFactory", new Class[0]);
                declaredMethod.setAccessible(true);
                classLoader = declaredMethod.invoke(null, new Object[0]).getClass().getClassLoader();
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException(e3);
            }
        }
        return (InvocationHandler) Class.forName("org.chromium.support_lib_glue.SupportLibReflectionUtil", false, classLoader).getDeclaredMethod("createWebViewProviderFactory", new Class[0]).invoke(null, new Object[0]);
    }
}
