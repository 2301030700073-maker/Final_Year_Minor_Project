package kotlin.reflect.jvm.internal.impl.types;

import androidx.room.Room;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceFile$1;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorUtils;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AbstractTypeConstructor implements TypeConstructor {
    public int hashCode;
    public final LockBasedStorageManager.AnonymousClass5 supertypes;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Supertypes {
        public final Collection allSupertypes;
        public List supertypesWithoutCycles;

        public Supertypes(Collection collection) {
            collection.getClass();
            this.allSupertypes = collection;
            this.supertypesWithoutCycles = Room.listOf(ErrorUtils.errorTypeForLoopInSupertypes);
        }
    }

    public AbstractTypeConstructor(LockBasedStorageManager lockBasedStorageManager) {
        lockBasedStorageManager.getClass();
        this.supertypes = new LockBasedStorageManager.AnonymousClass5(lockBasedStorageManager, new AndroidLeakFixes$Companion$onDecorViewReady$1(17, this), new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(22, this));
    }

    public abstract Collection computeSupertypes();

    public abstract KotlinType defaultSupertypeIfEmpty();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof TypeConstructor) && obj.hashCode() == hashCode()) {
            TypeConstructor typeConstructor = (TypeConstructor) obj;
            if (typeConstructor.getParameters().size() == getParameters().size()) {
                ClassifierDescriptor declarationDescriptor = getDeclarationDescriptor();
                ClassifierDescriptor declarationDescriptor2 = typeConstructor.getDeclarationDescriptor();
                if (declarationDescriptor2 == null || ErrorUtils.isError(declarationDescriptor) || DescriptorUtils.isLocal(declarationDescriptor) || ErrorUtils.isError(declarationDescriptor2) || DescriptorUtils.isLocal(declarationDescriptor2)) {
                    return false;
                }
                return isSameClassifier(declarationDescriptor2);
            }
        }
        return false;
    }

    public abstract SourceFile$1 getSupertypeLoopChecker();

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructor
    public final List getSupertypes() {
        return ((Supertypes) this.supertypes.invoke()).supertypesWithoutCycles;
    }

    public final int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        ClassifierDescriptor declarationDescriptor = getDeclarationDescriptor();
        int identityHashCode = (ErrorUtils.isError(declarationDescriptor) || DescriptorUtils.isLocal(declarationDescriptor)) ? System.identityHashCode(this) : DescriptorUtils.getFqName(declarationDescriptor).fqName.hashCode();
        this.hashCode = identityHashCode;
        return identityHashCode;
    }

    public abstract boolean isSameClassifier(ClassifierDescriptor classifierDescriptor);

    public List processSupertypesWithoutCycles(List list) {
        return list;
    }
}
