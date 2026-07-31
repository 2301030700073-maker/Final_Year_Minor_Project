package expo.modules.image;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.View;
import androidx.core.graphics.drawable.DrawableKt;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.request.FutureTarget;
import com.facebook.react.uimanager.ViewProps;
import com.facebook.react.views.textinput.ReactTextInputShadowNode;
import com.github.penfeizhou.animation.apng.APNGDrawable;
import com.github.penfeizhou.animation.gif.GifDrawable;
import com.github.penfeizhou.animation.webp.WebPDrawable;
import com.propertyguru.webkit.IncognitoWebView;
import expo.modules.image.enums.ContentFit;
import expo.modules.image.enums.Priority;
import expo.modules.image.records.CachePolicy;
import expo.modules.image.records.ContentPosition;
import expo.modules.image.records.DecodeFormat;
import expo.modules.image.records.DecodedSource;
import expo.modules.image.records.ImageLoadOptions;
import expo.modules.image.records.ImageTransition;
import expo.modules.image.records.SourceMap;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.classcomponent.ClassComponentBuilder;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
import expo.modules.kotlin.exception.Exceptions;
import expo.modules.kotlin.functions.AsyncFunctionBuilder;
import expo.modules.kotlin.functions.AsyncFunctionWithPromiseComponent;
import expo.modules.kotlin.functions.BoolAsyncFunctionComponent;
import expo.modules.kotlin.functions.DoubleAsyncFunctionComponent;
import expo.modules.kotlin.functions.FloatAsyncFunctionComponent;
import expo.modules.kotlin.functions.IntAsyncFunctionComponent;
import expo.modules.kotlin.functions.Queues;
import expo.modules.kotlin.functions.StringAsyncFunctionComponent;
import expo.modules.kotlin.functions.SuspendFunctionComponent;
import expo.modules.kotlin.functions.SyncFunctionComponent;
import expo.modules.kotlin.functions.UntypedAsyncFunctionComponent;
import expo.modules.kotlin.modules.Module;
import expo.modules.kotlin.modules.ModuleDefinitionBuilder;
import expo.modules.kotlin.modules.ModuleDefinitionData;
import expo.modules.kotlin.objects.PropertyComponentBuilder;
import expo.modules.kotlin.objects.PropertyComponentBuilderWithThis;
import expo.modules.kotlin.sharedobjects.SharedRef;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.EitherOfThree;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.kotlin.views.AnyViewProp;
import expo.modules.kotlin.views.ConcreteViewProp;
import expo.modules.kotlin.views.ViewDefinitionBuilder;
import expo.modules.kotlin.views.decorators.CSSPropsKt;
import io.sentry.protocol.SentryThread;
import java.io.File;
import java.util.List;
import java.util.Map;
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
import kotlin.reflect.KTypeProjection;

