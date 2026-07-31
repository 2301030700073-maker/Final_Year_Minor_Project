package kotlin.reflect.jvm.internal;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.full.IllegalCallableAccessException;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class KCallableImpl implements KCallable, KTypeParameterOwnerImpl {
    public final ReflectProperties$LazySoftVal _parameters;

    public KCallableImpl() {
        KPropertyImplKt.lazySoft(null, new KCallableImpl$_parameters$1(this, 2));
        this._parameters = KPropertyImplKt.lazySoft(null, new KCallableImpl$_parameters$1(this, 0));
        KPropertyImplKt.lazySoft(null, new KCallableImpl$_parameters$1(this, 4));
        KPropertyImplKt.lazySoft(null, new KCallableImpl$_parameters$1(this, 5));
        KPropertyImplKt.lazySoft(null, new KCallableImpl$_parameters$1(this, 1));
    }

    public final Object call(Object... objArr) {
        try {
            return getCaller().call(objArr);
        } catch (IllegalAccessException e) {
            throw new IllegalCallableAccessException(e);
        }
    }

    public abstract Caller getCaller();

    public abstract KDeclarationContainerImpl getContainer();

    public abstract Caller getDefaultCaller();

    public abstract CallableMemberDescriptor getDescriptor();

    public final List getParameters() {
        Object invoke = this._parameters.invoke();
        invoke.getClass();
        return (List) invoke;
    }

    public final boolean isAnnotationConstructor() {
        return Intrinsics.areEqual(getName(), "<init>") && getContainer().getJClass().isAnnotation();
    }

    public abstract boolean isBound();
}
