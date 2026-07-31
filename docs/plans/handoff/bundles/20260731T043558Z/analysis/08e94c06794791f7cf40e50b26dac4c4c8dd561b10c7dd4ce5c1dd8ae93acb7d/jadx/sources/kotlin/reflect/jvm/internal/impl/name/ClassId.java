package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.apache.commons.io.IOUtils;

/* compiled from: ClassId.kt */
/* loaded from: classes6.dex */
public final class ClassId {
    public static final Companion Companion = new Companion(null);
    private final boolean isLocal;
    private final FqName packageFqName;
    private final FqName relativeClassName;

    @JvmStatic
    public static final ClassId topLevel(FqName fqName) {
        return Companion.topLevel(fqName);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClassId)) {
            return false;
        }
        ClassId classId = (ClassId) obj;
        return Intrinsics.areEqual(this.packageFqName, classId.packageFqName) && Intrinsics.areEqual(this.relativeClassName, classId.relativeClassName) && this.isLocal == classId.isLocal;
    }

    public int hashCode() {
        return (((this.packageFqName.hashCode() * 31) + this.relativeClassName.hashCode()) * 31) + Boolean.hashCode(this.isLocal);
    }

    public ClassId(FqName packageFqName, FqName relativeClassName, boolean z) {
        Intrinsics.checkNotNullParameter(packageFqName, "packageFqName");
        Intrinsics.checkNotNullParameter(relativeClassName, "relativeClassName");
        this.packageFqName = packageFqName;
        this.relativeClassName = relativeClassName;
        this.isLocal = z;
        relativeClassName.isRoot();
    }

    public final FqName getPackageFqName() {
        return this.packageFqName;
    }

    public final FqName getRelativeClassName() {
        return this.relativeClassName;
    }

    public final boolean isLocal() {
        return this.isLocal;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ClassId(kotlin.reflect.jvm.internal.impl.name.FqName r2, kotlin.reflect.jvm.internal.impl.name.Name r3) {
        /*
            r1 = this;
            java.lang.String r0 = "packageFqName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "topLevelName"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            kotlin.reflect.jvm.internal.impl.name.FqName r3 = kotlin.reflect.jvm.internal.impl.name.FqName.topLevel(r3)
            java.lang.String r0 = "topLevel(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            r0 = 0
            r1.<init>(r2, r3, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.name.ClassId.<init>(kotlin.reflect.jvm.internal.impl.name.FqName, kotlin.reflect.jvm.internal.impl.name.Name):void");
    }

    public final Name getShortClassName() {
        Name shortName = this.relativeClassName.shortName();
        Intrinsics.checkNotNullExpressionValue(shortName, "shortName(...)");
        return shortName;
    }

    public final ClassId getOuterClassId() {
        FqName parent = this.relativeClassName.parent();
        Intrinsics.checkNotNullExpressionValue(parent, "parent(...)");
        if (parent.isRoot()) {
            return null;
        }
        return new ClassId(this.packageFqName, parent, this.isLocal);
    }

    public final boolean isNestedClass() {
        return !this.relativeClassName.parent().isRoot();
    }

    public final ClassId createNestedClassId(Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        FqName fqName = this.packageFqName;
        FqName child = this.relativeClassName.child(name);
        Intrinsics.checkNotNullExpressionValue(child, "child(...)");
        return new ClassId(fqName, child, this.isLocal);
    }

    public final FqName asSingleFqName() {
        return this.packageFqName.isRoot() ? this.relativeClassName : new FqName(this.packageFqName.asString() + '.' + this.relativeClassName.asString());
    }

    private static final String asString$escapeSlashes(FqName fqName) {
        String asString = fqName.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString(...)");
        return StringsKt.contains$default((CharSequence) asString, IOUtils.DIR_SEPARATOR_UNIX, false, 2, (Object) null) ? "`" + asString + '`' : asString;
    }

    public final String asString() {
        if (this.packageFqName.isRoot()) {
            return asString$escapeSlashes(this.relativeClassName);
        }
        StringBuilder sb = new StringBuilder();
        String asString = this.packageFqName.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "asString(...)");
        sb.append(StringsKt.replace$default(asString, '.', IOUtils.DIR_SEPARATOR_UNIX, false, 4, (Object) null));
        sb.append("/");
        sb.append(asString$escapeSlashes(this.relativeClassName));
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public String toString() {
        return this.packageFqName.isRoot() ? "/" + asString() : asString();
    }

    /* compiled from: ClassId.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ClassId topLevel(FqName topLevelFqName) {
            Intrinsics.checkNotNullParameter(topLevelFqName, "topLevelFqName");
            FqName parent = topLevelFqName.parent();
            Intrinsics.checkNotNullExpressionValue(parent, "parent(...)");
            Name shortName = topLevelFqName.shortName();
            Intrinsics.checkNotNullExpressionValue(shortName, "shortName(...)");
            return new ClassId(parent, shortName);
        }

        public static /* synthetic */ ClassId fromString$default(Companion companion, String str, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = false;
            }
            return companion.fromString(str, z);
        }

        @JvmStatic
        public final ClassId fromString(String string, boolean z) {
            String replace$default;
            String str;
            Intrinsics.checkNotNullParameter(string, "string");
            String str2 = string;
            int indexOf$default = StringsKt.indexOf$default((CharSequence) str2, '`', 0, false, 6, (Object) null);
            if (indexOf$default == -1) {
                indexOf$default = string.length();
            }
            int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) str2, "/", indexOf$default, false, 4, (Object) null);
            if (lastIndexOf$default == -1) {
                replace$default = StringsKt.replace$default(string, "`", "", false, 4, (Object) null);
                str = "";
            } else {
                String substring = string.substring(0, lastIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                String replace$default2 = StringsKt.replace$default(substring, IOUtils.DIR_SEPARATOR_UNIX, '.', false, 4, (Object) null);
                String substring2 = string.substring(lastIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
                replace$default = StringsKt.replace$default(substring2, "`", "", false, 4, (Object) null);
                str = replace$default2;
            }
            return new ClassId(new FqName(str), new FqName(replace$default), z);
        }
    }
}
