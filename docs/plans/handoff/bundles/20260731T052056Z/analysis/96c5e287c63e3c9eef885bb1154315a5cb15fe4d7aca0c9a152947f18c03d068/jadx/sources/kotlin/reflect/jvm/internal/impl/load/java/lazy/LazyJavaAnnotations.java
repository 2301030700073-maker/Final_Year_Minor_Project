package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import androidx.work.Data$$ExternalSyntheticLambda0;
import coil3.size.ViewSizeResolver$size$3$1;
import java.util.Iterator;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.LinesSequence;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotation;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationMapper;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TransformingSequence;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaAnnotations implements Annotations {
    public final ViewSizeResolver$size$3$1 annotationDescriptors;
    public final JavaAnnotationOwner annotationOwner;
    public final boolean areAnnotationsFreshlySupported;
    public final Request.Builder c;

    public LazyJavaAnnotations(Request.Builder builder, JavaAnnotationOwner javaAnnotationOwner, boolean z) {
        builder.getClass();
        javaAnnotationOwner.getClass();
        this.c = builder;
        this.annotationOwner = javaAnnotationOwner;
        this.areAnnotationsFreshlySupported = z;
        this.annotationDescriptors = ((LockBasedStorageManager) ((ActivityPageBinding) builder.url).rootView).createMemoizedFunctionWithNullableValues(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(9, this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor findAnnotation(FqName fqName) {
        AnnotationDescriptor annotationDescriptor;
        fqName.getClass();
        JavaAnnotationOwner javaAnnotationOwner = this.annotationOwner;
        ReflectJavaAnnotation findAnnotation$1 = javaAnnotationOwner.findAnnotation$1(fqName);
        if (findAnnotation$1 != null && (annotationDescriptor = (AnnotationDescriptor) this.annotationDescriptors.invoke(findAnnotation$1)) != null) {
            return annotationDescriptor;
        }
        Name name = JavaAnnotationMapper.DEPRECATED_ANNOTATION_MESSAGE;
        return JavaAnnotationMapper.findMappedJavaAnnotation(fqName, javaAnnotationOwner, this.c);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean hasAnnotation(FqName fqName) {
        return UnsignedKt.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        return this.annotationOwner.getAnnotations().isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        JavaAnnotationOwner javaAnnotationOwner = this.annotationOwner;
        LinesSequence asSequence = CollectionsKt.asSequence(javaAnnotationOwner.getAnnotations());
        ViewSizeResolver$size$3$1 viewSizeResolver$size$3$1 = this.annotationDescriptors;
        viewSizeResolver$size$3$1.getClass();
        TransformingSequence transformingSequence = new TransformingSequence(asSequence, viewSizeResolver$size$3$1);
        Name name = JavaAnnotationMapper.DEPRECATED_ANNOTATION_MESSAGE;
        return new FilteringSequence$iterator$1(new FilteringSequence(SequencesKt.flatten(ArraysKt___ArraysKt.asSequence(new Sequence[]{transformingSequence, new LinesSequence(5, JavaAnnotationMapper.findMappedJavaAnnotation(StandardNames.FqNames.deprecated, javaAnnotationOwner, this.c))})), false, new Data$$ExternalSyntheticLambda0(21)));
    }
}
