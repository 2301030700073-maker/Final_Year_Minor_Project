package kotlin.reflect.jvm.internal.impl.types;

import com.airbnb.lottie.parser.GradientColorParser;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import okhttp3.FormBody;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AnnotationsTypeAttributeKt {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public static final GradientColorParser annotationsAttribute$delegate;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinPackage(AnnotationsTypeAttributeKt.class, "descriptors"), "annotationsAttribute", "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"))};
        FormBody.Builder builder = TypeAttributes.Companion;
        KClass orCreateKotlinClass = reflectionFactory.getOrCreateKotlinClass(AnnotationsTypeAttribute.class);
        builder.getClass();
        int id = builder.getId(orCreateKotlinClass);
        GradientColorParser gradientColorParser = new GradientColorParser();
        gradientColorParser.colorPoints = id;
        annotationsAttribute$delegate = gradientColorParser;
    }

    public static final Annotations getAnnotations(TypeAttributes typeAttributes) {
        Annotations annotations;
        typeAttributes.getClass();
        KProperty kProperty = $$delegatedProperties[0];
        GradientColorParser gradientColorParser = annotationsAttribute$delegate;
        gradientColorParser.getClass();
        kProperty.getClass();
        AnnotationsTypeAttribute annotationsTypeAttribute = (AnnotationsTypeAttribute) typeAttributes.arrayMap.get(gradientColorParser.colorPoints);
        return (annotationsTypeAttribute == null || (annotations = annotationsTypeAttribute.annotations) == null) ? Annotations.Companion.EMPTY : annotations;
    }
}
