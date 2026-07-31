package kotlin.reflect.jvm.internal.impl.resolve;

import androidx.compose.runtime.Latch$await$2$2;
import androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.caverock.androidsvg.CSSParser;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ServiceLoader;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertySetterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.types.FlexibleType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander;
import kotlin.reflect.jvm.internal.impl.types.TypeCheckerState;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypePreparator$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class OverridingUtil {
    public static final OverridingUtil DEFAULT;
    public static final AnonymousClass1 DEFAULT_TYPE_CONSTRUCTOR_EQUALITY;
    public static final List EXTERNAL_CONDITIONS = CollectionsKt.toList(ServiceLoader.load(ExternalOverridabilityCondition.class, ExternalOverridabilityCondition.class.getClassLoader()));
    public final KotlinTypeChecker.TypeConstructorEquality equalityAxioms;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$1, reason: invalid class name */
    public final class AnonymousClass1 implements KotlinTypeChecker.TypeConstructorEquality {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public static SourceElement singleSource(CallableDescriptor callableDescriptor) {
            while (callableDescriptor instanceof CallableMemberDescriptor) {
                CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) callableDescriptor;
                if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                    break;
                }
                Collection overriddenDescriptors = callableMemberDescriptor.getOverriddenDescriptors();
                overriddenDescriptors.getClass();
                callableDescriptor = (CallableMemberDescriptor) CollectionsKt.singleOrNull(overriddenDescriptors);
                if (callableDescriptor == null) {
                    return null;
                }
            }
            return callableDescriptor.getSource();
        }

        public boolean areEquivalent(DeclarationDescriptor declarationDescriptor, DeclarationDescriptor declarationDescriptor2, boolean z) {
            if ((declarationDescriptor instanceof ModuleAwareClassDescriptor) && (declarationDescriptor2 instanceof ModuleAwareClassDescriptor)) {
                return Intrinsics.areEqual(((ModuleAwareClassDescriptor) declarationDescriptor).getTypeConstructor(), ((ModuleAwareClassDescriptor) declarationDescriptor2).getTypeConstructor());
            }
            if ((declarationDescriptor instanceof TypeParameterDescriptor) && (declarationDescriptor2 instanceof TypeParameterDescriptor)) {
                return areTypeParametersEquivalent((TypeParameterDescriptor) declarationDescriptor, (TypeParameterDescriptor) declarationDescriptor2, z, DescriptorEquivalenceForOverrides$areTypeParametersEquivalent$1.INSTANCE);
            }
            if (!(declarationDescriptor instanceof CallableDescriptor) || !(declarationDescriptor2 instanceof CallableDescriptor)) {
                return ((declarationDescriptor instanceof PackageFragmentDescriptor) && (declarationDescriptor2 instanceof PackageFragmentDescriptor)) ? Intrinsics.areEqual(((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) declarationDescriptor)).fqName, ((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) declarationDescriptor2)).fqName) : Intrinsics.areEqual(declarationDescriptor, declarationDescriptor2);
            }
            CallableDescriptor callableDescriptor = (CallableDescriptor) declarationDescriptor;
            CallableDescriptor callableDescriptor2 = (CallableDescriptor) declarationDescriptor2;
            if (!callableDescriptor.equals(callableDescriptor2)) {
                if (Intrinsics.areEqual(callableDescriptor.getName(), callableDescriptor2.getName()) && ((!(callableDescriptor instanceof MemberDescriptor) || !(callableDescriptor2 instanceof MemberDescriptor) || ((MemberDescriptor) callableDescriptor).isExpect() == ((MemberDescriptor) callableDescriptor2).isExpect()) && ((!Intrinsics.areEqual(callableDescriptor.getContainingDeclaration(), callableDescriptor2.getContainingDeclaration()) || (z && Intrinsics.areEqual(singleSource(callableDescriptor), singleSource(callableDescriptor2)))) && !DescriptorUtils.isLocal(callableDescriptor) && !DescriptorUtils.isLocal(callableDescriptor2)))) {
                    DeclarationDescriptor containingDeclaration = callableDescriptor.getContainingDeclaration();
                    DeclarationDescriptor containingDeclaration2 = callableDescriptor2.getContainingDeclaration();
                    if (((containingDeclaration instanceof CallableMemberDescriptor) || (containingDeclaration2 instanceof CallableMemberDescriptor)) ? false : areEquivalent(containingDeclaration, containingDeclaration2, z)) {
                        OverridingUtil overridingUtil = new OverridingUtil(new CSSParser(callableDescriptor, callableDescriptor2, z));
                        OverrideCompatibilityInfo.Result result = overridingUtil.isOverridableBy(callableDescriptor, callableDescriptor2, null, true).getResult();
                        OverrideCompatibilityInfo.Result result2 = OverrideCompatibilityInfo.Result.OVERRIDABLE;
                        if (result != result2 || overridingUtil.isOverridableBy(callableDescriptor2, callableDescriptor, null, true).getResult() != result2) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public boolean areTypeParametersEquivalent(TypeParameterDescriptor typeParameterDescriptor, TypeParameterDescriptor typeParameterDescriptor2, boolean z, Function2 function2) {
            if (typeParameterDescriptor.equals(typeParameterDescriptor2)) {
                return true;
            }
            if (Intrinsics.areEqual(typeParameterDescriptor.getContainingDeclaration(), typeParameterDescriptor2.getContainingDeclaration())) {
                return false;
            }
            DeclarationDescriptor containingDeclaration = typeParameterDescriptor.getContainingDeclaration();
            DeclarationDescriptor containingDeclaration2 = typeParameterDescriptor2.getContainingDeclaration();
            return (((containingDeclaration instanceof CallableMemberDescriptor) || (containingDeclaration2 instanceof CallableMemberDescriptor)) ? ((Boolean) function2.invoke(containingDeclaration, containingDeclaration2)).booleanValue() : areEquivalent(containingDeclaration, containingDeclaration2, z)) && typeParameterDescriptor.getIndex() == typeParameterDescriptor2.getIndex();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeChecker.TypeConstructorEquality
        public boolean equals(TypeConstructor typeConstructor, TypeConstructor typeConstructor2) {
            return typeConstructor.equals(typeConstructor2);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$4, reason: invalid class name */
    public final class AnonymousClass4 implements Function1 {
        public final /* synthetic */ int $r8$classId;

        public /* synthetic */ AnonymousClass4(int i) {
            this.$r8$classId = i;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            switch (this.$r8$classId) {
            }
            return (CallableMemberDescriptor) obj;
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$8, reason: invalid class name */
    public abstract /* synthetic */ class AnonymousClass8 {
        public static final /* synthetic */ int[] $SwitchMap$org$jetbrains$kotlin$descriptors$Modality;
        public static final /* synthetic */ int[] $SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result;
        public static final /* synthetic */ int[] $SwitchMap$org$jetbrains$kotlin$resolve$OverridingUtil$OverrideCompatibilityInfo$Result;

        static {
            int[] iArr = new int[Modality.values().length];
            $SwitchMap$org$jetbrains$kotlin$descriptors$Modality = iArr;
            try {
                iArr[Modality.FINAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$descriptors$Modality[Modality.SEALED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$descriptors$Modality[Modality.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$descriptors$Modality[Modality.ABSTRACT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OverrideCompatibilityInfo.Result.values().length];
            $SwitchMap$org$jetbrains$kotlin$resolve$OverridingUtil$OverrideCompatibilityInfo$Result = iArr2;
            try {
                iArr2[OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$resolve$OverridingUtil$OverrideCompatibilityInfo$Result[OverrideCompatibilityInfo.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$resolve$OverridingUtil$OverrideCompatibilityInfo$Result[OverrideCompatibilityInfo.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[ExternalOverridabilityCondition.Result.values().length];
            $SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result = iArr3;
            try {
                iArr3[ExternalOverridabilityCondition.Result.OVERRIDABLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result[ExternalOverridabilityCondition.Result.CONFLICT.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result[ExternalOverridabilityCondition.Result.INCOMPATIBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result[ExternalOverridabilityCondition.Result.UNKNOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class OverrideCompatibilityInfo {
        public static final OverrideCompatibilityInfo SUCCESS = new OverrideCompatibilityInfo(Result.OVERRIDABLE, "SUCCESS");
        public final Result overridable;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Result {
            private static final /* synthetic */ Result[] $VALUES;
            public static final Result CONFLICT;
            public static final Result INCOMPATIBLE;
            public static final Result OVERRIDABLE;

            static {
                Result result = new Result("OVERRIDABLE", 0);
                OVERRIDABLE = result;
                Result result2 = new Result("INCOMPATIBLE", 1);
                INCOMPATIBLE = result2;
                Result result3 = new Result("CONFLICT", 2);
                CONFLICT = result3;
                $VALUES = new Result[]{result, result2, result3};
            }

            public static Result valueOf(String str) {
                return (Result) Enum.valueOf(Result.class, str);
            }

            public static Result[] values() {
                return (Result[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x0038  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0049  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x003b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0040  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0045  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static /* synthetic */ void $$$reportNull$$$0(int r10) {
            /*
                r0 = 4
                r1 = 3
                r2 = 2
                r3 = 1
                if (r10 == r3) goto Lf
                if (r10 == r2) goto Lf
                if (r10 == r1) goto Lf
                if (r10 == r0) goto Lf
                java.lang.String r4 = "@NotNull method %s.%s must not return null"
                goto L11
            Lf:
                java.lang.String r4 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
            L11:
                if (r10 == r3) goto L1b
                if (r10 == r2) goto L1b
                if (r10 == r1) goto L1b
                if (r10 == r0) goto L1b
                r5 = r2
                goto L1c
            L1b:
                r5 = r1
            L1c:
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "success"
                java.lang.String r7 = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo"
                r8 = 0
                if (r10 == r3) goto L31
                if (r10 == r2) goto L31
                if (r10 == r1) goto L2e
                if (r10 == r0) goto L31
                r5[r8] = r7
                goto L35
            L2e:
                r5[r8] = r6
                goto L35
            L31:
                java.lang.String r9 = "debugMessage"
                r5[r8] = r9
            L35:
                switch(r10) {
                    case 1: goto L45;
                    case 2: goto L45;
                    case 3: goto L45;
                    case 4: goto L45;
                    case 5: goto L40;
                    case 6: goto L3b;
                    default: goto L38;
                }
            L38:
                r5[r3] = r6
                goto L47
            L3b:
                java.lang.String r6 = "getDebugMessage"
                r5[r3] = r6
                goto L47
            L40:
                java.lang.String r6 = "getResult"
                r5[r3] = r6
                goto L47
            L45:
                r5[r3] = r7
            L47:
                if (r10 == r3) goto L5a
                if (r10 == r2) goto L55
                if (r10 == r1) goto L50
                if (r10 == r0) goto L50
                goto L5e
            L50:
                java.lang.String r6 = "<init>"
                r5[r2] = r6
                goto L5e
            L55:
                java.lang.String r6 = "conflict"
                r5[r2] = r6
                goto L5e
            L5a:
                java.lang.String r6 = "incompatible"
                r5[r2] = r6
            L5e:
                java.lang.String r4 = java.lang.String.format(r4, r5)
                if (r10 == r3) goto L70
                if (r10 == r2) goto L70
                if (r10 == r1) goto L70
                if (r10 == r0) goto L70
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                r10.<init>(r4)
                goto L75
            L70:
                java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
                r10.<init>(r4)
            L75:
                throw r10
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.OverrideCompatibilityInfo.$$$reportNull$$$0(int):void");
        }

        public OverrideCompatibilityInfo(Result result, String str) {
            if (result != null) {
                this.overridable = result;
            } else {
                $$$reportNull$$$0(3);
                throw null;
            }
        }

        public static OverrideCompatibilityInfo conflict(String str) {
            return new OverrideCompatibilityInfo(Result.CONFLICT, str);
        }

        public static OverrideCompatibilityInfo incompatible(String str) {
            return new OverrideCompatibilityInfo(Result.INCOMPATIBLE, str);
        }

        public final Result getResult() {
            Result result = this.overridable;
            if (result != null) {
                return result;
            }
            $$$reportNull$$$0(5);
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0058 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0035 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0175 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x022e  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x023b  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0257 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x026a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void $$$reportNull$$$0(int r25) {
        /*
            Method dump skipped, instructions count: 1324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.$$$reportNull$$$0(int):void");
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        DEFAULT_TYPE_CONSTRUCTOR_EQUALITY = anonymousClass1;
        DEFAULT = new OverridingUtil(anonymousClass1);
    }

    public OverridingUtil(KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality) {
        if (typeConstructorEquality != null) {
            this.equalityAxioms = typeConstructorEquality;
        } else {
            $$$reportNull$$$0(5);
            throw null;
        }
    }

    public static boolean areTypesEquivalent(KotlinType kotlinType, KotlinType kotlinType2, TypeCheckerState typeCheckerState) {
        if (kotlinType == null) {
            $$$reportNull$$$0(46);
            throw null;
        }
        if (kotlinType2 == null) {
            $$$reportNull$$$0(47);
            throw null;
        }
        if (KotlinTypeKt.isError(kotlinType) && KotlinTypeKt.isError(kotlinType2)) {
            return true;
        }
        return TypeAliasExpander.equalTypes(typeCheckerState, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    public static void collectOverriddenDeclarations(CallableMemberDescriptor callableMemberDescriptor, LinkedHashSet linkedHashSet) {
        if (callableMemberDescriptor == null) {
            $$$reportNull$$$0(17);
            throw null;
        }
        CallableMemberDescriptor.Kind kind = callableMemberDescriptor.getKind();
        kind.getClass();
        if (kind != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            linkedHashSet.add(callableMemberDescriptor);
        } else {
            if (callableMemberDescriptor.getOverriddenDescriptors().isEmpty()) {
                Gson$$ExternalSyntheticBUOutline0.m$1("No overridden descriptors found for (fake override) ", callableMemberDescriptor);
                return;
            }
            Iterator it = callableMemberDescriptor.getOverriddenDescriptors().iterator();
            while (it.hasNext()) {
                collectOverriddenDeclarations((CallableMemberDescriptor) it.next(), linkedHashSet);
            }
        }
    }

    public static ArrayList compiledValueParameters(CallableDescriptor callableDescriptor) {
        ReceiverParameterDescriptorImpl extensionReceiverParameter = callableDescriptor.getExtensionReceiverParameter();
        ArrayList arrayList = new ArrayList();
        if (extensionReceiverParameter != null) {
            arrayList.add(extensionReceiverParameter.getType());
        }
        Iterator it = callableDescriptor.getValueParameters().iterator();
        while (it.hasNext()) {
            arrayList.add(((ValueParameterDescriptorImpl) it.next()).getType());
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        if ((kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.findInvisibleMember(kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities.ALWAYS_SUITABLE_RECEIVER, r7, r12) == null) != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void createAndBindFakeOverride(java.util.Collection r11, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor r12, kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory r13) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.createAndBindFakeOverride(java.util.Collection, kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory):void");
    }

    public static ArrayList extractMembersOverridableInBothWays(Object obj, LinkedList linkedList, Function1 function1, Function1 function12) {
        if (obj == null) {
            $$$reportNull$$$0(99);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(obj);
        CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(obj);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            CallableDescriptor callableDescriptor2 = (CallableDescriptor) function1.invoke(next);
            if (obj == next) {
                it.remove();
            } else {
                OverrideCompatibilityInfo.Result bothWaysOverridability = getBothWaysOverridability(callableDescriptor, callableDescriptor2);
                if (bothWaysOverridability == OverrideCompatibilityInfo.Result.OVERRIDABLE) {
                    arrayList.add(next);
                    it.remove();
                } else if (bothWaysOverridability == OverrideCompatibilityInfo.Result.CONFLICT) {
                    function12.invoke(next);
                    it.remove();
                }
            }
        }
        return arrayList;
    }

    public static OverrideCompatibilityInfo getBasicOverridabilityProblem(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        boolean z;
        if (callableDescriptor == null) {
            $$$reportNull$$$0(40);
            throw null;
        }
        if (callableDescriptor2 == null) {
            $$$reportNull$$$0(41);
            throw null;
        }
        boolean z2 = callableDescriptor instanceof FunctionDescriptor;
        if ((z2 && !(callableDescriptor2 instanceof FunctionDescriptor)) || (((z = callableDescriptor instanceof PropertyDescriptor)) && !(callableDescriptor2 instanceof PropertyDescriptor))) {
            return OverrideCompatibilityInfo.incompatible("Member kind mismatch");
        }
        if (!z2 && !z) {
            Gson$$ExternalSyntheticBUOutline0.m("This type of CallableDescriptor cannot be checked for overridability: ", callableDescriptor);
            return null;
        }
        if (!callableDescriptor.getName().equals(callableDescriptor2.getName())) {
            return OverrideCompatibilityInfo.incompatible("Name mismatch");
        }
        OverrideCompatibilityInfo incompatible = (callableDescriptor.getExtensionReceiverParameter() == null) != (callableDescriptor2.getExtensionReceiverParameter() == null) ? OverrideCompatibilityInfo.incompatible("Receiver presence mismatch") : callableDescriptor.getValueParameters().size() != callableDescriptor2.getValueParameters().size() ? OverrideCompatibilityInfo.incompatible("Value parameter number mismatch") : null;
        if (incompatible != null) {
            return incompatible;
        }
        return null;
    }

    public static OverrideCompatibilityInfo.Result getBothWaysOverridability(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        OverridingUtil overridingUtil = DEFAULT;
        OverrideCompatibilityInfo.Result result = overridingUtil.isOverridableBy(callableDescriptor2, callableDescriptor, null).getResult();
        OverrideCompatibilityInfo.Result result2 = overridingUtil.isOverridableBy(callableDescriptor, callableDescriptor2, null, false).getResult();
        OverrideCompatibilityInfo.Result result3 = OverrideCompatibilityInfo.Result.OVERRIDABLE;
        if (result == result3 && result2 == result3) {
            return result3;
        }
        OverrideCompatibilityInfo.Result result4 = OverrideCompatibilityInfo.Result.CONFLICT;
        return (result == result4 || result2 == result4) ? result4 : OverrideCompatibilityInfo.Result.INCOMPATIBLE;
    }

    public static boolean isMoreSpecific(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            $$$reportNull$$$0(67);
            throw null;
        }
        if (callableDescriptor2 == null) {
            $$$reportNull$$$0(68);
            throw null;
        }
        KotlinType returnType = callableDescriptor.getReturnType();
        KotlinType returnType2 = callableDescriptor2.getReturnType();
        if (isVisibilityMoreSpecific(callableDescriptor, callableDescriptor2)) {
            TypeCheckerState createTypeCheckerState = DEFAULT.createTypeCheckerState(callableDescriptor.getTypeParameters(), callableDescriptor2.getTypeParameters());
            if (callableDescriptor instanceof FunctionDescriptor) {
                return isReturnTypeMoreSpecific(callableDescriptor, returnType, callableDescriptor2, returnType2, createTypeCheckerState);
            }
            if (!(callableDescriptor instanceof PropertyDescriptor)) {
                ContextsKt$$ExternalSyntheticBUOutline0.m$2("Unexpected callable: ", callableDescriptor.getClass());
                return false;
            }
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) callableDescriptor;
            PropertyDescriptor propertyDescriptor2 = (PropertyDescriptor) callableDescriptor2;
            PropertySetterDescriptorImpl setter = propertyDescriptor.getSetter();
            PropertySetterDescriptorImpl setter2 = propertyDescriptor2.getSetter();
            if ((setter == null || setter2 == null) ? true : isVisibilityMoreSpecific(setter, setter2)) {
                if (propertyDescriptor.isVar() && propertyDescriptor2.isVar()) {
                    return TypeAliasExpander.equalTypes(createTypeCheckerState, returnType.unwrap(), returnType2.unwrap());
                }
                if ((propertyDescriptor.isVar() || !propertyDescriptor2.isVar()) && isReturnTypeMoreSpecific(callableDescriptor, returnType, callableDescriptor2, returnType2, createTypeCheckerState)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isReturnTypeMoreSpecific(CallableDescriptor callableDescriptor, KotlinType kotlinType, CallableDescriptor callableDescriptor2, KotlinType kotlinType2, TypeCheckerState typeCheckerState) {
        if (callableDescriptor == null) {
            $$$reportNull$$$0(73);
            throw null;
        }
        if (kotlinType == null) {
            $$$reportNull$$$0(74);
            throw null;
        }
        if (callableDescriptor2 == null) {
            $$$reportNull$$$0(75);
            throw null;
        }
        if (kotlinType2 == null) {
            $$$reportNull$$$0(76);
            throw null;
        }
        return TypeAliasExpander.isSubtypeOf$default(TypeAliasExpander.INSTANCE, typeCheckerState, kotlinType.unwrap(), kotlinType2.unwrap());
    }

    public static boolean isVisibilityMoreSpecific(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        Integer compare = DescriptorVisibilities.compare(callableDescriptor.getVisibility(), callableDescriptor2.getVisibility());
        return compare == null || compare.intValue() >= 0;
    }

    public static boolean overrides(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2) {
        if (callableDescriptor == null) {
            $$$reportNull$$$0(13);
            throw null;
        }
        if (callableDescriptor2 == null) {
            $$$reportNull$$$0(14);
            throw null;
        }
        boolean equals = callableDescriptor.equals(callableDescriptor2);
        AnonymousClass1 anonymousClass1 = AnonymousClass1.INSTANCE;
        if (!equals && anonymousClass1.areEquivalent(callableDescriptor.getOriginal(), callableDescriptor2.getOriginal(), false)) {
            return true;
        }
        CallableDescriptor original = callableDescriptor2.getOriginal();
        int i = DescriptorUtils.$r8$clinit;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        DescriptorUtils.collectAllOverriddenDescriptors(callableDescriptor.getOriginal(), linkedHashSet);
        Iterator it = linkedHashSet.iterator();
        while (it.hasNext()) {
            if (anonymousClass1.areEquivalent(original, (CallableDescriptor) it.next(), false)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00cc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void resolveUnknownVisibilityForMember(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor r6, kotlin.jvm.functions.Function1 r7) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.resolveUnknownVisibilityForMember(kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.jvm.functions.Function1):void");
    }

    public static Object selectMostSpecificMember(Collection collection, Function1 function1) {
        Object obj;
        if (collection.size() == 1) {
            Object first = CollectionsKt.first(collection);
            if (first != null) {
                return first;
            }
            $$$reportNull$$$0(80);
            throw null;
        }
        ArrayList arrayList = new ArrayList(2);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList2.add(function1.invoke(it.next()));
        }
        Object first2 = CollectionsKt.first(collection);
        CallableDescriptor callableDescriptor = (CallableDescriptor) function1.invoke(first2);
        for (Object obj2 : collection) {
            CallableDescriptor callableDescriptor2 = (CallableDescriptor) function1.invoke(obj2);
            if (callableDescriptor2 == null) {
                $$$reportNull$$$0(71);
                throw null;
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    arrayList.add(obj2);
                    break;
                }
                if (!isMoreSpecific(callableDescriptor2, (CallableDescriptor) it2.next())) {
                    break;
                }
            }
            if (isMoreSpecific(callableDescriptor2, callableDescriptor) && !isMoreSpecific(callableDescriptor, callableDescriptor2)) {
                first2 = obj2;
            }
        }
        if (arrayList.isEmpty()) {
            if (first2 != null) {
                return first2;
            }
            $$$reportNull$$$0(81);
            throw null;
        }
        if (arrayList.size() == 1) {
            Object first3 = CollectionsKt.first((Iterable) arrayList);
            if (first3 != null) {
                return first3;
            }
            $$$reportNull$$$0(82);
            throw null;
        }
        Iterator it3 = arrayList.iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            KotlinType returnType = ((CallableDescriptor) function1.invoke(obj)).getReturnType();
            returnType.getClass();
            if (!(returnType.unwrap() instanceof FlexibleType)) {
                break;
            }
        }
        if (obj != null) {
            return obj;
        }
        Object first4 = CollectionsKt.first((Iterable) arrayList);
        if (first4 != null) {
            return first4;
        }
        $$$reportNull$$$0(84);
        throw null;
    }

    public final TypeCheckerState createTypeCheckerState(List list, List list2) {
        KotlinTypePreparator$Default kotlinTypePreparator$Default = KotlinTypePreparator$Default.INSTANCE;
        if (list == null) {
            $$$reportNull$$$0(42);
            throw null;
        }
        if (list2 == null) {
            $$$reportNull$$$0(43);
            throw null;
        }
        boolean isEmpty = list.isEmpty();
        KotlinTypeRefiner$Default kotlinTypeRefiner$Default = KotlinTypeRefiner$Default.INSTANCE;
        KotlinTypeChecker.TypeConstructorEquality typeConstructorEquality = this.equalityAxioms;
        if (isEmpty) {
            return new TypeCheckerState(true, true, new FormBody.Builder((HashMap) null, typeConstructorEquality), kotlinTypePreparator$Default, kotlinTypeRefiner$Default);
        }
        HashMap hashMap = new HashMap();
        for (int i = 0; i < list.size(); i++) {
            hashMap.put(((TypeParameterDescriptor) list.get(i)).getTypeConstructor(), ((TypeParameterDescriptor) list2.get(i)).getTypeConstructor());
        }
        return new TypeCheckerState(true, true, new FormBody.Builder(hashMap, typeConstructorEquality), kotlinTypePreparator$Default, kotlinTypeRefiner$Default);
    }

    public final void generateOverridesInFunctionGroup(Name name, Collection collection, Collection collection2, ModuleAwareClassDescriptor moduleAwareClassDescriptor, DescriptorFactory descriptorFactory) {
        Integer compare;
        if (name == null) {
            $$$reportNull$$$0(52);
            throw null;
        }
        if (collection == null) {
            $$$reportNull$$$0(53);
            throw null;
        }
        if (collection2 == null) {
            $$$reportNull$$$0(54);
            throw null;
        }
        if (moduleAwareClassDescriptor == null) {
            $$$reportNull$$$0(55);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(collection);
        Iterator it = collection2.iterator();
        while (true) {
            int i = 1;
            if (!it.hasNext()) {
                if (linkedHashSet.size() >= 2) {
                    DeclarationDescriptor containingDeclaration = ((CallableMemberDescriptor) linkedHashSet.iterator().next()).getContainingDeclaration();
                    if (!linkedHashSet.isEmpty()) {
                        Iterator it2 = linkedHashSet.iterator();
                        while (it2.hasNext()) {
                            if (((CallableMemberDescriptor) it2.next()).getContainingDeclaration() != containingDeclaration) {
                                LinkedList<CallableMemberDescriptor> linkedList = new LinkedList(linkedHashSet);
                                while (!linkedList.isEmpty()) {
                                    linkedList.isEmpty();
                                    CallableMemberDescriptor callableMemberDescriptor = null;
                                    for (CallableMemberDescriptor callableMemberDescriptor2 : linkedList) {
                                        if (callableMemberDescriptor == null || ((compare = DescriptorVisibilities.compare(callableMemberDescriptor.getVisibility(), callableMemberDescriptor2.getVisibility())) != null && compare.intValue() < 0)) {
                                            callableMemberDescriptor = callableMemberDescriptor2;
                                        }
                                    }
                                    callableMemberDescriptor.getClass();
                                    createAndBindFakeOverride(extractMembersOverridableInBothWays(callableMemberDescriptor, linkedList, new AnonymousClass4(i), new Latch$await$2$2(6, descriptorFactory, callableMemberDescriptor)), moduleAwareClassDescriptor, descriptorFactory);
                                }
                                return;
                            }
                        }
                    }
                }
                Iterator it3 = linkedHashSet.iterator();
                while (it3.hasNext()) {
                    createAndBindFakeOverride(Collections.singleton((CallableMemberDescriptor) it3.next()), moduleAwareClassDescriptor, descriptorFactory);
                }
                return;
            }
            CallableMemberDescriptor callableMemberDescriptor3 = (CallableMemberDescriptor) it.next();
            if (callableMemberDescriptor3 == null) {
                $$$reportNull$$$0(59);
                throw null;
            }
            ArrayList arrayList = new ArrayList(collection.size());
            SmartSet smartSet = new SmartSet();
            Iterator it4 = collection.iterator();
            while (it4.hasNext()) {
                CallableMemberDescriptor callableMemberDescriptor4 = (CallableMemberDescriptor) it4.next();
                OverrideCompatibilityInfo.Result result = isOverridableBy(callableMemberDescriptor4, callableMemberDescriptor3, moduleAwareClassDescriptor).getResult();
                boolean z = !DescriptorVisibilities.isPrivate(callableMemberDescriptor4.getVisibility()) && DescriptorVisibilities.findInvisibleMember(DescriptorVisibilities.ALWAYS_SUITABLE_RECEIVER, callableMemberDescriptor4, callableMemberDescriptor3) == null;
                int i2 = AnonymousClass8.$SwitchMap$org$jetbrains$kotlin$resolve$OverridingUtil$OverrideCompatibilityInfo$Result[result.ordinal()];
                if (i2 == 1) {
                    if (z) {
                        smartSet.add(callableMemberDescriptor4);
                    }
                    arrayList.add(callableMemberDescriptor4);
                } else if (i2 == 2) {
                    if (z) {
                        descriptorFactory.conflict(callableMemberDescriptor4, callableMemberDescriptor3);
                    }
                    arrayList.add(callableMemberDescriptor4);
                }
            }
            descriptorFactory.setOverriddenDescriptors(callableMemberDescriptor3, smartSet);
            linkedHashSet.removeAll(arrayList);
        }
    }

    public final OverrideCompatibilityInfo isOverridableBy(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ModuleAwareClassDescriptor moduleAwareClassDescriptor, boolean z) {
        if (callableDescriptor == null) {
            $$$reportNull$$$0(22);
            throw null;
        }
        if (callableDescriptor2 == null) {
            $$$reportNull$$$0(23);
            throw null;
        }
        OverrideCompatibilityInfo isOverridableByWithoutExternalConditions = isOverridableByWithoutExternalConditions(callableDescriptor, callableDescriptor2, z);
        boolean z2 = isOverridableByWithoutExternalConditions.getResult() == OverrideCompatibilityInfo.Result.OVERRIDABLE;
        List<ExternalOverridabilityCondition> list = EXTERNAL_CONDITIONS;
        for (ExternalOverridabilityCondition externalOverridabilityCondition : list) {
            if (externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY && (!z2 || externalOverridabilityCondition.getContract() != ExternalOverridabilityCondition.Contract.SUCCESS_ONLY)) {
                int i = AnonymousClass8.$SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result[externalOverridabilityCondition.isOverridable(callableDescriptor, callableDescriptor2, moduleAwareClassDescriptor).ordinal()];
                if (i == 1) {
                    z2 = true;
                } else {
                    if (i == 2) {
                        return OverrideCompatibilityInfo.conflict("External condition failed");
                    }
                    if (i == 3) {
                        return OverrideCompatibilityInfo.incompatible("External condition");
                    }
                }
            }
        }
        if (!z2) {
            return isOverridableByWithoutExternalConditions;
        }
        for (ExternalOverridabilityCondition externalOverridabilityCondition2 : list) {
            if (externalOverridabilityCondition2.getContract() == ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY) {
                int i2 = AnonymousClass8.$SwitchMap$org$jetbrains$kotlin$resolve$ExternalOverridabilityCondition$Result[externalOverridabilityCondition2.isOverridable(callableDescriptor, callableDescriptor2, moduleAwareClassDescriptor).ordinal()];
                if (i2 == 1) {
                    TimeSource$Companion$$ExternalSyntheticLambda0.m(externalOverridabilityCondition2.getClass().getName(), " condition. It's not supposed to end with success", "Contract violation in ");
                    return null;
                }
                if (i2 == 2) {
                    return OverrideCompatibilityInfo.conflict("External condition failed");
                }
                if (i2 == 3) {
                    return OverrideCompatibilityInfo.incompatible("External condition");
                }
            }
        }
        OverrideCompatibilityInfo overrideCompatibilityInfo = OverrideCompatibilityInfo.SUCCESS;
        if (overrideCompatibilityInfo != null) {
            return overrideCompatibilityInfo;
        }
        OverrideCompatibilityInfo.$$$reportNull$$$0(0);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00a9, code lost:
    
        r10.remove();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.OverrideCompatibilityInfo isOverridableByWithoutExternalConditions(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r13, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil.isOverridableByWithoutExternalConditions(kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, boolean):kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil$OverrideCompatibilityInfo");
    }

    public final OverrideCompatibilityInfo isOverridableBy(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ModuleAwareClassDescriptor moduleAwareClassDescriptor) {
        if (callableDescriptor == null) {
            $$$reportNull$$$0(19);
            throw null;
        }
        if (callableDescriptor2 != null) {
            return isOverridableBy(callableDescriptor, callableDescriptor2, moduleAwareClassDescriptor, false);
        }
        $$$reportNull$$$0(20);
        throw null;
    }
}
