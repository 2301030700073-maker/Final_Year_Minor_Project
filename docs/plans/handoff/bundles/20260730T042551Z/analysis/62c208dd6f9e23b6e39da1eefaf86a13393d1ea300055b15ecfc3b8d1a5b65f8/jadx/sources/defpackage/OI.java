package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import defpackage.C3464oj;
import j$.util.DesugarCollections;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class OI extends MI {

    /* renamed from: case, reason: not valid java name */
    public final Method f2626case;

    /* renamed from: else, reason: not valid java name */
    public final Method f2627else;

    /* renamed from: for, reason: not valid java name */
    public final Method f2628for;

    /* renamed from: if, reason: not valid java name */
    public final Class<?> f2629if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public final Constructor<?> f2630if;

    /* renamed from: new, reason: not valid java name */
    public final Method f2631new;

    /* renamed from: try, reason: not valid java name */
    public final Method f2632try;

    public OI() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = m1652class(cls);
            method3 = m1653const(cls);
            method4 = cls.getMethod("freeze", new Class[0]);
            method = cls.getMethod("abortCreation", new Class[0]);
            method5 = mo1656final(cls);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f2629if = cls;
        this.f2630if = constructor;
        this.f2628for = method2;
        this.f2631new = method3;
        this.f2632try = method4;
        this.f2626case = method;
        this.f2627else = method5;
    }

    /* renamed from: class, reason: not valid java name */
    public static Method m1652class(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: const, reason: not valid java name */
    public static Method m1653const(Class cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: break, reason: not valid java name */
    public Typeface mo1654break(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f2629if, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f2627else.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public final boolean m1655catch(Object obj) {
        try {
            return ((Boolean) this.f2632try.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    @Override // defpackage.MI, defpackage.SI
    /* renamed from: do */
    public final Typeface mo1408do(Context context, C3464oj.Cfor cfor, Resources resources, int i) {
        Object obj;
        FontVariationAxis[] fromFontVariationSettings;
        if (!(this.f2628for != null)) {
            return super.mo1408do(context, cfor, resources, i);
        }
        try {
            obj = this.f2630if.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C3464oj.Cnew cnew : cfor.f14831do) {
            String str = cnew.f14833do;
            int i2 = cnew.f14836if;
            int i3 = cnew.f14832do;
            boolean z = cnew.f14834do;
            fromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(cnew.f14837if);
            if (!m1658this(context, obj, str, i2, i3, z ? 1 : 0, fromFontVariationSettings)) {
                try {
                    this.f2626case.invoke(obj, new Object[0]);
                } catch (IllegalAccessException | InvocationTargetException unused2) {
                }
                return null;
            }
        }
        if (m1655catch(obj)) {
            return mo1654break(obj);
        }
        return null;
    }

    /* renamed from: final, reason: not valid java name */
    public Method mo1656final(Class<?> cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    @Override // defpackage.MI, defpackage.SI
    /* renamed from: if */
    public final Typeface mo1409if(Context context, C3582qj[] c3582qjArr, int i) {
        Object obj;
        Typeface mo1654break;
        boolean z;
        if (c3582qjArr.length < 1) {
            return null;
        }
        if (this.f2628for != null) {
            HashMap hashMap = new HashMap();
            for (C3582qj c3582qj : c3582qjArr) {
                if (c3582qj.f15151for == 0) {
                    Uri uri = c3582qj.f15149do;
                    if (!hashMap.containsKey(uri)) {
                        hashMap.put(uri, TI.m2239try(context, uri));
                    }
                }
            }
            Map unmodifiableMap = DesugarCollections.unmodifiableMap(hashMap);
            try {
                obj = this.f2630if.newInstance(new Object[0]);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj == null) {
                return null;
            }
            int length = c3582qjArr.length;
            int i2 = 0;
            boolean z2 = false;
            while (true) {
                Method method = this.f2626case;
                if (i2 >= length) {
                    if (!z2) {
                        try {
                            method.invoke(obj, new Object[0]);
                            return null;
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            return null;
                        }
                    }
                    if (m1655catch(obj) && (mo1654break = mo1654break(obj)) != null) {
                        return Typeface.create(mo1654break, i);
                    }
                    return null;
                }
                C3582qj c3582qj2 = c3582qjArr[i2];
                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(c3582qj2.f15149do);
                if (byteBuffer != null) {
                    try {
                        z = ((Boolean) this.f2631new.invoke(obj, byteBuffer, Integer.valueOf(c3582qj2.f15148do), null, Integer.valueOf(c3582qj2.f15152if), Integer.valueOf(c3582qj2.f15150do ? 1 : 0))).booleanValue();
                    } catch (IllegalAccessException | InvocationTargetException unused3) {
                        z = false;
                    }
                    if (!z) {
                        try {
                            method.invoke(obj, new Object[0]);
                            return null;
                        } catch (IllegalAccessException | InvocationTargetException unused4) {
                            return null;
                        }
                    }
                    z2 = true;
                }
                i2++;
            }
        } else {
            C3582qj mo1844case = mo1844case(i, c3582qjArr);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo1844case.f15149do, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(mo1844case.f15152if).setItalic(mo1844case.f15150do).build();
                    openFileDescriptor.close();
                    return build;
                } finally {
                }
            } catch (IOException unused5) {
                return null;
            }
        }
    }

    @Override // defpackage.SI
    /* renamed from: new, reason: not valid java name */
    public final Typeface mo1657new(Context context, Resources resources, int i, String str, int i2) {
        Object obj;
        if (!(this.f2628for != null)) {
            return super.mo1657new(context, resources, i, str, i2);
        }
        try {
            obj = this.f2630if.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        if (!m1658this(context, obj, str, 0, -1, -1, null)) {
            try {
                this.f2626case.invoke(obj, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
            return null;
        }
        if (m1655catch(obj)) {
            return mo1654break(obj);
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public final boolean m1658this(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f2628for.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }
}
