package expo.modules.application;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.provider.Settings;
import androidx.tracing.Trace;
import com.android.installreferrer.api.InstallReferrerClient;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.SyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.objects.PropertyComponentBuilder;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KType;

/* compiled from: ApplicationModule.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\tH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\n \u000f*\u0004\u0018\u00010\u000b0\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\rR\u001c\u0010\u0011\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\rR\u0014\u0010\u0017\u001a\u00020\u00188BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lexpo/modules/application/ApplicationModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "context", "Landroid/content/Context;", "getContext", "()Landroid/content/Context;", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "applicationName", "", "getApplicationName", "()Ljava/lang/String;", "packageName", "kotlin.jvm.PlatformType", "getPackageName", "packageManager", "Landroid/content/pm/PackageManager;", "getPackageManager", "()Landroid/content/pm/PackageManager;", "versionName", "getVersionName", "versionCode", "", "getVersionCode", "()I", "expo-application_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ApplicationModule extends Module {
    /* JADX INFO: Access modifiers changed from: private */
    public final Context getContext() {
        Context reactContext = getAppContext().getReactContext();
        if (reactContext != null) {
            return reactContext;
        }
        throw new Exceptions.ReactContextLost();
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent;
        ApplicationModule applicationModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (applicationModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(applicationModule);
            moduleDefinitionBuilder.Name("ExpoApplication");
            moduleDefinitionBuilder.Constants(new Function0<Map<String, ? extends Object>>() { // from class: expo.modules.application.ApplicationModule$definition$1$1
                @Override // kotlin.jvm.functions.Function0
                public final Map<String, ? extends Object> invoke() {
                    String applicationName;
                    String packageName;
                    String versionName;
                    int versionCode;
                    applicationName = ApplicationModule.this.getApplicationName();
                    packageName = ApplicationModule.this.getPackageName();
                    versionName = ApplicationModule.this.getVersionName();
                    versionCode = ApplicationModule.this.getVersionCode();
                    return MapsKt.mapOf(TuplesKt.to("applicationName", applicationName), TuplesKt.to("applicationId", packageName), TuplesKt.to("nativeApplicationVersion", versionName), TuplesKt.to("nativeBuildVersion", String.valueOf(versionCode)));
                }
            });
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            PropertyComponentBuilder propertyComponentBuilder = new PropertyComponentBuilder("androidId");
            AnyType[] anyTypeArr = new AnyType[0];
            ReturnType returnType = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(String.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(String.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(String.class), returnType);
            }
            propertyComponentBuilder.setGetter(new SyncFunctionComponent("get", anyTypeArr, returnType, new Function1<Object[], Object>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$Property$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Context context;
                    Intrinsics.checkNotNullParameter(it, "it");
                    context = ApplicationModule.this.getContext();
                    return Settings.Secure.getString(context.getContentResolver(), "android_id");
                }
            }));
            moduleDefinitionBuilder2.getProperties().put("androidId", propertyComponentBuilder);
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr2 = new AnyType[0];
            Function1<Object[], Double> function1 = new Function1<Object[], Double>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$AsyncFunction$1
                @Override // kotlin.jvm.functions.Function1
                public final Double invoke(Object[] it) {
                    Context context;
                    Context context2;
                    PackageInfo packageInfoCompat;
                    Intrinsics.checkNotNullParameter(it, "it");
                    context = ApplicationModule.this.getContext();
                    PackageManager packageManager = context.getPackageManager();
                    context2 = ApplicationModule.this.getContext();
                    String packageName = context2.getPackageName();
                    Intrinsics.checkNotNull(packageManager);
                    Intrinsics.checkNotNull(packageName);
                    packageInfoCompat = ApplicationModuleKt.getPackageInfoCompat(packageManager, packageName, 0);
                    return Double.valueOf(packageInfoCompat.firstInstallTime);
                }
            };
            if (!Intrinsics.areEqual(Double.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Double.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Double.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Double.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Double.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("getInstallationTimeAsync", anyTypeArr2, function1);
            }
            moduleDefinitionBuilder3.getAsyncFunctions().put("getInstallationTimeAsync", untypedAsyncFunctionComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr3 = new AnyType[0];
            Function1<Object[], Double> function12 = new Function1<Object[], Double>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$AsyncFunction$2
                @Override // kotlin.jvm.functions.Function1
                public final Double invoke(Object[] it) {
                    Context context;
                    Context context2;
                    PackageInfo packageInfoCompat;
                    Intrinsics.checkNotNullParameter(it, "it");
                    context = ApplicationModule.this.getContext();
                    PackageManager packageManager = context.getPackageManager();
                    context2 = ApplicationModule.this.getContext();
                    String packageName = context2.getPackageName();
                    Intrinsics.checkNotNull(packageManager);
                    Intrinsics.checkNotNull(packageName);
                    packageInfoCompat = ApplicationModuleKt.getPackageInfoCompat(packageManager, packageName, 0);
                    return Double.valueOf(packageInfoCompat.lastUpdateTime);
                }
            };
            if (!Intrinsics.areEqual(Double.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Double.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Double.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Double.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Double.class, String.class)) {
                                untypedAsyncFunctionComponent2 = new StringAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
                            } else {
                                untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
                            }
                        } else {
                            untypedAsyncFunctionComponent2 = new FloatAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
                        }
                    } else {
                        untypedAsyncFunctionComponent2 = new DoubleAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
                    }
                } else {
                    untypedAsyncFunctionComponent2 = new BoolAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
                }
            } else {
                untypedAsyncFunctionComponent2 = new IntAsyncFunctionComponent("getLastUpdateTimeAsync", anyTypeArr3, function12);
            }
            moduleDefinitionBuilder4.getAsyncFunctions().put("getLastUpdateTimeAsync", untypedAsyncFunctionComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Promise.class, Promise.class)) {
                asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("getInstallReferrerAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Context context;
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        StringBuilder sb = new StringBuilder();
                        context = ApplicationModule.this.getContext();
                        InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
                        build.startConnection(new ApplicationModule$definition$1$5$1(build, sb, promise));
                    }
                });
            } else {
                TypeConverterProvider converters = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr4 = new AnyType[1];
                AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Promise.class), false));
                if (anyType == null) {
                    anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Promise.class), false, new Function0<KType>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$AsyncFunction$4
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(Promise.class);
                        }
                    }), converters);
                }
                anyTypeArr4[0] = anyType;
                Function1<Object[], Unit> function13 = new Function1<Object[], Unit>() { // from class: expo.modules.application.ApplicationModule$definition$lambda$4$$inlined$AsyncFunction$5
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Context context;
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        Promise promise = (Promise) objArr[0];
                        StringBuilder sb = new StringBuilder();
                        context = ApplicationModule.this.getContext();
                        InstallReferrerClient build = InstallReferrerClient.newBuilder(context).build();
                        build.startConnection(new ApplicationModule$definition$1$5$1(build, sb, promise));
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent3 = new StringAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                                } else {
                                    untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                                }
                            } else {
                                untypedAsyncFunctionComponent3 = new FloatAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                            }
                        } else {
                            untypedAsyncFunctionComponent3 = new DoubleAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                        }
                    } else {
                        untypedAsyncFunctionComponent3 = new BoolAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                    }
                } else {
                    untypedAsyncFunctionComponent3 = new IntAsyncFunctionComponent("getInstallReferrerAsync", anyTypeArr4, function13);
                }
                asyncFunctionWithPromiseComponent = untypedAsyncFunctionComponent3;
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("getInstallReferrerAsync", asyncFunctionWithPromiseComponent);
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getApplicationName() {
        return getContext().getApplicationInfo().loadLabel(getContext().getPackageManager()).toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getPackageName() {
        return getContext().getPackageName();
    }

    private final PackageManager getPackageManager() {
        return getContext().getPackageManager();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getVersionName() {
        PackageInfo packageInfoCompat;
        PackageManager packageManager = getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "<get-packageManager>(...)");
        String packageName = getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "<get-packageName>(...)");
        packageInfoCompat = ApplicationModuleKt.getPackageInfoCompat(packageManager, packageName, 0);
        return packageInfoCompat.versionName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getVersionCode() {
        PackageInfo packageInfoCompat;
        long longVersionCode;
        PackageManager packageManager = getPackageManager();
        Intrinsics.checkNotNullExpressionValue(packageManager, "<get-packageManager>(...)");
        String packageName = getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "<get-packageName>(...)");
        packageInfoCompat = ApplicationModuleKt.getPackageInfoCompat(packageManager, packageName, 0);
        longVersionCode = ApplicationModuleKt.getLongVersionCode(packageInfoCompat);
        return (int) longVersionCode;
    }
}
