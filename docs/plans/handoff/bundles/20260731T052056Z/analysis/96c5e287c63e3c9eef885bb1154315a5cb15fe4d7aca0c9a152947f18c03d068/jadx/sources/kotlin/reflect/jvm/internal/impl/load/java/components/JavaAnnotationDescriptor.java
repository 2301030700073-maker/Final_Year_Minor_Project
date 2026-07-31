package kotlin.reflect.jvm.internal.impl.load.java.components;

import androidx.compose.ui.unit.DpKt;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationArgument;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.PossiblyExternalAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class JavaAnnotationDescriptor implements AnnotationDescriptor, PossiblyExternalAnnotationDescriptor {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final ReflectJavaAnnotationArgument firstArgument;
    public final FqName fqName;
    public final SourceElement source;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue type$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(JavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};
    }

    public JavaAnnotationDescriptor(Request.Builder builder, ReflectJavaAnnotation reflectJavaAnnotation, FqName fqName) {
        builder.getClass();
        ActivityPageBinding activityPageBinding = (ActivityPageBinding) builder.url;
        fqName.getClass();
        this.fqName = fqName;
        this.source = reflectJavaAnnotation != null ? RuntimeErrorReporter.source(reflectJavaAnnotation) : SourceElement.NO_SOURCE;
        this.type$delegate = new LockBasedStorageManager.LockBasedNotNullLazyValue((LockBasedStorageManager) activityPageBinding.rootView, new KTypeImpl$arguments$2(19, builder, this));
        this.firstArgument = reflectJavaAnnotation != null ? (ReflectJavaAnnotationArgument) CollectionsKt.firstOrNull((Iterable) reflectJavaAnnotation.getArguments()) : null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public Map getAllValueArguments() {
        return EmptyMap.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final FqName getFqName() {
        return this.fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final SourceElement getSource() {
        return this.source;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor
    public final KotlinType getType() {
        return (SimpleType) DpKt.getValue(this.type$delegate, $$delegatedProperties[0]);
    }
}
