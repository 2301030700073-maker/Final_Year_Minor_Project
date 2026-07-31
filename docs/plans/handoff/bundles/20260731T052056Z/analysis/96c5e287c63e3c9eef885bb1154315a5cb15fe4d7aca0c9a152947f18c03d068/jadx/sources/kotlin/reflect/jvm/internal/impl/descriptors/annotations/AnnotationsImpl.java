package kotlin.reflect.jvm.internal.impl.descriptors.annotations;

import java.util.Iterator;
import java.util.List;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyIterator;
import kotlin.io.LinesSequence;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderImpl$getSubPackagesOf$2;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.EnhancedTypeAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.FilteringSequence$iterator$1;
import kotlin.sequences.FlatteningSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt$flatMap$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class AnnotationsImpl implements Annotations {
    public final /* synthetic */ int $r8$classId;
    public final Object annotations;

    public AnnotationsImpl(Annotations[] annotationsArr) {
        this.$r8$classId = 1;
        this.annotations = ArraysKt___ArraysKt.toList(annotationsArr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final AnnotationDescriptor findAnnotation(FqName fqName) {
        int i = this.$r8$classId;
        Object obj = this.annotations;
        switch (i) {
            case 0:
                return UnsignedKt.findAnnotation(this, fqName);
            case 1:
                fqName.getClass();
                return (AnnotationDescriptor) SequencesKt.firstOrNull(SequencesKt.mapNotNull(new LinesSequence(2, (List) obj), new PackageFragmentProviderImpl$getSubPackagesOf$2(fqName, 1)));
            default:
                fqName.getClass();
                if (fqName.equals((FqName) obj)) {
                    return EnhancedTypeAnnotationDescriptor.INSTANCE;
                }
                return null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean hasAnnotation(FqName fqName) {
        switch (this.$r8$classId) {
            case 1:
                fqName.getClass();
                Iterator it = ((List) this.annotations).iterator();
                while (it.hasNext()) {
                    if (((Annotations) it.next()).hasAnnotation(fqName)) {
                        break;
                    }
                }
                break;
        }
        return UnsignedKt.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public final boolean isEmpty() {
        int i = this.$r8$classId;
        Object obj = this.annotations;
        switch (i) {
            case 0:
                return ((List) obj).isEmpty();
            case 1:
                List list = (List) obj;
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (!((Annotations) it.next()).isEmpty()) {
                            return false;
                        }
                    }
                }
                return true;
            default:
                return false;
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        int i = this.$r8$classId;
        Object obj = this.annotations;
        switch (i) {
            case 0:
                return ((List) obj).iterator();
            case 1:
                return new FilteringSequence$iterator$1(new FlatteningSequence(new LinesSequence(2, (List) obj), CompositeAnnotations$iterator$1.INSTANCE, SequencesKt___SequencesKt$flatMap$2.INSTANCE));
            default:
                return EmptyIterator.INSTANCE;
        }
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 0:
                return ((List) this.annotations).toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ AnnotationsImpl(int i, Object obj) {
        this.$r8$classId = i;
        this.annotations = obj;
    }
}
