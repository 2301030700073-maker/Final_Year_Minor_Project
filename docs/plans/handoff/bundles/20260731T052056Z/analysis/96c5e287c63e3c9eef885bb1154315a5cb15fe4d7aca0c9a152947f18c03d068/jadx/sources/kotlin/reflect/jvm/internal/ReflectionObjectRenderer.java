package kotlin.reflect.jvm.internal;

import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.reflect.KParameter$Kind;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ReflectionObjectRenderer {
    public static final DescriptorRendererImpl renderer = DescriptorRendererImpl.FQ_NAMES_IN_TYPES;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[KParameter$Kind.values().length];
            try {
                iArr[KParameter$Kind.EXTENSION_RECEIVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KParameter$Kind.INSTANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KParameter$Kind.VALUE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static void appendReceivers(StringBuilder sb, CallableDescriptor callableDescriptor) {
        ReceiverParameterDescriptorImpl instanceReceiverParameter = UtilKt.getInstanceReceiverParameter(callableDescriptor);
        ReceiverParameterDescriptorImpl extensionReceiverParameter = callableDescriptor.getExtensionReceiverParameter();
        DescriptorRendererImpl descriptorRendererImpl = renderer;
        if (instanceReceiverParameter != null) {
            sb.append(descriptorRendererImpl.renderType(instanceReceiverParameter.getType()));
            sb.append(".");
        }
        boolean z = (instanceReceiverParameter == null || extensionReceiverParameter == null) ? false : true;
        if (z) {
            sb.append("(");
        }
        if (extensionReceiverParameter != null) {
            sb.append(descriptorRendererImpl.renderType(extensionReceiverParameter.getType()));
            sb.append(".");
        }
        if (z) {
            sb.append(")");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static String renderFunction(FunctionDescriptor functionDescriptor) {
        StringBuilder sb = new StringBuilder();
        sb.append("fun ");
        appendReceivers(sb, functionDescriptor);
        Name name = ((DeclarationDescriptorImpl) functionDescriptor).getName();
        name.getClass();
        DescriptorRendererImpl descriptorRendererImpl = renderer;
        sb.append(descriptorRendererImpl.renderName(name, true));
        List valueParameters = functionDescriptor.getValueParameters();
        valueParameters.getClass();
        CollectionsKt.joinTo$default(valueParameters, sb, ", ", "(", ")", CachesKt$K_CLASS_CACHE$1.INSTANCE$6, 48);
        sb.append(": ");
        KotlinType returnType = functionDescriptor.getReturnType();
        returnType.getClass();
        sb.append(descriptorRendererImpl.renderType(returnType));
        return sb.toString();
    }

    public static String renderProperty(PropertyDescriptor propertyDescriptor) {
        StringBuilder sb = new StringBuilder();
        sb.append(propertyDescriptor.isVar() ? "var " : "val ");
        appendReceivers(sb, propertyDescriptor);
        Name name = propertyDescriptor.getName();
        name.getClass();
        DescriptorRendererImpl descriptorRendererImpl = renderer;
        sb.append(descriptorRendererImpl.renderName(name, true));
        sb.append(": ");
        KotlinType type = propertyDescriptor.getType();
        type.getClass();
        sb.append(descriptorRendererImpl.renderType(type));
        return sb.toString();
    }
}
