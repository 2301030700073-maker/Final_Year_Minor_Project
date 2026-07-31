package android.support.v4.b;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.support.v4.a.a.a;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class f extends d {
    private static final Class a;
    private static final Constructor b;
    private static final Method c;
    private static final Method d;
    private static final Method e;
    private static final Method f;
    private static final Method g;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            method3 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            method4 = cls.getMethod("freeze", new Class[0]);
            method5 = cls.getMethod("abortCreation", new Class[0]);
            method = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
            method.setAccessible(true);
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e2.getClass().getName(), e2);
            cls = null;
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        b = constructor;
        a = cls;
        c = method2;
        d = method3;
        e = method4;
        f = method5;
        g = method;
    }

    private static Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance((Class<?>) a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a() {
        if (c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return c != null;
    }

    private static boolean a(Context context, Object obj, String str, int i, int i2, int i3) {
        try {
            return ((Boolean) c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Object b() {
        try {
            return b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static boolean b(Object obj) {
        try {
            return ((Boolean) e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static void c(Object obj) {
        try {
            f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, Resources resources, int i, String str, int i2) {
        if (!a()) {
            return super.a(context, resources, i, str, i2);
        }
        Object b2 = b();
        if (!a(context, b2, str, 0, -1, -1)) {
            c(b2);
            return null;
        }
        if (b(b2)) {
            return a(b2);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:37:? A[Catch: IOException -> 0x0063, SYNTHETIC, TRY_LEAVE, TryCatch #2 {IOException -> 0x0063, blocks: (B:9:0x0014, B:12:0x0022, B:17:0x0045, B:31:0x0056, B:28:0x005f, B:35:0x005b, B:29:0x0062), top: B:8:0x0014, inners: #0 }] */
    @Override // android.support.v4.b.d, android.support.v4.b.g, android.support.v4.b.c.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface a(android.content.Context r10, android.os.CancellationSignal r11, android.support.v4.e.b.C0006b[] r12, int r13) {
        /*
            r9 = this;
            int r0 = r12.length
            r1 = 1
            r2 = 0
            if (r0 >= r1) goto L6
            return r2
        L6:
            boolean r0 = a()
            if (r0 != 0) goto L64
            android.support.v4.e.b$b r12 = r9.a(r12, r13)
            android.content.ContentResolver r10 = r10.getContentResolver()
            android.net.Uri r13 = r12.a()     // Catch: java.io.IOException -> L63
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r10 = r10.openFileDescriptor(r13, r0, r11)     // Catch: java.io.IOException -> L63
            if (r10 != 0) goto L26
            if (r10 == 0) goto L25
            r10.close()     // Catch: java.io.IOException -> L63
        L25:
            return r2
        L26:
            android.graphics.Typeface$Builder r11 = new android.graphics.Typeface$Builder     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            java.io.FileDescriptor r13 = r10.getFileDescriptor()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            r11.<init>(r13)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            int r13 = r12.c()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            android.graphics.Typeface$Builder r11 = r11.setWeight(r13)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            boolean r12 = r12.d()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            android.graphics.Typeface$Builder r11 = r11.setItalic(r12)     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            android.graphics.Typeface r11 = r11.build()     // Catch: java.lang.Throwable -> L49 java.lang.Throwable -> L4c
            if (r10 == 0) goto L48
            r10.close()     // Catch: java.io.IOException -> L63
        L48:
            return r11
        L49:
            r11 = move-exception
            r12 = r2
            goto L52
        L4c:
            r11 = move-exception
            throw r11     // Catch: java.lang.Throwable -> L4e
        L4e:
            r12 = move-exception
            r8 = r12
            r12 = r11
            r11 = r8
        L52:
            if (r10 == 0) goto L62
            if (r12 == 0) goto L5f
            r10.close()     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L63
            goto L62
        L5a:
            r10 = move-exception
            r12.addSuppressed(r10)     // Catch: java.io.IOException -> L63
            goto L62
        L5f:
            r10.close()     // Catch: java.io.IOException -> L63
        L62:
            throw r11     // Catch: java.io.IOException -> L63
        L63:
            return r2
        L64:
            java.util.Map r10 = android.support.v4.e.b.a(r10, r12, r11)
            java.lang.Object r11 = b()
            int r0 = r12.length
            r3 = 0
            r4 = 0
        L6f:
            if (r3 >= r0) goto L9a
            r5 = r12[r3]
            android.net.Uri r6 = r5.a()
            java.lang.Object r6 = r10.get(r6)
            java.nio.ByteBuffer r6 = (java.nio.ByteBuffer) r6
            if (r6 != 0) goto L80
            goto L97
        L80:
            int r4 = r5.b()
            int r7 = r5.c()
            boolean r5 = r5.d()
            boolean r4 = a(r11, r6, r4, r7, r5)
            if (r4 != 0) goto L96
            c(r11)
            return r2
        L96:
            r4 = 1
        L97:
            int r3 = r3 + 1
            goto L6f
        L9a:
            if (r4 != 0) goto La0
            c(r11)
            return r2
        La0:
            boolean r10 = b(r11)
            if (r10 != 0) goto La7
            return r2
        La7:
            android.graphics.Typeface r10 = a(r11)
            android.graphics.Typeface r10 = android.graphics.Typeface.create(r10, r13)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.b.f.a(android.content.Context, android.os.CancellationSignal, android.support.v4.e.b$b[], int):android.graphics.Typeface");
    }

    @Override // android.support.v4.b.g, android.support.v4.b.c.a
    public Typeface a(Context context, a.b bVar, Resources resources, int i) {
        if (!a()) {
            return super.a(context, bVar, resources, i);
        }
        Object b2 = b();
        for (a.c cVar : bVar.a()) {
            if (!a(context, b2, cVar.a(), 0, cVar.b(), cVar.c() ? 1 : 0)) {
                c(b2);
                return null;
            }
        }
        if (b(b2)) {
            return a(b2);
        }
        return null;
    }
}
