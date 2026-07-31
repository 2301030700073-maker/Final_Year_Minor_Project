package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import androidx.room.Room;
import androidx.transition.Transition;
import coil3.ImageLoader$Builder;
import coil3.size.ViewSizeResolver$size$3$1;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.ClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ErrorReporter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.ProtoEnumFlags;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInSerializerProtocol;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.BuiltInsPackageFragmentImpl;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.uuid.UuidKt;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.ConnectionPool;
import okhttp3.FormBody;
import okio.ByteString;
import org.wikipedia.databinding.ActivityGalleryBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class JvmBuiltInsPackageFragmentProvider implements PackageFragmentProviderOptimized {
    public final ActivityGalleryBinding components;
    public final ViewSizeResolver$size$3$1 fragments;
    public final ModuleDescriptorImpl moduleDescriptor;
    public final LockBasedStorageManager storageManager;

    public JvmBuiltInsPackageFragmentProvider(LockBasedStorageManager lockBasedStorageManager, ReflectJavaClassFinder reflectJavaClassFinder, ModuleDescriptorImpl moduleDescriptorImpl, ImageLoader$Builder imageLoader$Builder, JvmBuiltInsCustomizer jvmBuiltInsCustomizer, JvmBuiltInsCustomizer jvmBuiltInsCustomizer2, NewKotlinTypeChecker newKotlinTypeChecker, ByteString.Companion companion) {
        jvmBuiltInsCustomizer.getClass();
        jvmBuiltInsCustomizer2.getClass();
        newKotlinTypeChecker.getClass();
        this.storageManager = lockBasedStorageManager;
        this.moduleDescriptor = moduleDescriptorImpl;
        this.fragments = lockBasedStorageManager.createMemoizedFunctionWithNullableValues(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(20, this));
        ConnectionPool connectionPool = new ConnectionPool(10, this);
        BuiltInSerializerProtocol builtInSerializerProtocol = BuiltInSerializerProtocol.INSTANCE;
        this.components = new ActivityGalleryBinding(lockBasedStorageManager, moduleDescriptorImpl, connectionPool, new FormBody.Builder(moduleDescriptorImpl, imageLoader$Builder, builtInSerializerProtocol), this, ErrorReporter.DO_NOTHING, ProtoEnumFlags.INSTANCE$1, Room.listOf((Object[]) new ClassDescriptorFactory[]{new BuiltInFictitiousFunctionClassFactory(lockBasedStorageManager, moduleDescriptorImpl), new JvmBuiltInClassDescriptorFactory(lockBasedStorageManager, moduleDescriptorImpl)}), imageLoader$Builder, jvmBuiltInsCustomizer, jvmBuiltInsCustomizer2, builtInSerializerProtocol.extensionRegistry, newKotlinTypeChecker, companion, null, 786432);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final void collectPackageFragments(FqName fqName, ArrayList arrayList) {
        fqName.getClass();
        Object invoke = this.fragments.invoke(fqName);
        if (invoke != null) {
            arrayList.add(invoke);
        }
    }

    public final BuiltInsPackageFragmentImpl findPackage(FqName fqName) {
        InputStream loadResource;
        fqName.getClass();
        if (fqName.startsWith(StandardNames.BUILT_INS_PACKAGE_NAME)) {
            BuiltInSerializerProtocol.INSTANCE.getClass();
            loadResource = Transition.AnonymousClass1.loadResource(BuiltInSerializerProtocol.getBuiltInsFilePath(fqName));
        } else {
            loadResource = null;
        }
        if (loadResource != null) {
            return UuidKt.create(fqName, this.storageManager, this.moduleDescriptor, loadResource);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final Collection getSubPackagesOf(FqName fqName, Function1 function1) {
        fqName.getClass();
        return EmptySet.INSTANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized
    public final boolean isEmpty(FqName fqName) {
        fqName.getClass();
        ViewSizeResolver$size$3$1 viewSizeResolver$size$3$1 = this.fragments;
        Object obj = ((ConcurrentHashMap) viewSizeResolver$size$3$1.$viewTreeObserver).get(fqName);
        return ((obj == null || obj == LockBasedStorageManager.NotValue.COMPUTING) ? findPackage(fqName) : (PackageFragmentDescriptor) viewSizeResolver$size$3$1.invoke(fqName)) == null;
    }
}
