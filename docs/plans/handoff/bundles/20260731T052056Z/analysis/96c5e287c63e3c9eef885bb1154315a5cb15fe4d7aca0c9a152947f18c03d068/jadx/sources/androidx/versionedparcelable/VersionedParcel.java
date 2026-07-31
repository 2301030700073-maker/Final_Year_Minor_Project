package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class VersionedParcel {
    public final ArrayMap mParcelizerCache;
    public final ArrayMap mReadCache;
    public final ArrayMap mWriteCache;

    public VersionedParcel(ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        this.mReadCache = arrayMap;
        this.mWriteCache = arrayMap2;
        this.mParcelizerCache = arrayMap3;
    }

    public abstract VersionedParcelParcel createSubParcel();

    public final Class findParcelClass(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.mParcelizerCache;
        Class cls2 = (Class) arrayMap.get(name);
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
        arrayMap.put(cls.getName(), cls3);
        return cls3;
    }

    public final Method getReadMethod(String str) {
        ArrayMap arrayMap = this.mReadCache;
        Method method = (Method) arrayMap.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
        arrayMap.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method getWriteMethod(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.mWriteCache;
        Method method = (Method) arrayMap.get(name);
        if (method != null) {
            return method;
        }
        Class findParcelClass = findParcelClass(cls);
        System.currentTimeMillis();
        Method declaredMethod = findParcelClass.getDeclaredMethod("write", cls, VersionedParcel.class);
        arrayMap.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    public abstract boolean readField(int i);

    public final Parcelable readParcelable(Parcelable parcelable, int i) {
        if (!readField(i)) {
            return parcelable;
        }
        return ((VersionedParcelParcel) this).mParcel.readParcelable(VersionedParcelParcel.class.getClassLoader());
    }

    public final VersionedParcelable readVersionedParcelable$1() {
        String readString = ((VersionedParcelParcel) this).mParcel.readString();
        if (readString == null) {
            return null;
        }
        try {
            return (VersionedParcelable) getReadMethod(readString).invoke(null, createSubParcel());
        } catch (ClassNotFoundException e) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered ClassNotFoundException", (Throwable) e);
            return null;
        } catch (IllegalAccessException e2) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered IllegalAccessException", (Throwable) e2);
            return null;
        } catch (NoSuchMethodException e3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered NoSuchMethodException", (Throwable) e3);
            return null;
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered InvocationTargetException", (Throwable) e4);
            return null;
        }
    }

    public abstract void setOutputField(int i);

    public final void writeVersionedParcelable(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            ((VersionedParcelParcel) this).mParcel.writeString(null);
            return;
        }
        try {
            ((VersionedParcelParcel) this).mParcel.writeString(findParcelClass(versionedParcelable.getClass()).getName());
            VersionedParcelParcel createSubParcel = createSubParcel();
            try {
                getWriteMethod(versionedParcelable.getClass()).invoke(null, versionedParcelable, createSubParcel);
                Parcel parcel = createSubParcel.mParcel;
                int i = createSubParcel.mCurrentField;
                if (i >= 0) {
                    int i2 = createSubParcel.mPositionLookup.get(i);
                    int dataPosition = parcel.dataPosition();
                    parcel.setDataPosition(i2);
                    parcel.writeInt(dataPosition - i2);
                    parcel.setDataPosition(dataPosition);
                }
            } catch (ClassNotFoundException e) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered ClassNotFoundException", (Throwable) e);
            } catch (IllegalAccessException e2) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered IllegalAccessException", (Throwable) e2);
            } catch (NoSuchMethodException e3) {
                ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered NoSuchMethodException", (Throwable) e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                ContextsKt$$ExternalSyntheticBUOutline0.m("VersionedParcel encountered InvocationTargetException", (Throwable) e4);
            }
        } catch (ClassNotFoundException e5) {
            ContextsKt$$ExternalSyntheticBUOutline0.m(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), (Throwable) e5);
        }
    }
}
