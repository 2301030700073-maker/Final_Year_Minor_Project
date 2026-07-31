package androidx.navigation;

import android.os.Parcelable;
import androidx.navigation.NavType;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.io.Serializable;
import kotlin.jvm.internal.Reflection;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavArgument {
    public final Object defaultValue;
    public final boolean isDefaultValuePresent;
    public final boolean isDefaultValueUnknown;
    public final boolean isNullable;
    public final NavType type;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class Builder {
        public Object defaultValue;
        public boolean defaultValuePresent;
        public boolean isNullable;
        public NavType type;
        public boolean unknownDefaultValuePresent;

        public final NavArgument build() {
            NavType navType = this.type;
            if (navType == null) {
                Object obj = this.defaultValue;
                NavType navType2 = obj instanceof Integer ? NavType.IntType : obj instanceof int[] ? NavType.IntArrayType : obj instanceof Long ? NavType.LongType : obj instanceof long[] ? NavType.LongArrayType : obj instanceof Float ? NavType.FloatType : obj instanceof float[] ? NavType.FloatArrayType : obj instanceof Boolean ? NavType.BoolType : obj instanceof boolean[] ? NavType.BoolArrayType : ((obj instanceof String) || obj == null) ? NavType.StringType : null;
                if (navType2 == null) {
                    if ((obj instanceof Object[]) && (((Object[]) obj) instanceof String[])) {
                        navType = NavType.StringArrayType;
                    } else {
                        obj.getClass();
                        if (obj.getClass().isArray()) {
                            Class<?> componentType = obj.getClass().getComponentType();
                            componentType.getClass();
                            if (Parcelable.class.isAssignableFrom(componentType)) {
                                Class<?> componentType2 = obj.getClass().getComponentType();
                                componentType2.getClass();
                                navType2 = new NavType.ParcelableArrayType(componentType2);
                            }
                        }
                        if (obj.getClass().isArray()) {
                            Class<?> componentType3 = obj.getClass().getComponentType();
                            componentType3.getClass();
                            if (Serializable.class.isAssignableFrom(componentType3)) {
                                Class<?> componentType4 = obj.getClass().getComponentType();
                                componentType4.getClass();
                                navType2 = new NavType.SerializableArrayType(componentType4);
                            }
                        }
                        if (obj instanceof Parcelable) {
                            navType2 = new NavType.ParcelableType(obj.getClass());
                        } else if (obj instanceof Enum) {
                            navType2 = new NavType.EnumType(obj.getClass());
                        } else {
                            if (!(obj instanceof Serializable)) {
                                Regex$$ExternalSyntheticBUOutline0.m$1(obj.getClass().getName(), " is not supported for navigation arguments.", "Object of type ");
                                return null;
                            }
                            navType2 = new NavType.SerializableType(obj.getClass());
                        }
                    }
                }
                navType = navType2;
            }
            return new NavArgument(navType, this.isNullable, this.defaultValue, this.defaultValuePresent, this.unknownDefaultValuePresent);
        }
    }

    public NavArgument(NavType navType, boolean z, Object obj, boolean z2, boolean z3) {
        if (!navType.isNullableAllowed && z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2((Object) navType.getName().concat(" does not allow nullable values"));
            throw null;
        }
        if (!z && z2 && obj == null) {
            DBUtil$$ExternalSyntheticBUOutline0.m(navType.getName(), " has null value but is not nullable.", "Argument with type ");
            throw null;
        }
        this.type = navType;
        this.isNullable = z;
        this.defaultValue = obj;
        this.isDefaultValuePresent = z2 || z3;
        this.isDefaultValueUnknown = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavArgument.class != obj.getClass()) {
            return false;
        }
        NavArgument navArgument = (NavArgument) obj;
        if (this.isNullable != navArgument.isNullable || this.isDefaultValuePresent != navArgument.isDefaultValuePresent || !this.type.equals(navArgument.type)) {
            return false;
        }
        Object obj2 = navArgument.defaultValue;
        Object obj3 = this.defaultValue;
        return obj3 != null ? obj3.equals(obj2) : obj2 == null;
    }

    public final int hashCode() {
        int hashCode = ((((this.type.hashCode() * 31) + (this.isNullable ? 1 : 0)) * 31) + (this.isDefaultValuePresent ? 1 : 0)) * 31;
        Object obj = this.defaultValue;
        return hashCode + (obj != null ? obj.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.getOrCreateKotlinClass(NavArgument.class).getSimpleName());
        sb.append(" Type: " + this.type);
        sb.append(" Nullable: " + this.isNullable);
        if (this.isDefaultValuePresent) {
            sb.append(" DefaultValue: " + this.defaultValue);
        }
        return sb.toString();
    }
}
