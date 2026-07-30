package b.p;

import android.os.Parcelable;
import android.text.TextUtils;
import b.d.n;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a, reason: collision with root package name */
    public final n f1237a;

    /* renamed from: b, reason: collision with root package name */
    public final n f1238b;

    /* renamed from: c, reason: collision with root package name */
    public final n f1239c;

    public b(n nVar, n nVar2, n nVar3) {
        this.f1237a = nVar;
        this.f1238b = nVar2;
        this.f1239c = nVar3;
    }

    public abstract void a();

    public abstract b b();

    public final Class c(Class cls) {
        Class cls2 = (Class) this.f1239c.getOrDefault(cls.getName(), null);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f1239c.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method d(String str) {
        Method method = (Method) this.f1237a.getOrDefault(str, null);
        if (method != null) {
            return method;
        }
        Method declaredMethod = Class.forName(str, true, b.class.getClassLoader()).getDeclaredMethod("read", b.class);
        this.f1237a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method e(Class cls) {
        Method method = (Method) this.f1238b.getOrDefault(cls.getName(), null);
        if (method != null) {
            return method;
        }
        Method declaredMethod = c(cls).getDeclaredMethod("write", cls, b.class);
        this.f1238b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public boolean f(boolean z, int i) {
        return !h(i) ? z : ((c) this).e.readInt() != 0;
    }

    public CharSequence g(CharSequence charSequence, int i) {
        return !h(i) ? charSequence : (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(((c) this).e);
    }

    public abstract boolean h(int i);

    public int i(int i, int i2) {
        return !h(i2) ? i : ((c) this).e.readInt();
    }

    public Parcelable j(Parcelable parcelable, int i) {
        return !h(i) ? parcelable : ((c) this).e.readParcelable(c.class.getClassLoader());
    }

    public d k() {
        String readString = ((c) this).e.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (d) d(readString).invoke(null, b());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException(e3);
        } catch (InvocationTargetException e4) {
            Throwable cause = e4.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException(e4);
        }
    }

    public abstract void l(int i);

    public void m(int i, int i2) {
        l(i2);
        ((c) this).e.writeInt(i);
    }

    public void n(Parcelable parcelable, int i) {
        l(i);
        ((c) this).e.writeParcelable(parcelable, 0);
    }

    public void o(d dVar) {
        if (dVar == null) {
            ((c) this).e.writeString(null);
            return;
        }
        try {
            ((c) this).e.writeString(c(dVar.getClass()).getName());
            b b2 = b();
            try {
                e(dVar.getClass()).invoke(null, dVar, b2);
                b2.a();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException(e3);
            } catch (InvocationTargetException e4) {
                Throwable cause = e4.getCause();
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (!(cause instanceof Error)) {
                    throw new RuntimeException(e4);
                }
                throw ((Error) cause);
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(dVar.getClass().getSimpleName() + " does not have a Parcelizer", e5);
        }
    }
}
