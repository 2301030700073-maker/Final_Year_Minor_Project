package kotlin.reflect.jvm.internal;

import java.lang.reflect.Method;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CachesKt$K_CLASS_CACHE$1 extends Lambda implements Function1 {
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$1;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$2;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$3;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$4;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$5;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$6;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$7;
    public static final CachesKt$K_CLASS_CACHE$1 INSTANCE$8;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE = new CachesKt$K_CLASS_CACHE$1(i, 0);
        INSTANCE$1 = new CachesKt$K_CLASS_CACHE$1(i, 1);
        INSTANCE$2 = new CachesKt$K_CLASS_CACHE$1(i, 2);
        INSTANCE$3 = new CachesKt$K_CLASS_CACHE$1(i, 3);
        INSTANCE$4 = new CachesKt$K_CLASS_CACHE$1(i, 4);
        INSTANCE$5 = new CachesKt$K_CLASS_CACHE$1(i, 5);
        INSTANCE$6 = new CachesKt$K_CLASS_CACHE$1(i, 6);
        INSTANCE$7 = new CachesKt$K_CLASS_CACHE$1(i, 7);
        INSTANCE$8 = new CachesKt$K_CLASS_CACHE$1(i, 8);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CachesKt$K_CLASS_CACHE$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                Class cls = (Class) obj;
                cls.getClass();
                return new KClassImpl(cls);
            case 1:
                Class cls2 = (Class) obj;
                cls2.getClass();
                return new KPackageImpl(cls2);
            case 2:
                Class<?> returnType = ((Method) obj).getReturnType();
                returnType.getClass();
                return ReflectClassUtilKt.getDesc(returnType);
            case 3:
                Class cls3 = (Class) obj;
                cls3.getClass();
                return ReflectClassUtilKt.getDesc(cls3);
            case 4:
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) obj;
                functionDescriptor.getClass();
                return DescriptorRendererImpl.DEBUG_TEXT.render(functionDescriptor) + " | " + RuntimeTypeMapper.mapSignature(functionDescriptor).asString();
            case 5:
                PropertyDescriptor propertyDescriptor = (PropertyDescriptor) obj;
                propertyDescriptor.getClass();
                return DescriptorRendererImpl.DEBUG_TEXT.render(propertyDescriptor) + " | " + RuntimeTypeMapper.mapPropertySignature(propertyDescriptor).asString();
            case 6:
                DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
                KotlinType type = ((ValueParameterDescriptorImpl) obj).getType();
                type.getClass();
                return ReflectionObjectRenderer.renderer.renderType(type);
            case 7:
                DescriptorRendererImpl descriptorRendererImpl2 = ReflectionObjectRenderer.renderer;
                KotlinType type2 = ((ValueParameterDescriptorImpl) obj).getType();
                type2.getClass();
                return ReflectionObjectRenderer.renderer.renderType(type2);
            default:
                Class cls4 = (Class) obj;
                cls4.getClass();
                return ReflectClassUtilKt.getDesc(cls4);
        }
    }
}
