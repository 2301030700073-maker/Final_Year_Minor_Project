package androidx.navigation;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.compose.animation.core.Animation;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import java.io.Serializable;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
    public static final IntListNavType StringArrayType;
    public static final IntListNavType StringListType;
    public static final IntNavType StringType;
    public final boolean isNullableAllowed;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class EnumType extends SerializableType {
        public final Class type;

        public EnumType(Class cls) {
            super(0, cls);
            if (cls.isEnum()) {
                this.type = cls;
            } else {
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls, " is not an Enum type.");
                throw null;
            }
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        public final String getName() {
            return this.type.getName();
        }

        @Override // androidx.navigation.NavType.SerializableType, androidx.navigation.NavType
        /* renamed from: parseValue */
        public final Enum mo755parseValue(String str) {
            Object obj;
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
            StringBuilder m21m = Animation.CC.m21m("Enum value ", str, " not found for type ");
            m21m.append(cls.getName());
            m21m.append('.');
            throw new IllegalArgumentException(m21m.toString());
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ParcelableType extends NavType {
        public final Class type;

        public ParcelableType(Class cls) {
            super(true);
            if (Parcelable.class.isAssignableFrom(cls) || Serializable.class.isAssignableFrom(cls)) {
                this.type = cls;
            } else {
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls, " does not implement Parcelable or Serializable.");
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
            return this.type.equals(((ParcelableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public final Object get(Bundle bundle, String str) {
            bundle.getClass();
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
        public final Object mo755parseValue(String str) {
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

    static {
        boolean z = false;
        IntType = new IntNavType(0, z);
        boolean z2 = true;
        IntArrayType = new IntListNavType(5, z2);
        IntListType = new IntListNavType(0, z2);
        LongType = new IntNavType(3, z);
        LongArrayType = new IntListNavType(6, z2);
        LongListType = new IntListNavType(7, z2);
        FloatType = new IntNavType(2, z);
        FloatArrayType = new IntListNavType(3, z2);
        FloatListType = new IntListNavType(4, z2);
        int i = 1;
        BoolType = new IntNavType(i, z);
        BoolArrayType = new IntListNavType(i, z2);
        BoolListType = new IntListNavType(2, z2);
        StringType = new IntNavType(4, z2);
        StringArrayType = new IntListNavType(8, z2);
        StringListType = new IntListNavType(9, z2);
    }

    public NavType(boolean z) {
        this.isNullableAllowed = z;
    }

    public abstract Object get(Bundle bundle, String str);

    public abstract String getName();

    /* renamed from: parseValue */
    public abstract Object mo755parseValue(String str);

    public Object parseValue(String str, Object obj) {
        return mo755parseValue(str);
    }

    public abstract void put(Bundle bundle, String str, Object obj);

    public String serializeAsValue(Object obj) {
        return String.valueOf(obj);
    }

    public final String toString() {
        return getName();
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class SerializableType extends NavType {
        public final Class type;

        public SerializableType(Class cls) {
            super(true);
            if (!Serializable.class.isAssignableFrom(cls)) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls, " does not implement Serializable.");
                throw null;
            }
            if (cls.isEnum()) {
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls, " is an Enum. You should use EnumType instead.");
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
            return this.type.equals(((SerializableType) obj).type);
        }

        @Override // androidx.navigation.NavType
        public final Object get(Bundle bundle, String str) {
            bundle.getClass();
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
        public Serializable mo755parseValue(String str) {
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
                TimeSource$Companion$$ExternalSyntheticLambda0.m(cls, " does not implement Serializable.");
                throw null;
            }
        }
    }
}
