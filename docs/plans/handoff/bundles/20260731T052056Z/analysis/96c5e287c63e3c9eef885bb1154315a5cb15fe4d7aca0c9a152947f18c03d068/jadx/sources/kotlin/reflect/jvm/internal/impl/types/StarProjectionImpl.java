package kotlin.reflect.jvm.internal.impl.types;

import coil3.util.ContextsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class StarProjectionImpl extends TypeProjectionBase {
    public final /* synthetic */ int $r8$classId = 0;
    public final Object _type$delegate;
    public final Object typeParameter;

    public static /* synthetic */ void $$$reportNull$$$0(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
                objArr[0] = "type";
                break;
            case 4:
            case 5:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
                break;
            case 6:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "projection";
                break;
        }
        if (i == 4) {
            objArr[1] = "getProjectionKind";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeProjectionImpl";
        } else {
            objArr[1] = "getType";
        }
        if (i == 3) {
            objArr[2] = "replaceType";
        } else if (i != 4 && i != 5) {
            if (i != 6) {
                objArr[2] = "<init>";
            } else {
                objArr[2] = "refine";
            }
        }
        String format = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    public StarProjectionImpl(TypeParameterDescriptor typeParameterDescriptor) {
        typeParameterDescriptor.getClass();
        this.typeParameter = typeParameterDescriptor;
        this._type$delegate = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new AndroidLeakFixes$Companion$onDecorViewReady$1(19, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase
    public final Variance getProjectionKind() {
        switch (this.$r8$classId) {
            case 0:
                return Variance.OUT_VARIANCE;
            default:
                Variance variance = (Variance) this.typeParameter;
                if (variance != null) {
                    return variance;
                }
                $$$reportNull$$$0(4);
                throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase
    public final KotlinType getType() {
        int i = this.$r8$classId;
        Object obj = this._type$delegate;
        switch (i) {
            case 0:
                return (KotlinType) ((Lazy) obj).getValue();
            default:
                KotlinType kotlinType = (KotlinType) obj;
                if (kotlinType != null) {
                    return kotlinType;
                }
                $$$reportNull$$$0(5);
                throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase
    public final boolean isStarProjection() {
        switch (this.$r8$classId) {
            case 0:
                return true;
            default:
                return false;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase
    public final TypeProjectionBase refine(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
        switch (this.$r8$classId) {
            case 0:
                return this;
            default:
                Variance variance = (Variance) this.typeParameter;
                KotlinType kotlinType = (KotlinType) this._type$delegate;
                kotlinType.getClass();
                return new StarProjectionImpl(kotlinType, variance);
        }
    }

    public StarProjectionImpl(KotlinType kotlinType, Variance variance) {
        if (variance == null) {
            $$$reportNull$$$0(0);
            throw null;
        }
        if (kotlinType != null) {
            this.typeParameter = variance;
            this._type$delegate = kotlinType;
        } else {
            $$$reportNull$$$0(1);
            throw null;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StarProjectionImpl(KotlinType kotlinType) {
        this(kotlinType, Variance.INVARIANT);
        if (kotlinType != null) {
        } else {
            $$$reportNull$$$0(2);
            throw null;
        }
    }
}
