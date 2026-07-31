package kotlin.reflect.jvm.internal.impl.name;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Name implements Comparable {
    public final String name;
    public final boolean special;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 1 || i == 2 || i == 3 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4) ? 2 : 3];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (i == 1) {
            objArr[1] = "asString";
        } else if (i == 2) {
            objArr[1] = "getIdentifier";
        } else if (i == 3 || i == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = "identifier";
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 3 && i != 4) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public Name(String str, boolean z) {
        if (str == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        this.name = str;
        this.special = z;
    }

    public static Name guessByFirstCharacter(String str) {
        if (str != null) {
            return str.startsWith("<") ? special(str) : identifier(str);
        }
        $$$reportNull$$$0(8);
        throw null;
    }

    public static Name identifier(String str) {
        if (str != null) {
            return new Name(str, false);
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    public static boolean isValidIdentifier(String str) {
        int i;
        if (!str.isEmpty() && !str.startsWith("<")) {
            for (0; i < str.length(); i + 1) {
                char charAt = str.charAt(i);
                i = (charAt == '.' || charAt == '/' || charAt == '\\') ? 0 : i + 1;
            }
            return true;
        }
        return false;
    }

    public static Name special(String str) {
        if (str == null) {
            $$$reportNull$$$0(7);
            throw null;
        }
        if (str.startsWith("<")) {
            return new Name(str, true);
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("special name must start with '<': ".concat(str));
        return null;
    }

    public final String asString() {
        String str = this.name;
        if (str != null) {
            return str;
        }
        $$$reportNull$$$0(1);
        throw null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.name.compareTo(((Name) obj).name);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Name)) {
            return false;
        }
        Name name = (Name) obj;
        return this.special == name.special && this.name.equals(name.name);
    }

    public final String getIdentifier() {
        if (this.special) {
            Gson$$ExternalSyntheticBUOutline0.m$1("not identifier: ", this);
            return null;
        }
        String asString = asString();
        if (asString != null) {
            return asString;
        }
        $$$reportNull$$$0(2);
        throw null;
    }

    public final int hashCode() {
        return (this.name.hashCode() * 31) + (this.special ? 1 : 0);
    }

    public final String toString() {
        return this.name;
    }
}
