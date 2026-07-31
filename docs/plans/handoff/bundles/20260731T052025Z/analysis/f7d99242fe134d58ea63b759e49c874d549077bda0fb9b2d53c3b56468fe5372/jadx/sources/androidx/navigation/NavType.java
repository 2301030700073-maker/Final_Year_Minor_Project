package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class NavType {
    public static final IntListNavType BoolArrayType;
    public static final IntListNavType BoolListType;
    public static final IntNavType BoolType;
    public static final IntListNavType FloatArrayType;
    public static final IntListNavType FloatListType;
    public static final IntNavType FloatType;
    public static final IntListNavType IntArrayType;
    public static final IntListNavType IntListType;
    public static final IntNavType IntType;
    public static final IntListNavType LongArrayType;
    public static final IntListNavType LongListType;
    public static final IntNavType LongType;
    public static final IntNavType ReferenceType;
    public static final IntListNavType StringArrayType;
    public static final IntListNavType StringListType;
    public static final IntNavType StringType;
    public final boolean isNullableAllowed;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class EnumType extends SerializableType {
        public final Class type;

        public EnumType(Class cls) {
            super(0, cls);
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public final String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        /* renamed from: parseValue */
        public final Enum mo804parseValue(String str) {
            Object obj;
            str.getClass();
            Class cls = this.type;
            Object[] enumConstants = cls.getEnumConstants();
            enumConstants.getClass();
            int length = enumConstants.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    obj = null;
                    break;
                }
                obj = enumConstants[i];
                if (StringsKt__StringsJVMKt.equals(((Enum) obj).name(), str, true)) {
                    break;
                }
                i++;
            }
            Enum r3 = (Enum) obj;
            if (r3 != null) {
                return r3;
            }
            StringBuilder m31m = CameraDevices$CC.m31m("Enum value ", str, " not found for type ");
            m31m.append(cls.getName());
            m31m.append('.');
            throw new IllegalArgumentException(m31m.toString());
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ParcelableArrayType extends NavType {
        public final Class arrayType;

        public ParcelableArrayType(Class cls) {
            super(true);
            if (!Parcelable.class.isAssignableFrom(cls)) {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " does not implement Parcelable.");
                throw null;
            }
            try {
                this.arrayType = Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((ParcelableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        public final Object get(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Parcelable[]) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String getName() {
            return this.arrayType.getName();
        }

        public final int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* renamed from: parseValue */
        public final Object mo804parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public final void put(Bundle bundle, String str, Object obj) {
            Parcelable[] parcelableArr = (Parcelable[]) obj;
            str.getClass();
            this.arrayType.cast(parcelableArr);
            bundle.putParcelableArray(str, parcelableArr);
        }

        @Override // androidx.navigation.NavType
        public final boolean valueEquals(Object obj, Object obj2) {
            return ArraysKt___ArraysKt.contentDeepEquals((Parcelable[]) obj, (Parcelable[]) obj2);
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ParcelableType extends NavType {
        public final Class type;

        public ParcelableType(Class cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " does not implement Parcelable or Serializable.");
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !ParcelableType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.type, ((ParcelableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public final Object get(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String getName() {
            return this.type.getName();
        }

        public final int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* renamed from: parseValue */
        public final Object mo804parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Parcelables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public final void put(Bundle bundle, String str, Object obj) {
            str.getClass();
            this.type.cast(obj);
            if (obj == null || (obj instanceof Parcelable)) {
                bundle.putParcelable(str, (Parcelable) obj);
            } else if (obj instanceof Serializable) {
                bundle.putSerializable(str, (Serializable) obj);
            }
        }
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class SerializableArrayType extends NavType {
        public final Class arrayType;

        public SerializableArrayType(Class cls) {
            super(true);
            if (!Serializable.class.isAssignableFrom(cls)) {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " does not implement Serializable.");
                throw null;
            }
            try {
                this.arrayType = Class.forName("[L" + cls.getName() + ';');
            } catch (ClassNotFoundException e) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m((Throwable) e);
                throw null;
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !SerializableArrayType.class.equals(obj.getClass())) {
                return false;
            }
            return Intrinsics.areEqual(this.arrayType, ((SerializableArrayType) obj).arrayType);
        }

        @Override // androidx.navigation.NavType
        public final Object get(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Serializable[]) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public final String getName() {
            return this.arrayType.getName();
        }

        public final int hashCode() {
            return this.arrayType.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* renamed from: parseValue */
        public final Object mo804parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Arrays don't support default values.");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.io.Serializable, java.io.Serializable[], java.lang.Object] */
        @Override // androidx.navigation.NavType
        public final void put(Bundle bundle, String str, Object obj) {
            ?? r3 = (Serializable[]) obj;
            str.getClass();
            this.arrayType.cast(r3);
            bundle.putSerializable(str, r3);
        }

        @Override // androidx.navigation.NavType
        public final boolean valueEquals(Object obj, Object obj2) {
            return ArraysKt___ArraysKt.contentDeepEquals((Serializable[]) obj, (Serializable[]) obj2);
        }
    }

    static {
        boolean z = false;
        IntType = new IntNavType(z, 0);
        ReferenceType = new IntNavType(z, 4);
        boolean z2 = true;
        IntArrayType = new IntListNavType(z2, 5);
        IntListType = new IntListNavType(z2, 0);
        LongType = new IntNavType(z, 3);
        LongArrayType = new IntListNavType(z2, 6);
        LongListType = new IntListNavType(z2, 7);
        FloatType = new IntNavType(z, 2);
        FloatArrayType = new IntListNavType(z2, 3);
        FloatListType = new IntListNavType(z2, 4);
        int i = 1;
        BoolType = new IntNavType(z, i);
        BoolArrayType = new IntListNavType(z2, i);
        BoolListType = new IntListNavType(z2, 2);
        StringType = new IntNavType(z2, 5);
        StringArrayType = new IntListNavType(z2, 8);
        StringListType = new IntListNavType(z2, 9);
    }

    public NavType(boolean z) {
        this.isNullableAllowed = z;
    }

    public abstract Object get(String str, Bundle bundle);

    public abstract String getName();

    public Object parseValue(Object obj, String str) {
        return mo804parseValue(str);
    }

    /* renamed from: parseValue */
    public abstract Object mo804parseValue(String str);

    public abstract void put(Bundle bundle, String str, Object obj);

    public String serializeAsValue(Object obj) {
        return String.valueOf(obj);
    }

    public final String toString() {
        return getName();
    }

    public boolean valueEquals(Object obj, Object obj2) {
        return Intrinsics.areEqual(obj, obj2);
    }

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public class SerializableType extends NavType {
        public final Class type;

        public SerializableType(Class cls) {
            super(true);
            if (!Serializable.class.isAssignableFrom(cls)) {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " does not implement Serializable.");
                throw null;
            }
            if (cls.isEnum()) {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " is an Enum. You should use EnumType instead.");
                throw null;
            }
            this.type = cls;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SerializableType)) {
                return false;
            }
            return Intrinsics.areEqual(this.type, ((SerializableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public final Object get(String str, Bundle bundle) {
            bundle.getClass();
            str.getClass();
            return (Serializable) bundle.get(str);
        }

        @Override // androidx.navigation.NavType
        public String getName() {
            return this.type.getName();
        }

        public final int hashCode() {
            return this.type.hashCode();
        }

        @Override // androidx.navigation.NavType
        /* renamed from: parseValue */
        public Serializable mo804parseValue(String str) {
            str.getClass();
            throw new UnsupportedOperationException("Serializables don't support default values.");
        }

        @Override // androidx.navigation.NavType
        public final void put(Bundle bundle, String str, Object obj) {
            Serializable serializable = (Serializable) obj;
            str.getClass();
            serializable.getClass();
            this.type.cast(serializable);
            bundle.putSerializable(str, serializable);
        }

        public SerializableType(int i, Class cls) {
            super(false);
            if (Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                DBUtil$$ExternalSyntheticBUOutline0.m((Object) cls, (Object) " does not implement Serializable.");
                throw null;
            }
        }
    }
}
