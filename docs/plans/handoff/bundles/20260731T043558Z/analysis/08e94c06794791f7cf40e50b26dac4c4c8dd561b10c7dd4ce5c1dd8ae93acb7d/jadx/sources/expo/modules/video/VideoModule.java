package expo.modules.video;

import android.content.Context;
import android.net.Uri;
import android.view.View;
import androidx.tracing.Trace;
import com.facebook.react.bridge.BaseJavaModule;
import com.facebook.react.common.annotations.UnstableReactNativeAPI;
import expo.modules.kotlin.AppContext;
import expo.modules.kotlin.Promise;
import expo.modules.kotlin.classcomponent.ClassComponentBuilder;
import expo.modules.kotlin.events.BasicEventListener;
import expo.modules.kotlin.events.EventName;
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
import expo.modules.kotlin.objects.PropertyComponentBuilderWithThis;
import expo.modules.kotlin.types.AnyType;
import expo.modules.kotlin.types.AnyTypeProvider;
import expo.modules.kotlin.types.Either;
import expo.modules.kotlin.types.LazyKType;
import expo.modules.kotlin.types.ReturnType;
import expo.modules.kotlin.types.ReturnTypeProvider;
import expo.modules.kotlin.types.TypeConverterProvider;
import expo.modules.kotlin.views.AnyViewProp;
import expo.modules.kotlin.views.ConcreteViewProp;
import expo.modules.kotlin.views.ViewDefinitionBuilder;
import expo.modules.kotlin.views.decorators.CSSPropsKt;
import expo.modules.video.enums.AudioMixingMode;
import expo.modules.video.enums.ContentFit;
import expo.modules.video.enums.PlayerStatus;
import expo.modules.video.player.VideoPlayer;
import expo.modules.video.records.AudioTrack;
import expo.modules.video.records.BufferOptions;
import expo.modules.video.records.SubtitleTrack;
import expo.modules.video.records.VideoSource;
import expo.modules.video.records.VideoThumbnailOptions;
import expo.modules.video.records.VideoTrack;
import expo.modules.video.utils.PictureInPictureUtilsKt;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.time.Duration;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Job;

