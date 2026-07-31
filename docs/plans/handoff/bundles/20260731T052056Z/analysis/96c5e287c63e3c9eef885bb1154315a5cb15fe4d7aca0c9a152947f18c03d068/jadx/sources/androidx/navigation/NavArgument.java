package androidx.navigation;

import kotlin.jvm.internal.Reflection;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavArgument {
    public final boolean isDefaultValuePresent;
    public final boolean isDefaultValueUnknown;
    public final boolean isNullable;
    public final NavType type;

    public NavArgument(NavType navType, boolean z, boolean z2) {
        if (!navType.isNullableAllowed && z) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) navType.getName().concat(" does not allow nullable values"));
            throw null;
        }
        this.type = navType;
        this.isNullable = z;
        this.isDefaultValuePresent = z2;
        this.isDefaultValueUnknown = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavArgument.class != obj.getClass()) {
            return false;
        }
        NavArgument navArgument = (NavArgument) obj;
        return this.isNullable == navArgument.isNullable && this.isDefaultValuePresent == navArgument.isDefaultValuePresent && this.type.equals(navArgument.type);
    }

    public final int hashCode() {
        return ((((this.type.hashCode() * 31) + (this.isNullable ? 1 : 0)) * 31) + (this.isDefaultValuePresent ? 1 : 0)) * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Reflection.factory.getOrCreateKotlinClass(NavArgument.class).getSimpleName());
        sb.append(" Type: " + this.type);
        sb.append(" Nullable: " + this.isNullable);
        if (this.isDefaultValuePresent) {
            sb.append(" DefaultValue: null");
        }
        return sb.toString();
    }
}
