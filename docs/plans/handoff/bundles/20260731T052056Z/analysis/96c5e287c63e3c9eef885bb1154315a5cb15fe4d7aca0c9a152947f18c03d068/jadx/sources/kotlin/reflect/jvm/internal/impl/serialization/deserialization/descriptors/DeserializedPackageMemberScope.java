package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.LookupTracker$DO_NOTHING;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DeserializedPackageMemberScope extends DeserializedMemberScope {
    public final String debugName;
    public final PackageFragmentDescriptor packageDescriptor;
    public final FqName packageFqName;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DeserializedPackageMemberScope(kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor r11, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package r12, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver r13, kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion r14, kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource r15, org.wikipedia.databinding.ActivityGalleryBinding r16, java.lang.String r17, kotlin.jvm.functions.Function0 r18) {
        /*
            r10 = this;
            r12.getClass()
            r13.getClass()
            r14.getClass()
            r16.getClass()
            okhttp3.Dispatcher$promoteAndExecute$Effects r4 = new okhttp3.Dispatcher$promoteAndExecute$Effects
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable r0 = r12.typeTable_
            r0.getClass()
            r4.<init>(r0)
            kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable r0 = r12.versionRequirementTable_
            r0.getClass()
            java.util.List r1 = r0.requirement_
            int r1 = r1.size()
            if (r1 != 0) goto L27
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable r0 = kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable.EMPTY
            r5 = r0
            goto L32
        L27:
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable r1 = new kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable
            java.util.List r0 = r0.requirement_
            r0.getClass()
            r1.<init>()
            r5 = r1
        L32:
            com.hcaptcha.sdk.HCaptcha r0 = new com.hcaptcha.sdk.HCaptcha
            r8 = 0
            kotlin.collections.EmptyList r9 = kotlin.collections.EmptyList.INSTANCE
            r3 = r11
            r2 = r13
            r6 = r14
            r7 = r15
            r1 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            java.util.List r2 = r12.function_
            r2.getClass()
            java.util.List r3 = r12.property_
            r3.getClass()
            java.util.List r4 = r12.typeAlias_
            r4.getClass()
            r5 = r18
            r1 = r0
            r0 = r10
            r0.<init>(r1, r2, r3, r4, r5)
            r10.packageDescriptor = r11
            r1 = r17
            r10.debugName = r1
            r1 = r11
            kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl r1 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl) r1
            kotlin.reflect.jvm.internal.impl.name.FqName r1 = r1.fqName
            r10.packageFqName = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedPackageMemberScope.<init>(kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor, kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Package, kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.BinaryVersion, kotlin.reflect.jvm.internal.impl.load.kotlin.JvmPackagePartSource, org.wikipedia.databinding.ActivityGalleryBinding, java.lang.String, kotlin.jvm.functions.Function0):void");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final ClassId createClassId(Name name) {
        name.getClass();
        return new ClassId(this.packageFqName, name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final ClassifierDescriptor getContributedClassifier(Name name, NoLookupLocation noLookupLocation) {
        name.getClass();
        noLookupLocation.getClass();
        ((LookupTracker$DO_NOTHING) ((ActivityGalleryBinding) this.c.result).descriptionContainer).getClass();
        noLookupLocation.getClass();
        PackageFragmentDescriptor packageFragmentDescriptor = this.packageDescriptor;
        packageFragmentDescriptor.getClass();
        name.getClass();
        ((PackageFragmentDescriptorImpl) packageFragmentDescriptor).fqName.asString();
        name.asString().getClass();
        return super.getContributedClassifier(name, noLookupLocation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScopeImpl, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public final Collection getContributedDescriptors(DescriptorKindFilter descriptorKindFilter, Function1 function1) {
        descriptorKindFilter.getClass();
        List computeDescriptors = computeDescriptors(descriptorKindFilter, function1, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
        Iterable iterable = (Iterable) ((ActivityGalleryBinding) this.c.result).licenseContainer;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, ((ClassDescriptorFactory) it.next()).getAllContributedClassesIfPossible(this.packageFqName));
        }
        return CollectionsKt.plus((Collection) computeDescriptors, (Iterable) arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set getNonDeclaredClassifierNames() {
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set getNonDeclaredFunctionNames() {
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final Set getNonDeclaredVariableNames() {
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final boolean hasClass(Name name) {
        name.getClass();
        if (getClassNames$deserialization().contains(name)) {
            return true;
        }
        Iterable iterable = (Iterable) ((ActivityGalleryBinding) this.c.result).licenseContainer;
        if ((iterable instanceof Collection) && ((Collection) iterable).isEmpty()) {
            return false;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            if (((ClassDescriptorFactory) it.next()).shouldCreateClass(this.packageFqName, name)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        return this.debugName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
    public final void addEnumEntryDescriptors(ArrayList arrayList, Function1 function1) {
    }
}
