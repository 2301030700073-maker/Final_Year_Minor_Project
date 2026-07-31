package kotlin.reflect.jvm.internal.impl.name;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.jvm.functions.Function1;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FqNameUnsafe {
    public static final Name ROOT_NAME = Name.special("<root>");
    public static final Pattern SPLIT_BY_DOTS = Pattern.compile("\\.");
    public static final AnonymousClass1 STRING_TO_NAME = new AnonymousClass1();
    public final String fqName;
    public transient FqNameUnsafe parent;
    public transient FqName safe;
    public transient Name shortName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe$1, reason: invalid class name */
    public final class AnonymousClass1 implements Function1 {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return Name.guessByFirstCharacter((String) obj);
        }
    }

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                i2 = 2;
                break;
            case 9:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        if (i != 1) {
            switch (i) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case IMAGE_VALUE:
                case LINEAR_PROGRESS_INDICATOR_VALUE:
                case VERTICAL_GRID_ITEM_VALUE:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case LAZY_VERTICAL_GRID_VALUE:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case IMAGE_VALUE:
                objArr[1] = "shortNameOrSpecial";
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                objArr[1] = "pathSegments";
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                objArr[1] = "toString";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case IMAGE_VALUE:
            case LINEAR_PROGRESS_INDICATOR_VALUE:
            case VERTICAL_GRID_ITEM_VALUE:
                throw new IllegalStateException(format);
            case 9:
            case 15:
            case LAZY_VERTICAL_GRID_VALUE:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    public FqNameUnsafe(String str, FqNameUnsafe fqNameUnsafe, Name name) {
        if (str == null) {
            $$$reportNull$$$0(3);
            throw null;
        }
        this.fqName = str;
        this.parent = fqNameUnsafe;
        this.shortName = name;
    }

    public final FqNameUnsafe child(Name name) {
        String str;
        if (name == null) {
            $$$reportNull$$$0(9);
            throw null;
        }
        String str2 = this.fqName;
        if (str2.isEmpty()) {
            str = name.asString();
        } else {
            str = str2 + "." + name.asString();
        }
        return new FqNameUnsafe(str, this, name);
    }

    public final void compute() {
        String str = this.fqName;
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            this.shortName = Name.guessByFirstCharacter(str.substring(lastIndexOf + 1));
            this.parent = new FqNameUnsafe(str.substring(0, lastIndexOf));
        } else {
            this.shortName = Name.guessByFirstCharacter(str);
            this.parent = FqName.ROOT.toUnsafe();
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FqNameUnsafe) && this.fqName.equals(((FqNameUnsafe) obj).fqName);
    }

    public final int hashCode() {
        return this.fqName.hashCode();
    }

    public final boolean isSafe() {
        if (this.safe != null) {
            return true;
        }
        String str = this.fqName;
        if (str != null) {
            return str.indexOf(60) < 0;
        }
        $$$reportNull$$$0(4);
        throw null;
    }

    public final List pathSegments() {
        List list;
        String str = this.fqName;
        if (str.isEmpty()) {
            list = Collections.EMPTY_LIST;
        } else {
            String[] split = SPLIT_BY_DOTS.split(str);
            split.getClass();
            STRING_TO_NAME.getClass();
            ArrayList arrayList = new ArrayList(split.length);
            for (String str2 : split) {
                arrayList.add(Name.guessByFirstCharacter(str2));
            }
            list = arrayList;
        }
        if (list != null) {
            return list;
        }
        $$$reportNull$$$0(14);
        throw null;
    }

    public final Name shortName() {
        Name name = this.shortName;
        if (name != null) {
            if (name != null) {
                return name;
            }
            $$$reportNull$$$0(10);
            throw null;
        }
        if (this.fqName.isEmpty()) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("root");
            return null;
        }
        compute();
        Name name2 = this.shortName;
        if (name2 != null) {
            return name2;
        }
        $$$reportNull$$$0(11);
        throw null;
    }

    public final FqName toSafe() {
        FqName fqName = this.safe;
        if (fqName != null) {
            return fqName;
        }
        FqName fqName2 = new FqName(this);
        this.safe = fqName2;
        return fqName2;
    }

    public final String toString() {
        String str = this.fqName;
        if (str.isEmpty()) {
            str = ROOT_NAME.asString();
        }
        if (str != null) {
            return str;
        }
        $$$reportNull$$$0(17);
        throw null;
    }

    public FqNameUnsafe(String str) {
        this.fqName = str;
    }

    public FqNameUnsafe(String str, FqName fqName) {
        if (str != null) {
            this.fqName = str;
            this.safe = fqName;
        } else {
            $$$reportNull$$$0(0);
            throw null;
        }
    }
}
