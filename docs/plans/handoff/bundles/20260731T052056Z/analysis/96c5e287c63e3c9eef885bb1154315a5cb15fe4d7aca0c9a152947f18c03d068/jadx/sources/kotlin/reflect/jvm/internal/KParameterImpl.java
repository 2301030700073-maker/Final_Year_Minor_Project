package kotlin.reflect.jvm.internal;

import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KParameter$Kind;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.ReflectionObjectRenderer;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KParameterImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final KCallableImpl callable;
    public final ReflectProperties$LazySoftVal descriptor$delegate;
    public final int index;
    public final KParameter$Kind kind;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KParameterImpl.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ParameterDescriptor;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(KParameterImpl.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    }

    public KParameterImpl(KCallableImpl kCallableImpl, int i, KParameter$Kind kParameter$Kind, Function0 function0) {
        kParameter$Kind.getClass();
        this.callable = kCallableImpl;
        this.index = i;
        this.kind = kParameter$Kind;
        this.descriptor$delegate = KPropertyImplKt.lazySoft(null, function0);
        KPropertyImplKt.lazySoft(null, new KParameterImpl$type$1(this, 1));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof KParameterImpl)) {
            return false;
        }
        KParameterImpl kParameterImpl = (KParameterImpl) obj;
        return this.callable.equals(kParameterImpl.callable) && this.index == kParameterImpl.index;
    }

    public final ParameterDescriptor getDescriptor() {
        KProperty kProperty = $$delegatedProperties[0];
        Object invoke = this.descriptor$delegate.invoke();
        invoke.getClass();
        return (ParameterDescriptor) invoke;
    }

    public final String getName() {
        ParameterDescriptor descriptor = getDescriptor();
        ValueParameterDescriptorImpl valueParameterDescriptorImpl = descriptor instanceof ValueParameterDescriptorImpl ? (ValueParameterDescriptorImpl) descriptor : null;
        if (valueParameterDescriptorImpl != null && !valueParameterDescriptorImpl.getContainingDeclaration().hasSynthesizedParameterNames()) {
            Name name = valueParameterDescriptorImpl.getName();
            name.getClass();
            if (!name.special) {
                return name.asString();
            }
        }
        return null;
    }

    public final KTypeImpl getType() {
        KotlinType type = getDescriptor().getType();
        type.getClass();
        return new KTypeImpl(type, new KParameterImpl$type$1(this, 0));
    }

    public final int hashCode() {
        return (this.callable.hashCode() * 31) + this.index;
    }

    public final String toString() {
        String renderFunction;
        DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
        StringBuilder sb = new StringBuilder();
        int i = ReflectionObjectRenderer.WhenMappings.$EnumSwitchMapping$0[this.kind.ordinal()];
        if (i == 1) {
            sb.append("extension receiver parameter");
        } else if (i == 2) {
            sb.append("instance parameter");
        } else if (i == 3) {
            sb.append("parameter #" + this.index + ' ' + getName());
        }
        sb.append(" of ");
        CallableMemberDescriptor descriptor = this.callable.getDescriptor();
        if (descriptor instanceof PropertyDescriptor) {
            renderFunction = ReflectionObjectRenderer.renderProperty((PropertyDescriptor) descriptor);
        } else {
            if (!(descriptor instanceof FunctionDescriptor)) {
                Gson$$ExternalSyntheticBUOutline0.m$8("Illegal callable: ", descriptor);
                return null;
            }
            renderFunction = ReflectionObjectRenderer.renderFunction((FunctionDescriptor) descriptor);
        }
        sb.append(renderFunction);
        return sb.toString();
    }
}
