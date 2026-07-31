package kotlin.reflect.jvm.internal.impl.renderer;

import java.util.ArrayList;
import kotlin.ExceptionsKt;
import kotlin.collections.ReversedList;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassifierNamePolicy$SHORT {
    public final /* synthetic */ int $r8$classId;
    public static final ClassifierNamePolicy$SHORT INSTANCE$1 = new ClassifierNamePolicy$SHORT(1);
    public static final ClassifierNamePolicy$SHORT INSTANCE = new ClassifierNamePolicy$SHORT(0);
    public static final ClassifierNamePolicy$SHORT INSTANCE$2 = new ClassifierNamePolicy$SHORT(2);

    public /* synthetic */ ClassifierNamePolicy$SHORT(int i) {
        this.$r8$classId = i;
    }

    public static String qualifiedNameForSourceCode(ClassifierDescriptor classifierDescriptor) {
        String str;
        Name name = classifierDescriptor.getName();
        name.getClass();
        String render = ExceptionsKt.render(name);
        if (!(classifierDescriptor instanceof TypeParameterDescriptor)) {
            DeclarationDescriptor containingDeclaration = classifierDescriptor.getContainingDeclaration();
            containingDeclaration.getClass();
            if (containingDeclaration instanceof ModuleAwareClassDescriptor) {
                str = qualifiedNameForSourceCode((ClassifierDescriptor) containingDeclaration);
            } else if (containingDeclaration instanceof PackageFragmentDescriptor) {
                FqNameUnsafe unsafe = ((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) containingDeclaration)).fqName.toUnsafe();
                unsafe.getClass();
                str = ExceptionsKt.renderFqName(unsafe.pathSegments());
            } else {
                str = null;
            }
            if (str != null && !str.equals("")) {
                return str + '.' + render;
            }
        }
        return render;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    /* JADX WARN: Type inference failed for: r2v1, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor] */
    public final String renderClassifier(ClassifierDescriptor classifierDescriptor, DescriptorRendererImpl descriptorRendererImpl) {
        switch (this.$r8$classId) {
            case 0:
                if (classifierDescriptor instanceof TypeParameterDescriptor) {
                    Name name = ((TypeParameterDescriptor) classifierDescriptor).getName();
                    name.getClass();
                    return descriptorRendererImpl.renderName(name, false);
                }
                ArrayList arrayList = new ArrayList();
                do {
                    arrayList.add(classifierDescriptor.getName());
                    classifierDescriptor = classifierDescriptor.getContainingDeclaration();
                } while (classifierDescriptor instanceof ModuleAwareClassDescriptor);
                return ExceptionsKt.renderFqName(new ReversedList(arrayList));
            case 1:
                if (classifierDescriptor instanceof TypeParameterDescriptor) {
                    Name name2 = ((TypeParameterDescriptor) classifierDescriptor).getName();
                    name2.getClass();
                    return descriptorRendererImpl.renderName(name2, false);
                }
                FqNameUnsafe fqName = DescriptorUtils.getFqName(classifierDescriptor);
                fqName.getClass();
                return descriptorRendererImpl.escape(ExceptionsKt.renderFqName(fqName.pathSegments()));
            default:
                return qualifiedNameForSourceCode(classifierDescriptor);
        }
    }
}
