package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import okhttp3.ConnectionPool;
import okhttp3.Request;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class LazyJavaPackageFragment extends PackageFragmentDescriptorImpl {
    public static final /* synthetic */ KProperty[] $$delegatedProperties;
    public final Annotations annotations;
    public final LockBasedStorageManager.LockBasedNotNullLazyValue binaryClasses$delegate;
    public final Request.Builder c;
    public final ReflectJavaPackage jPackage;
    public final JvmPackageScope scope;
    public final LockBasedStorageManager.AnonymousClass4 subPackages;

    static {
        ReflectionFactory reflectionFactory = Reflection.factory;
        $$delegatedProperties = new KProperty[]{reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), reflectionFactory.property1(new PropertyReference1Impl(reflectionFactory.getOrCreateKotlinClass(LazyJavaPackageFragment.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public LazyJavaPackageFragment(okhttp3.Request.Builder r5, kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage r6) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.url
            org.wikipedia.databinding.ActivityPageBinding r0 = (org.wikipedia.databinding.ActivityPageBinding) r0
            java.lang.Object r1 = r0.pageToolbarButtonNotifications
            kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl r1 = (kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl) r1
            kotlin.reflect.jvm.internal.impl.name.FqName r2 = r6.fqName
            r4.<init>(r1, r2)
            r4.jPackage = r6
            r1 = 0
            r2 = 6
            okhttp3.Request$Builder r5 = kotlin.text.UStringsKt.childForClassOrPackage$default(r5, r4, r1, r2)
            r4.c = r5
            java.lang.Object r0 = r0.pageFragment
            kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver r0 = (kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver) r0
            org.wikipedia.databinding.ActivityGalleryBinding r0 = r0.getComponents()
            java.lang.Object r0 = r0.licenseIconBy
            kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags r0 = (kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags) r0
            r0.getClass()
            kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion r0 = kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion.INSTANCE
            java.lang.Object r0 = r5.url
            org.wikipedia.databinding.ActivityPageBinding r0 = (org.wikipedia.databinding.ActivityPageBinding) r0
            java.lang.Object r1 = r0.rootView
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager r1 = (kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager) r1
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1 r2 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1
            r3 = 1
            r2.<init>(r4)
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue r3 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$LockBasedNotNullLazyValue
            r3.<init>(r1, r2)
            r4.binaryClasses$delegate = r3
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JvmPackageScope r2 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JvmPackageScope
            r2.<init>(r5, r6, r4)
            r4.scope = r2
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1 r2 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1
            r3 = 0
            r2.<init>(r4)
            kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$4 r3 = new kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager$4
            r3.<init>(r1, r2)
            r4.subPackages = r3
            java.lang.Object r0 = r0.sidePanelContainer
            kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState r0 = (kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState) r0
            boolean r0 = r0.disabledDefaultAnnotations
            if (r0 == 0) goto L5c
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations$Companion$EMPTY$1 r5 = kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations.Companion.EMPTY
            goto L60
        L5c:
            kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations r5 = kotlin.uuid.UuidKt.resolveAnnotations(r5, r6)
        L60:
            r4.annotations = r5
            kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1 r5 = new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment$subPackages$1
            r6 = 2
            r5.<init>(r4)
            r1.createLazyValue(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment.<init>(okhttp3.Request$Builder, kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage):void");
    }

    @Override // org.wikipedia.settings.BasePreferenceLoader, kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
    public final Annotations getAnnotations() {
        return this.annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor
    public final MemberScope getMemberScope() {
        return this.scope;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorNonRootImpl, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot
    public final SourceElement getSource() {
        return new ConnectionPool(6, this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.DeclarationDescriptorImpl, org.wikipedia.settings.BasePreferenceLoader
    public final String toString() {
        return "Lazy Java package fragment: " + this.fqName + " of module " + ((ModuleDescriptorImpl) ((ActivityPageBinding) this.c.url).pageToolbarButtonNotifications);
    }
}
