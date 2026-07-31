package kotlin.reflect.jvm.internal;

import androidx.compose.material3.TextFieldDefaults$Container$1;
import androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.ByteArrayInputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CallableReference;
import kotlin.jvm.internal.FunctionBase;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.ReflectLambdaKt$reflect$descriptor$1;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.BitEncoding;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmNameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractMessageLite;
import kotlin.reflect.jvm.internal.impl.protobuf.AbstractParser;
import kotlin.reflect.jvm.internal.impl.protobuf.CodedInputStream;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.InvalidProtocolBufferException;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRendererImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import okhttp3.Dispatcher$promoteAndExecute$Effects;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class ReflectionFactoryImpl extends ReflectionFactory {
    public static KDeclarationContainerImpl getOwner(CallableReference callableReference) {
        KDeclarationContainer owner = callableReference.getOwner();
        return owner instanceof KDeclarationContainerImpl ? (KDeclarationContainerImpl) owner : EmptyContainerForLocal.INSTANCE;
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KFunction function(FunctionReference functionReference) {
        KDeclarationContainerImpl owner = getOwner(functionReference);
        String name = functionReference.getName();
        String signature = functionReference.getSignature();
        Object obj = functionReference.receiver;
        name.getClass();
        signature.getClass();
        return new KFunctionImpl(owner, name, signature, null, obj);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KClass getOrCreateKotlinClass(Class cls) {
        Object putIfAbsent;
        ConcurrentHashMapCache concurrentHashMapCache = CachesKt.K_CLASS_CACHE;
        cls.getClass();
        ConcurrentHashMapCache concurrentHashMapCache2 = CachesKt.K_CLASS_CACHE;
        concurrentHashMapCache2.getClass();
        ConcurrentHashMap concurrentHashMap = concurrentHashMapCache2.cache;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(cls, (obj = concurrentHashMapCache2.compute.invoke(cls)))) != null) {
            obj = putIfAbsent;
        }
        obj.getClass();
        return (KClassImpl) obj;
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        Object putIfAbsent;
        ConcurrentHashMapCache concurrentHashMapCache = CachesKt.K_CLASS_CACHE;
        cls.getClass();
        ConcurrentHashMapCache concurrentHashMapCache2 = CachesKt.K_PACKAGE_CACHE;
        concurrentHashMapCache2.getClass();
        ConcurrentHashMap concurrentHashMap = concurrentHashMapCache2.cache;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null && (putIfAbsent = concurrentHashMap.putIfAbsent(cls, (obj = concurrentHashMapCache2.compute.invoke(cls)))) != null) {
            obj = putIfAbsent;
        }
        return (KDeclarationContainer) obj;
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KMutableProperty0 mutableProperty0(TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1.AnonymousClass1 anonymousClass1) {
        return new KMutableProperty0Impl(getOwner(anonymousClass1), anonymousClass1.name, anonymousClass1.signature, anonymousClass1.receiver);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KMutableProperty1 mutableProperty1(MutablePropertyReference1Impl mutablePropertyReference1Impl) {
        return new KMutableProperty1Impl(getOwner(mutablePropertyReference1Impl), mutablePropertyReference1Impl.name, mutablePropertyReference1Impl.signature, mutablePropertyReference1Impl.receiver);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty0 property0(TextFieldDefaults$Container$1 textFieldDefaults$Container$1) {
        return new KProperty0Impl(getOwner(textFieldDefaults$Container$1), textFieldDefaults$Container$1.name, textFieldDefaults$Container$1.signature, textFieldDefaults$Container$1.receiver);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty1 property1(PropertyReference1Impl propertyReference1Impl) {
        return new KProperty1Impl(getOwner(propertyReference1Impl), propertyReference1Impl.name, propertyReference1Impl.signature, propertyReference1Impl.receiver);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final KProperty2 property2(PropertyReference2Impl propertyReference2Impl) {
        return new KProperty2Impl(getOwner(propertyReference2Impl), propertyReference2Impl.name, propertyReference2Impl.signature);
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final String renderLambdaToString(FunctionBase functionBase) {
        KFunctionImpl asKFunctionImpl;
        Metadata metadata = (Metadata) functionBase.getClass().getAnnotation(Metadata.class);
        KFunctionImpl kFunctionImpl = null;
        if (metadata != null) {
            String[] d1 = metadata.d1();
            if (d1.length == 0) {
                d1 = null;
            }
            if (d1 != null) {
                String[] d2 = metadata.d2();
                ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.EXTENSION_REGISTRY;
                d2.getClass();
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(BitEncoding.decodeBytes(d1));
                ExtensionRegistryLite extensionRegistryLite2 = JvmProtoBufUtil.EXTENSION_REGISTRY;
                JvmNameResolver readNameResolver = JvmProtoBufUtil.readNameResolver(byteArrayInputStream, d2);
                ExtensionRegistryLite extensionRegistryLite3 = JvmProtoBufUtil.EXTENSION_REGISTRY;
                ProtoBuf$Type.AnonymousClass1 anonymousClass1 = ProtoBuf$Function.PARSER;
                anonymousClass1.getClass();
                CodedInputStream codedInputStream = new CodedInputStream(byteArrayInputStream);
                AbstractMessageLite abstractMessageLite = (AbstractMessageLite) anonymousClass1.parsePartialFrom(codedInputStream, extensionRegistryLite3);
                try {
                    codedInputStream.checkLastTagWas(0);
                    AbstractParser.checkMessageInitialized(abstractMessageLite);
                    ProtoBuf$Function protoBuf$Function = (ProtoBuf$Function) abstractMessageLite;
                    JvmMetadataVersion jvmMetadataVersion = new JvmMetadataVersion(metadata.mv(), (metadata.xi() & 8) != 0);
                    Class<?> cls = functionBase.getClass();
                    ProtoBuf$TypeTable protoBuf$TypeTable = protoBuf$Function.typeTable_;
                    protoBuf$TypeTable.getClass();
                    kFunctionImpl = new KFunctionImpl(EmptyContainerForLocal.INSTANCE, (SimpleFunctionDescriptorImpl) UtilKt.deserializeToDescriptor(cls, protoBuf$Function, readNameResolver, new Dispatcher$promoteAndExecute$Effects(protoBuf$TypeTable), jvmMetadataVersion, ReflectLambdaKt$reflect$descriptor$1.INSTANCE));
                } catch (InvalidProtocolBufferException e) {
                    e.unfinishedMessage = abstractMessageLite;
                    throw e;
                }
            }
        }
        if (kFunctionImpl == null || (asKFunctionImpl = UtilKt.asKFunctionImpl(kFunctionImpl)) == null) {
            return super.renderLambdaToString(functionBase);
        }
        DescriptorRendererImpl descriptorRendererImpl = ReflectionObjectRenderer.renderer;
        FunctionDescriptor descriptor = asKFunctionImpl.getDescriptor();
        StringBuilder sb = new StringBuilder();
        ReflectionObjectRenderer.appendReceivers(sb, descriptor);
        List valueParameters = descriptor.getValueParameters();
        valueParameters.getClass();
        CollectionsKt.joinTo$default(valueParameters, sb, ", ", "(", ")", CachesKt$K_CLASS_CACHE$1.INSTANCE$7, 48);
        sb.append(" -> ");
        KotlinType returnType = descriptor.getReturnType();
        returnType.getClass();
        sb.append(ReflectionObjectRenderer.renderer.renderType(returnType));
        return sb.toString();
    }

    @Override // kotlin.jvm.internal.ReflectionFactory
    public final String renderLambdaToString(Lambda lambda) {
        return renderLambdaToString((FunctionBase) lambda);
    }
}
