package kotlin.reflect.jvm.internal.impl.name;

import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FqName {
    public static final FqName ROOT = new FqName("");
    public final FqNameUnsafe fqName;
    public transient FqName parent;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 8:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                i2 = 2;
                break;
            case 8:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "fqName";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 8:
                objArr[0] = "name";
                break;
            case 12:
                objArr[0] = "segment";
                break;
            case IMAGE_VALUE:
                objArr[0] = "shortName";
                break;
            default:
                objArr[0] = "names";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
                objArr[1] = "toUnsafe";
                break;
            case 6:
            case 7:
                objArr[1] = "parent";
                break;
            case 8:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqName";
                break;
            case 9:
                objArr[1] = "shortName";
                break;
            case 10:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 11:
                objArr[1] = "pathSegments";
                break;
        }
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[2] = "<init>";
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                break;
            case 8:
                objArr[2] = "child";
                break;
            case 12:
                objArr[2] = "startsWith";
                break;
            case IMAGE_VALUE:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "fromSegments";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            case 10:
            case 11:
                throw new IllegalStateException(format);
            case 8:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    public FqName(String str) {
        if (str != null) {
            this.fqName = new FqNameUnsafe(str, this);
        } else {
            $$$reportNull$$$0(1);
            throw null;
        }
    }

    public static FqName topLevel(Name name) {
        if (name != null) {
            return new FqName(new FqNameUnsafe(name.asString(), ROOT.toUnsafe(), name));
        }
        $$$reportNull$$$0(13);
        throw null;
    }

    public final String asString() {
        String str = this.fqName.fqName;
        if (str != null) {
            return str;
        }
        FqNameUnsafe.$$$reportNull$$$0(4);
        throw null;
    }

    public final FqName child(Name name) {
        if (name != null) {
            return new FqName(this.fqName.child(name), this);
        }
        $$$reportNull$$$0(8);
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FqName) && this.fqName.equals(((FqName) obj).fqName);
    }

    public final int hashCode() {
        return this.fqName.fqName.hashCode();
    }

    public final boolean isRoot() {
        return this.fqName.fqName.isEmpty();
    }

    public final FqName parent() {
        FqName fqName = this.parent;
        if (fqName != null) {
            return fqName;
        }
        if (isRoot()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("root");
            return null;
        }
        FqNameUnsafe fqNameUnsafe = this.fqName;
        FqNameUnsafe fqNameUnsafe2 = fqNameUnsafe.parent;
        if (fqNameUnsafe2 == null) {
            if (fqNameUnsafe.fqName.isEmpty()) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("root");
                return null;
            }
            fqNameUnsafe.compute();
            fqNameUnsafe2 = fqNameUnsafe.parent;
            if (fqNameUnsafe2 == null) {
                FqNameUnsafe.$$$reportNull$$$0(8);
                throw null;
            }
        }
        FqName fqName2 = new FqName(fqNameUnsafe2);
        this.parent = fqName2;
        return fqName2;
    }

    public final Name shortName() {
        Name shortName = this.fqName.shortName();
        if (shortName != null) {
            return shortName;
        }
        $$$reportNull$$$0(9);
        throw null;
    }

    public final Name shortNameOrSpecial() {
        FqNameUnsafe fqNameUnsafe = this.fqName;
        if (fqNameUnsafe.fqName.isEmpty()) {
            Name name = FqNameUnsafe.ROOT_NAME;
            if (name != null) {
                return name;
            }
            FqNameUnsafe.$$$reportNull$$$0(12);
            throw null;
        }
        Name shortName = fqNameUnsafe.shortName();
        if (shortName != null) {
            return shortName;
        }
        FqNameUnsafe.$$$reportNull$$$0(13);
        throw null;
    }

    public final boolean startsWith(Name name) {
        if (name == null) {
            $$$reportNull$$$0(12);
            throw null;
        }
        String str = this.fqName.fqName;
        if (str.isEmpty()) {
            return false;
        }
        int indexOf = str.indexOf(46);
        String asString = name.asString();
        if (indexOf == -1) {
            indexOf = Math.max(str.length(), asString.length());
        }
        return str.regionMatches(0, asString, 0, indexOf);
    }

    public final String toString() {
        return this.fqName.toString();
    }

    public final FqNameUnsafe toUnsafe() {
        FqNameUnsafe fqNameUnsafe = this.fqName;
        if (fqNameUnsafe != null) {
            return fqNameUnsafe;
        }
        $$$reportNull$$$0(5);
        throw null;
    }

    public FqName(FqNameUnsafe fqNameUnsafe) {
        this.fqName = fqNameUnsafe;
    }

    public FqName(FqNameUnsafe fqNameUnsafe, FqName fqName) {
        this.fqName = fqNameUnsafe;
        this.parent = fqName;
    }
}
