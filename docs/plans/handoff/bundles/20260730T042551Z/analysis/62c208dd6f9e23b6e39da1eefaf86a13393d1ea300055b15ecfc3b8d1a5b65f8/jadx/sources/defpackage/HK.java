package defpackage;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class HK {

    /* renamed from: do, reason: not valid java name */
    public final F2<String, Method> f1340do;

    /* renamed from: for, reason: not valid java name */
    public final F2<String, Class> f1341for;

    /* renamed from: if, reason: not valid java name */
    public final F2<String, Method> f1342if;

    public HK(F2<String, Method> f2, F2<String, Method> f22, F2<String, Class> f23) {
        this.f1340do = f2;
        this.f1342if = f22;
        this.f1341for = f23;
    }

    /* renamed from: break, reason: not valid java name */
    public final int m830break(int i, int i2) {
        return !mo839goto(i2) ? i : mo848this();
    }

    /* renamed from: case, reason: not valid java name */
    public abstract byte[] mo831case();

    /* renamed from: catch, reason: not valid java name */
    public abstract <T extends Parcelable> T mo832catch();

    /* renamed from: class, reason: not valid java name */
    public abstract String mo833class();

    /* renamed from: const, reason: not valid java name */
    public final <T extends JK> T m834const() {
        String mo833class = mo833class();
        if (mo833class == null) {
            return null;
        }
        try {
            return (T) m838for(mo833class).invoke(null, mo835do());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract IK mo835do();

    /* renamed from: else, reason: not valid java name */
    public abstract CharSequence mo836else();

    /* renamed from: final, reason: not valid java name */
    public abstract void mo837final(int i);

    /* renamed from: for, reason: not valid java name */
    public final Method m838for(String str) {
        F2<String, Method> f2 = this.f1340do;
        Method orDefault = f2.getOrDefault(str, null);
        if (orDefault != null) {
            return orDefault;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, HK.class.getClassLoader()).getDeclaredMethod("read", HK.class);
        f2.put(str, declaredMethod);
        return declaredMethod;
    }

    /* renamed from: goto, reason: not valid java name */
    public abstract boolean mo839goto(int i);

    /* renamed from: if, reason: not valid java name */
    public final Class m840if(Class<? extends JK> cls) {
        String name = cls.getName();
        F2<String, Class> f2 = this.f1341for;
        Class orDefault = f2.getOrDefault(name, null);
        if (orDefault != null) {
            return orDefault;
        }
        Class<?> cls2 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        f2.put(cls.getName(), cls2);
        return cls2;
    }

    /* renamed from: import, reason: not valid java name */
    public abstract void mo841import(int i);

    /* renamed from: native, reason: not valid java name */
    public final void m842native(int i, int i2) {
        mo837final(i2);
        mo841import(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: new, reason: not valid java name */
    public final Method m843new(Class cls) {
        String name = cls.getName();
        F2<String, Method> f2 = this.f1342if;
        Method orDefault = f2.getOrDefault(name, null);
        if (orDefault != null) {
            return orDefault;
        }
        Class m840if = m840if(cls);
        System.currentTimeMillis();
        Method declaredMethod = m840if.getDeclaredMethod("write", cls, HK.class);
        f2.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    /* renamed from: public, reason: not valid java name */
    public abstract void mo844public(Parcelable parcelable);

    /* renamed from: return, reason: not valid java name */
    public abstract void mo845return(String str);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: static, reason: not valid java name */
    public final void m846static(JK jk) {
        if (jk == null) {
            mo845return(null);
            return;
        }
        try {
            mo845return(m840if(jk.getClass()).getName());
            IK mo835do = mo835do();
            try {
                m843new(jk.getClass()).invoke(null, jk, mo835do);
                mo835do.m924switch();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (!(e4.getCause() instanceof RuntimeException)) {
                    throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
                }
                throw ((RuntimeException) e4.getCause());
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(jk.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }

    /* renamed from: super, reason: not valid java name */
    public abstract void mo847super(boolean z);

    /* renamed from: this, reason: not valid java name */
    public abstract int mo848this();

    /* renamed from: throw, reason: not valid java name */
    public abstract void mo849throw(byte[] bArr);

    /* renamed from: try, reason: not valid java name */
    public abstract boolean mo850try();

    /* renamed from: while, reason: not valid java name */
    public abstract void mo851while(CharSequence charSequence);
}
