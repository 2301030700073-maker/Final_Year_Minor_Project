package expo.modules.fetch;

import android.content.Context;
import androidx.tracing.Trace;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.modules.network.CookieJarContainer;
import com.facebook.react.modules.network.ForwardingCookieHandler;
import com.facebook.react.modules.network.OkHttpClientProvider;
import expo.modules.core.errors.ModuleDestroyedException;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.classcomponent.ClassComponentBuilder;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.exception.CodedException;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.exception.UnexpectedException;
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
import expo.modules.kotlin.objects.PropertyComponentBuilderWithThis;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import io.sentry.android.core.SentryLogcatAdapter;
import java.net.URL;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.text.Charsets;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okhttp3.CookieJar;
import okhttp3.JavaNetCookieJar;
import okhttp3.OkHttpClient;

/* compiled from: ExpoFetchModule.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u001d\u001a\u00020\u001eH\u0016R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\f\u0010\rR\u001b\u0010\u000f\u001a\u00020\u00108BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\t\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0014\u001a\u00020\u00158BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\t\u001a\u0004\b\u001a\u0010\u001b¨\u0006 "}, d2 = {"Lexpo/modules/fetch/ExpoFetchModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "client", "Lokhttp3/OkHttpClient;", "getClient", "()Lokhttp3/OkHttpClient;", "client$delegate", "Lkotlin/Lazy;", "cookieHandler", "Lcom/facebook/react/modules/network/ForwardingCookieHandler;", "getCookieHandler", "()Lcom/facebook/react/modules/network/ForwardingCookieHandler;", "cookieHandler$delegate", "cookieJarContainer", "Lcom/facebook/react/modules/network/CookieJarContainer;", "getCookieJarContainer", "()Lcom/facebook/react/modules/network/CookieJarContainer;", "cookieJarContainer$delegate", "reactContext", "Lcom/facebook/react/bridge/ReactContext;", "getReactContext", "()Lcom/facebook/react/bridge/ReactContext;", "moduleCoroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "getModuleCoroutineScope", "()Lkotlinx/coroutines/CoroutineScope;", "moduleCoroutineScope$delegate", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "Companion", "expo_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ExpoFetchModule extends Module {
    private static final String TAG = "ExpoFetchModule";

    /* renamed from: client$delegate, reason: from kotlin metadata */
    private final Lazy client = LazyKt.lazy(new Function0() { // from class: expo.modules.fetch.ExpoFetchModule$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            OkHttpClient client_delegate$lambda$0;
            client_delegate$lambda$0 = ExpoFetchModule.client_delegate$lambda$0(ExpoFetchModule.this);
            return client_delegate$lambda$0;
        }
    });

    /* renamed from: cookieHandler$delegate, reason: from kotlin metadata */
    private final Lazy cookieHandler = LazyKt.lazy(new Function0() { // from class: expo.modules.fetch.ExpoFetchModule$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            ForwardingCookieHandler cookieHandler_delegate$lambda$1;
            cookieHandler_delegate$lambda$1 = ExpoFetchModule.cookieHandler_delegate$lambda$1(ExpoFetchModule.this);
            return cookieHandler_delegate$lambda$1;
        }
    });

    /* renamed from: cookieJarContainer$delegate, reason: from kotlin metadata */
    private final Lazy cookieJarContainer = LazyKt.lazy(new Function0() { // from class: expo.modules.fetch.ExpoFetchModule$$ExternalSyntheticLambda2
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CookieJarContainer cookieJarContainer_delegate$lambda$2;
            cookieJarContainer_delegate$lambda$2 = ExpoFetchModule.cookieJarContainer_delegate$lambda$2(ExpoFetchModule.this);
            return cookieJarContainer_delegate$lambda$2;
        }
    });

    /* renamed from: moduleCoroutineScope$delegate, reason: from kotlin metadata */
    private final Lazy moduleCoroutineScope = LazyKt.lazy(new Function0() { // from class: expo.modules.fetch.ExpoFetchModule$$ExternalSyntheticLambda3
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            CoroutineScope moduleCoroutineScope_delegate$lambda$3;
            moduleCoroutineScope_delegate$lambda$3 = ExpoFetchModule.moduleCoroutineScope_delegate$lambda$3(ExpoFetchModule.this);
            return moduleCoroutineScope_delegate$lambda$3;
        }
    });

    /* JADX INFO: Access modifiers changed from: private */
    public final OkHttpClient getClient() {
        return (OkHttpClient) this.client.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OkHttpClient client_delegate$lambda$0(ExpoFetchModule expoFetchModule) {
        return OkHttpClientProvider.createClient(expoFetchModule.getReactContext()).newBuilder().addInterceptor(new OkHttpFileUrlInterceptor(expoFetchModule.getReactContext())).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ForwardingCookieHandler cookieHandler_delegate$lambda$1(ExpoFetchModule expoFetchModule) {
        return new ForwardingCookieHandler(expoFetchModule.getReactContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ForwardingCookieHandler getCookieHandler() {
        return (ForwardingCookieHandler) this.cookieHandler.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CookieJarContainer cookieJarContainer_delegate$lambda$2(ExpoFetchModule expoFetchModule) {
        CookieJar cookieJar = expoFetchModule.getClient().cookieJar();
        Intrinsics.checkNotNull(cookieJar, "null cannot be cast to non-null type com.facebook.react.modules.network.CookieJarContainer");
        return (CookieJarContainer) cookieJar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CookieJarContainer getCookieJarContainer() {
        return (CookieJarContainer) this.cookieJarContainer.getValue();
    }

    private final ReactContext getReactContext() {
        Context reactContext = getAppContext().getReactContext();
        ReactContext reactContext2 = reactContext instanceof ReactContext ? (ReactContext) reactContext : null;
        if (reactContext2 != null) {
            return reactContext2;
        }
        throw new Exceptions.ReactContextLost();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CoroutineScope getModuleCoroutineScope() {
        return (CoroutineScope) this.moduleCoroutineScope.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CoroutineScope moduleCoroutineScope_delegate$lambda$3(ExpoFetchModule expoFetchModule) {
        return CoroutineScopeKt.CoroutineScope(expoFetchModule.getAppContext().getModulesQueue().getCoroutineContext().plus(new CoroutineName("expo.modules.fetch.CoroutineScope")));
    }

    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        String str;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        AsyncFunctionWithPromiseComponent intAsyncFunctionComponent;
        ExpoFetchModule expoFetchModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (expoFetchModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(expoFetchModule);
            moduleDefinitionBuilder.Name("ExpoFetchModule");
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    CookieJarContainer cookieJarContainer;
                    ForwardingCookieHandler cookieHandler;
                    cookieJarContainer = ExpoFetchModule.this.getCookieJarContainer();
                    cookieHandler = ExpoFetchModule.this.getCookieHandler();
                    cookieJarContainer.setCookieJar(new JavaNetCookieJar(cookieHandler));
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_DESTROY, new BasicEventListener(EventName.MODULE_DESTROY, new Function0<Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$$inlined$OnDestroy$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ForwardingCookieHandler cookieHandler;
                    CookieJarContainer cookieJarContainer;
                    String str2;
                    CoroutineScope moduleCoroutineScope;
                    cookieHandler = ExpoFetchModule.this.getCookieHandler();
                    cookieHandler.destroy();
                    cookieJarContainer = ExpoFetchModule.this.getCookieJarContainer();
                    cookieJarContainer.removeCookieJar();
                    try {
                        moduleCoroutineScope = ExpoFetchModule.this.getModuleCoroutineScope();
                        CoroutineScopeKt.cancel(moduleCoroutineScope, new ModuleDestroyedException(null, 1, null));
                    } catch (IllegalStateException unused) {
                        str2 = ExpoFetchModule.TAG;
                        SentryLogcatAdapter.e(str2, "The scope does not have a job in it");
                    }
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(NativeResponse.class);
            Module module = moduleDefinitionBuilder2.getModule();
            if (module == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            AppContext appContext = module.getAppContext();
            String simpleName = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
            ClassComponentBuilder classComponentBuilder = new ClassComponentBuilder(appContext, simpleName, orCreateKotlinClass, anyType == null ? new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$$inlined$Class$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(NativeResponse.class);
                }
            }), null) : anyType, moduleDefinitionBuilder2.getConverters());
            AnyType[] anyTypeArr = new AnyType[0];
            ReturnType returnType = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType);
            }
            classComponentBuilder.setConstructor(new SyncFunctionComponent("constructor", anyTypeArr, returnType, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Constructor$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    CoroutineScope moduleCoroutineScope;
                    Intrinsics.checkNotNullParameter(it, "it");
                    AppContext appContext2 = ExpoFetchModule.this.getAppContext();
                    moduleCoroutineScope = ExpoFetchModule.this.getModuleCoroutineScope();
                    return new NativeResponse(appContext2, moduleCoroutineScope);
                }
            }));
            ClassComponentBuilder classComponentBuilder2 = classComponentBuilder;
            if (Intrinsics.areEqual(NativeResponse.class, Promise.class)) {
                untypedAsyncFunctionComponent = new AsyncFunctionWithPromiseComponent("startStreaming", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((NativeResponse) promise).startStreaming();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
                str = "constructor";
            } else {
                TypeConverterProvider converters = classComponentBuilder2.getConverters();
                AnyType[] anyTypeArr2 = new AnyType[1];
                str = "constructor";
                AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
                if (anyType2 == null) {
                    anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$2
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(NativeResponse.class);
                        }
                    }), converters);
                }
                anyTypeArr2[0] = anyType2;
                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("startStreaming", anyTypeArr2, new Function1<Object[], byte[]>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function1
                    public final byte[] invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        return ((NativeResponse) objArr[0]).startStreaming();
                    }
                });
            }
            classComponentBuilder2.getAsyncFunctions().put("startStreaming", untypedAsyncFunctionComponent);
            ClassComponentBuilder classComponentBuilder3 = classComponentBuilder;
            TypeConverterProvider converters2 = classComponentBuilder3.getConverters();
            AnyType[] anyTypeArr3 = new AnyType[2];
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$4
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeResponse.class);
                    }
                }), converters2);
            }
            anyTypeArr3[0] = anyType3;
            AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
            if (anyType4 == null) {
                anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(String.class);
                    }
                }), converters2);
            }
            anyTypeArr3[1] = anyType4;
            Function1<Object[], Unit> function1 = new Function1<Object[], Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunction$6
                @Override // kotlin.jvm.functions.Function1
                public final Unit invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    ((NativeResponse) obj).cancelStreaming();
                    return Unit.INSTANCE;
                }
            };
            classComponentBuilder3.getAsyncFunctions().put("cancelStreaming", Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1) : new UntypedAsyncFunctionComponent("cancelStreaming", anyTypeArr3, function1));
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "bodyUsed");
            AnyType[] anyTypeArr4 = {new AnyType(propertyComponentBuilderWithThis.getThisType(), null, 2, null)};
            ReturnType returnType2 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType2 == null) {
                returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType2);
            }
            SyncFunctionComponent syncFunctionComponent = new SyncFunctionComponent("get", anyTypeArr4, returnType2, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((NativeResponse) it[0]).getBodyUsed());
                }
            });
            syncFunctionComponent.setOwnerType(propertyComponentBuilderWithThis.getThisType());
            syncFunctionComponent.setCanTakeOwner(true);
            propertyComponentBuilderWithThis.setGetter(syncFunctionComponent);
            classComponentBuilder.getProperties().put("bodyUsed", propertyComponentBuilderWithThis);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis2 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "_rawHeaders");
            AnyType[] anyTypeArr5 = {new AnyType(propertyComponentBuilderWithThis2.getThisType(), null, 2, null)};
            ReturnType returnType3 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(List.class));
            if (returnType3 == null) {
                returnType3 = new ReturnType(Reflection.getOrCreateKotlinClass(List.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(List.class), returnType3);
            }
            SyncFunctionComponent syncFunctionComponent2 = new SyncFunctionComponent("get", anyTypeArr5, returnType3, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    List<Pair<String, String>> headers;
                    Intrinsics.checkNotNullParameter(it, "it");
                    NativeResponseInit responseInit = ((NativeResponse) it[0]).getResponseInit();
                    return (responseInit == null || (headers = responseInit.getHeaders()) == null) ? CollectionsKt.emptyList() : headers;
                }
            });
            syncFunctionComponent2.setOwnerType(propertyComponentBuilderWithThis2.getThisType());
            syncFunctionComponent2.setCanTakeOwner(true);
            propertyComponentBuilderWithThis2.setGetter(syncFunctionComponent2);
            classComponentBuilder.getProperties().put("_rawHeaders", propertyComponentBuilderWithThis2);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis3 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "status");
            AnyType[] anyTypeArr6 = {new AnyType(propertyComponentBuilderWithThis3.getThisType(), null, 2, null)};
            ReturnType returnType4 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Integer.class));
            if (returnType4 == null) {
                returnType4 = new ReturnType(Reflection.getOrCreateKotlinClass(Integer.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Integer.class), returnType4);
            }
            SyncFunctionComponent syncFunctionComponent3 = new SyncFunctionComponent("get", anyTypeArr6, returnType4, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    NativeResponseInit responseInit = ((NativeResponse) it[0]).getResponseInit();
                    return Integer.valueOf(responseInit != null ? responseInit.getStatus() : -1);
                }
            });
            syncFunctionComponent3.setOwnerType(propertyComponentBuilderWithThis3.getThisType());
            syncFunctionComponent3.setCanTakeOwner(true);
            propertyComponentBuilderWithThis3.setGetter(syncFunctionComponent3);
            classComponentBuilder.getProperties().put("status", propertyComponentBuilderWithThis3);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis4 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "statusText");
            AnyType[] anyTypeArr7 = {new AnyType(propertyComponentBuilderWithThis4.getThisType(), null, 2, null)};
            ReturnType returnType5 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(String.class));
            if (returnType5 == null) {
                returnType5 = new ReturnType(Reflection.getOrCreateKotlinClass(String.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(String.class), returnType5);
            }
            SyncFunctionComponent syncFunctionComponent4 = new SyncFunctionComponent("get", anyTypeArr7, returnType5, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    String statusText;
                    Intrinsics.checkNotNullParameter(it, "it");
                    NativeResponseInit responseInit = ((NativeResponse) it[0]).getResponseInit();
                    return (responseInit == null || (statusText = responseInit.getStatusText()) == null) ? "" : statusText;
                }
            });
            syncFunctionComponent4.setOwnerType(propertyComponentBuilderWithThis4.getThisType());
            syncFunctionComponent4.setCanTakeOwner(true);
            propertyComponentBuilderWithThis4.setGetter(syncFunctionComponent4);
            classComponentBuilder.getProperties().put("statusText", propertyComponentBuilderWithThis4);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis5 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "url");
            AnyType[] anyTypeArr8 = {new AnyType(propertyComponentBuilderWithThis5.getThisType(), null, 2, null)};
            ReturnType returnType6 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(String.class));
            if (returnType6 == null) {
                returnType6 = new ReturnType(Reflection.getOrCreateKotlinClass(String.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(String.class), returnType6);
            }
            SyncFunctionComponent syncFunctionComponent5 = new SyncFunctionComponent("get", anyTypeArr8, returnType6, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    String url;
                    Intrinsics.checkNotNullParameter(it, "it");
                    NativeResponseInit responseInit = ((NativeResponse) it[0]).getResponseInit();
                    return (responseInit == null || (url = responseInit.getUrl()) == null) ? "" : url;
                }
            });
            syncFunctionComponent5.setOwnerType(propertyComponentBuilderWithThis5.getThisType());
            syncFunctionComponent5.setCanTakeOwner(true);
            propertyComponentBuilderWithThis5.setGetter(syncFunctionComponent5);
            classComponentBuilder.getProperties().put("url", propertyComponentBuilderWithThis5);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis6 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "redirected");
            AnyType[] anyTypeArr9 = {new AnyType(propertyComponentBuilderWithThis6.getThisType(), null, 2, null)};
            ReturnType returnType7 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType7 == null) {
                returnType7 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType7);
            }
            SyncFunctionComponent syncFunctionComponent6 = new SyncFunctionComponent("get", anyTypeArr9, returnType7, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$Property$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    NativeResponseInit responseInit = ((NativeResponse) it[0]).getResponseInit();
                    return Boolean.valueOf(responseInit != null ? responseInit.getRedirected() : false);
                }
            });
            syncFunctionComponent6.setOwnerType(propertyComponentBuilderWithThis6.getThisType());
            syncFunctionComponent6.setCanTakeOwner(true);
            propertyComponentBuilderWithThis6.setGetter(syncFunctionComponent6);
            classComponentBuilder.getProperties().put("redirected", propertyComponentBuilderWithThis6);
            ClassComponentBuilder classComponentBuilder4 = classComponentBuilder;
            TypeConverterProvider converters3 = classComponentBuilder4.getConverters();
            AnyType[] anyTypeArr10 = new AnyType[1];
            AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
            if (anyType5 == null) {
                anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeResponse.class);
                    }
                }), converters3);
            }
            anyTypeArr10[0] = anyType5;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("arrayBuffer", anyTypeArr10, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunctionWithPromise$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    final NativeResponse nativeResponse = (NativeResponse) objArr[0];
                    nativeResponse.waitForStates(CollectionsKt.listOf(ResponseState.BODY_COMPLETED), new Function1<ResponseState, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$1$3$10$1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ResponseState responseState) {
                            invoke2(responseState);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ResponseState it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            promise.resolve(NativeResponse.this.getSink().finalize());
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            classComponentBuilder4.getAsyncFunctions().put("arrayBuffer", asyncFunctionWithPromiseComponent);
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2 = asyncFunctionWithPromiseComponent;
            ClassComponentBuilder classComponentBuilder5 = classComponentBuilder;
            TypeConverterProvider converters4 = classComponentBuilder5.getConverters();
            AnyType[] anyTypeArr11 = new AnyType[1];
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
            if (anyType6 == null) {
                anyType6 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunctionWithPromise$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeResponse.class);
                    }
                }), converters4);
            }
            anyTypeArr11[0] = anyType6;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent3 = new AsyncFunctionWithPromiseComponent("text", anyTypeArr11, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$17$$inlined$AsyncFunctionWithPromise$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    final NativeResponse nativeResponse = (NativeResponse) objArr[0];
                    nativeResponse.waitForStates(CollectionsKt.listOf(ResponseState.BODY_COMPLETED), new Function1<ResponseState, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$1$3$11$1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ResponseState responseState) {
                            invoke2(responseState);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ResponseState it) {
                            Intrinsics.checkNotNullParameter(it, "it");
                            promise.resolve(new String(NativeResponse.this.getSink().finalize(), Charsets.UTF_8));
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            classComponentBuilder5.getAsyncFunctions().put("text", asyncFunctionWithPromiseComponent3);
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent4 = asyncFunctionWithPromiseComponent3;
            moduleDefinitionBuilder2.getClassData().add(classComponentBuilder.buildClass());
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(NativeRequest.class);
            Module module2 = moduleDefinitionBuilder3.getModule();
            if (module2 == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            AppContext appContext2 = module2.getAppContext();
            String simpleName2 = JvmClassMappingKt.getJavaClass(orCreateKotlinClass2).getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
            AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeRequest.class), false));
            ClassComponentBuilder classComponentBuilder6 = new ClassComponentBuilder(appContext2, simpleName2, orCreateKotlinClass2, anyType7 == null ? new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeRequest.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$$inlined$Class$2
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(NativeRequest.class);
                }
            }), null) : anyType7, moduleDefinitionBuilder3.getConverters());
            TypeConverterProvider converters5 = classComponentBuilder6.getConverters();
            AnyType[] anyTypeArr12 = new AnyType[1];
            AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeResponse.class), false));
            if (anyType8 == null) {
                anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeResponse.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$Constructor$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeResponse.class);
                    }
                }), converters5);
            }
            anyTypeArr12[0] = anyType8;
            ReturnType returnType8 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType8 == null) {
                returnType8 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType8);
            }
            classComponentBuilder6.setConstructor(new SyncFunctionComponent(str, anyTypeArr12, returnType8, new Function1<Object[], Object>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$Constructor$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    return new NativeRequest(ExpoFetchModule.this.getAppContext(), (NativeResponse) objArr[0]);
                }
            }));
            ClassComponentBuilder classComponentBuilder7 = classComponentBuilder6;
            TypeConverterProvider converters6 = classComponentBuilder7.getConverters();
            AnyType[] anyTypeArr13 = new AnyType[4];
            AnyType anyType9 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeRequest.class), false));
            if (anyType9 == null) {
                anyType9 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeRequest.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeRequest.class);
                    }
                }), converters6);
            }
            anyTypeArr13[0] = anyType9;
            AnyType anyType10 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(URL.class), false));
            if (anyType10 == null) {
                anyType10 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(URL.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(URL.class);
                    }
                }), converters6);
            }
            anyTypeArr13[1] = anyType10;
            AnyType anyType11 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeRequestInit.class), false));
            if (anyType11 == null) {
                anyType11 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeRequestInit.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(NativeRequestInit.class);
                    }
                }), converters6);
            }
            anyTypeArr13[2] = anyType11;
            AnyType anyType12 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(byte[].class), true));
            if (anyType12 == null) {
                anyType12 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(byte[].class), true, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$4
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(byte[].class);
                    }
                }), converters6);
            }
            anyTypeArr13[3] = anyType12;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent5 = new AsyncFunctionWithPromiseComponent("start", anyTypeArr13, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunctionWithPromise$5
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, final Promise promise) {
                    OkHttpClient client;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    Object obj2 = objArr[1];
                    Object obj3 = objArr[2];
                    byte[] bArr = (byte[]) objArr[3];
                    final NativeRequest nativeRequest = (NativeRequest) obj;
                    client = ExpoFetchModule.this.getClient();
                    nativeRequest.start(client, (URL) obj2, (NativeRequestInit) obj3, bArr);
                    nativeRequest.getResponse().waitForStates(CollectionsKt.listOf((Object[]) new ResponseState[]{ResponseState.RESPONSE_RECEIVED, ResponseState.ERROR_RECEIVED}), new Function1<ResponseState, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$1$4$2$1
                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(ResponseState responseState) {
                            invoke2(responseState);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(ResponseState state) {
                            FetchUnknownException fetchUnknownException;
                            Intrinsics.checkNotNullParameter(state, "state");
                            if (state == ResponseState.RESPONSE_RECEIVED) {
                                Promise.this.resolve();
                                return;
                            }
                            if (state == ResponseState.ERROR_RECEIVED) {
                                Promise promise2 = Promise.this;
                                Exception error = nativeRequest.getResponse().getError();
                                if (error == null) {
                                    fetchUnknownException = new FetchUnknownException();
                                } else {
                                    Exception exc = error;
                                    if (exc instanceof CodedException) {
                                        fetchUnknownException = (CodedException) exc;
                                    } else if (exc instanceof expo.modules.core.errors.CodedException) {
                                        expo.modules.core.errors.CodedException codedException = (expo.modules.core.errors.CodedException) exc;
                                        String code = codedException.getCode();
                                        Intrinsics.checkNotNullExpressionValue(code, "getCode(...)");
                                        fetchUnknownException = new CodedException(code, codedException.getMessage(), codedException.getCause());
                                    } else {
                                        fetchUnknownException = new UnexpectedException(exc);
                                    }
                                }
                                promise2.reject(fetchUnknownException);
                            }
                        }
                    });
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            classComponentBuilder7.getAsyncFunctions().put("start", asyncFunctionWithPromiseComponent5);
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent6 = asyncFunctionWithPromiseComponent5;
            ClassComponentBuilder classComponentBuilder8 = classComponentBuilder6;
            if (Intrinsics.areEqual(NativeRequest.class, Promise.class)) {
                intAsyncFunctionComponent = new AsyncFunctionWithPromiseComponent("cancel", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunction$1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((NativeRequest) promise).cancel();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters7 = classComponentBuilder8.getConverters();
                AnyType[] anyTypeArr14 = new AnyType[1];
                AnyType anyType13 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(NativeRequest.class), false));
                if (anyType13 == null) {
                    anyType13 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(NativeRequest.class), false, new Function0<KType>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunction$2
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(NativeRequest.class);
                        }
                    }), converters7);
                }
                anyTypeArr14[0] = anyType13;
                Function1<Object[], Unit> function12 = new Function1<Object[], Unit>() { // from class: expo.modules.fetch.ExpoFetchModule$definition$lambda$22$lambda$21$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((NativeRequest) objArr[0]).cancel();
                        return Unit.INSTANCE;
                    }
                };
                intAsyncFunctionComponent = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("cancel", anyTypeArr14, function12) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("cancel", anyTypeArr14, function12) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("cancel", anyTypeArr14, function12) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("cancel", anyTypeArr14, function12) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("cancel", anyTypeArr14, function12) : new UntypedAsyncFunctionComponent("cancel", anyTypeArr14, function12);
            }
            classComponentBuilder8.getAsyncFunctions().put("cancel", intAsyncFunctionComponent);
            moduleDefinitionBuilder3.getClassData().add(classComponentBuilder6.buildClass());
            return moduleDefinitionBuilder.buildModule();
        } finally {
            Trace.endSection();
        }
    }
}
