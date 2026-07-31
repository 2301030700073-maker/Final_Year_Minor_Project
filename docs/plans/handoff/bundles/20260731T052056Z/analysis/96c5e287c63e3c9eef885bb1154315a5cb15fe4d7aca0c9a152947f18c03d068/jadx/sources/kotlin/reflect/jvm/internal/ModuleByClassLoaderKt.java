package kotlin.reflect.jvm.internal;

import androidx.room.Room;
import coil3.ImageLoader$Builder;
import com.caverock.androidsvg.SVGAndroidRenderer;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns$initialize$1;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentProviderOptimized;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.AdditionalClassPartsProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.PlatformDependentDeclarationFilter;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.CompositePackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeErrorReporter;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.RuntimeModuleData;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMetadataVersion;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.SimpleLock;
import kotlin.reflect.jvm.internal.impl.types.DefaultTypeAttributeTranslator;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeCheckerImpl;
import leakcanary.AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2;
import okhttp3.ConnectionPool;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.FormBody;
import okhttp3.MultipartBody;
import okio.ByteString;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.databinding.ActivityPageBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ModuleByClassLoaderKt {
    public static final ConcurrentHashMap moduleByClassLoader = new ConcurrentHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    public static final RuntimeModuleData getOrCreateModule(Class cls) {
        AdditionalClassPartsProvider additionalClassPartsProvider;
        PlatformDependentDeclarationFilter platformDependentDeclarationFilter;
        cls.getClass();
        ClassLoader safeClassLoader = ReflectClassUtilKt.getSafeClassLoader(cls);
        WeakClassLoaderBox weakClassLoaderBox = new WeakClassLoaderBox(safeClassLoader);
        ConcurrentHashMap concurrentHashMap = moduleByClassLoader;
        WeakReference weakReference = (WeakReference) concurrentHashMap.get(weakClassLoaderBox);
        if (weakReference != null) {
            RuntimeModuleData runtimeModuleData = (RuntimeModuleData) weakReference.get();
            if (runtimeModuleData != null) {
                return runtimeModuleData;
            }
            concurrentHashMap.remove(weakClassLoaderBox, weakReference);
        }
        ReflectJavaClassFinder reflectJavaClassFinder = new ReflectJavaClassFinder(safeClassLoader);
        ClassLoader classLoader = Unit.class.getClassLoader();
        classLoader.getClass();
        ReflectJavaClassFinder reflectJavaClassFinder2 = new ReflectJavaClassFinder(classLoader);
        ReflectJavaClassFinder reflectJavaClassFinder3 = new ReflectJavaClassFinder(safeClassLoader);
        RuntimeErrorReporter runtimeErrorReporter = RuntimeErrorReporter.INSTANCE;
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("DeserializationComponentsForJava.ModuleData");
        JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
        ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(Name.special("<" + ("runtime module for " + safeClassLoader) + '>'), lockBasedStorageManager, jvmBuiltIns, 56);
        SimpleLock simpleLock = lockBasedStorageManager.lock;
        simpleLock.lock();
        try {
            if (jvmBuiltIns.builtInsModule != null) {
                throw new AssertionError("Built-ins module is already set: " + jvmBuiltIns.builtInsModule + " (attempting to reset to " + moduleDescriptorImpl + ")");
            }
            jvmBuiltIns.builtInsModule = moduleDescriptorImpl;
            simpleLock.unlock();
            jvmBuiltIns.settingsComputation = new JvmBuiltIns$initialize$1(moduleDescriptorImpl, 0);
            DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
            ConnectionPool connectionPool = new ConnectionPool(4);
            ImageLoader$Builder imageLoader$Builder = new ImageLoader$Builder(lockBasedStorageManager, moduleDescriptorImpl);
            JvmTypeFactoryImpl jvmTypeFactoryImpl = JvmTypeFactoryImpl.INSTANCE$1;
            ByteString.Companion companion = new ByteString.Companion(lockBasedStorageManager);
            ReflectionTypes reflectionTypes = new ReflectionTypes(moduleDescriptorImpl, imageLoader$Builder);
            JavaTypeEnhancementState javaTypeEnhancementState = JavaTypeEnhancementState.DEFAULT;
            AnnotationTypeQualifierResolver annotationTypeQualifierResolver = new AnnotationTypeQualifierResolver(javaTypeEnhancementState);
            JavaTypeEnhancement javaTypeEnhancement = new JavaTypeEnhancement();
            NewKotlinTypeChecker.Companion.getClass();
            NewKotlinTypeCheckerImpl newKotlinTypeCheckerImpl = NewKotlinTypeChecker.Companion.Default;
            LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = new LazyJavaPackageFragmentProvider(new ActivityPageBinding(lockBasedStorageManager, reflectJavaClassFinder3, reflectJavaClassFinder, deserializedDescriptorResolver, companion, connectionPool, jvmTypeFactoryImpl, moduleDescriptorImpl, reflectionTypes, annotationTypeQualifierResolver, javaTypeEnhancement, newKotlinTypeCheckerImpl, javaTypeEnhancementState, new JvmTypeFactoryImpl()));
            JvmMetadataVersion jvmMetadataVersion = JvmMetadataVersion.INSTANCE;
            jvmMetadataVersion.getClass();
            FormBody.Builder builder = new FormBody.Builder(9, reflectJavaClassFinder, deserializedDescriptorResolver, 0 == true ? 1 : 0);
            SVGAndroidRenderer sVGAndroidRenderer = new SVGAndroidRenderer();
            sVGAndroidRenderer.canvas = reflectJavaClassFinder;
            sVGAndroidRenderer.document = lockBasedStorageManager.createMemoizedFunction(new AndroidLeakFixes$TEXT_LINE_POOL$apply$1$2(16, sVGAndroidRenderer));
            sVGAndroidRenderer.state = moduleDescriptorImpl;
            sVGAndroidRenderer.stateStack = imageLoader$Builder;
            sVGAndroidRenderer.parentStack = new FormBody.Builder(moduleDescriptorImpl, imageLoader$Builder);
            sVGAndroidRenderer.matrixStack = JvmMetadataVersion.INSTANCE;
            sVGAndroidRenderer.matrixStack = jvmMetadataVersion;
            List listOf = Room.listOf(DefaultTypeAttributeTranslator.INSTANCE);
            KotlinBuiltIns kotlinBuiltIns = moduleDescriptorImpl.builtIns;
            JvmBuiltIns jvmBuiltIns2 = kotlinBuiltIns instanceof JvmBuiltIns ? (JvmBuiltIns) kotlinBuiltIns : null;
            JvmTypeFactoryImpl jvmTypeFactoryImpl2 = JvmTypeFactoryImpl.INSTANCE;
            if (jvmBuiltIns2 == null || (additionalClassPartsProvider = jvmBuiltIns2.getCustomizer()) == null) {
                additionalClassPartsProvider = AdditionalClassPartsProvider.None.INSTANCE;
            }
            AdditionalClassPartsProvider additionalClassPartsProvider2 = additionalClassPartsProvider;
            if (jvmBuiltIns2 == null || (platformDependentDeclarationFilter = jvmBuiltIns2.getCustomizer()) == null) {
                platformDependentDeclarationFilter = AdditionalClassPartsProvider.None.INSTANCE$2;
            }
            ActivityGalleryBinding activityGalleryBinding = new ActivityGalleryBinding(lockBasedStorageManager, moduleDescriptorImpl, builder, sVGAndroidRenderer, lazyJavaPackageFragmentProvider, runtimeErrorReporter, jvmTypeFactoryImpl2, EmptyList.INSTANCE, imageLoader$Builder, additionalClassPartsProvider2, platformDependentDeclarationFilter, JvmProtoBufUtil.EXTENSION_REGISTRY, newKotlinTypeCheckerImpl, new ByteString.Companion(lockBasedStorageManager), listOf, 262144);
            deserializedDescriptorResolver.components = activityGalleryBinding;
            connectionPool.delegate = new ConnectionPool(9, lazyJavaPackageFragmentProvider);
            JvmBuiltInsPackageFragmentProvider jvmBuiltInsPackageFragmentProvider = new JvmBuiltInsPackageFragmentProvider(lockBasedStorageManager, reflectJavaClassFinder2, moduleDescriptorImpl, imageLoader$Builder, jvmBuiltIns.getCustomizer(), jvmBuiltIns.getCustomizer(), newKotlinTypeCheckerImpl, new ByteString.Companion(lockBasedStorageManager));
            moduleDescriptorImpl.dependencies = new Dispatcher$promoteAndExecute$Effects(ArraysKt___ArraysKt.toList(new ModuleDescriptorImpl[]{moduleDescriptorImpl}), false);
            moduleDescriptorImpl.packageFragmentProviderForModuleContent = new CompositePackageFragmentProvider(Room.listOf((Object[]) new PackageFragmentProviderOptimized[]{lazyJavaPackageFragmentProvider, jvmBuiltInsPackageFragmentProvider}), "CompositeProvider@RuntimeModuleData for " + moduleDescriptorImpl);
            MultipartBody.Builder builder2 = new MultipartBody.Builder();
            builder2.boundary = deserializedDescriptorResolver;
            builder2.type = reflectJavaClassFinder;
            builder2.parts = new ConcurrentHashMap();
            RuntimeModuleData runtimeModuleData2 = new RuntimeModuleData(activityGalleryBinding, builder2);
            while (true) {
                WeakReference weakReference2 = (WeakReference) concurrentHashMap.putIfAbsent(weakClassLoaderBox, new WeakReference(runtimeModuleData2));
                if (weakReference2 == null) {
                    return runtimeModuleData2;
                }
                RuntimeModuleData runtimeModuleData3 = (RuntimeModuleData) weakReference2.get();
                if (runtimeModuleData3 != null) {
                    return runtimeModuleData3;
                }
                concurrentHashMap.remove(weakClassLoaderBox, weakReference2);
            }
        } finally {
        }
    }
}