/* compiled from: VideoModule.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J2\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002¨\u0006\u0010"}, d2 = {"Lexpo/modules/video/VideoModule;", "Lexpo/modules/kotlin/modules/Module;", "<init>", "()V", "definition", "Lexpo/modules/kotlin/modules/ModuleDefinitionData;", "replaceImpl", "", "ref", "Lexpo/modules/video/player/VideoPlayer;", "source", "Lexpo/modules/kotlin/types/Either;", "Landroid/net/Uri;", "Lexpo/modules/video/records/VideoSource;", BaseJavaModule.METHOD_TYPE_PROMISE, "Lexpo/modules/kotlin/Promise;", "expo-video_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@UnstableReactNativeAPI
/* loaded from: classes5.dex */
public final class VideoModule extends Module {
    @Override // expo.modules.kotlin.modules.Module
    public ModuleDefinitionData definition() {
        ModuleDefinitionBuilder moduleDefinitionBuilder;
        String str;
        String str2;
        UntypedAsyncFunctionComponent intAsyncFunctionComponent;
        String str3;
        AsyncFunctionWithPromiseComponent intAsyncFunctionComponent2;
        String str4;
        AsyncFunctionWithPromiseComponent intAsyncFunctionComponent3;
        String str5;
        AsyncFunctionWithPromiseComponent intAsyncFunctionComponent4;
        AsyncFunctionWithPromiseComponent intAsyncFunctionComponent5;
        ModuleDefinitionBuilder moduleDefinitionBuilder2;
        KClass orCreateKotlinClass;
        Module module;
        VideoModule videoModule = this;
        Trace.beginSection("[ExpoModulesCore] " + (videoModule.getClass() + ".ModuleDefinition"));
        try {
            moduleDefinitionBuilder = new ModuleDefinitionBuilder(videoModule);
            moduleDefinitionBuilder.Name("ExpoVideo");
            moduleDefinitionBuilder.getEventListeners().put(EventName.MODULE_CREATE, new BasicEventListener(EventName.MODULE_CREATE, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$OnCreate$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    VideoManager.INSTANCE.onModuleCreated(VideoModule.this.getAppContext());
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder3 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr = new AnyType[0];
            ReturnType returnType = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType == null) {
                returnType = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                str = "nativeControls";
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType);
            } else {
                str = "nativeControls";
            }
            moduleDefinitionBuilder3.getSyncFunctions().put("isPictureInPictureSupported", new SyncFunctionComponent("isPictureInPictureSupported", anyTypeArr, returnType, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$FunctionWithoutArgs$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(VideoView.INSTANCE.isPictureInPictureSupported(VideoModule.this.getAppContext().getThrowingActivity()));
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder4 = moduleDefinitionBuilder;
            AnyType[] anyTypeArr2 = new AnyType[0];
            ReturnType returnType2 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType2 == null) {
                returnType2 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType2);
            }
            moduleDefinitionBuilder4.getSyncFunctions().put("getCurrentVideoCacheSize", new SyncFunctionComponent("getCurrentVideoCacheSize", anyTypeArr2, returnType2, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$FunctionWithoutArgs$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Long.valueOf(VideoManager.INSTANCE.getCache().getCurrentCacheSize());
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder5 = moduleDefinitionBuilder;
            if (Intrinsics.areEqual(Long.class, Promise.class)) {
                intAsyncFunctionComponent = new AsyncFunctionWithPromiseComponent("setVideoCacheSizeAsync", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$AsyncFunction$1
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        VideoManager.INSTANCE.getCache().setMaxCacheSize(((Long) promise).longValue());
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
                str2 = "player";
            } else {
                TypeConverterProvider converters = moduleDefinitionBuilder5.getConverters();
                AnyType[] anyTypeArr3 = new AnyType[1];
                try {
                    AnyType anyType = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Long.class), false));
                    if (anyType == null) {
                        str2 = "player";
                        anyType = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Long.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$AsyncFunction$2
                            @Override // kotlin.jvm.functions.Function0
                            public final KType invoke() {
                                return Reflection.typeOf(Long.TYPE);
                            }
                        }), converters);
                    } else {
                        str2 = "player";
                    }
                    anyTypeArr3[0] = anyType;
                    Function1<Object[], Unit> function1 = new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$AsyncFunction$3
                        @Override // kotlin.jvm.functions.Function1
                        public final Unit invoke(Object[] objArr) {
                            Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                            VideoManager.INSTANCE.getCache().setMaxCacheSize(((Number) objArr[0]).longValue());
                            return Unit.INSTANCE;
                        }
                    };
                    intAsyncFunctionComponent = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1) : new UntypedAsyncFunctionComponent("setVideoCacheSizeAsync", anyTypeArr3, function1);
                } catch (Throwable th) {
                    th = th;
                    Throwable th2 = th;
                    Trace.endSection();
                    throw th2;
                }
            }
            moduleDefinitionBuilder5.getAsyncFunctions().put("setVideoCacheSizeAsync", intAsyncFunctionComponent);
            moduleDefinitionBuilder.getAsyncFunctions().put("clearVideoCacheAsync", new UntypedAsyncFunctionComponent("clearVideoCacheAsync", new AnyType[0], new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$AsyncFunctionWithoutArgs$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    VideoManager.INSTANCE.getCache().clear();
                    return Unit.INSTANCE;
                }
            }));
            ModuleDefinitionBuilder moduleDefinitionBuilder6 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), new LazyKType(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$View$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(SurfaceVideoView.class);
                }
            }, 2, null), moduleDefinitionBuilder6.getConverters());
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder);
            viewDefinitionBuilder.Events("onPictureInPictureStart", "onPictureInPictureStop", "onFullscreenEnter", "onFullscreenExit", "onFirstFrameRender");
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$1 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$1 = new Function2<SurfaceVideoView, VideoPlayer, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, VideoPlayer videoPlayer) {
                    invoke(surfaceVideoView, videoPlayer);
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, VideoPlayer player) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(player, "player");
                    view.setVideoPlayer(player);
                }
            };
            Map<String, AnyViewProp> props = viewDefinitionBuilder.getProps();
            AnyType anyType2 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType2 == null) {
                str3 = "onFirstFrameRender";
                anyType2 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$1.INSTANCE), null);
            } else {
                str3 = "onFirstFrameRender";
            }
            String str6 = str2;
            props.put(str6, new ConcreteViewProp(str6, anyType2, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$1));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$2 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$2 = new Function2<SurfaceVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, Boolean bool) {
                    invoke(surfaceVideoView, bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, boolean z) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setUseNativeControls(z);
                }
            };
            Map<String, AnyViewProp> props2 = viewDefinitionBuilder.getProps();
            AnyType anyType3 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType3 == null) {
                anyType3 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$2.INSTANCE), null);
            }
            String str7 = str;
            props2.put(str7, new ConcreteViewProp(str7, anyType3, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$2));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$3 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$3 = new Function2<SurfaceVideoView, ContentFit, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, ContentFit contentFit) {
                    invoke(surfaceVideoView, contentFit);
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, ContentFit contentFit) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(contentFit, "contentFit");
                    view.setContentFit(contentFit);
                }
            };
            Map<String, AnyViewProp> props3 = viewDefinitionBuilder.getProps();
            AnyType anyType4 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ContentFit.class), false));
            if (anyType4 == null) {
                anyType4 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ContentFit.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$3.INSTANCE), null);
            }
            props3.put("contentFit", new ConcreteViewProp("contentFit", anyType4, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$3));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$4 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$4 = new Function2<SurfaceVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$4
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, Boolean bool) {
                    invoke(surfaceVideoView, bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, boolean z) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAutoEnterPiP(z);
                }
            };
            Map<String, AnyViewProp> props4 = viewDefinitionBuilder.getProps();
            AnyType anyType5 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType5 == null) {
                anyType5 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$4.INSTANCE), null);
            }
            props4.put("startsPictureInPictureAutomatically", new ConcreteViewProp("startsPictureInPictureAutomatically", anyType5, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$4));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$5 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$5 = new Function2<SurfaceVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$5
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, Boolean bool) {
                    invoke(surfaceVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAllowsFullscreen(bool != null ? bool.booleanValue() : true);
                }
            };
            Map<String, AnyViewProp> props5 = viewDefinitionBuilder.getProps();
            AnyType anyType6 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType6 == null) {
                anyType6 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$5.INSTANCE), null);
            }
            props5.put("allowsFullscreen", new ConcreteViewProp("allowsFullscreen", anyType6, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$5));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$6 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$6 = new Function2<SurfaceVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$6
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, Boolean bool) {
                    invoke(surfaceVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    boolean booleanValue = bool != null ? bool.booleanValue() : false;
                    PlayerViewExtensionKt.applyRequiresLinearPlayback(view.getPlayerView(), booleanValue);
                    VideoPlayer videoPlayer = view.getVideoPlayer();
                    if (videoPlayer != null) {
                        videoPlayer.setRequiresLinearPlayback(booleanValue);
                    }
                }
            };
            Map<String, AnyViewProp> props6 = viewDefinitionBuilder.getProps();
            AnyType anyType7 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType7 == null) {
                anyType7 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$6.INSTANCE), null);
            }
            props6.put("requiresLinearPlayback", new ConcreteViewProp("requiresLinearPlayback", anyType7, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$6));
            VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$7 videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$7 = new Function2<SurfaceVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$7
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(SurfaceVideoView surfaceVideoView, Boolean bool) {
                    invoke(surfaceVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(SurfaceVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setUseExoShutter(bool);
                }
            };
            Map<String, AnyViewProp> props7 = viewDefinitionBuilder.getProps();
            AnyType anyType8 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType8 == null) {
                anyType8 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$7.INSTANCE), null);
            }
            props7.put("useExoShutter", new ConcreteViewProp("useExoShutter", anyType8, videoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$7));
            if (SurfaceVideoView.class == Promise.class) {
                intAsyncFunctionComponent2 = new AsyncFunctionWithPromiseComponent("enterFullscreen", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$8
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((SurfaceVideoView) promise).enterFullscreen();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr4 = new AnyType[1];
                AnyType anyType9 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), false));
                if (anyType9 == null) {
                    anyType9 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$9
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(SurfaceVideoView.class);
                        }
                    }), null);
                }
                anyTypeArr4[0] = anyType9;
                Function1<Object[], Unit> function12 = new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$10
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((VideoView) objArr[0]).enterFullscreen();
                        return Unit.INSTANCE;
                    }
                };
                intAsyncFunctionComponent2 = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12) : new UntypedAsyncFunctionComponent("enterFullscreen", anyTypeArr4, function12);
            }
            viewDefinitionBuilder.getAsyncFunctions().put("enterFullscreen", intAsyncFunctionComponent2);
            intAsyncFunctionComponent2.runOnQueue(Queues.MAIN);
            viewDefinitionBuilder.getAsyncFunctions().put("exitFullscreen", new UntypedAsyncFunctionComponent("exitFullscreen", new AnyType[0], new VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1()));
            if (SurfaceVideoView.class == Promise.class) {
                intAsyncFunctionComponent3 = new AsyncFunctionWithPromiseComponent("startPictureInPicture", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$11
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        final SurfaceVideoView surfaceVideoView = (SurfaceVideoView) promise;
                        PictureInPictureUtilsKt.runWithPiPMisconfigurationSoftHandling(true, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$11.1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                VideoView.this.enterPictureInPicture();
                            }
                        });
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
                str4 = "enterFullscreen";
            } else {
                AnyType[] anyTypeArr5 = new AnyType[1];
                str4 = "enterFullscreen";
                AnyType anyType10 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), false));
                if (anyType10 == null) {
                    anyType10 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SurfaceVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$12
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(SurfaceVideoView.class);
                        }
                    }), null);
                }
                anyTypeArr5[0] = anyType10;
                Function1<Object[], Unit> function13 = new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$13
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        final VideoView videoView = (VideoView) objArr[0];
                        PictureInPictureUtilsKt.runWithPiPMisconfigurationSoftHandling(true, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$13.1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                VideoView.this.enterPictureInPicture();
                            }
                        });
                        return Unit.INSTANCE;
                    }
                };
                intAsyncFunctionComponent3 = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13) : new UntypedAsyncFunctionComponent("startPictureInPicture", anyTypeArr5, function13);
            }
            viewDefinitionBuilder.getAsyncFunctions().put("startPictureInPicture", intAsyncFunctionComponent3);
            viewDefinitionBuilder.getAsyncFunctions().put("stopPictureInPicture", new UntypedAsyncFunctionComponent("stopPictureInPicture", new AnyType[0], new VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2()));
            viewDefinitionBuilder.setOnViewDestroys(new Function1<View, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$14
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    VideoManager.INSTANCE.unregisterVideoView((VideoView) it);
                }
            });
            viewDefinitionBuilder.setOnViewDidUpdateProps(new Function1<View, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$5$$inlined$VideoViewComponent$15
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    VideoView videoView = (VideoView) it;
                    if (videoView.getPlayerView().getUseController() != videoView.getUseNativeControls()) {
                        videoView.getPlayerView().setUseController(videoView.getUseNativeControls());
                    }
                }
            });
            moduleDefinitionBuilder6.registerViewDefinition(viewDefinitionBuilder.build());
            ModuleDefinitionBuilder moduleDefinitionBuilder7 = moduleDefinitionBuilder;
            ViewDefinitionBuilder viewDefinitionBuilder2 = new ViewDefinitionBuilder(Reflection.getOrCreateKotlinClass(TextureVideoView.class), new LazyKType(Reflection.getOrCreateKotlinClass(TextureVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$View$2
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(TextureVideoView.class);
                }
            }, 2, null), moduleDefinitionBuilder7.getConverters());
            CSSPropsKt.UseCSSProps(viewDefinitionBuilder2);
            viewDefinitionBuilder2.Events("onPictureInPictureStart", "onPictureInPictureStop", "onFullscreenEnter", "onFullscreenExit", str3);
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$1 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$1 = new Function2<TextureVideoView, VideoPlayer, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, VideoPlayer videoPlayer) {
                    invoke(textureVideoView, videoPlayer);
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, VideoPlayer player) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(player, "player");
                    view.setVideoPlayer(player);
                }
            };
            Map<String, AnyViewProp> props8 = viewDefinitionBuilder2.getProps();
            AnyType anyType11 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType11 == null) {
                anyType11 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$1.INSTANCE), null);
            }
            props8.put(str6, new ConcreteViewProp(str6, anyType11, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$1));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$2 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$2 = new Function2<TextureVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, Boolean bool) {
                    invoke(textureVideoView, bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, boolean z) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setUseNativeControls(z);
                }
            };
            Map<String, AnyViewProp> props9 = viewDefinitionBuilder2.getProps();
            AnyType anyType12 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType12 == null) {
                anyType12 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$2.INSTANCE), null);
            }
            props9.put(str7, new ConcreteViewProp(str7, anyType12, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$2));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$3 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$3 = new Function2<TextureVideoView, ContentFit, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$3
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, ContentFit contentFit) {
                    invoke(textureVideoView, contentFit);
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, ContentFit contentFit) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    Intrinsics.checkNotNullParameter(contentFit, "contentFit");
                    view.setContentFit(contentFit);
                }
            };
            Map<String, AnyViewProp> props10 = viewDefinitionBuilder2.getProps();
            AnyType anyType13 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(ContentFit.class), false));
            if (anyType13 == null) {
                anyType13 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(ContentFit.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$3.INSTANCE), null);
            }
            props10.put("contentFit", new ConcreteViewProp("contentFit", anyType13, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$3));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$4 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$4 = new Function2<TextureVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$4
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, Boolean bool) {
                    invoke(textureVideoView, bool.booleanValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, boolean z) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAutoEnterPiP(z);
                }
            };
            Map<String, AnyViewProp> props11 = viewDefinitionBuilder2.getProps();
            AnyType anyType14 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType14 == null) {
                anyType14 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, VideoModuleKt$VideoViewComponent$$inlined$Prop$4.INSTANCE), null);
            }
            props11.put("startsPictureInPictureAutomatically", new ConcreteViewProp("startsPictureInPictureAutomatically", anyType14, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$4));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$5 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$5 = new Function2<TextureVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$5
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, Boolean bool) {
                    invoke(textureVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setAllowsFullscreen(bool != null ? bool.booleanValue() : true);
                }
            };
            Map<String, AnyViewProp> props12 = viewDefinitionBuilder2.getProps();
            AnyType anyType15 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType15 == null) {
                anyType15 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$5.INSTANCE), null);
            }
            props12.put("allowsFullscreen", new ConcreteViewProp("allowsFullscreen", anyType15, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$5));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$6 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$6 = new Function2<TextureVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$6
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, Boolean bool) {
                    invoke(textureVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    boolean booleanValue = bool != null ? bool.booleanValue() : false;
                    PlayerViewExtensionKt.applyRequiresLinearPlayback(view.getPlayerView(), booleanValue);
                    VideoPlayer videoPlayer = view.getVideoPlayer();
                    if (videoPlayer != null) {
                        videoPlayer.setRequiresLinearPlayback(booleanValue);
                    }
                }
            };
            Map<String, AnyViewProp> props13 = viewDefinitionBuilder2.getProps();
            AnyType anyType16 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType16 == null) {
                anyType16 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$6.INSTANCE), null);
            }
            props13.put("requiresLinearPlayback", new ConcreteViewProp("requiresLinearPlayback", anyType16, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$6));
            VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$7 videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$7 = new Function2<TextureVideoView, Boolean, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$7
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(TextureVideoView textureVideoView, Boolean bool) {
                    invoke(textureVideoView, bool);
                    return Unit.INSTANCE;
                }

                public final void invoke(TextureVideoView view, Boolean bool) {
                    Intrinsics.checkNotNullParameter(view, "view");
                    view.setUseExoShutter(bool);
                }
            };
            Map<String, AnyViewProp> props14 = viewDefinitionBuilder2.getProps();
            AnyType anyType17 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), true));
            if (anyType17 == null) {
                anyType17 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), true, VideoModuleKt$VideoViewComponent$$inlined$Prop$7.INSTANCE), null);
            }
            props14.put("useExoShutter", new ConcreteViewProp("useExoShutter", anyType17, videoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$7));
            if (TextureVideoView.class == Promise.class) {
                str5 = str4;
                intAsyncFunctionComponent4 = new AsyncFunctionWithPromiseComponent(str5, new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$8
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        ((TextureVideoView) promise).enterFullscreen();
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                str5 = str4;
                AnyType[] anyTypeArr6 = new AnyType[1];
                AnyType anyType18 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TextureVideoView.class), false));
                if (anyType18 == null) {
                    anyType18 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TextureVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$9
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(TextureVideoView.class);
                        }
                    }), null);
                }
                anyTypeArr6[0] = anyType18;
                Function1<Object[], Unit> function14 = new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$10
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        ((VideoView) objArr[0]).enterFullscreen();
                        return Unit.INSTANCE;
                    }
                };
                intAsyncFunctionComponent4 = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent(str5, anyTypeArr6, function14) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent(str5, anyTypeArr6, function14) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent(str5, anyTypeArr6, function14) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent(str5, anyTypeArr6, function14) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent(str5, anyTypeArr6, function14) : new UntypedAsyncFunctionComponent(str5, anyTypeArr6, function14);
            }
            viewDefinitionBuilder2.getAsyncFunctions().put(str5, intAsyncFunctionComponent4);
            intAsyncFunctionComponent4.runOnQueue(Queues.MAIN);
            viewDefinitionBuilder2.getAsyncFunctions().put("exitFullscreen", new UntypedAsyncFunctionComponent("exitFullscreen", new AnyType[0], new VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$1()));
            if (TextureVideoView.class == Promise.class) {
                intAsyncFunctionComponent5 = new AsyncFunctionWithPromiseComponent("startPictureInPicture", new AnyType[0], new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11
                    /* JADX WARN: Multi-variable type inference failed */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Object[] objArr, Promise promise) {
                        Intrinsics.checkNotNullParameter(objArr, "<unused var>");
                        Intrinsics.checkNotNullParameter(promise, "promise");
                        final TextureVideoView textureVideoView = (TextureVideoView) promise;
                        PictureInPictureUtilsKt.runWithPiPMisconfigurationSoftHandling(true, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$11.1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                VideoView.this.enterPictureInPicture();
                            }
                        });
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                        invoke2(objArr, promise);
                        return Unit.INSTANCE;
                    }
                });
            } else {
                AnyType[] anyTypeArr7 = new AnyType[1];
                AnyType anyType19 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(TextureVideoView.class), false));
                if (anyType19 == null) {
                    anyType19 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(TextureVideoView.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$12
                        @Override // kotlin.jvm.functions.Function0
                        public final KType invoke() {
                            return Reflection.typeOf(TextureVideoView.class);
                        }
                    }), null);
                }
                anyTypeArr7[0] = anyType19;
                Function1<Object[], Unit> function15 = new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$13
                    @Override // kotlin.jvm.functions.Function1
                    public final Unit invoke(Object[] objArr) {
                        Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                        final VideoView videoView = (VideoView) objArr[0];
                        PictureInPictureUtilsKt.runWithPiPMisconfigurationSoftHandling(true, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$13.1
                            @Override // kotlin.jvm.functions.Function0
                            public /* bridge */ /* synthetic */ Unit invoke() {
                                invoke2();
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2() {
                                VideoView.this.enterPictureInPicture();
                            }
                        });
                        return Unit.INSTANCE;
                    }
                };
                intAsyncFunctionComponent5 = Intrinsics.areEqual(Unit.class, Integer.TYPE) ? new IntAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15) : Intrinsics.areEqual(Unit.class, Boolean.TYPE) ? new BoolAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15) : Intrinsics.areEqual(Unit.class, Double.TYPE) ? new DoubleAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15) : Intrinsics.areEqual(Unit.class, Float.TYPE) ? new FloatAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15) : Intrinsics.areEqual(Unit.class, String.class) ? new StringAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15) : new UntypedAsyncFunctionComponent("startPictureInPicture", anyTypeArr7, function15);
            }
            viewDefinitionBuilder2.getAsyncFunctions().put("startPictureInPicture", intAsyncFunctionComponent5);
            viewDefinitionBuilder2.getAsyncFunctions().put("stopPictureInPicture", new UntypedAsyncFunctionComponent("stopPictureInPicture", new AnyType[0], new VideoModuleKt$VideoViewComponent$$inlined$AsyncFunctionWithoutArgs$2()));
            viewDefinitionBuilder2.setOnViewDestroys(new Function1<View, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$14
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    VideoManager.INSTANCE.unregisterVideoView((VideoView) it);
                }
            });
            viewDefinitionBuilder2.setOnViewDidUpdateProps(new Function1<View, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$6$$inlined$VideoViewComponent$15
                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(View view) {
                    invoke2(view);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(View it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    VideoView videoView = (VideoView) it;
                    if (videoView.getPlayerView().getUseController() != videoView.getUseNativeControls()) {
                        videoView.getPlayerView().setUseController(videoView.getUseNativeControls());
                    }
                }
            });
            moduleDefinitionBuilder7.registerViewDefinition(viewDefinitionBuilder2.build());
            moduleDefinitionBuilder2 = moduleDefinitionBuilder;
            orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VideoPlayer.class);
            module = moduleDefinitionBuilder2.getModule();
        } catch (Throwable th3) {
            th = th3;
        }
        try {
            if (module == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            AppContext appContext = module.getAppContext();
            String simpleName = JvmClassMappingKt.getJavaClass(orCreateKotlinClass).getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
            AnyType anyType20 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            ClassComponentBuilder classComponentBuilder = new ClassComponentBuilder(appContext, simpleName, orCreateKotlinClass, anyType20 == null ? new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$Class$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(VideoPlayer.class);
                }
            }), null) : anyType20, moduleDefinitionBuilder2.getConverters());
            TypeConverterProvider converters2 = classComponentBuilder.getConverters();
            AnyType[] anyTypeArr8 = new AnyType[1];
            AnyType anyType21 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoSource.class), true));
            if (anyType21 == null) {
                anyType21 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoSource.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(VideoSource.class);
                    }
                }), converters2);
            }
            anyTypeArr8[0] = anyType21;
            ReturnType returnType3 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Object.class));
            if (returnType3 == null) {
                returnType3 = new ReturnType(Reflection.getOrCreateKotlinClass(Object.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Object.class), returnType3);
            }
            classComponentBuilder.setConstructor(new SyncFunctionComponent("constructor", anyTypeArr8, returnType3, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Constructor$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    VideoSource videoSource = (VideoSource) objArr[0];
                    Context applicationContext = VideoModule.this.getAppContext().getThrowingActivity().getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    VideoPlayer videoPlayer = new VideoPlayer(applicationContext, VideoModule.this.getAppContext(), videoSource);
                    BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$1$1(videoPlayer, null), 3, null);
                    return videoPlayer;
                }
            }));
            PropertyComponentBuilderWithThis Property = classComponentBuilder.Property("playing");
            AnyType[] anyTypeArr9 = {new AnyType(Property.getThisType(), null, 2, null)};
            ReturnType returnType4 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType4 == null) {
                returnType4 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType4);
            }
            SyncFunctionComponent syncFunctionComponent = new SyncFunctionComponent("get", anyTypeArr9, returnType4, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getPlaying());
                }
            });
            syncFunctionComponent.setOwnerType(Property.getThisType());
            syncFunctionComponent.setCanTakeOwner(true);
            Property.setGetter(syncFunctionComponent);
            PropertyComponentBuilderWithThis Property2 = classComponentBuilder.Property("muted");
            AnyType[] anyTypeArr10 = {new AnyType(Property2.getThisType(), null, 2, null)};
            ReturnType returnType5 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType5 == null) {
                returnType5 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType5);
            }
            SyncFunctionComponent syncFunctionComponent2 = new SyncFunctionComponent("get", anyTypeArr10, returnType5, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getMuted());
                }
            });
            syncFunctionComponent2.setOwnerType(Property2.getThisType());
            syncFunctionComponent2.setCanTakeOwner(true);
            Property2.setGetter(syncFunctionComponent2);
            AnyType[] anyTypeArr11 = new AnyType[2];
            anyTypeArr11[0] = new AnyType(Property2.getThisType(), null, 2, null);
            AnyType anyType22 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType22 == null) {
                anyType22 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), null);
            }
            anyTypeArr11[1] = anyType22;
            ReturnType returnType6 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType6 == null) {
                returnType6 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType6);
            }
            SyncFunctionComponent syncFunctionComponent3 = new SyncFunctionComponent("set", anyTypeArr11, returnType6, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$2
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$4$1((VideoPlayer) obj, ((Boolean) obj2).booleanValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent3.setOwnerType(Property2.getThisType());
            syncFunctionComponent3.setCanTakeOwner(true);
            Property2.setSetter(syncFunctionComponent3);
            PropertyComponentBuilderWithThis Property3 = classComponentBuilder.Property("volume");
            AnyType[] anyTypeArr12 = {new AnyType(Property3.getThisType(), null, 2, null)};
            ReturnType returnType7 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType7 == null) {
                returnType7 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType7);
            }
            SyncFunctionComponent syncFunctionComponent4 = new SyncFunctionComponent("get", anyTypeArr12, returnType7, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Float.valueOf(((VideoPlayer) it[0]).getVolume());
                }
            });
            syncFunctionComponent4.setOwnerType(Property3.getThisType());
            syncFunctionComponent4.setCanTakeOwner(true);
            Property3.setGetter(syncFunctionComponent4);
            AnyType[] anyTypeArr13 = new AnyType[2];
            anyTypeArr13[0] = new AnyType(Property3.getThisType(), null, 2, null);
            AnyType anyType23 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Float.class), false));
            if (anyType23 == null) {
                anyType23 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Float.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Float.TYPE);
                    }
                }), null);
            }
            anyTypeArr13[1] = anyType23;
            ReturnType returnType8 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType8 == null) {
                returnType8 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType8);
            }
            SyncFunctionComponent syncFunctionComponent5 = new SyncFunctionComponent("set", anyTypeArr13, returnType8, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$4
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$6$1((VideoPlayer) obj, ((Float) obj2).floatValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent5.setOwnerType(Property3.getThisType());
            syncFunctionComponent5.setCanTakeOwner(true);
            Property3.setSetter(syncFunctionComponent5);
            PropertyComponentBuilderWithThis Property4 = classComponentBuilder.Property("currentTime");
            AnyType[] anyTypeArr14 = {new AnyType(Property4.getThisType(), null, 2, null)};
            ReturnType returnType9 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType9 == null) {
                returnType9 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType9);
            }
            SyncFunctionComponent syncFunctionComponent6 = new SyncFunctionComponent("get", anyTypeArr14, returnType9, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Float.valueOf(((Number) BuildersKt.runBlocking(VideoModule.this.getAppContext().getMainQueue().getCoroutineContext(), new VideoModule$definition$1$8$7$1((VideoPlayer) it[0], null))).floatValue());
                }
            });
            syncFunctionComponent6.setOwnerType(Property4.getThisType());
            syncFunctionComponent6.setCanTakeOwner(true);
            Property4.setGetter(syncFunctionComponent6);
            AnyType[] anyTypeArr15 = new AnyType[2];
            anyTypeArr15[0] = new AnyType(Property4.getThisType(), null, 2, null);
            AnyType anyType24 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Double.class), false));
            if (anyType24 == null) {
                anyType24 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Double.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Double.TYPE);
                    }
                }), null);
            }
            anyTypeArr15[1] = anyType24;
            ReturnType returnType10 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType10 == null) {
                returnType10 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType10);
            }
            SyncFunctionComponent syncFunctionComponent7 = new SyncFunctionComponent("set", anyTypeArr15, returnType10, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$6
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$8$1((VideoPlayer) obj, ((Double) obj2).doubleValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Double");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent7.setOwnerType(Property4.getThisType());
            syncFunctionComponent7.setCanTakeOwner(true);
            Property4.setSetter(syncFunctionComponent7);
            PropertyComponentBuilderWithThis Property5 = classComponentBuilder.Property("currentLiveTimestamp");
            AnyType[] anyTypeArr16 = {new AnyType(Property5.getThisType(), null, 2, null)};
            ReturnType returnType11 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Long.class));
            if (returnType11 == null) {
                returnType11 = new ReturnType(Reflection.getOrCreateKotlinClass(Long.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Long.class), returnType11);
            }
            SyncFunctionComponent syncFunctionComponent8 = new SyncFunctionComponent("get", anyTypeArr16, returnType11, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return (Long) BuildersKt.runBlocking(VideoModule.this.getAppContext().getMainQueue().getCoroutineContext(), new VideoModule$definition$1$8$9$1((VideoPlayer) it[0], null));
                }
            });
            syncFunctionComponent8.setOwnerType(Property5.getThisType());
            syncFunctionComponent8.setCanTakeOwner(true);
            Property5.setGetter(syncFunctionComponent8);
            PropertyComponentBuilderWithThis Property6 = classComponentBuilder.Property("availableVideoTracks");
            AnyType[] anyTypeArr17 = {new AnyType(Property6.getThisType(), null, 2, null)};
            ReturnType returnType12 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(List.class));
            if (returnType12 == null) {
                returnType12 = new ReturnType(Reflection.getOrCreateKotlinClass(List.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(List.class), returnType12);
            }
            SyncFunctionComponent syncFunctionComponent9 = new SyncFunctionComponent("get", anyTypeArr17, returnType12, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getAvailableVideoTracks();
                }
            });
            syncFunctionComponent9.setOwnerType(Property6.getThisType());
            syncFunctionComponent9.setCanTakeOwner(true);
            Property6.setGetter(syncFunctionComponent9);
            PropertyComponentBuilderWithThis Property7 = classComponentBuilder.Property("videoTrack");
            AnyType[] anyTypeArr18 = {new AnyType(Property7.getThisType(), null, 2, null)};
            ReturnType returnType13 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(VideoTrack.class));
            if (returnType13 == null) {
                returnType13 = new ReturnType(Reflection.getOrCreateKotlinClass(VideoTrack.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(VideoTrack.class), returnType13);
            }
            SyncFunctionComponent syncFunctionComponent10 = new SyncFunctionComponent("get", anyTypeArr18, returnType13, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getCurrentVideoTrack();
                }
            });
            syncFunctionComponent10.setOwnerType(Property7.getThisType());
            syncFunctionComponent10.setCanTakeOwner(true);
            Property7.setGetter(syncFunctionComponent10);
            PropertyComponentBuilderWithThis Property8 = classComponentBuilder.Property("availableSubtitleTracks");
            AnyType[] anyTypeArr19 = {new AnyType(Property8.getThisType(), null, 2, null)};
            ReturnType returnType14 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(ArrayList.class));
            if (returnType14 == null) {
                returnType14 = new ReturnType(Reflection.getOrCreateKotlinClass(ArrayList.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(ArrayList.class), returnType14);
            }
            SyncFunctionComponent syncFunctionComponent11 = new SyncFunctionComponent("get", anyTypeArr19, returnType14, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getSubtitles().getAvailableSubtitleTracks();
                }
            });
            syncFunctionComponent11.setOwnerType(Property8.getThisType());
            syncFunctionComponent11.setCanTakeOwner(true);
            Property8.setGetter(syncFunctionComponent11);
            PropertyComponentBuilderWithThis Property9 = classComponentBuilder.Property("subtitleTrack");
            AnyType[] anyTypeArr20 = {new AnyType(Property9.getThisType(), null, 2, null)};
            ReturnType returnType15 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(SubtitleTrack.class));
            if (returnType15 == null) {
                returnType15 = new ReturnType(Reflection.getOrCreateKotlinClass(SubtitleTrack.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(SubtitleTrack.class), returnType15);
            }
            SyncFunctionComponent syncFunctionComponent12 = new SyncFunctionComponent("get", anyTypeArr20, returnType15, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getSubtitles().getCurrentSubtitleTrack();
                }
            });
            syncFunctionComponent12.setOwnerType(Property9.getThisType());
            syncFunctionComponent12.setCanTakeOwner(true);
            Property9.setGetter(syncFunctionComponent12);
            AnyType[] anyTypeArr21 = new AnyType[2];
            anyTypeArr21[0] = new AnyType(Property9.getThisType(), null, 2, null);
            AnyType anyType25 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(SubtitleTrack.class), true));
            if (anyType25 == null) {
                anyType25 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(SubtitleTrack.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$7
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(SubtitleTrack.class);
                    }
                }), null);
            }
            anyTypeArr21[1] = anyType25;
            ReturnType returnType16 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType16 == null) {
                returnType16 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType16);
            }
            SyncFunctionComponent syncFunctionComponent13 = new SyncFunctionComponent("set", anyTypeArr21, returnType16, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$8
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$14$1((VideoPlayer) obj, (SubtitleTrack) it[1], null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent13.setOwnerType(Property9.getThisType());
            syncFunctionComponent13.setCanTakeOwner(true);
            Property9.setSetter(syncFunctionComponent13);
            PropertyComponentBuilderWithThis Property10 = classComponentBuilder.Property("availableAudioTracks");
            AnyType[] anyTypeArr22 = {new AnyType(Property10.getThisType(), null, 2, null)};
            ReturnType returnType17 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(ArrayList.class));
            if (returnType17 == null) {
                returnType17 = new ReturnType(Reflection.getOrCreateKotlinClass(ArrayList.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(ArrayList.class), returnType17);
            }
            SyncFunctionComponent syncFunctionComponent14 = new SyncFunctionComponent("get", anyTypeArr22, returnType17, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getAudioTracks().getAvailableAudioTracks();
                }
            });
            syncFunctionComponent14.setOwnerType(Property10.getThisType());
            syncFunctionComponent14.setCanTakeOwner(true);
            Property10.setGetter(syncFunctionComponent14);
            PropertyComponentBuilderWithThis Property11 = classComponentBuilder.Property("audioTrack");
            AnyType[] anyTypeArr23 = {new AnyType(Property11.getThisType(), null, 2, null)};
            ReturnType returnType18 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(AudioTrack.class));
            if (returnType18 == null) {
                returnType18 = new ReturnType(Reflection.getOrCreateKotlinClass(AudioTrack.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(AudioTrack.class), returnType18);
            }
            SyncFunctionComponent syncFunctionComponent15 = new SyncFunctionComponent("get", anyTypeArr23, returnType18, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getAudioTracks().getCurrentAudioTrack();
                }
            });
            syncFunctionComponent15.setOwnerType(Property11.getThisType());
            syncFunctionComponent15.setCanTakeOwner(true);
            Property11.setGetter(syncFunctionComponent15);
            AnyType[] anyTypeArr24 = new AnyType[2];
            anyTypeArr24[0] = new AnyType(Property11.getThisType(), null, 2, null);
            AnyType anyType26 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(AudioTrack.class), true));
            if (anyType26 == null) {
                anyType26 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(AudioTrack.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$9
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(AudioTrack.class);
                    }
                }), null);
            }
            anyTypeArr24[1] = anyType26;
            ReturnType returnType19 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType19 == null) {
                returnType19 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType19);
            }
            SyncFunctionComponent syncFunctionComponent16 = new SyncFunctionComponent("set", anyTypeArr24, returnType19, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$10
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$17$1((VideoPlayer) obj, (AudioTrack) it[1], null), 3, null);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent16.setOwnerType(Property11.getThisType());
            syncFunctionComponent16.setCanTakeOwner(true);
            Property11.setSetter(syncFunctionComponent16);
            PropertyComponentBuilderWithThis Property12 = classComponentBuilder.Property("currentOffsetFromLive");
            AnyType[] anyTypeArr25 = {new AnyType(Property12.getThisType(), null, 2, null)};
            ReturnType returnType20 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType20 == null) {
                returnType20 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType20);
            }
            SyncFunctionComponent syncFunctionComponent17 = new SyncFunctionComponent("get", anyTypeArr25, returnType20, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return (Float) BuildersKt.runBlocking(VideoModule.this.getAppContext().getMainQueue().getCoroutineContext(), new VideoModule$definition$1$8$18$1((VideoPlayer) it[0], null));
                }
            });
            syncFunctionComponent17.setOwnerType(Property12.getThisType());
            syncFunctionComponent17.setCanTakeOwner(true);
            Property12.setGetter(syncFunctionComponent17);
            PropertyComponentBuilderWithThis Property13 = classComponentBuilder.Property("duration");
            AnyType[] anyTypeArr26 = {new AnyType(Property13.getThisType(), null, 2, null)};
            ReturnType returnType21 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType21 == null) {
                returnType21 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType21);
            }
            SyncFunctionComponent syncFunctionComponent18 = new SyncFunctionComponent("get", anyTypeArr26, returnType21, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$13
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Float.valueOf(((VideoPlayer) it[0]).getDuration());
                }
            });
            syncFunctionComponent18.setOwnerType(Property13.getThisType());
            syncFunctionComponent18.setCanTakeOwner(true);
            Property13.setGetter(syncFunctionComponent18);
            PropertyComponentBuilderWithThis Property14 = classComponentBuilder.Property("playbackRate");
            AnyType[] anyTypeArr27 = {new AnyType(Property14.getThisType(), null, 2, null)};
            ReturnType returnType22 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Float.class));
            if (returnType22 == null) {
                returnType22 = new ReturnType(Reflection.getOrCreateKotlinClass(Float.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Float.class), returnType22);
            }
            SyncFunctionComponent syncFunctionComponent19 = new SyncFunctionComponent("get", anyTypeArr27, returnType22, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$14
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Float.valueOf(((VideoPlayer) it[0]).getPlaybackParameters().speed);
                }
            });
            syncFunctionComponent19.setOwnerType(Property14.getThisType());
            syncFunctionComponent19.setCanTakeOwner(true);
            Property14.setGetter(syncFunctionComponent19);
            AnyType[] anyTypeArr28 = new AnyType[2];
            anyTypeArr28[0] = new AnyType(Property14.getThisType(), null, 2, null);
            AnyType anyType27 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Float.class), false));
            if (anyType27 == null) {
                anyType27 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Float.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$11
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Float.TYPE);
                    }
                }), null);
            }
            anyTypeArr28[1] = anyType27;
            ReturnType returnType23 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType23 == null) {
                returnType23 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType23);
            }
            SyncFunctionComponent syncFunctionComponent20 = new SyncFunctionComponent("set", anyTypeArr28, returnType23, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$12
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$21$1((VideoPlayer) obj, ((Float) obj2).floatValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent20.setOwnerType(Property14.getThisType());
            syncFunctionComponent20.setCanTakeOwner(true);
            Property14.setSetter(syncFunctionComponent20);
            PropertyComponentBuilderWithThis Property15 = classComponentBuilder.Property("isLive");
            AnyType[] anyTypeArr29 = {new AnyType(Property15.getThisType(), null, 2, null)};
            ReturnType returnType24 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType24 == null) {
                returnType24 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType24);
            }
            SyncFunctionComponent syncFunctionComponent21 = new SyncFunctionComponent("get", anyTypeArr29, returnType24, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$15
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getIsLive());
                }
            });
            syncFunctionComponent21.setOwnerType(Property15.getThisType());
            syncFunctionComponent21.setCanTakeOwner(true);
            Property15.setGetter(syncFunctionComponent21);
            PropertyComponentBuilderWithThis Property16 = classComponentBuilder.Property("preservesPitch");
            AnyType[] anyTypeArr30 = {new AnyType(Property16.getThisType(), null, 2, null)};
            ReturnType returnType25 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType25 == null) {
                returnType25 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType25);
            }
            SyncFunctionComponent syncFunctionComponent22 = new SyncFunctionComponent("get", anyTypeArr30, returnType25, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$16
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getPreservesPitch());
                }
            });
            syncFunctionComponent22.setOwnerType(Property16.getThisType());
            syncFunctionComponent22.setCanTakeOwner(true);
            Property16.setGetter(syncFunctionComponent22);
            AnyType[] anyTypeArr31 = new AnyType[2];
            anyTypeArr31[0] = new AnyType(Property16.getThisType(), null, 2, null);
            AnyType anyType28 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType28 == null) {
                anyType28 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$13
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), null);
            }
            anyTypeArr31[1] = anyType28;
            ReturnType returnType26 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType26 == null) {
                returnType26 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType26);
            }
            SyncFunctionComponent syncFunctionComponent23 = new SyncFunctionComponent("set", anyTypeArr31, returnType26, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$14
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$24$1((VideoPlayer) obj, ((Boolean) obj2).booleanValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent23.setOwnerType(Property16.getThisType());
            syncFunctionComponent23.setCanTakeOwner(true);
            Property16.setSetter(syncFunctionComponent23);
            PropertyComponentBuilderWithThis Property17 = classComponentBuilder.Property("showNowPlayingNotification");
            AnyType[] anyTypeArr32 = {new AnyType(Property17.getThisType(), null, 2, null)};
            ReturnType returnType27 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType27 == null) {
                returnType27 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType27);
            }
            SyncFunctionComponent syncFunctionComponent24 = new SyncFunctionComponent("get", anyTypeArr32, returnType27, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$17
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getShowNowPlayingNotification());
                }
            });
            syncFunctionComponent24.setOwnerType(Property17.getThisType());
            syncFunctionComponent24.setCanTakeOwner(true);
            Property17.setGetter(syncFunctionComponent24);
            AnyType[] anyTypeArr33 = new AnyType[2];
            anyTypeArr33[0] = new AnyType(Property17.getThisType(), null, 2, null);
            AnyType anyType29 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType29 == null) {
                anyType29 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$15
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), null);
            }
            anyTypeArr33[1] = anyType29;
            ReturnType returnType28 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType28 == null) {
                returnType28 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType28);
            }
            SyncFunctionComponent syncFunctionComponent25 = new SyncFunctionComponent("set", anyTypeArr33, returnType28, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$16
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$26$1((VideoPlayer) obj, ((Boolean) obj2).booleanValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent25.setOwnerType(Property17.getThisType());
            syncFunctionComponent25.setCanTakeOwner(true);
            Property17.setSetter(syncFunctionComponent25);
            PropertyComponentBuilderWithThis Property18 = classComponentBuilder.Property("status");
            AnyType[] anyTypeArr34 = {new AnyType(Property18.getThisType(), null, 2, null)};
            ReturnType returnType29 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(PlayerStatus.class));
            if (returnType29 == null) {
                returnType29 = new ReturnType(Reflection.getOrCreateKotlinClass(PlayerStatus.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(PlayerStatus.class), returnType29);
            }
            SyncFunctionComponent syncFunctionComponent26 = new SyncFunctionComponent("get", anyTypeArr34, returnType29, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$18
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getStatus();
                }
            });
            syncFunctionComponent26.setOwnerType(Property18.getThisType());
            syncFunctionComponent26.setCanTakeOwner(true);
            Property18.setGetter(syncFunctionComponent26);
            PropertyComponentBuilderWithThis Property19 = classComponentBuilder.Property("staysActiveInBackground");
            AnyType[] anyTypeArr35 = {new AnyType(Property19.getThisType(), null, 2, null)};
            ReturnType returnType30 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType30 == null) {
                returnType30 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType30);
            }
            SyncFunctionComponent syncFunctionComponent27 = new SyncFunctionComponent("get", anyTypeArr35, returnType30, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$19
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getStaysActiveInBackground());
                }
            });
            syncFunctionComponent27.setOwnerType(Property19.getThisType());
            syncFunctionComponent27.setCanTakeOwner(true);
            Property19.setGetter(syncFunctionComponent27);
            AnyType[] anyTypeArr36 = new AnyType[2];
            anyTypeArr36[0] = new AnyType(Property19.getThisType(), null, 2, null);
            AnyType anyType30 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType30 == null) {
                anyType30 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$17
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), null);
            }
            anyTypeArr36[1] = anyType30;
            ReturnType returnType31 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType31 == null) {
                returnType31 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType31);
            }
            SyncFunctionComponent syncFunctionComponent28 = new SyncFunctionComponent("set", anyTypeArr36, returnType31, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$18
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                    }
                    ((VideoPlayer) obj).setStaysActiveInBackground(((Boolean) obj2).booleanValue());
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent28.setOwnerType(Property19.getThisType());
            syncFunctionComponent28.setCanTakeOwner(true);
            Property19.setSetter(syncFunctionComponent28);
            PropertyComponentBuilderWithThis Property20 = classComponentBuilder.Property("loop");
            AnyType[] anyTypeArr37 = {new AnyType(Property20.getThisType(), null, 2, null)};
            ReturnType returnType32 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Boolean.class));
            if (returnType32 == null) {
                returnType32 = new ReturnType(Reflection.getOrCreateKotlinClass(Boolean.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Boolean.class), returnType32);
            }
            SyncFunctionComponent syncFunctionComponent29 = new SyncFunctionComponent("get", anyTypeArr37, returnType32, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$20
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Boolean.valueOf(((VideoPlayer) it[0]).getPlayer().getRepeatMode() == 1);
                }
            });
            syncFunctionComponent29.setOwnerType(Property20.getThisType());
            syncFunctionComponent29.setCanTakeOwner(true);
            Property20.setGetter(syncFunctionComponent29);
            AnyType[] anyTypeArr38 = new AnyType[2];
            anyTypeArr38[0] = new AnyType(Property20.getThisType(), null, 2, null);
            AnyType anyType31 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Boolean.class), false));
            if (anyType31 == null) {
                anyType31 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Boolean.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$19
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Boolean.TYPE);
                    }
                }), null);
            }
            anyTypeArr38[1] = anyType31;
            ReturnType returnType33 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType33 == null) {
                returnType33 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType33);
            }
            SyncFunctionComponent syncFunctionComponent30 = new SyncFunctionComponent("set", anyTypeArr38, returnType33, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$20
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$31$1((VideoPlayer) obj, ((Boolean) obj2).booleanValue(), null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Boolean");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent30.setOwnerType(Property20.getThisType());
            syncFunctionComponent30.setCanTakeOwner(true);
            Property20.setSetter(syncFunctionComponent30);
            PropertyComponentBuilderWithThis Property21 = classComponentBuilder.Property("bufferedPosition");
            AnyType[] anyTypeArr39 = {new AnyType(Property21.getThisType(), null, 2, null)};
            ReturnType returnType34 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Double.class));
            if (returnType34 == null) {
                returnType34 = new ReturnType(Reflection.getOrCreateKotlinClass(Double.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Double.class), returnType34);
            }
            SyncFunctionComponent syncFunctionComponent31 = new SyncFunctionComponent("get", anyTypeArr39, returnType34, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$21
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Double.valueOf(((Number) BuildersKt.runBlocking(VideoModule.this.getAppContext().getMainQueue().getCoroutineContext(), new VideoModule$definition$1$8$32$1((VideoPlayer) it[0], null))).doubleValue());
                }
            });
            syncFunctionComponent31.setOwnerType(Property21.getThisType());
            syncFunctionComponent31.setCanTakeOwner(true);
            Property21.setGetter(syncFunctionComponent31);
            PropertyComponentBuilderWithThis Property22 = classComponentBuilder.Property("bufferOptions");
            AnyType[] anyTypeArr40 = {new AnyType(Property22.getThisType(), null, 2, null)};
            ReturnType returnType35 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(BufferOptions.class));
            if (returnType35 == null) {
                returnType35 = new ReturnType(Reflection.getOrCreateKotlinClass(BufferOptions.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(BufferOptions.class), returnType35);
            }
            SyncFunctionComponent syncFunctionComponent32 = new SyncFunctionComponent("get", anyTypeArr40, returnType35, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$22
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getBufferOptions();
                }
            });
            syncFunctionComponent32.setOwnerType(Property22.getThisType());
            syncFunctionComponent32.setCanTakeOwner(true);
            Property22.setGetter(syncFunctionComponent32);
            AnyType[] anyTypeArr41 = new AnyType[2];
            anyTypeArr41[0] = new AnyType(Property22.getThisType(), null, 2, null);
            AnyType anyType32 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(BufferOptions.class), false));
            if (anyType32 == null) {
                anyType32 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(BufferOptions.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$21
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(BufferOptions.class);
                    }
                }), null);
            }
            anyTypeArr41[1] = anyType32;
            ReturnType returnType36 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType36 == null) {
                returnType36 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType36);
            }
            SyncFunctionComponent syncFunctionComponent33 = new SyncFunctionComponent("set", anyTypeArr41, returnType36, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$22
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type expo.modules.video.records.BufferOptions");
                    }
                    ((VideoPlayer) obj).setBufferOptions((BufferOptions) obj2);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent33.setOwnerType(Property22.getThisType());
            syncFunctionComponent33.setCanTakeOwner(true);
            Property22.setSetter(syncFunctionComponent33);
            ClassComponentBuilder classComponentBuilder2 = classComponentBuilder;
            TypeConverterProvider converters3 = classComponentBuilder2.getConverters();
            AnyType[] anyTypeArr42 = new AnyType[1];
            AnyType anyType33 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType33 == null) {
                anyType33 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters3);
            }
            anyTypeArr42[0] = anyType33;
            ReturnType returnType37 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Job.class));
            if (returnType37 == null) {
                returnType37 = new ReturnType(Reflection.getOrCreateKotlinClass(Job.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Job.class), returnType37);
            }
            classComponentBuilder2.getSyncFunctions().put("play", new SyncFunctionComponent("play", anyTypeArr42, returnType37, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Job launch$default;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    launch$default = BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$35$1((VideoPlayer) objArr[0], null), 3, null);
                    return launch$default;
                }
            }));
            ClassComponentBuilder classComponentBuilder3 = classComponentBuilder;
            TypeConverterProvider converters4 = classComponentBuilder3.getConverters();
            AnyType[] anyTypeArr43 = new AnyType[1];
            AnyType anyType34 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType34 == null) {
                anyType34 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters4);
            }
            anyTypeArr43[0] = anyType34;
            ReturnType returnType38 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Job.class));
            if (returnType38 == null) {
                returnType38 = new ReturnType(Reflection.getOrCreateKotlinClass(Job.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Job.class), returnType38);
            }
            classComponentBuilder3.getSyncFunctions().put("pause", new SyncFunctionComponent("pause", anyTypeArr43, returnType38, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Job launch$default;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    launch$default = BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$36$1((VideoPlayer) objArr[0], null), 3, null);
                    return launch$default;
                }
            }));
            PropertyComponentBuilderWithThis Property23 = classComponentBuilder.Property("timeUpdateEventInterval");
            AnyType[] anyTypeArr44 = {new AnyType(Property23.getThisType(), null, 2, null)};
            ReturnType returnType39 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Double.class));
            if (returnType39 == null) {
                returnType39 = new ReturnType(Reflection.getOrCreateKotlinClass(Double.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Double.class), returnType39);
            }
            SyncFunctionComponent syncFunctionComponent34 = new SyncFunctionComponent("get", anyTypeArr44, returnType39, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$23
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Double.valueOf(((VideoPlayer) it[0]).getIntervalUpdateClock().getInterval() / 1000.0d);
                }
            });
            syncFunctionComponent34.setOwnerType(Property23.getThisType());
            syncFunctionComponent34.setCanTakeOwner(true);
            Property23.setGetter(syncFunctionComponent34);
            AnyType[] anyTypeArr45 = new AnyType[2];
            anyTypeArr45[0] = new AnyType(Property23.getThisType(), null, 2, null);
            AnyType anyType35 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Float.class), false));
            if (anyType35 == null) {
                anyType35 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Float.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$23
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Float.TYPE);
                    }
                }), null);
            }
            anyTypeArr45[1] = anyType35;
            ReturnType returnType40 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType40 == null) {
                returnType40 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType40);
            }
            SyncFunctionComponent syncFunctionComponent35 = new SyncFunctionComponent("set", anyTypeArr45, returnType40, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$24
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Float");
                    }
                    ((VideoPlayer) obj).getIntervalUpdateClock().setInterval((long) (((Float) obj2).floatValue() * 1000));
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent35.setOwnerType(Property23.getThisType());
            syncFunctionComponent35.setCanTakeOwner(true);
            Property23.setSetter(syncFunctionComponent35);
            PropertyComponentBuilderWithThis Property24 = classComponentBuilder.Property("audioMixingMode");
            AnyType[] anyTypeArr46 = {new AnyType(Property24.getThisType(), null, 2, null)};
            ReturnType returnType41 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(AudioMixingMode.class));
            if (returnType41 == null) {
                returnType41 = new ReturnType(Reflection.getOrCreateKotlinClass(AudioMixingMode.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(AudioMixingMode.class), returnType41);
            }
            SyncFunctionComponent syncFunctionComponent36 = new SyncFunctionComponent("get", anyTypeArr46, returnType41, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$get$24
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return ((VideoPlayer) it[0]).getAudioMixingMode();
                }
            });
            syncFunctionComponent36.setOwnerType(Property24.getThisType());
            syncFunctionComponent36.setCanTakeOwner(true);
            Property24.setGetter(syncFunctionComponent36);
            AnyType[] anyTypeArr47 = new AnyType[2];
            anyTypeArr47[0] = new AnyType(Property24.getThisType(), null, 2, null);
            AnyType anyType36 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(AudioMixingMode.class), false));
            if (anyType36 == null) {
                anyType36 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(AudioMixingMode.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$25
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(AudioMixingMode.class);
                    }
                }), null);
            }
            anyTypeArr47[1] = anyType36;
            ReturnType returnType42 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType42 == null) {
                returnType42 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType42);
            }
            SyncFunctionComponent syncFunctionComponent37 = new SyncFunctionComponent("set", anyTypeArr47, returnType42, new Function1<Object[], Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$set$26
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    Object obj = it[0];
                    Object obj2 = it[1];
                    if (obj2 != null) {
                        BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$40$1((VideoPlayer) obj, (AudioMixingMode) obj2, null), 3, null);
                        return;
                    }
                    throw new NullPointerException("null cannot be cast to non-null type expo.modules.video.enums.AudioMixingMode");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr) {
                    invoke2(objArr);
                    return Unit.INSTANCE;
                }
            });
            syncFunctionComponent37.setOwnerType(Property24.getThisType());
            syncFunctionComponent37.setCanTakeOwner(true);
            Property24.setSetter(syncFunctionComponent37);
            ClassComponentBuilder classComponentBuilder4 = classComponentBuilder;
            TypeConverterProvider converters5 = classComponentBuilder4.getConverters();
            AnyType[] anyTypeArr48 = new AnyType[2];
            AnyType anyType37 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType37 == null) {
                anyType37 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$5
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters5);
            }
            anyTypeArr48[0] = anyType37;
            AnyType anyType38 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Either.class), true));
            if (anyType38 == null) {
                anyType38 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Either.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$6
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Either.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Uri.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(VideoSource.class)));
                    }
                }), converters5);
            }
            anyTypeArr48[1] = anyType38;
            ReturnType returnType43 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Unit.class));
            if (returnType43 == null) {
                returnType43 = new ReturnType(Reflection.getOrCreateKotlinClass(Unit.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Unit.class), returnType43);
            }
            classComponentBuilder4.getSyncFunctions().put("replace", new SyncFunctionComponent("replace", anyTypeArr48, returnType43, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    Either either = (Either) objArr[1];
                    VideoModule.replaceImpl$default(VideoModule.this, (VideoPlayer) obj, either, null, 4, null);
                    return Unit.INSTANCE;
                }
            }));
            ClassComponentBuilder classComponentBuilder5 = classComponentBuilder;
            TypeConverterProvider converters6 = classComponentBuilder5.getConverters();
            AnyType[] anyTypeArr49 = new AnyType[2];
            AnyType anyType39 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType39 == null) {
                anyType39 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$AsyncFunctionWithPromise$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters6);
            }
            anyTypeArr49[0] = anyType39;
            AnyType anyType40 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Either.class), true));
            if (anyType40 == null) {
                anyType40 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Either.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$AsyncFunctionWithPromise$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(Either.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Uri.class)), KTypeProjection.INSTANCE.invariant(Reflection.typeOf(VideoSource.class)));
                    }
                }), converters6);
            }
            anyTypeArr49[1] = anyType40;
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent = new AsyncFunctionWithPromiseComponent("replaceAsync", anyTypeArr49, new Function2<Object[], Promise, Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$AsyncFunctionWithPromise$3
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Object[] objArr, Promise promise) {
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Intrinsics.checkNotNullParameter(promise, "promise");
                    Object obj = objArr[0];
                    Either either = (Either) objArr[1];
                    VideoModule.this.replaceImpl((VideoPlayer) obj, either, promise);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Object[] objArr, Promise promise) {
                    invoke2(objArr, promise);
                    return Unit.INSTANCE;
                }
            });
            classComponentBuilder5.getAsyncFunctions().put("replaceAsync", asyncFunctionWithPromiseComponent);
            AsyncFunctionWithPromiseComponent asyncFunctionWithPromiseComponent2 = asyncFunctionWithPromiseComponent;
            ClassComponentBuilder classComponentBuilder6 = classComponentBuilder;
            TypeConverterProvider converters7 = classComponentBuilder6.getConverters();
            AnyType[] anyTypeArr50 = new AnyType[2];
            AnyType anyType41 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType41 == null) {
                anyType41 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$8
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters7);
            }
            anyTypeArr50[0] = anyType41;
            AnyType anyType42 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(Double.class), false));
            if (anyType42 == null) {
                anyType42 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(Double.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$9
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(Double.TYPE);
                    }
                }), converters7);
            }
            anyTypeArr50[1] = anyType42;
            ReturnType returnType44 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Job.class));
            if (returnType44 == null) {
                returnType44 = new ReturnType(Reflection.getOrCreateKotlinClass(Job.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Job.class), returnType44);
            }
            classComponentBuilder6.getSyncFunctions().put("seekBy", new SyncFunctionComponent("seekBy", anyTypeArr50, returnType44, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Job launch$default;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    Object obj = objArr[0];
                    launch$default = BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$43$1((VideoPlayer) obj, ((Number) objArr[1]).doubleValue(), null), 3, null);
                    return launch$default;
                }
            }));
            ClassComponentBuilder classComponentBuilder7 = classComponentBuilder;
            TypeConverterProvider converters8 = classComponentBuilder7.getConverters();
            AnyType[] anyTypeArr51 = new AnyType[1];
            AnyType anyType43 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType43 == null) {
                anyType43 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$11
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters8);
            }
            anyTypeArr51[0] = anyType43;
            ReturnType returnType45 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Job.class));
            if (returnType45 == null) {
                returnType45 = new ReturnType(Reflection.getOrCreateKotlinClass(Job.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Job.class), returnType45);
            }
            classComponentBuilder7.getSyncFunctions().put("replay", new SyncFunctionComponent("replay", anyTypeArr51, returnType45, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Function$12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] objArr) {
                    Job launch$default;
                    Intrinsics.checkNotNullParameter(objArr, "<destruct>");
                    launch$default = BuildersKt__Builders_commonKt.launch$default(VideoModule.this.getAppContext().getMainQueue(), null, null, new VideoModule$definition$1$8$44$1((VideoPlayer) objArr[0], null), 3, null);
                    return launch$default;
                }
            }));
            AsyncFunctionBuilder AsyncFunction = classComponentBuilder.AsyncFunction("generateThumbnailsAsync");
            String name = AsyncFunction.getName();
            TypeConverterProvider converters9 = AsyncFunction.getConverters();
            AnyType[] anyTypeArr52 = new AnyType[3];
            AnyType anyType44 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false));
            if (anyType44 == null) {
                anyType44 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoPlayer.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Coroutine$1
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(VideoPlayer.class);
                    }
                }), converters9);
            }
            anyTypeArr52[0] = anyType44;
            AnyType anyType45 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(List.class), false));
            if (anyType45 == null) {
                anyType45 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(List.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Coroutine$2
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.typeOf(List.class, KTypeProjection.INSTANCE.invariant(Reflection.typeOf(Duration.class)));
                    }
                }), converters9);
            }
            anyTypeArr52[1] = anyType45;
            AnyType anyType46 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoThumbnailOptions.class), true));
            if (anyType46 == null) {
                anyType46 = new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoThumbnailOptions.class), true, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Coroutine$3
                    @Override // kotlin.jvm.functions.Function0
                    public final KType invoke() {
                        return Reflection.nullableTypeOf(VideoThumbnailOptions.class);
                    }
                }), converters9);
            }
            anyTypeArr52[2] = anyType46;
            AsyncFunction.setAsyncFunctionComponent(new SuspendFunctionComponent(name, anyTypeArr52, new VideoModule$definition$lambda$60$lambda$57$$inlined$Coroutine$4(null, this)));
            KClass orCreateKotlinClass2 = Reflection.getOrCreateKotlinClass(VideoThumbnail.class);
            Module module2 = moduleDefinitionBuilder.getModule();
            if (module2 == null) {
                throw new IllegalArgumentException("Required value was null.".toString());
            }
            AppContext appContext2 = module2.getAppContext();
            String simpleName2 = JvmClassMappingKt.getJavaClass(orCreateKotlinClass2).getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
            AnyType anyType47 = AnyTypeProvider.INSTANCE.getTypesMap().get(new Pair(Reflection.getOrCreateKotlinClass(VideoThumbnail.class), false));
            ClassComponentBuilder classComponentBuilder8 = new ClassComponentBuilder(appContext2, simpleName2, orCreateKotlinClass2, anyType47 == null ? new AnyType(new LazyKType(Reflection.getOrCreateKotlinClass(VideoThumbnail.class), false, new Function0<KType>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$$inlined$Class$default$1
                @Override // kotlin.jvm.functions.Function0
                public final KType invoke() {
                    return Reflection.typeOf(VideoThumbnail.class);
                }
            }), null) : anyType47, moduleDefinitionBuilder.getConverters());
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis = new PropertyComponentBuilderWithThis(classComponentBuilder8.getOwnerType().getKType(), "width");
            AnyType[] anyTypeArr53 = {new AnyType(propertyComponentBuilderWithThis.getThisType(), null, 2, null)};
            ReturnType returnType46 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Integer.class));
            if (returnType46 == null) {
                returnType46 = new ReturnType(Reflection.getOrCreateKotlinClass(Integer.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Integer.class), returnType46);
            }
            SyncFunctionComponent syncFunctionComponent38 = new SyncFunctionComponent("get", anyTypeArr53, returnType46, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$lambda$56$$inlined$Property$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Integer.valueOf(((VideoThumbnail) it[0]).getWidth());
                }
            });
            syncFunctionComponent38.setOwnerType(propertyComponentBuilderWithThis.getThisType());
            syncFunctionComponent38.setCanTakeOwner(true);
            propertyComponentBuilderWithThis.setGetter(syncFunctionComponent38);
            classComponentBuilder8.getProperties().put("width", propertyComponentBuilderWithThis);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis2 = new PropertyComponentBuilderWithThis(classComponentBuilder8.getOwnerType().getKType(), "height");
            AnyType[] anyTypeArr54 = {new AnyType(propertyComponentBuilderWithThis2.getThisType(), null, 2, null)};
            ReturnType returnType47 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Integer.class));
            if (returnType47 == null) {
                returnType47 = new ReturnType(Reflection.getOrCreateKotlinClass(Integer.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Integer.class), returnType47);
            }
            SyncFunctionComponent syncFunctionComponent39 = new SyncFunctionComponent("get", anyTypeArr54, returnType47, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$lambda$56$$inlined$Property$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Integer.valueOf(((VideoThumbnail) it[0]).getHeight());
                }
            });
            syncFunctionComponent39.setOwnerType(propertyComponentBuilderWithThis2.getThisType());
            syncFunctionComponent39.setCanTakeOwner(true);
            propertyComponentBuilderWithThis2.setGetter(syncFunctionComponent39);
            classComponentBuilder8.getProperties().put("height", propertyComponentBuilderWithThis2);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis3 = new PropertyComponentBuilderWithThis(classComponentBuilder8.getOwnerType().getKType(), "requestedTime");
            AnyType[] anyTypeArr55 = {new AnyType(propertyComponentBuilderWithThis3.getThisType(), null, 2, null)};
            ReturnType returnType48 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Duration.class));
            if (returnType48 == null) {
                returnType48 = new ReturnType(Reflection.getOrCreateKotlinClass(Duration.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Duration.class), returnType48);
            }
            SyncFunctionComponent syncFunctionComponent40 = new SyncFunctionComponent("get", anyTypeArr55, returnType48, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$lambda$56$$inlined$Property$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Duration.m3461boximpl(((VideoThumbnail) it[0]).getRequestedTime());
                }
            });
            syncFunctionComponent40.setOwnerType(propertyComponentBuilderWithThis3.getThisType());
            syncFunctionComponent40.setCanTakeOwner(true);
            propertyComponentBuilderWithThis3.setGetter(syncFunctionComponent40);
            classComponentBuilder8.getProperties().put("requestedTime", propertyComponentBuilderWithThis3);
            PropertyComponentBuilderWithThis propertyComponentBuilderWithThis4 = new PropertyComponentBuilderWithThis(classComponentBuilder8.getOwnerType().getKType(), "actualTime");
            AnyType[] anyTypeArr56 = {new AnyType(propertyComponentBuilderWithThis4.getThisType(), null, 2, null)};
            ReturnType returnType49 = ReturnTypeProvider.INSTANCE.getTypes().get(Reflection.getOrCreateKotlinClass(Duration.class));
            if (returnType49 == null) {
                returnType49 = new ReturnType(Reflection.getOrCreateKotlinClass(Duration.class));
                ReturnTypeProvider.INSTANCE.getTypes().put(Reflection.getOrCreateKotlinClass(Duration.class), returnType49);
            }
            SyncFunctionComponent syncFunctionComponent41 = new SyncFunctionComponent("get", anyTypeArr56, returnType49, new Function1<Object[], Object>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$lambda$57$lambda$56$$inlined$Property$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object[] it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return Duration.m3461boximpl(((VideoThumbnail) it[0]).getActualTime());
                }
            });
            syncFunctionComponent41.setOwnerType(propertyComponentBuilderWithThis4.getThisType());
            syncFunctionComponent41.setCanTakeOwner(true);
            propertyComponentBuilderWithThis4.setGetter(syncFunctionComponent41);
            classComponentBuilder8.getProperties().put("actualTime", propertyComponentBuilderWithThis4);
            moduleDefinitionBuilder.getClassData().add(classComponentBuilder8.buildClass());
            moduleDefinitionBuilder2.getClassData().add(classComponentBuilder.buildClass());
            moduleDefinitionBuilder.getEventListeners().put(EventName.ACTIVITY_ENTERS_FOREGROUND, new BasicEventListener(EventName.ACTIVITY_ENTERS_FOREGROUND, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$OnActivityEntersForeground$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    VideoManager.INSTANCE.onAppForegrounded();
                }
            }));
            moduleDefinitionBuilder.getEventListeners().put(EventName.ACTIVITY_ENTERS_BACKGROUND, new BasicEventListener(EventName.ACTIVITY_ENTERS_BACKGROUND, new Function0<Unit>() { // from class: expo.modules.video.VideoModule$definition$lambda$60$$inlined$OnActivityEntersBackground$1
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    VideoManager.INSTANCE.onAppBackgrounded();
                }
            }));
            ModuleDefinitionData buildModule = moduleDefinitionBuilder.buildModule();
            Trace.endSection();
            return buildModule;
        } catch (Throwable th4) {
            th = th4;
            Throwable th22 = th;
            Trace.endSection();
            throw th22;
        }
    }

    static /* synthetic */ void replaceImpl$default(VideoModule videoModule, VideoPlayer videoPlayer, Either either, Promise promise, int i, Object obj) {
        if ((i & 4) != 0) {
            promise = null;
        }
        videoModule.replaceImpl(videoPlayer, either, promise);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void replaceImpl(VideoPlayer ref, Either<Uri, VideoSource> source, Promise promise) {
        VideoSource videoSource;
        if (source == null) {
            videoSource = null;
        } else if (source.isSecondType(Reflection.getOrCreateKotlinClass(VideoSource.class))) {
            videoSource = source.getSecondType(Reflection.getOrCreateKotlinClass(VideoSource.class));
        } else {
            videoSource = new VideoSource(source.getFirstType(Reflection.getOrCreateKotlinClass(Uri.class)), null, null, null, false, null, 62, null);
        }
        BuildersKt__Builders_commonKt.launch$default(getAppContext().getMainQueue(), null, null, new VideoModule$replaceImpl$1(ref, videoSource, promise, null), 3, null);
    }
}
