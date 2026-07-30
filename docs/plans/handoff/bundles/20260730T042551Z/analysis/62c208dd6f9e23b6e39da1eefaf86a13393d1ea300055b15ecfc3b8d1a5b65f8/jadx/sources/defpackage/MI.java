package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import defpackage.C3464oj;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class MI extends SI {

    /* renamed from: do, reason: not valid java name */
    public static Class<?> f2157do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Constructor<?> f2158do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static Method f2159do = null;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static boolean f2160do = false;

    /* renamed from: if, reason: not valid java name */
    public static Method f2161if;

    /* renamed from: else, reason: not valid java name */
    public static boolean m1406else(Object obj, String str, int i, boolean z) {
        m1407goto();
        try {
            return ((Boolean) f2159do.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m1407goto() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (f2160do) {
            return;
        }
        f2160do = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f2158do = constructor;
        f2157do = cls;
        f2159do = method2;
        f2161if = method;
    }

    @Override // defpackage.SI
    /* renamed from: do, reason: not valid java name */
    public Typeface mo1408do(Context context, C3464oj.Cfor cfor, Resources resources, int i) {
        m1407goto();
        try {
            Object newInstance = f2158do.newInstance(new Object[0]);
            for (C3464oj.Cnew cnew : cfor.f14831do) {
                File m2238new = TI.m2238new(context);
                if (m2238new == null) {
                    return null;
                }
                try {
                    if (!TI.m2237if(m2238new, resources, cnew.f14835for)) {
                        return null;
                    }
                    if (!m1406else(newInstance, m2238new.getPath(), cnew.f14832do, cnew.f14834do)) {
                        return null;
                    }
                    m2238new.delete();
                } catch (RuntimeException unused) {
                    return null;
                } finally {
                    m2238new.delete();
                }
            }
            m1407goto();
            try {
                Object newInstance2 = Array.newInstance(f2157do, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f2161if.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // defpackage.SI
    /* renamed from: if, reason: not valid java name */
    public Typeface mo1409if(Context context, C3582qj[] c3582qjArr, int i) {
        File file;
        String readlink;
        if (c3582qjArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo1844case(i, c3582qjArr).f15149do, "r", null);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                try {
                    readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
                } catch (ErrnoException unused) {
                }
                try {
                    if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                        file = new File(readlink);
                        if (file != null && file.canRead()) {
                            Typeface createFromFile = Typeface.createFromFile(file);
                            openFileDescriptor.close();
                            return createFromFile;
                        }
                        FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                        Typeface mo1845for = mo1845for(context, fileInputStream);
                        fileInputStream.close();
                        openFileDescriptor.close();
                        return mo1845for;
                    }
                    Typeface mo1845for2 = mo1845for(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return mo1845for2;
                } finally {
                }
                file = null;
                if (file != null) {
                    Typeface createFromFile2 = Typeface.createFromFile(file);
                    openFileDescriptor.close();
                    return createFromFile2;
                }
                FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
            } finally {
            }
        } catch (IOException unused2) {
            return null;
        }
    }
}
