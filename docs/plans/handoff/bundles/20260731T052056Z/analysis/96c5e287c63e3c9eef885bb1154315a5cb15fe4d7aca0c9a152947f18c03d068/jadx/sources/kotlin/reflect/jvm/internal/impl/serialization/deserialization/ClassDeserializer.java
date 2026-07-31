package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import coil3.size.ViewSizeResolver$size$3$1;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.uuid.UuidKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ClassDeserializer {
    public static final Set BLACK_LIST = UuidKt.setOf(ClassId.topLevel(StandardNames.FqNames.cloneable.toSafe()));
    public final ViewSizeResolver$size$3$1 classes;
    public final ActivityGalleryBinding components;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class ClassKey {
        public final ClassData classData;
        public final ClassId classId;

        public ClassKey(ClassId classId, ClassData classData) {
            classId.getClass();
            this.classId = classId;
            this.classData = classData;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ClassKey) {
                return Intrinsics.areEqual(this.classId, ((ClassKey) obj).classId);
            }
            return false;
        }

        public final int hashCode() {
            return this.classId.hashCode();
        }
    }

    public ClassDeserializer(ActivityGalleryBinding activityGalleryBinding) {
        this.components = activityGalleryBinding;
        this.classes = ((LockBasedStorageManager) activityGalleryBinding.captionEditButton).createMemoizedFunctionWithNullableValues(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(21, this));
    }

    public final ModuleAwareClassDescriptor deserializeClass(ClassId classId, ClassData classData) {
        classId.getClass();
        return (ModuleAwareClassDescriptor) this.classes.invoke(new ClassKey(classId, classData));
    }
}
