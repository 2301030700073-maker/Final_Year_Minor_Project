package kotlin.reflect.jvm.internal.impl.builtins.functions;

import androidx.compose.animation.core.Animation;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'KFunction' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class FunctionClassKind {
    private static final /* synthetic */ FunctionClassKind[] $VALUES;
    public static final Companion Companion;
    public static final FunctionClassKind Function;
    public static final FunctionClassKind KFunction;
    public static final FunctionClassKind KSuspendFunction;
    public static final FunctionClassKind SuspendFunction;
    private final String classNamePrefix;
    private final boolean isReflectType;
    private final boolean isSuspendType;
    private final FqName packageFqName;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Companion {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class KindWithArity {
            public final int arity;
            public final FunctionClassKind kind;

            public KindWithArity(FunctionClassKind functionClassKind, int i) {
                this.kind = functionClassKind;
                this.arity = i;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof KindWithArity)) {
                    return false;
                }
                KindWithArity kindWithArity = (KindWithArity) obj;
                return this.kind == kindWithArity.kind && this.arity == kindWithArity.arity;
            }

            public final int hashCode() {
                return (this.kind.hashCode() * 31) + this.arity;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("KindWithArity(kind=");
                sb.append(this.kind);
                sb.append(", arity=");
                return Animation.CC.m(sb, this.arity, ')');
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x005e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind.Companion.KindWithArity parseClassName(java.lang.String r7, kotlin.reflect.jvm.internal.impl.name.FqName r8) {
            /*
                r8.getClass()
                kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind[] r0 = kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind.values()
                int r1 = r0.length
                r2 = 0
                r3 = r2
            La:
                r4 = 0
                if (r3 >= r1) goto L27
                r5 = r0[r3]
                kotlin.reflect.jvm.internal.impl.name.FqName r6 = r5.getPackageFqName()
                boolean r6 = kotlin.jvm.internal.Intrinsics.areEqual(r6, r8)
                if (r6 == 0) goto L24
                java.lang.String r6 = r5.getClassNamePrefix()
                boolean r6 = kotlin.text.StringsKt__StringsJVMKt.startsWith(r7, r6, r2)
                if (r6 == 0) goto L24
                goto L28
            L24:
                int r3 = r3 + 1
                goto La
            L27:
                r5 = r4
            L28:
                if (r5 != 0) goto L2b
                goto L68
            L2b:
                java.lang.String r8 = r5.getClassNamePrefix()
                int r8 = r8.length()
                java.lang.String r7 = r7.substring(r8)
                int r8 = r7.length()
                if (r8 != 0) goto L3f
            L3d:
                r7 = r4
                goto L5c
            L3f:
                int r8 = r7.length()
                r0 = r2
            L44:
                if (r2 >= r8) goto L58
                char r1 = r7.charAt(r2)
                int r1 = r1 + (-48)
                if (r1 < 0) goto L3d
                r3 = 10
                if (r1 >= r3) goto L3d
                int r0 = r0 * 10
                int r0 = r0 + r1
                int r2 = r2 + 1
                goto L44
            L58:
                java.lang.Integer r7 = java.lang.Integer.valueOf(r0)
            L5c:
                if (r7 == 0) goto L68
                int r7 = r7.intValue()
                kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind$Companion$KindWithArity r8 = new kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind$Companion$KindWithArity
                r8.<init>(r5, r7)
                return r8
            L68:
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind.Companion.parseClassName(java.lang.String, kotlin.reflect.jvm.internal.impl.name.FqName):kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind$Companion$KindWithArity");
        }
    }

    static {
        FunctionClassKind functionClassKind = new FunctionClassKind("Function", 0, StandardNames.BUILT_INS_PACKAGE_FQ_NAME, "Function", false, false);
        Function = functionClassKind;
        FunctionClassKind functionClassKind2 = new FunctionClassKind("SuspendFunction", 1, StandardNames.COROUTINES_PACKAGE_FQ_NAME, "SuspendFunction", true, false);
        SuspendFunction = functionClassKind2;
        FqName fqName = StandardNames.KOTLIN_REFLECT_FQ_NAME;
        FunctionClassKind functionClassKind3 = new FunctionClassKind("KFunction", 2, fqName, "KFunction", false, true);
        KFunction = functionClassKind3;
        FunctionClassKind functionClassKind4 = new FunctionClassKind("KSuspendFunction", 3, fqName, "KSuspendFunction", true, true);
        KSuspendFunction = functionClassKind4;
        $VALUES = new FunctionClassKind[]{functionClassKind, functionClassKind2, functionClassKind3, functionClassKind4};
        Companion = new Companion();
    }

    public FunctionClassKind(String str, int i, FqName fqName, String str2, boolean z, boolean z2) {
        this.packageFqName = fqName;
        this.classNamePrefix = str2;
        this.isSuspendType = z;
        this.isReflectType = z2;
    }

    public static FunctionClassKind valueOf(String str) {
        return (FunctionClassKind) Enum.valueOf(FunctionClassKind.class, str);
    }

    public static FunctionClassKind[] values() {
        return (FunctionClassKind[]) $VALUES.clone();
    }

    public final String getClassNamePrefix() {
        return this.classNamePrefix;
    }

    public final FqName getPackageFqName() {
        return this.packageFqName;
    }

    public final Name numberedClassName(int i) {
        return Name.identifier(this.classNamePrefix + i);
    }
}