/* compiled from: ExpoImageModule.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"Lexpo/modules/image/ExpoImageModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "expo-image_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class ExpoImageModule extends Module {
    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent3;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent4;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent5;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent3;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent6;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent4;
        UntypedAsyncFunctionComponent untypedAsyncFunctionComponent7;
        AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent5;
        ExpoImageModule expoImageModule = this;
        androidx.tracing.Trace.beginSection("[ExpoModulesCore] " + (expoImageModule.getClass() + ".ModuleDefinition"));
        try {
            ModuleDefinitionBuilder moduleDefinitionBuilder = new ModuleDefinitionBuilder(expoImageModule);
            moduleDefinitionBuilder.Name("ExpoImage");
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                    if (reactContext != null) {
                        reactContext.registerComponentCallbacks(ExpoImageComponentCallbacks.INSTANCE);
                    }
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_DESTROY, new BasicEventListener(EventName.MODULE_DESTROY, new Function0<Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$OnDestroy$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                    if (reactContext != null) {
                        reactContext.unregisterComponentCallbacks(ExpoImageComponentCallbacks.INSTANCE);
                    }
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            TypeConverterProvider converters = moduleDefinitionBuilder2.getConverters();
            AnyType[] anyTypeArr = new AnyType[3];
            AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(List.class), false));
            if (anyType == null) {
                anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(List.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(List.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)));
                    }
                }), converters);
            }
            anyTypeArr[0] = anyType;
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(CachePolicy.class), false));
            if (anyType2 == null) {
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(CachePolicy.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(CachePolicy.class);
                    }
                }), converters);
            }
            anyTypeArr[1] = anyType2;
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Map.class), true));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Map.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Map.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(String.class)));
                    }
                }), converters);
            }
            anyTypeArr[2] = anyType3;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent6 = new AsyncFunctionWithPromiseComponent("prefetch", anyTypeArr, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$4
                /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2(java.lang.Object[] r12, final expo.modules.kotlin.Promise r13) {
                    /*
                        r11 = this;
                        java.lang.String r0 = "<destruct>"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
                        java.lang.String r0 = "promise"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
                        r0 = 0
                        r1 = r12[r0]
                        r2 = 1
                        r3 = r12[r2]
                        r4 = 2
                        r12 = r12[r4]
                        java.util.Map r12 = (java.util.Map) r12
                        expo.modules.image.records.CachePolicy r3 = (expo.modules.image.records.CachePolicy) r3
                        java.util.List r1 = (java.util.List) r1
                        expo.modules.image.ExpoImageModule r4 = expo.modules.image.ExpoImageModule.this
                        expo.modules.kotlin.AppContext r4 = r4.getAppContext()
                        android.content.Context r4 = r4.getReactContext()
                        if (r4 != 0) goto L27
                        goto Lbc
                    L27:
                        kotlin.jvm.internal.Ref$IntRef r5 = new kotlin.jvm.internal.Ref$IntRef
                        r5.<init>()
                        kotlin.jvm.internal.Ref$BooleanRef r6 = new kotlin.jvm.internal.Ref$BooleanRef
                        r6.<init>()
                        if (r12 == 0) goto L65
                        com.bumptech.glide.load.model.LazyHeaders$Builder r7 = new com.bumptech.glide.load.model.LazyHeaders$Builder
                        r7.<init>()
                        java.util.Set r12 = r12.entrySet()
                        java.util.Iterator r12 = r12.iterator()
                    L40:
                        boolean r8 = r12.hasNext()
                        if (r8 == 0) goto L5c
                        java.lang.Object r8 = r12.next()
                        java.util.Map$Entry r8 = (java.util.Map.Entry) r8
                        java.lang.Object r9 = r8.getKey()
                        java.lang.String r9 = (java.lang.String) r9
                        java.lang.Object r8 = r8.getValue()
                        java.lang.String r8 = (java.lang.String) r8
                        r7.addHeader(r9, r8)
                        goto L40
                    L5c:
                        com.bumptech.glide.load.model.LazyHeaders r12 = r7.build()
                        if (r12 == 0) goto L65
                        com.bumptech.glide.load.model.Headers r12 = (com.bumptech.glide.load.model.Headers) r12
                        goto L67
                    L65:
                        com.bumptech.glide.load.model.Headers r12 = com.bumptech.glide.load.model.Headers.DEFAULT
                    L67:
                        r7 = r1
                        java.lang.Iterable r7 = (java.lang.Iterable) r7
                        java.util.Iterator r7 = r7.iterator()
                    L6e:
                        boolean r8 = r7.hasNext()
                        if (r8 == 0) goto Lbc
                        java.lang.Object r8 = r7.next()
                        java.lang.String r8 = (java.lang.String) r8
                        com.bumptech.glide.RequestManager r9 = com.bumptech.glide.Glide.with(r4)
                        com.bumptech.glide.load.model.GlideUrl r10 = new com.bumptech.glide.load.model.GlideUrl
                        r10.<init>(r8, r12)
                        com.bumptech.glide.RequestBuilder r8 = r9.load(r10)
                        r9 = 100
                        com.bumptech.glide.request.BaseRequestOptions r8 = r8.encodeQuality(r9)
                        com.bumptech.glide.RequestBuilder r8 = (com.bumptech.glide.RequestBuilder) r8
                        expo.modules.image.NoopDownsampleStrategy r9 = expo.modules.image.NoopDownsampleStrategy.INSTANCE
                        com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r9 = (com.bumptech.glide.load.resource.bitmap.DownsampleStrategy) r9
                        com.bumptech.glide.request.BaseRequestOptions r8 = r8.downsample(r9)
                        java.lang.String r9 = "downsample(...)"
                        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r9)
                        com.bumptech.glide.RequestBuilder r8 = (com.bumptech.glide.RequestBuilder) r8
                        expo.modules.image.records.CachePolicy r9 = expo.modules.image.records.CachePolicy.MEMORY
                        if (r3 != r9) goto La4
                        r9 = r2
                        goto La5
                    La4:
                        r9 = r0
                    La5:
                        expo.modules.image.ExpoImageModule$definition$1$3$1$1 r10 = new kotlin.jvm.functions.Function1<com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable>, com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable>>() { // from class: expo.modules.image.ExpoImageModule$definition$1$3$1$1
                            static {
                                /*
                                    expo.modules.image.ExpoImageModule$definition$1$3$1$1 r0 = new expo.modules.image.ExpoImageModule$definition$1$3$1$1
                                    r0.<init>()
                                    
                                    // error: 0x0005: SPUT (r0 I:expo.modules.image.ExpoImageModule$definition$1$3$1$1) expo.modules.image.ExpoImageModule$definition$1$3$1$1.INSTANCE expo.modules.image.ExpoImageModule$definition$1$3$1$1
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: expo.modules.image.ExpoImageModule$definition$1$3$1$1.<clinit>():void");
                            }

                            {
                                /*
                                    r0 = this;
                                    r0.<init>()
                                    return
                                */
                                throw new UnsupportedOperationException("Method not decompiled: expo.modules.image.ExpoImageModule$definition$1$3$1$1.<init>():void");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable> invoke(com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable> r1) {
                                /*
                                    r0 = this;
                                    com.bumptech.glide.RequestBuilder r1 = (com.bumptech.glide.RequestBuilder) r1
                                    com.bumptech.glide.RequestBuilder r1 = r0.invoke(r1)
                                    return r1
                                */
                                throw new UnsupportedOperationException("Method not decompiled: expo.modules.image.ExpoImageModule$definition$1$3$1$1.invoke(java.lang.Object):java.lang.Object");
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable> invoke(com.bumptech.glide.RequestBuilder<android.graphics.drawable.Drawable> r2) {
                                /*
                                    r1 = this;
                                    java.lang.String r0 = "$this$customize"
                                    kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
                                    com.bumptech.glide.load.engine.DiskCacheStrategy r0 = com.bumptech.glide.load.engine.DiskCacheStrategy.NONE
                                    com.bumptech.glide.request.BaseRequestOptions r2 = r2.diskCacheStrategy(r0)
                                    java.lang.String r0 = "diskCacheStrategy(...)"
                                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
                                    com.bumptech.glide.RequestBuilder r2 = (com.bumptech.glide.RequestBuilder) r2
                                    return r2
                                */
                                throw new UnsupportedOperationException("Method not decompiled: expo.modules.image.ExpoImageModule$definition$1$3$1$1.invoke(com.bumptech.glide.RequestBuilder):com.bumptech.glide.RequestBuilder");
                            }
                        }
                        kotlin.jvm.functions.Function1 r10 = (kotlin.jvm.functions.Function1) r10
                        com.bumptech.glide.RequestBuilder r8 = expo.modules.image.GlideExtensionsKt.customize(r8, r9, r10)
                        expo.modules.image.ExpoImageModule$definition$1$3$1$2 r9 = new expo.modules.image.ExpoImageModule$definition$1$3$1$2
                        r9.<init>()
                        com.bumptech.glide.request.RequestListener r9 = (com.bumptech.glide.request.RequestListener) r9
                        com.bumptech.glide.RequestBuilder r8 = r8.listener(r9)
                        r8.submit()
                        goto L6e
                    Lbc:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithPromise$4.invoke2(java.lang.Object[], expo.modules.kotlin.Promise):void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            moduleDefinitionBuilder2.getAsyncFunctions().put("prefetch", asyncFunctionWithPromiseComponent6);
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent7 = asyncFunctionWithPromiseComponent6;
            AsyncFunctionBuilder AsyncFunction = moduleDefinitionBuilder.AsyncFunction("loadAsync");
            String name = AsyncFunction.getName();
            TypeConverterProvider converters2 = AsyncFunction.getConverters();
            AnyType[] anyTypeArr2 = new AnyType[2];
            AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SourceMap.class), false));
            if (anyType4 == null) {
                anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SourceMap.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$Coroutine$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(SourceMap.class);
                    }
                }), converters2);
            }
            anyTypeArr2[0] = anyType4;
            AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ImageLoadOptions.class), true));
            if (anyType5 == null) {
                anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ImageLoadOptions.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$Coroutine$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(ImageLoadOptions.class);
                    }
                }), converters2);
            }
            anyTypeArr2[1] = anyType5;
            AsyncFunction.setAsyncFunctionComponent(new SuspendFunctionComponent(name, anyTypeArr2, new ExpoImageModule$definition$lambda$27$$inlined$Coroutine$3(null, this)));
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Image.class);
            Module module = moduleDefinitionBuilder3.getModule();
            if (module == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            AppContext appContext = module.getAppContext();
            String simpleName = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Image.class), false));
            ClassComponentBuilder classComponentBuilder = new ClassComponentBuilder(appContext, simpleName, orCreateKotlinClass, anyType6 == null ? new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Image.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$Class$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(Image.class);
                }
            }), null) : anyType6, moduleDefinitionBuilder3.getConverters());
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "width");
            AnyType[] anyTypeArr3 = {new AnyType(propertyComponentBuilderWithThis.getThisType(), null, 2, null)};
            ReturnType returnType = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Integer.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(Integer.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Integer.class), returnType);
            }
            SyncFunctionComponent syncFunctionComponent = new SyncFunctionComponent("get", anyTypeArr3, returnType, new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Integer.valueOf(((Image) it[0]).getRef().getIntrinsicWidth());
                }
            });
            syncFunctionComponent.setOwnerType(propertyComponentBuilderWithThis.getThisType());
            syncFunctionComponent.setCanTakeOwner(true);
            propertyComponentBuilderWithThis.setGetter(syncFunctionComponent);
            classComponentBuilder.getProperties().put("width", propertyComponentBuilderWithThis);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis2 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "height");
            AnyType[] anyTypeArr4 = {new AnyType(propertyComponentBuilderWithThis2.getThisType(), null, 2, null)};
            ReturnType returnType2 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Integer.class));
            if (returnType2 == null) {
                returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Integer.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Integer.class), returnType2);
            }
            SyncFunctionComponent syncFunctionComponent2 = new SyncFunctionComponent("get", anyTypeArr4, returnType2, new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Integer.valueOf(((Image) it[0]).getRef().getIntrinsicHeight());
                }
            });
            syncFunctionComponent2.setOwnerType(propertyComponentBuilderWithThis2.getThisType());
            syncFunctionComponent2.setCanTakeOwner(true);
            propertyComponentBuilderWithThis2.setGetter(syncFunctionComponent2);
            classComponentBuilder.getProperties().put("height", propertyComponentBuilderWithThis2);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis3 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "scale");
            AnyType[] anyTypeArr5 = {new AnyType(propertyComponentBuilderWithThis3.getThisType(), null, 2, null)};
            ReturnType returnType3 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType3 == null) {
                returnType3 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType3);
            }
            SyncFunctionComponent syncFunctionComponent3 = new SyncFunctionComponent("get", anyTypeArr5, returnType3, new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Resources resources;
                    DisplayMetrics displayMetrics;
                    Intrinsics.checkNotNullParameter(it, "it");
                    Image image = (Image) it[0];
                    Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                    float f = (reactContext == null || (resources = reactContext.getResources()) == null || (displayMetrics = resources.getDisplayMetrics()) == null) ? 1.0f : displayMetrics.density;
                    return Float.valueOf((DrawableKt.toBitmapOrNull$default(image.getRef(), 0, 0, null, 7, null) != null ? r8.getDensity() : 1) / (f * 160.0f));
                }
            });
            syncFunctionComponent3.setOwnerType(propertyComponentBuilderWithThis3.getThisType());
            syncFunctionComponent3.setCanTakeOwner(true);
            propertyComponentBuilderWithThis3.setGetter(syncFunctionComponent3);
            classComponentBuilder.getProperties().put("scale", propertyComponentBuilderWithThis3);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis4 = new PropertyComponentBuilderWithThis(classComponentBuilder.getOwnerType().getKType(), "isAnimated");
            AnyType[] anyTypeArr6 = {new AnyType(propertyComponentBuilderWithThis4.getThisType(), null, 2, null)};
            ReturnType returnType4 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType4 == null) {
                returnType4 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType4);
            }
            SyncFunctionComponent syncFunctionComponent4 = new SyncFunctionComponent("get", anyTypeArr6, returnType4, new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Image image = (Image) it[0];
                    return Boolean.valueOf((image.getRef() instanceof GifDrawable) || (image.getRef() instanceof APNGDrawable) || (image.getRef() instanceof WebPDrawable));
                }
            });
            syncFunctionComponent4.setOwnerType(propertyComponentBuilderWithThis4.getThisType());
            syncFunctionComponent4.setCanTakeOwner(true);
            propertyComponentBuilderWithThis4.setGetter(syncFunctionComponent4);
            classComponentBuilder.getProperties().put("isAnimated", propertyComponentBuilderWithThis4);
            ClassComponentBuilder classComponentBuilder2 = classComponentBuilder;
            PropertyComponentBuilder propertyComponentBuilder = new PropertyComponentBuilder("mediaType");
            AnyType[] anyTypeArr7 = new AnyType[0];
            ReturnType returnType5 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType5 == null) {
                returnType5 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType5);
            }
            propertyComponentBuilder.setGetter(new SyncFunctionComponent("get", anyTypeArr7, returnType5, new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$13$$inlined$Property$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return null;
                }
            }));
            classComponentBuilder2.getProperties().put("mediaType", propertyComponentBuilder);
            moduleDefinitionBuilder3.getClassData().add(classComponentBuilder.buildClass());
            UntypedAsyncFunctionComponent untypedAsyncFunctionComponent8 = new UntypedAsyncFunctionComponent("clearMemoryCache", new AnyType[0], new Function1<Object[], Object>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunctionWithoutArgs$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Activity currentActivity = ExpoImageModule.this.getAppContext().getCurrentActivity();
                    if (currentActivity == null) {
                        return false;
                    }
                    Glide.get(currentActivity).clearMemory();
                    return true;
                }
            });
            moduleDefinitionBuilder.getAsyncFunctions().put("clearMemoryCache", untypedAsyncFunctionComponent8);
            untypedAsyncFunctionComponent8.runOnQueue(Queues.MAIN);
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr8 = new AnyType[0];
            Function1<Object[], Boolean> function1 = new Function1<Object[], Boolean>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunction$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(Object[] it) {
                    boolean z;
                    Intrinsics.checkNotNullParameter(it, "it");
                    Activity currentActivity = ExpoImageModule.this.getAppContext().getCurrentActivity();
                    if (currentActivity == null) {
                        z = false;
                    } else {
                        Glide.get(currentActivity).clearDiskCache();
                        z = true;
                    }
                    return Boolean.valueOf(z);
                }
            };
            if (!Intrinsics.areEqual(Boolean.class, Integer.TYPE)) {
                if (!Intrinsics.areEqual(Boolean.class, Boolean.TYPE)) {
                    if (!Intrinsics.areEqual(Boolean.class, Double.TYPE)) {
                        if (!Intrinsics.areEqual(Boolean.class, Float.TYPE)) {
                            if (Intrinsics.areEqual(Boolean.class, String.class)) {
                                untypedAsyncFunctionComponent = new StringAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
                            } else {
                                untypedAsyncFunctionComponent = new UntypedAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
                            }
                        } else {
                            untypedAsyncFunctionComponent = new FloatAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
                        }
                    } else {
                        untypedAsyncFunctionComponent = new DoubleAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
                    }
                } else {
                    untypedAsyncFunctionComponent = new BoolAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
                }
            } else {
                untypedAsyncFunctionComponent = new IntAsyncFunctionComponent("clearDiskCache", anyTypeArr8, function1);
            }
            moduleDefinitionBuilder4.getAsyncFunctions().put("clearDiskCache", untypedAsyncFunctionComponent);
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(String.class, Promise.class)) {
                untypedAsyncFunctionComponent2 = new AsyncFunctionWithPromiseComponent("getCachePathAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunction$2
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        String str = (String) promise;
                        Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                        if (reactContext == null) {
                            return;
                        }
                        FutureTarget submit = Glide.with(reactContext).asFile().load((Object) new GlideUrl(str)).onlyRetrieveFromCache(true).submit();
                        Intrinsics.checkNotNullExpressionValue(submit, "submit(...)");
                        try {
                            ((File) submit.get()).getAbsolutePath();
                        } catch (Exception unused) {
                        }
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                TypeConverterProvider converters3 = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr9 = new AnyType[1];
                AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), false));
                if (anyType7 == null) {
                    anyType7 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunction$3
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(String.class);
                        }
                    }), converters3);
                }
                anyTypeArr9[0] = anyType7;
                untypedAsyncFunctionComponent2 = new UntypedAsyncFunctionComponent("getCachePathAsync", anyTypeArr9, new Function1<Object[], String>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$AsyncFunction$4
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlin.jvm.functions.Function1
                    public final String invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        String str = (String) objArr[0];
                        Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                        if (reactContext == null) {
                            return null;
                        }
                        FutureTarget submit = Glide.with(reactContext).asFile().load((Object) new GlideUrl(str)).onlyRetrieveFromCache(true).submit();
                        Intrinsics.checkNotNullExpressionValue(submit, "submit(...)");
                        try {
                            return ((File) submit.get()).getAbsolutePath();
                        } catch (Exception unused) {
                            return null;
                        }
                    }
                });
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("getCachePathAsync", untypedAsyncFunctionComponent2);
            ModuleDefinitionBuilder moduleDefinitionBuilder6 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$$inlined$View$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(ExpoImageViewWrapper.class);
                }
            }, 2, null), moduleDefinitionBuilder6.getConverters());
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder);
            viewDefinitionBuilder.Events(IncognitoWebView.EVENT_ON_LOAD_START, "onProgress", IncognitoWebView.EVENT_ON_ERROR, "onLoad", "onDisplay");
            Function2<ExpoImageViewWrapper, EitherOfThree<List<? extends SourceMap>, SharedRef<Drawable>, SharedRef<Bitmap>>, Unit> function2 = new Function2<ExpoImageViewWrapper, EitherOfThree<List<? extends SourceMap>, SharedRef<Drawable>, SharedRef<Bitmap>>, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, EitherOfThree<List<? extends SourceMap>, SharedRef<Drawable>, SharedRef<Bitmap>> eitherOfThree) {
                    invoke2(expoImageViewWrapper, (EitherOfThree<List<SourceMap>, SharedRef<Drawable>, SharedRef<Bitmap>>) eitherOfThree);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, EitherOfThree<List<SourceMap>, SharedRef<Drawable>, SharedRef<Bitmap>> eitherOfThree) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (eitherOfThree == null) {
                        view.setSources$expo_image_release(CollectionsKt.emptyList());
                        return;
                    }
                    if (eitherOfThree.isFirstType(Reflection.getOrCreateKotlinClass(List.class))) {
                        view.setSources$expo_image_release(eitherOfThree.getFirstType(Reflection.getOrCreateKotlinClass(List.class)));
                        return;
                    }
                    if (eitherOfThree.isSecondType(Reflection.getOrCreateKotlinClass(SharedRef.class))) {
                        view.setSources$expo_image_release(CollectionsKt.listOf(new DecodedSource(eitherOfThree.getSecondType(Reflection.getOrCreateKotlinClass(SharedRef.class)).getRef())));
                        return;
                    }
                    Bitmap ref = eitherOfThree.getThirdType(Reflection.getOrCreateKotlinClass(SharedRef.class)).getRef();
                    Context reactContext = ExpoImageModule.this.getAppContext().getReactContext();
                    if (reactContext == null) {
                        throw new Exceptions.ReactContextLost();
                    }
                    view.setSources$expo_image_release(CollectionsKt.listOf(new DecodedSource(new BitmapDrawable(reactContext.getResources(), ref))));
                }
            };
            Map<String, AnyViewProp> props = viewDefinitionBuilder.getProps();
            AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(EitherOfThree.class), true));
            if (anyType8 == null) {
                anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(EitherOfThree.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(EitherOfThree.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(List.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(SourceMap.class)))), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(SharedRef.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Drawable.class)))), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(SharedRef.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Bitmap.class)))));
                    }
                }), null);
            }
            props.put("source", new ConcreteViewProp("source", anyType8, function2));
            ExpoImageModule$definition$1$9$2 expoImageModule$definition$1$9$2 = new Function2<ExpoImageViewWrapper, ContentFit, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, ContentFit contentFit) {
                    invoke2(expoImageViewWrapper, contentFit);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, ContentFit contentFit) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (contentFit == null) {
                        contentFit = ContentFit.Cover;
                    }
                    view.setContentFit$expo_image_release(contentFit);
                }
            };
            Map<String, AnyViewProp> props2 = viewDefinitionBuilder.getProps();
            AnyType anyType9 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ContentFit.class), true));
            if (anyType9 == null) {
                anyType9 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ContentFit.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(ContentFit.class);
                    }
                }), null);
            }
            props2.put("contentFit", new ConcreteViewProp("contentFit", anyType9, expoImageModule$definition$1$9$2));
            ExpoImageModule$definition$1$9$3 expoImageModule$definition$1$9$3 = new Function2<ExpoImageViewWrapper, ContentFit, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, ContentFit contentFit) {
                    invoke2(expoImageViewWrapper, contentFit);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, ContentFit contentFit) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (contentFit == null) {
                        contentFit = ContentFit.ScaleDown;
                    }
                    view.setPlaceholderContentFit$expo_image_release(contentFit);
                }
            };
            Map<String, AnyViewProp> props3 = viewDefinitionBuilder.getProps();
            AnyType anyType10 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ContentFit.class), true));
            if (anyType10 == null) {
                anyType10 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ContentFit.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(ContentFit.class);
                    }
                }), null);
            }
            props3.put("placeholderContentFit", new ConcreteViewProp("placeholderContentFit", anyType10, expoImageModule$definition$1$9$3));
            ExpoImageModule$definition$1$9$4 expoImageModule$definition$1$9$4 = new Function2<ExpoImageViewWrapper, ContentPosition, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$4
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, ContentPosition contentPosition) {
                    invoke2(expoImageViewWrapper, contentPosition);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, ContentPosition contentPosition) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (contentPosition == null) {
                        contentPosition = ContentPosition.INSTANCE.getCenter();
                    }
                    view.setContentPosition$expo_image_release(contentPosition);
                }
            };
            Map<String, AnyViewProp> props4 = viewDefinitionBuilder.getProps();
            AnyType anyType11 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ContentPosition.class), true));
            if (anyType11 == null) {
                anyType11 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ContentPosition.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$4
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(ContentPosition.class);
                    }
                }), null);
            }
            props4.put("contentPosition", new ConcreteViewProp("contentPosition", anyType11, expoImageModule$definition$1$9$4));
            ExpoImageModule$definition$1$9$5 expoImageModule$definition$1$9$5 = new Function2<ExpoImageViewWrapper, Integer, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$5
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Integer num) {
                    invoke2(expoImageViewWrapper, num);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Integer num) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (num == null || num.intValue() <= 0) {
                        num = null;
                    }
                    view.setBlurRadius$expo_image_release(num);
                }
            };
            Map<String, AnyViewProp> props5 = viewDefinitionBuilder.getProps();
            AnyType anyType12 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Integer.class), true));
            if (anyType12 == null) {
                anyType12 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Integer.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Integer.class);
                    }
                }), null);
            }
            props5.put("blurRadius", new ConcreteViewProp("blurRadius", anyType12, expoImageModule$definition$1$9$5));
            ExpoImageModule$definition$1$9$6 expoImageModule$definition$1$9$6 = new Function2<ExpoImageViewWrapper, ImageTransition, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$6
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, ImageTransition imageTransition) {
                    invoke2(expoImageViewWrapper, imageTransition);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, ImageTransition imageTransition) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setTransition$expo_image_release(imageTransition);
                }
            };
            Map<String, AnyViewProp> props6 = viewDefinitionBuilder.getProps();
            AnyType anyType13 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ImageTransition.class), true));
            if (anyType13 == null) {
                anyType13 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ImageTransition.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(ImageTransition.class);
                    }
                }), null);
            }
            props6.put("transition", new ConcreteViewProp("transition", anyType13, expoImageModule$definition$1$9$6));
            ExpoImageModule$definition$1$9$7 expoImageModule$definition$1$9$7 = new Function2<ExpoImageViewWrapper, Integer, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$7
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Integer num) {
                    invoke2(expoImageViewWrapper, num);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Integer num) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setTintColor$expo_image_release(num);
                }
            };
            Map<String, AnyViewProp> props7 = viewDefinitionBuilder.getProps();
            AnyType anyType14 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Integer.class), true));
            if (anyType14 == null) {
                anyType14 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Integer.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$7
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Integer.class);
                    }
                }), null);
            }
            props7.put("tintColor", new ConcreteViewProp("tintColor", anyType14, expoImageModule$definition$1$9$7));
            ExpoImageModule$definition$1$9$8 expoImageModule$definition$1$9$8 = new Function2<ExpoImageViewWrapper, List<? extends SourceMap>, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$8
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, List<? extends SourceMap> list) {
                    invoke2(expoImageViewWrapper, (List<SourceMap>) list);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, List<SourceMap> list) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (list == null) {
                        list = CollectionsKt.emptyList();
                    }
                    view.setPlaceholders$expo_image_release(list);
                }
            };
            Map<String, AnyViewProp> props8 = viewDefinitionBuilder.getProps();
            AnyType anyType15 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(List.class), true));
            if (anyType15 == null) {
                anyType15 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(List.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$8
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(List.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(SourceMap.class)));
                    }
                }), null);
            }
            props8.put(ReactTextInputShadowNode.PROP_PLACEHOLDER, new ConcreteViewProp(ReactTextInputShadowNode.PROP_PLACEHOLDER, anyType15, expoImageModule$definition$1$9$8));
            ExpoImageModule$definition$1$9$9 expoImageModule$definition$1$9$9 = new Function2<ExpoImageViewWrapper, Boolean, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$9
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Boolean bool) {
                    invoke2(expoImageViewWrapper, bool);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAccessible$expo_image_release(Intrinsics.areEqual((Object) bool, (Object) true));
                }
            };
            Map<String, AnyViewProp> props9 = viewDefinitionBuilder.getProps();
            AnyType anyType16 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType16 == null) {
                anyType16 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$9
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Boolean.class);
                    }
                }), null);
            }
            props9.put("accessible", new ConcreteViewProp("accessible", anyType16, expoImageModule$definition$1$9$9));
            ExpoImageModule$definition$1$9$10 expoImageModule$definition$1$9$10 = new Function2<ExpoImageViewWrapper, String, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$10
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, String str) {
                    invoke2(expoImageViewWrapper, str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, String str) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAccessibilityLabel$expo_image_release(str);
                }
            };
            Map<String, AnyViewProp> props10 = viewDefinitionBuilder.getProps();
            AnyType anyType17 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType17 == null) {
                anyType17 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$10
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), null);
            }
            props10.put(ViewProps.ACCESSIBILITY_LABEL, new ConcreteViewProp(ViewProps.ACCESSIBILITY_LABEL, anyType17, expoImageModule$definition$1$9$10));
            ExpoImageModule$definition$1$9$11 expoImageModule$definition$1$9$11 = new Function2<ExpoImageViewWrapper, Boolean, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$11
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Boolean bool) {
                    invoke2(expoImageViewWrapper, bool);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setFocusableProp$expo_image_release(Intrinsics.areEqual((Object) bool, (Object) true));
                }
            };
            Map<String, AnyViewProp> props11 = viewDefinitionBuilder.getProps();
            AnyType anyType18 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType18 == null) {
                anyType18 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$11
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Boolean.class);
                    }
                }), null);
            }
            props11.put("focusable", new ConcreteViewProp("focusable", anyType18, expoImageModule$definition$1$9$11));
            ExpoImageModule$definition$1$9$12 expoImageModule$definition$1$9$12 = new Function2<ExpoImageViewWrapper, Priority, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$12
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Priority priority) {
                    invoke2(expoImageViewWrapper, priority);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Priority priority) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (priority == null) {
                        priority = Priority.NORMAL;
                    }
                    view.setPriority$expo_image_release(priority);
                }
            };
            Map<String, AnyViewProp> props12 = viewDefinitionBuilder.getProps();
            AnyType anyType19 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Priority.class), true));
            if (anyType19 == null) {
                anyType19 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Priority.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$12
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Priority.class);
                    }
                }), null);
            }
            props12.put(SentryThread.JsonKeys.PRIORITY, new ConcreteViewProp(SentryThread.JsonKeys.PRIORITY, anyType19, expoImageModule$definition$1$9$12));
            ExpoImageModule$definition$1$9$13 expoImageModule$definition$1$9$13 = new Function2<ExpoImageViewWrapper, CachePolicy, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$13
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, CachePolicy cachePolicy) {
                    invoke2(expoImageViewWrapper, cachePolicy);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, CachePolicy cachePolicy) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (cachePolicy == null) {
                        cachePolicy = CachePolicy.DISK;
                    }
                    view.setCachePolicy$expo_image_release(cachePolicy);
                }
            };
            Map<String, AnyViewProp> props13 = viewDefinitionBuilder.getProps();
            AnyType anyType20 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(CachePolicy.class), true));
            if (anyType20 == null) {
                anyType20 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(CachePolicy.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$13
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(CachePolicy.class);
                    }
                }), null);
            }
            props13.put("cachePolicy", new ConcreteViewProp("cachePolicy", anyType20, expoImageModule$definition$1$9$13));
            ExpoImageModule$definition$1$9$14 expoImageModule$definition$1$9$14 = new Function2<ExpoImageViewWrapper, String, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$14
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, String str) {
                    invoke2(expoImageViewWrapper, str);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, String str) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setRecyclingKey(str);
                }
            };
            Map<String, AnyViewProp> props14 = viewDefinitionBuilder.getProps();
            AnyType anyType21 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(String.class), true));
            if (anyType21 == null) {
                anyType21 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(String.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$14
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(String.class);
                    }
                }), null);
            }
            props14.put("recyclingKey", new ConcreteViewProp("recyclingKey", anyType21, expoImageModule$definition$1$9$14));
            ExpoImageModule$definition$1$9$15 expoImageModule$definition$1$9$15 = new Function2<ExpoImageViewWrapper, Boolean, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$15
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Boolean bool) {
                    invoke2(expoImageViewWrapper, bool);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAllowDownscaling$expo_image_release(!Intrinsics.areEqual((Object) bool, (Object) false));
                }
            };
            Map<String, AnyViewProp> props15 = viewDefinitionBuilder.getProps();
            AnyType anyType22 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType22 == null) {
                anyType22 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$15
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Boolean.class);
                    }
                }), null);
            }
            props15.put("allowDownscaling", new ConcreteViewProp("allowDownscaling", anyType22, expoImageModule$definition$1$9$15));
            ExpoImageModule$definition$1$9$16 expoImageModule$definition$1$9$16 = new Function2<ExpoImageViewWrapper, Boolean, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$16
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, Boolean bool) {
                    invoke2(expoImageViewWrapper, bool);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAutoplay$expo_image_release(!Intrinsics.areEqual((Object) bool, (Object) false));
                }
            };
            Map<String, AnyViewProp> props16 = viewDefinitionBuilder.getProps();
            AnyType anyType23 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType23 == null) {
                anyType23 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$16
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Boolean.class);
                    }
                }), null);
            }
            props16.put("autoplay", new ConcreteViewProp("autoplay", anyType23, expoImageModule$definition$1$9$16));
            ExpoImageModule$definition$1$9$17 expoImageModule$definition$1$9$17 = new Function2<ExpoImageViewWrapper, DecodeFormat, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$1$9$17
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(ExpoImageViewWrapper expoImageViewWrapper, DecodeFormat decodeFormat) {
                    invoke2(expoImageViewWrapper, decodeFormat);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ExpoImageViewWrapper view, DecodeFormat decodeFormat) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    if (decodeFormat == null) {
                        decodeFormat = DecodeFormat.ARGB_8888;
                    }
                    view.setDecodeFormat$expo_image_release(decodeFormat);
                }
            };
            Map<String, AnyViewProp> props17 = viewDefinitionBuilder.getProps();
            AnyType anyType24 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(DecodeFormat.class), true));
            if (anyType24 == null) {
                anyType24 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(DecodeFormat.class), true, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$Prop$17
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(DecodeFormat.class);
                    }
                }), null);
            }
            props17.put("decodeFormat", new ConcreteViewProp("decodeFormat", anyType24, expoImageModule$definition$1$9$17));
            if (ExpoImageViewWrapper.class == Promise.class) {
                asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("startAnimating", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((ExpoImageViewWrapper) promise).setIsAnimating(true);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr10 = new AnyType[1];
                AnyType anyType25 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false));
                if (anyType25 == null) {
                    anyType25 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$2
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(ExpoImageViewWrapper.class);
                        }
                    }), null);
                }
                anyTypeArr10[0] = anyType25;
                Function1<Object[], Unit> function12 = new Function1<Object[], Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((ExpoImageViewWrapper) objArr[0]).setIsAnimating(true);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent3 = new StringAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                                } else {
                                    untypedAsyncFunctionComponent3 = new UntypedAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                                }
                            } else {
                                untypedAsyncFunctionComponent3 = new FloatAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                            }
                        } else {
                            untypedAsyncFunctionComponent3 = new DoubleAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                        }
                    } else {
                        untypedAsyncFunctionComponent3 = new BoolAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                    }
                } else {
                    untypedAsyncFunctionComponent3 = new IntAsyncFunctionComponent("startAnimating", anyTypeArr10, function12);
                }
                asyncFunctionWithPromiseComponent = untypedAsyncFunctionComponent3;
            }
            viewDefinitionBuilder.getAsyncFunctions().put("startAnimating", asyncFunctionWithPromiseComponent);
            if (ExpoImageViewWrapper.class == Promise.class) {
                asyncFunctionWithPromiseComponent2 = new AsyncFunctionWithPromiseComponent("stopAnimating", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$4
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((ExpoImageViewWrapper) promise).setIsAnimating(false);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr11 = new AnyType[1];
                AnyType anyType26 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false));
                if (anyType26 == null) {
                    anyType26 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$5
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(ExpoImageViewWrapper.class);
                        }
                    }), null);
                }
                anyTypeArr11[0] = anyType26;
                Function1<Object[], Unit> function13 = new Function1<Object[], Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$6
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((ExpoImageViewWrapper) objArr[0]).setIsAnimating(false);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent4 = new StringAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                                } else {
                                    untypedAsyncFunctionComponent4 = new UntypedAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                                }
                            } else {
                                untypedAsyncFunctionComponent4 = new FloatAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                            }
                        } else {
                            untypedAsyncFunctionComponent4 = new DoubleAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                        }
                    } else {
                        untypedAsyncFunctionComponent4 = new BoolAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                    }
                } else {
                    untypedAsyncFunctionComponent4 = new IntAsyncFunctionComponent("stopAnimating", anyTypeArr11, function13);
                }
                asyncFunctionWithPromiseComponent2 = untypedAsyncFunctionComponent4;
            }
            viewDefinitionBuilder.getAsyncFunctions().put("stopAnimating", asyncFunctionWithPromiseComponent2);
            if (ExpoImageViewWrapper.class == Promise.class) {
                asyncFunctionWithPromiseComponent3 = new AsyncFunctionWithPromiseComponent("lockResourceAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$7
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((ExpoImageViewWrapper) promise).setLockResource$expo_image_release(true);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr12 = new AnyType[1];
                AnyType anyType27 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false));
                if (anyType27 == null) {
                    anyType27 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$8
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(ExpoImageViewWrapper.class);
                        }
                    }), null);
                }
                anyTypeArr12[0] = anyType27;
                Function1<Object[], Unit> function14 = new Function1<Object[], Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$9
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((ExpoImageViewWrapper) objArr[0]).setLockResource$expo_image_release(true);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent5 = new StringAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                                } else {
                                    untypedAsyncFunctionComponent5 = new UntypedAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                                }
                            } else {
                                untypedAsyncFunctionComponent5 = new FloatAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                            }
                        } else {
                            untypedAsyncFunctionComponent5 = new DoubleAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                        }
                    } else {
                        untypedAsyncFunctionComponent5 = new BoolAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                    }
                } else {
                    untypedAsyncFunctionComponent5 = new IntAsyncFunctionComponent("lockResourceAsync", anyTypeArr12, function14);
                }
                asyncFunctionWithPromiseComponent3 = untypedAsyncFunctionComponent5;
            }
            viewDefinitionBuilder.getAsyncFunctions().put("lockResourceAsync", asyncFunctionWithPromiseComponent3);
            if (ExpoImageViewWrapper.class == Promise.class) {
                asyncFunctionWithPromiseComponent4 = new AsyncFunctionWithPromiseComponent("unlockResourceAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$10
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((ExpoImageViewWrapper) promise).setLockResource$expo_image_release(false);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr13 = new AnyType[1];
                AnyType anyType28 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false));
                if (anyType28 == null) {
                    anyType28 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$11
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(ExpoImageViewWrapper.class);
                        }
                    }), null);
                }
                anyTypeArr13[0] = anyType28;
                Function1<Object[], Unit> function15 = new Function1<Object[], Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$12
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((ExpoImageViewWrapper) objArr[0]).setLockResource$expo_image_release(false);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent6 = new StringAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                                } else {
                                    untypedAsyncFunctionComponent6 = new UntypedAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                                }
                            } else {
                                untypedAsyncFunctionComponent6 = new FloatAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                            }
                        } else {
                            untypedAsyncFunctionComponent6 = new DoubleAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                        }
                    } else {
                        untypedAsyncFunctionComponent6 = new BoolAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                    }
                } else {
                    untypedAsyncFunctionComponent6 = new IntAsyncFunctionComponent("unlockResourceAsync", anyTypeArr13, function15);
                }
                asyncFunctionWithPromiseComponent4 = untypedAsyncFunctionComponent6;
            }
            viewDefinitionBuilder.getAsyncFunctions().put("unlockResourceAsync", asyncFunctionWithPromiseComponent4);
            if (ExpoImageViewWrapper.class == Promise.class) {
                asyncFunctionWithPromiseComponent5 = new AsyncFunctionWithPromiseComponent("reloadAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$13
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ExpoImageViewWrapper expoImageViewWrapper = (ExpoImageViewWrapper) promise;
                        expoImageViewWrapper.setShouldRerender$expo_image_release(true);
                        ExpoImageViewWrapper.rerenderIfNeeded$expo_image_release$default(expoImageViewWrapper, false, true, 1, null);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr14 = new AnyType[1];
                AnyType anyType29 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false));
                if (anyType29 == null) {
                    anyType29 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ExpoImageViewWrapper.class), false, new Function0<KType>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$14
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(ExpoImageViewWrapper.class);
                        }
                    }), null);
                }
                anyTypeArr14[0] = anyType29;
                Function1<Object[], Unit> function16 = new Function1<Object[], Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$AsyncFunction$15
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ExpoImageViewWrapper expoImageViewWrapper = (ExpoImageViewWrapper) objArr[0];
                        expoImageViewWrapper.setShouldRerender$expo_image_release(true);
                        ExpoImageViewWrapper.rerenderIfNeeded$expo_image_release$default(expoImageViewWrapper, false, true, 1, null);
                        return Unit.INSTANCE;
                    }
                };
                if (!Intrinsics.areEqual(Unit.class, Integer.TYPE)) {
                    if (!Intrinsics.areEqual(Unit.class, Boolean.TYPE)) {
                        if (!Intrinsics.areEqual(Unit.class, Double.TYPE)) {
                            if (!Intrinsics.areEqual(Unit.class, Float.TYPE)) {
                                if (Intrinsics.areEqual(Unit.class, String.class)) {
                                    untypedAsyncFunctionComponent7 = new StringAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                                } else {
                                    untypedAsyncFunctionComponent7 = new UntypedAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                                }
                            } else {
                                untypedAsyncFunctionComponent7 = new FloatAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                            }
                        } else {
                            untypedAsyncFunctionComponent7 = new DoubleAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                        }
                    } else {
                        untypedAsyncFunctionComponent7 = new BoolAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                    }
                } else {
                    untypedAsyncFunctionComponent7 = new IntAsyncFunctionComponent("reloadAsync", anyTypeArr14, function16);
                }
                asyncFunctionWithPromiseComponent5 = untypedAsyncFunctionComponent7;
            }
            viewDefinitionBuilder.getAsyncFunctions().put("reloadAsync", asyncFunctionWithPromiseComponent5);
            viewDefinitionBuilder.setOnViewDidUpdateProps(new Function1<View, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$OnViewDidUpdateProps$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    ExpoImageViewWrapper.rerenderIfNeeded$expo_image_release$default((ExpoImageViewWrapper) it, false, false, 3, null);
                }
            });
            viewDefinitionBuilder.setOnViewDestroys(new Function1<View, Unit>() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$$inlined$OnViewDestroys$1
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    final ExpoImageViewWrapper expoImageViewWrapper = (ExpoImageViewWrapper) it;
                    final ExpoImageViewWrapper expoImageViewWrapper2 = expoImageViewWrapper;
                    if (!expoImageViewWrapper2.isAttachedToWindow()) {
                        expoImageViewWrapper.onViewDestroys();
                    } else {
                        expoImageViewWrapper2.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: expo.modules.image.ExpoImageModule$definition$lambda$27$lambda$26$lambda$25$$inlined$doOnDetach$1
                            @Override // android.view.View.OnAttachStateChangeListener
                            public void onViewAttachedToWindow(View view) {
                            }

                            @Override // android.view.View.OnAttachStateChangeListener
                            public void onViewDetachedFromWindow(View view) {
                                expoImageViewWrapper2.removeOnAttachStateChangeListener(this);
                                expoImageViewWrapper.onViewDestroys();
                            }
                        });
                    }
                }
            });
            moduleDefinitionBuilder6.registerViewDefinition(viewDefinitionBuilder.build());
            return moduleDefinitionBuilder.buildModule();
        } finally {
            androidx.tracing.Trace.endSection();
        }
    }
}
