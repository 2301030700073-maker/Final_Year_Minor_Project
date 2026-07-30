package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import defpackage.C3464oj;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;

/* loaded from: classes.dex */
public final class NI extends SI {

    /* renamed from: do, reason: not valid java name */
    public static final Class<?> f2359do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Constructor<?> f2360do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Method f2361do;

    /* renamed from: if, reason: not valid java name */
    public static final Method f2362if;

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        f2360do = constructor;
        f2359do = cls;
        f2361do = method2;
        f2362if = method;
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m1513else(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f2361do.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @Override // defpackage.SI
    /* renamed from: do */
    public final Typeface mo1408do(Context context, C3464oj.Cfor cfor, Resources resources, int i) {
        Object obj;
        MappedByteBuffer mappedByteBuffer;
        FileInputStream fileInputStream;
        try {
            obj = f2360do.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C3464oj.Cnew cnew : cfor.f14831do) {
            int i2 = cnew.f14835for;
            File m2238new = TI.m2238new(context);
            if (m2238new != null) {
                try {
                    if (TI.m2237if(m2238new, resources, i2)) {
                        try {
                            fileInputStream = new FileInputStream(m2238new);
                        } catch (IOException unused2) {
                            mappedByteBuffer = null;
                        }
                        try {
                            FileChannel channel = fileInputStream.getChannel();
                            mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                            fileInputStream.close();
                            if (mappedByteBuffer != null || !m1513else(obj, mappedByteBuffer, cnew.f14836if, cnew.f14832do, cnew.f14834do)) {
                                return null;
                            }
                        } finally {
                        }
                    }
                } finally {
                    m2238new.delete();
                }
            }
            mappedByteBuffer = null;
            if (mappedByteBuffer != null) {
                return null;
            }
        }
        try {
            Object newInstance = Array.newInstance(f2359do, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f2362if.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused3) {
            return null;
        }
    }

    @Override // defpackage.SI
    /* renamed from: if */
    public final Typeface mo1409if(Context context, C3582qj[] c3582qjArr, int i) {
        Object obj;
        Typeface typeface;
        try {
            obj = f2360do.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        C2680eE c2680eE = new C2680eE();
        for (C3582qj c3582qj : c3582qjArr) {
            Uri uri = c3582qj.f15149do;
            ByteBuffer byteBuffer = (ByteBuffer) c2680eE.getOrDefault(uri, null);
            if (byteBuffer == null) {
                byteBuffer = TI.m2239try(context, uri);
                c2680eE.put(uri, byteBuffer);
            }
            if (byteBuffer == null || !m1513else(obj, byteBuffer, c3582qj.f15148do, c3582qj.f15152if, c3582qj.f15150do)) {
                return null;
            }
        }
        try {
            Object newInstance = Array.newInstance(f2359do, 1);
            Array.set(newInstance, 0, obj);
            typeface = (Typeface) f2362if.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException unused2) {
            typeface = null;
        }
        if (typeface == null) {
            return null;
        }
        return Typeface.create(typeface, i);
    }
}
