package coil3;

import android.R;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebSettings;
import androidx.activity.OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.view.menu.MenuWrapperICS;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.ArrayMap;
import androidx.collection.LongSparseArray;
import androidx.collection.SimpleArrayMap;
import androidx.compose.animation.AndroidFlingSpline;
import androidx.compose.animation.FlingCalculator;
import androidx.compose.animation.FlingCalculatorKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationVector;
import androidx.compose.animation.core.FloatAnimationSpec;
import androidx.compose.animation.core.VectorizedFiniteAnimationSpec;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInteropFilter;
import androidx.compose.ui.node.NodeChainKt$fillVector$1;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.unit.DpKt;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.datastore.core.SimpleActor$1;
import androidx.datastore.core.SimpleActor$offer$2;
import androidx.datastore.core.SingleProcessDataStore;
import androidx.datastore.core.SingleProcessDataStore$data$1;
import androidx.emoji2.text.MetadataRepo$Node;
import androidx.emoji2.text.TypefaceEmojiRasterizer;
import androidx.emoji2.text.flatbuffer.MetadataItem;
import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManagerImpl;
import androidx.fragment.app.FragmentManagerViewModel;
import androidx.fragment.app.FragmentStateManager;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.lifecycle.viewmodel.internal.SynchronizedObject;
import androidx.navigationevent.NavigationEvent;
import androidx.navigationevent.NavigationEventHandler;
import androidx.navigationevent.NavigationEventInput;
import androidx.navigationevent.NavigationEventProcessor;
import androidx.navigationevent.NavigationEventTransitionState$InProgress;
import androidx.navigationevent.OnBackInvokedInput;
import androidx.paging.HintHandler;
import androidx.recyclerview.widget.NestedAdapterWrapper;
import androidx.viewpager2.widget.ViewPager2;
import androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1;
import androidx.work.Operation$State;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import androidx.work.impl.AutoMigration_14_15;
import androidx.work.impl.Processor$$ExternalSyntheticLambda2;
import androidx.work.impl.StartStopToken;
import coil3.Extras;
import coil3.ImageLoader$Builder;
import coil3.RealImageLoader;
import coil3.memory.MemoryCacheService;
import coil3.request.ImageRequest;
import coil3.svg.internal.AndroidSvg;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.airbnb.lottie.utils.Logger;
import com.caverock.androidsvg.CSSParser;
import com.caverock.androidsvg.SVGAndroidRenderer;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.io.ContentReference;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.introspect.AnnotatedMember;
import com.fasterxml.jackson.databind.ser.std.MapSerializer;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarManager$SnackbarRecord;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptchaConfig;
import com.hcaptcha.sdk.HCaptchaDebugInfo;
import com.hcaptcha.sdk.HCaptchaInternalConfig;
import com.hcaptcha.sdk.HCaptchaJSInterface;
import com.hcaptcha.sdk.HCaptchaVerifyParams;
import com.hcaptcha.sdk.HCaptchaWebView;
import com.hcaptcha.sdk.HCaptchaWebViewHelper$HCaptchaWebClient;
import com.hcaptcha.sdk.IHCaptchaVerifier;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.ExceptionsKt;
import kotlin.SynchronizedLazyImpl;
import kotlin.UnsafeLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.collections.IntIterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$ClassRequest;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EmptyPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectAnnotationSource;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.constants.AnnotationValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ClassLiteralValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.ClassTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.text.RegexKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelResult;
import kotlinx.coroutines.channels.ClosedSendChannelException;
import kotlinx.serialization.KSerializer;
import okhttp3.FormBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import okio.PriorityQueue;
import okio.internal.DefaultSocket;
import org.jsoup.parser.ParseError;
import org.wikipedia.activity.SingleWebViewActivity$onCreate$4;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ImageLoader$Builder implements ActionMode.Callback, VectorizedFiniteAnimationSpec, KotlinJvmBinaryClass$AnnotationVisitor, KotlinJvmBinaryClass$AnnotationArgumentVisitor {
    public static ImageLoader$Builder snackbarManager;
    public final /* synthetic */ int $r8$classId;
    public Object application;
    public Object componentRegistry;
    public Object defaults;
    public Object extras;

    public ImageLoader$Builder(Typeface typeface, MetadataList metadataList) {
        int i;
        int i2;
        int i3;
        int i4;
        this.$r8$classId = 8;
        this.extras = typeface;
        this.application = metadataList;
        this.componentRegistry = new MetadataRepo$Node(1024);
        int __offset = metadataList.__offset(6);
        if (__offset != 0) {
            int i5 = __offset + metadataList.bb_pos;
            i = ((ByteBuffer) metadataList.bb).getInt(((ByteBuffer) metadataList.bb).getInt(i5) + i5);
        } else {
            i = 0;
        }
        this.defaults = new char[i * 2];
        int __offset2 = metadataList.__offset(6);
        if (__offset2 != 0) {
            int i6 = __offset2 + metadataList.bb_pos;
            i2 = ((ByteBuffer) metadataList.bb).getInt(((ByteBuffer) metadataList.bb).getInt(i6) + i6);
        } else {
            i2 = 0;
        }
        for (int i7 = 0; i7 < i2; i7++) {
            TypefaceEmojiRasterizer typefaceEmojiRasterizer = new TypefaceEmojiRasterizer(this, i7);
            MetadataItem metadataItem = typefaceEmojiRasterizer.getMetadataItem();
            int __offset3 = metadataItem.__offset(4);
            Character.toChars(__offset3 != 0 ? ((ByteBuffer) metadataItem.bb).getInt(__offset3 + metadataItem.bb_pos) : 0, (char[]) this.defaults, i7 * 2);
            MetadataItem metadataItem2 = typefaceEmojiRasterizer.getMetadataItem();
            int __offset4 = metadataItem2.__offset(16);
            if (__offset4 != 0) {
                int i8 = __offset4 + metadataItem2.bb_pos;
                i3 = ((ByteBuffer) metadataItem2.bb).getInt(((ByteBuffer) metadataItem2.bb).getInt(i8) + i8);
            } else {
                i3 = 0;
            }
            Operation$State.checkArgument("invalid metadata codepoint length", i3 > 0);
            MetadataRepo$Node metadataRepo$Node = (MetadataRepo$Node) this.componentRegistry;
            MetadataItem metadataItem3 = typefaceEmojiRasterizer.getMetadataItem();
            int __offset5 = metadataItem3.__offset(16);
            if (__offset5 != 0) {
                int i9 = __offset5 + metadataItem3.bb_pos;
                i4 = ((ByteBuffer) metadataItem3.bb).getInt(((ByteBuffer) metadataItem3.bb).getInt(i9) + i9);
            } else {
                i4 = 0;
            }
            metadataRepo$Node.put(typefaceEmojiRasterizer, 0, i4 - 1);
        }
    }

    public static void addHandler$default(ImageLoader$Builder imageLoader$Builder, NavigationEventHandler navigationEventHandler) {
        imageLoader$Builder.getClass();
        navigationEventHandler.getClass();
        if (((LinkedHashSet) imageLoader$Builder.componentRegistry).add(navigationEventHandler)) {
            NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) imageLoader$Builder.defaults;
            if (navigationEventHandler.dispatcher != null) {
                ContextsKt$$ExternalSyntheticBUOutline0.m(navigationEventHandler, "' is already registered with a dispatcher", "Handler '");
                return;
            }
            navigationEventProcessor.defaultHandlers.addFirst(navigationEventHandler);
            navigationEventHandler.dispatcher = imageLoader$Builder;
            navigationEventProcessor.refreshEnabledHandlers();
        }
    }

    public static ImageLoader$Builder getInstance() {
        ImageLoader$Builder imageLoader$Builder = snackbarManager;
        if (imageLoader$Builder != null) {
            return imageLoader$Builder;
        }
        ImageLoader$Builder imageLoader$Builder2 = new ImageLoader$Builder(24);
        snackbarManager = imageLoader$Builder2;
        return imageLoader$Builder2;
    }

    public void addFragment(Fragment fragment) {
        if (((ArrayList) this.application).contains(fragment)) {
            Gson$$ExternalSyntheticBUOutline0.m$1("Fragment already added: ", fragment);
            return;
        }
        synchronized (((ArrayList) this.application)) {
            ((ArrayList) this.application).add(fragment);
        }
        fragment.mAdded = true;
    }

    public void addInput(OnBackInvokedInput onBackInvokedInput, int i) {
        if (i != 1 && i != 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m((Object) Animation.CC.m(i, "Unsupported priority value: "));
        } else if (((LinkedHashSet) this.extras).add(onBackInvokedInput)) {
            ((NavigationEventProcessor) this.defaults).addInput(this, onBackInvokedInput, i);
        }
    }

    public void addQuery(String str, String str2) {
        this.extras = ((String) this.extras) + (((String) this.extras).length() == 0 ? "?" : "&") + str + '=' + str2;
    }

    public RealImageLoader build() {
        Context context;
        ComponentRegistry componentRegistry;
        Context context2 = (Context) this.application;
        ImageRequest.Defaults defaults = (ImageRequest.Defaults) this.defaults;
        ImageRequest.Defaults defaults2 = new ImageRequest.Defaults(defaults.fileSystem, defaults.interceptorCoroutineContext, defaults.fetcherCoroutineContext, defaults.decoderCoroutineContext, defaults.memoryCachePolicy, defaults.diskCachePolicy, defaults.networkCachePolicy, defaults.placeholderFactory, defaults.errorFactory, defaults.fallbackFactory, defaults.sizeResolver, defaults.scale, defaults.precision, new Extras(ExceptionsKt.toImmutableMap(((Extras.Builder) this.extras).data)));
        SynchronizedLazyImpl synchronizedLazyImpl = new SynchronizedLazyImpl(new RealImageLoaderKt$$ExternalSyntheticLambda0(1));
        SynchronizedLazyImpl synchronizedLazyImpl2 = new SynchronizedLazyImpl(new Worker$$ExternalSyntheticLambda0(13, this));
        SynchronizedLazyImpl synchronizedLazyImpl3 = new SynchronizedLazyImpl(new RealImageLoaderKt$$ExternalSyntheticLambda0(2));
        ComponentRegistry componentRegistry2 = (ComponentRegistry) this.componentRegistry;
        if (componentRegistry2 == null) {
            EmptyList emptyList = EmptyList.INSTANCE;
            context = context2;
            componentRegistry = new ComponentRegistry(emptyList, emptyList, emptyList, emptyList, emptyList);
        } else {
            context = context2;
            componentRegistry = componentRegistry2;
        }
        return new RealImageLoader(new RealImageLoader.Options(context, defaults2, synchronizedLazyImpl, synchronizedLazyImpl2, synchronizedLazyImpl3, componentRegistry));
    }

    public void cancel(StartStopToken startStopToken) {
        Runnable runnable;
        startStopToken.getClass();
        synchronized (this.componentRegistry) {
            runnable = (Runnable) ((LinkedHashMap) this.extras).remove(startStopToken);
        }
        if (runnable != null) {
            ((Handler) ((MemoryCacheService) this.application).imageLoader).removeCallbacks(runnable);
        }
    }

    public boolean cancelSnackbarLocked(SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord, int i) {
        BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = (BaseTransientBottomBar.AnonymousClass5) snackbarManager$SnackbarRecord.callback.get();
        if (anonymousClass5 == null) {
            return false;
        }
        ((Handler) this.defaults).removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
        Handler handler = BaseTransientBottomBar.handler;
        handler.sendMessage(handler.obtainMessage(1, i, 0, BaseTransientBottomBar.this));
        return true;
    }

    public void dfs(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (hashSet.contains(obj)) {
            Gson$$ExternalSyntheticBUOutline0.m$1("This graph contains cyclic dependencies");
            return;
        }
        hashSet.add(obj);
        ArrayList arrayList2 = (ArrayList) ((SimpleArrayMap) this.defaults).get(obj);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                dfs(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(obj);
        arrayList.add(obj);
    }

    public void dispatchOnStarted$navigationevent(NavigationEventInput navigationEventInput, NavigationEvent navigationEvent) {
        NavigationEventProcessor navigationEventProcessor = (NavigationEventProcessor) this.defaults;
        if (navigationEventProcessor.inProgressDirection != 0) {
            return;
        }
        NavigationEventHandler resolveEnabledHandler = navigationEventProcessor.resolveEnabledHandler(-1);
        navigationEventProcessor.inProgressHandler = resolveEnabledHandler;
        navigationEventProcessor.inProgressDirection = -1;
        navigationEventProcessor.inProgressInput = navigationEventInput;
        if (navigationEvent != null) {
            if (resolveEnabledHandler != null) {
                resolveEnabledHandler.onBackStarted(navigationEvent);
            }
            navigationEventProcessor._transitionState.updateState(null, new NavigationEventTransitionState$InProgress(navigationEvent));
        }
    }

    public void dispatchToView(PointerEvent pointerEvent, boolean z) {
        PointerInteropFilter pointerInteropFilter = (PointerInteropFilter) this.extras;
        List list = pointerEvent.changes;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (((PointerInputChange) list.get(i)).isConsumed()) {
                stopDispatching(pointerEvent);
                return;
            }
        }
        NodeCoordinator nodeCoordinator = (NodeCoordinator) this.application;
        if (nodeCoordinator == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("layoutCoordinates not set");
            return;
        }
        PointerId.m507toMotionEventScopeubNVwUQ(pointerEvent, nodeCoordinator.mo520localToRootMKHz9U(0L), new SimpleActor$1(4, this, pointerInteropFilter), false);
        if (((PointerInteropFilter.DispatchToViewState) this.defaults) == PointerInteropFilter.DispatchToViewState.Dispatching) {
            if (z) {
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    ((PointerInputChange) list.get(i2)).consume();
                }
            }
            CSSParser cSSParser = pointerEvent.internalPointerEvent;
            if (cSSParser != null) {
                cSSParser.inMediaRule = !pointerInteropFilter.disallowIntercept;
            }
        }
    }

    public Fragment findActiveFragment(String str) {
        FragmentStateManager fragmentStateManager = (FragmentStateManager) ((HashMap) this.defaults).get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager.mFragment;
        }
        return null;
    }

    public Fragment findFragmentByWho(String str) {
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.defaults).values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.mFragment;
                if (!str.equals(fragment.mWho)) {
                    fragment = fragment.mChildFragmentManager.mFragmentStore.findFragmentByWho(str);
                }
                if (fragment != null) {
                    return fragment;
                }
            }
        }
        return null;
    }

    public SupportActionModeWrapper getActionModeWrapper(ActionMode actionMode) {
        ArrayList arrayList = (ArrayList) this.componentRegistry;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            SupportActionModeWrapper supportActionModeWrapper = (SupportActionModeWrapper) arrayList.get(i);
            if (supportActionModeWrapper != null && supportActionModeWrapper.mWrappedObject == actionMode) {
                return supportActionModeWrapper;
            }
        }
        SupportActionModeWrapper supportActionModeWrapper2 = new SupportActionModeWrapper((Context) this.application, actionMode);
        arrayList.add(supportActionModeWrapper2);
        return supportActionModeWrapper2;
    }

    public ArrayList getActiveFragmentStateManagers() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.defaults).values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager);
            }
        }
        return arrayList;
    }

    public ArrayList getActiveFragments() {
        ArrayList arrayList = new ArrayList();
        for (FragmentStateManager fragmentStateManager : ((HashMap) this.defaults).values()) {
            if (fragmentStateManager != null) {
                arrayList.add(fragmentStateManager.mFragment);
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    public void getAndSerialize(Object obj, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) {
        AnnotatedMember annotatedMember = (AnnotatedMember) this.defaults;
        Object value = annotatedMember.getValue(obj);
        if (value == null) {
            return;
        }
        if (value instanceof Map) {
            MapSerializer mapSerializer = (MapSerializer) this.extras;
            if (mapSerializer != null) {
                mapSerializer.serializeWithoutTypeInfo((Map) value, jsonGenerator, serializerProvider);
                return;
            } else {
                ((JsonSerializer) this.componentRegistry).serialize(value, jsonGenerator, serializerProvider);
                return;
            }
        }
        serializerProvider.reportBadDefinition("Value returned by 'any-getter' " + annotatedMember.getName() + "() not java.util.Map but " + value.getClass().getName());
        throw null;
    }

    public ModuleAwareClassDescriptor getClass(ClassId classId, List list) {
        classId.getClass();
        return (ModuleAwareClassDescriptor) ((LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) this.extras).invoke(new NotFoundClasses$ClassRequest(classId, list));
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public long getDurationNanos(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        int size$animation_core = animationVector.getSize$animation_core();
        long j = 0;
        for (int i = 0; i < size$animation_core; i++) {
            j = Math.max(j, ((PopupMenu$1) this.application).get(i).getDurationNanos(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
        }
        return j;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getEndVelocity(AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4 = (AnimationVector) this.extras;
        if (animationVector4 == null) {
            animationVector4 = animationVector3.newVector$animation_core();
            this.extras = animationVector4;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.extras;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("endVelocityVector");
                throw null;
            }
            animationVector5.set$animation_core(i, ((PopupMenu$1) this.application).get(i).getEndVelocity(animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
        }
    }

    public List getFragments() {
        ArrayList arrayList;
        if (((ArrayList) this.application).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.application)) {
            arrayList = new ArrayList((ArrayList) this.application);
        }
        return arrayList;
    }

    public AnimationVector getTargetValue(AnimationVector animationVector, AnimationVector animationVector2) {
        ImageLoader$Builder imageLoader$Builder = this;
        AnimationVector animationVector3 = (AnimationVector) imageLoader$Builder.extras;
        if (animationVector3 == null) {
            animationVector3 = animationVector.newVector$animation_core();
            imageLoader$Builder.extras = animationVector3;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector4 = (AnimationVector) imageLoader$Builder.extras;
            if (i >= size$animation_core) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.throwUninitializedPropertyAccessException("targetVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("targetVector");
                throw null;
            }
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) imageLoader$Builder.application;
            float f = animationVector.get$animation_core(i);
            float f2 = animationVector2.get$animation_core(i);
            double splineDeceleration = ((FlingCalculator) popupMenu$1.this$0).getSplineDeceleration(f2);
            double d = FlingCalculatorKt.DecelerationRate;
            animationVector4.set$animation_core(i, (Math.signum(f2) * ((float) (Math.exp((d / (d - 1.0d)) * splineDeceleration) * r4.friction * r4.magicPhysicalCoefficient))) + f);
            i++;
            imageLoader$Builder = this;
            size$animation_core = size$animation_core;
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getValueFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4 = (AnimationVector) this.defaults;
        if (animationVector4 == null) {
            animationVector4 = animationVector.newVector$animation_core();
            this.defaults = animationVector4;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.defaults;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("valueVector");
                throw null;
            }
            long j2 = j;
            animationVector5.set$animation_core(i, ((PopupMenu$1) this.application).get(i).getValueFromNanos(j2, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
            j = j2;
        }
    }

    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2) {
        AnimationVector animationVector3 = (AnimationVector) this.componentRegistry;
        if (animationVector3 == null) {
            animationVector3 = animationVector.newVector$animation_core();
            this.componentRegistry = animationVector3;
        }
        int size$animation_core = animationVector3.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector4 = (AnimationVector) this.componentRegistry;
            if (i >= size$animation_core) {
                if (animationVector4 != null) {
                    return animationVector4;
                }
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            if (animationVector4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            PopupMenu$1 popupMenu$1 = (PopupMenu$1) this.application;
            animationVector.getClass();
            long j2 = j / 1000000;
            FlingCalculator.FlingInfo flingInfo = ((FlingCalculator) popupMenu$1.this$0).flingInfo(animationVector2.get$animation_core(i));
            long j3 = flingInfo.duration;
            animationVector4.set$animation_core(i, (((Math.signum(flingInfo.initialVelocity) * AndroidFlingSpline.flingPosition(j3 > 0 ? j2 / j3 : 1.0f).velocityCoefficient) * flingInfo.distance) / j3) * 1000.0f);
            i++;
        }
    }

    public ViewModel getViewModel$lifecycle_viewmodel(String str, KClass kClass) {
        ViewModel viewModel;
        ViewModel create;
        kClass.getClass();
        synchronized (((SynchronizedObject) this.extras)) {
            try {
                viewModel = (ViewModel) ((ViewModelStore) this.application).map.get(str);
                if (kClass.isInstance(viewModel)) {
                    ViewModelProvider$Factory viewModelProvider$Factory = (ViewModelProvider$Factory) this.defaults;
                    if (viewModelProvider$Factory instanceof SavedStateViewModelFactory) {
                        SavedStateViewModelFactory savedStateViewModelFactory = (SavedStateViewModelFactory) viewModelProvider$Factory;
                        viewModel.getClass();
                        LifecycleRegistry lifecycleRegistry = savedStateViewModelFactory.lifecycle;
                        if (lifecycleRegistry != null) {
                            AndroidSvg androidSvg = savedStateViewModelFactory.savedStateRegistry;
                            androidSvg.getClass();
                            ViewModelKt.attachHandleIfNeeded(viewModel, androidSvg, lifecycleRegistry);
                        }
                    }
                    viewModel.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras((CreationExtras) this.componentRegistry);
                    mutableCreationExtras.extras.put(ViewModelKt.VIEW_MODEL_KEY, str);
                    ViewModelProvider$Factory viewModelProvider$Factory2 = (ViewModelProvider$Factory) this.defaults;
                    viewModelProvider$Factory2.getClass();
                    try {
                        try {
                            create = viewModelProvider$Factory2.create(kClass, mutableCreationExtras);
                        } catch (AbstractMethodError unused) {
                            create = viewModelProvider$Factory2.create(UnsignedKt.getJavaClass(kClass), mutableCreationExtras);
                        }
                    } catch (AbstractMethodError unused2) {
                        create = viewModelProvider$Factory2.create(UnsignedKt.getJavaClass(kClass));
                    }
                    viewModel = create;
                    ViewModelStore viewModelStore = (ViewModelStore) this.application;
                    viewModelStore.getClass();
                    viewModel.getClass();
                    ViewModel viewModel2 = (ViewModel) viewModelStore.map.put(str, viewModel);
                    if (viewModel2 != null) {
                        viewModel2.clear$lifecycle_viewmodel();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return viewModel;
    }

    public boolean isCurrentSnackbarLocked(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.componentRegistry;
        return (snackbarManager$SnackbarRecord == null || anonymousClass5 == null || snackbarManager$SnackbarRecord.callback.get() != anonymousClass5) ? false : true;
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public boolean isInfinite() {
        return false;
    }

    public void makeActive(FragmentStateManager fragmentStateManager) {
        Fragment fragment = fragmentStateManager.mFragment;
        String str = fragment.mWho;
        HashMap hashMap = (HashMap) this.defaults;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(fragment.mWho, fragmentStateManager);
        if (fragment.mRetainInstanceChangedWhileDetached) {
            boolean z = fragment.mRetainInstance;
            FragmentManagerViewModel fragmentManagerViewModel = (FragmentManagerViewModel) this.extras;
            if (z) {
                fragmentManagerViewModel.addRetainedFragment(fragment);
            } else {
                fragmentManagerViewModel.removeRetainedFragment(fragment);
            }
            fragment.mRetainInstanceChangedWhileDetached = false;
        }
        if (FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + fragment);
        }
    }

    public void makeInactive(FragmentStateManager fragmentStateManager) {
        HashMap hashMap = (HashMap) this.defaults;
        Fragment fragment = fragmentStateManager.mFragment;
        if (fragment.mRetainInstance) {
            ((FragmentManagerViewModel) this.extras).removeRetainedFragment(fragment);
        }
        if (hashMap.get(fragment.mWho) == fragmentStateManager && ((FragmentStateManager) hashMap.put(fragment.mWho, null)) != null && FragmentManagerImpl.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + fragment);
        }
    }

    public void offer(SingleProcessDataStore.Message message) {
        Object mo757trySendJP2dKIU = ((BufferedChannel) this.componentRegistry).mo757trySendJP2dKIU(message);
        if (mo757trySendJP2dKIU instanceof ChannelResult.Closed) {
            Throwable th = ((ChannelResult.Closed) mo757trySendJP2dKIU).cause;
            if (th != null) {
                throw th;
            }
            throw new ClosedSendChannelException("Channel was closed normally");
        }
        if (mo757trySendJP2dKIU instanceof ChannelResult.Failed) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Check failed.");
        } else if (((AtomicInteger) this.extras).getAndIncrement() == 0) {
            AwaitKt.launch$default((CoroutineScope) this.application, null, null, new SimpleActor$offer$2(0, this, null), 3);
        }
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return ((ActionMode.Callback) this.defaults).onActionItemClicked(getActionModeWrapper(actionMode), new MenuItemWrapperICS((Context) this.application, (SupportMenuItem) menuItem));
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onCreateActionMode(androidx.appcompat.view.ActionMode actionMode, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.defaults;
        SupportActionModeWrapper actionModeWrapper = getActionModeWrapper(actionMode);
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.extras;
        Menu menu2 = (Menu) simpleArrayMap.get(menu);
        if (menu2 == null) {
            menu2 = new MenuWrapperICS((Context) this.application, (MenuBuilder) menu);
            simpleArrayMap.put(menu, menu2);
        }
        return callback.onCreateActionMode(actionModeWrapper, menu2);
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public void onDestroyActionMode(androidx.appcompat.view.ActionMode actionMode) {
        ((ActionMode.Callback) this.defaults).onDestroyActionMode(getActionModeWrapper(actionMode));
    }

    @Override // androidx.appcompat.view.ActionMode.Callback
    public boolean onPrepareActionMode(androidx.appcompat.view.ActionMode actionMode, Menu menu) {
        ActionMode.Callback callback = (ActionMode.Callback) this.defaults;
        SupportActionModeWrapper actionModeWrapper = getActionModeWrapper(actionMode);
        SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.extras;
        Menu menu2 = (Menu) simpleArrayMap.get(menu);
        if (menu2 == null) {
            menu2 = new MenuWrapperICS((Context) this.application, (MenuBuilder) menu);
            simpleArrayMap.put(menu, menu2);
        }
        return callback.onPrepareActionMode(actionModeWrapper, menu2);
    }

    public void pauseTimeout(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        synchronized (this.application) {
            try {
                if (isCurrentSnackbarLocked(anonymousClass5)) {
                    SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.componentRegistry;
                    if (!snackbarManager$SnackbarRecord.paused) {
                        snackbarManager$SnackbarRecord.paused = true;
                        ((Handler) this.defaults).removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void reset() {
        try {
            ((HCaptchaWebView) this.extras).loadUrl("javascript:reset();");
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void resetAndExecute() {
        reset();
        setVerifyParams();
        try {
            ((HCaptchaWebView) this.extras).loadUrl("javascript:execute();");
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void restoreTimeoutIfPaused(BaseTransientBottomBar.AnonymousClass5 anonymousClass5) {
        synchronized (this.application) {
            try {
                if (isCurrentSnackbarLocked(anonymousClass5)) {
                    SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.componentRegistry;
                    if (snackbarManager$SnackbarRecord.paused) {
                        snackbarManager$SnackbarRecord.paused = false;
                        scheduleTimeoutLocked(snackbarManager$SnackbarRecord);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void scheduleTimeoutLocked(SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord) {
        Handler handler = (Handler) this.defaults;
        int i = snackbarManager$SnackbarRecord.duration;
        if (i == -2) {
            return;
        }
        if (i <= 0) {
            i = i == -1 ? 1500 : 2750;
        }
        handler.removeCallbacksAndMessages(snackbarManager$SnackbarRecord);
        handler.sendMessageDelayed(Message.obtain(handler, 0, snackbarManager$SnackbarRecord), i);
    }

    public Bundle setSavedState(Bundle bundle, String str) {
        HashMap hashMap = (HashMap) this.componentRegistry;
        return bundle != null ? (Bundle) hashMap.put(str, bundle) : (Bundle) hashMap.remove(str);
    }

    public void setVerifyParams() {
        String rqdata;
        HCaptchaVerifyParams hCaptchaVerifyParams = new HCaptchaVerifyParams();
        String rqdata2 = hCaptchaVerifyParams.getRqdata();
        if ((rqdata2 == null || rqdata2.isEmpty()) && (rqdata = ((HCaptchaConfig) this.defaults).getRqdata()) != null && !rqdata.isEmpty()) {
            hCaptchaVerifyParams.setRqdata(rqdata);
        }
        try {
            String writeValueAsString = new ObjectMapper(0).writeValueAsString(hCaptchaVerifyParams);
            ((HCaptchaWebView) this.extras).loadUrl("javascript:setData(" + writeValueAsString + ");");
        } catch (Exception e) {
            e.getMessage();
        }
    }

    public void showNextSnackbarLocked() {
        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) this.extras;
        if (snackbarManager$SnackbarRecord != null) {
            this.componentRegistry = snackbarManager$SnackbarRecord;
            this.extras = null;
            BaseTransientBottomBar.AnonymousClass5 anonymousClass5 = (BaseTransientBottomBar.AnonymousClass5) snackbarManager$SnackbarRecord.callback.get();
            if (anonymousClass5 == null) {
                this.componentRegistry = null;
            } else {
                Handler handler = BaseTransientBottomBar.handler;
                handler.sendMessage(handler.obtainMessage(0, BaseTransientBottomBar.this));
            }
        }
    }

    public void stopDispatching(PointerEvent pointerEvent) {
        if (((PointerInteropFilter.DispatchToViewState) this.defaults) == PointerInteropFilter.DispatchToViewState.Dispatching) {
            NodeCoordinator nodeCoordinator = (NodeCoordinator) this.application;
            if (nodeCoordinator == null) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m$1("layoutCoordinates not set");
                return;
            } else {
                PointerId.m507toMotionEventScopeubNVwUQ(pointerEvent, nodeCoordinator.mo520localToRootMKHz9U(0L), new NodeChainKt$fillVector$1(11, (PointerInteropFilter) this.extras), true);
            }
        }
        this.defaults = PointerInteropFilter.DispatchToViewState.NotDispatching;
    }

    public void track(StartStopToken startStopToken) {
        startStopToken.getClass();
        Processor$$ExternalSyntheticLambda2 processor$$ExternalSyntheticLambda2 = new Processor$$ExternalSyntheticLambda2(7, this, startStopToken);
        synchronized (this.componentRegistry) {
        }
        ((Handler) ((MemoryCacheService) this.application).imageLoader).postDelayed(processor$$ExternalSyntheticLambda2, 5400000L);
    }

    public void updatePageAccessibilityActions() {
        int itemCount;
        ViewPager2$PageAwareAccessibilityProvider$1 viewPager2$PageAwareAccessibilityProvider$1 = (ViewPager2$PageAwareAccessibilityProvider$1) this.defaults;
        ViewPager2$PageAwareAccessibilityProvider$1 viewPager2$PageAwareAccessibilityProvider$12 = (ViewPager2$PageAwareAccessibilityProvider$1) this.application;
        ViewPager2 viewPager2 = (ViewPager2) this.extras;
        int i = R.id.accessibilityActionPageLeft;
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageLeft);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageRight);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageUp);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        ViewCompat.removeActionWithId(viewPager2, R.id.accessibilityActionPageDown);
        ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(viewPager2, 0);
        if (viewPager2.getAdapter() == null || (itemCount = viewPager2.getAdapter().getItemCount()) == 0 || !viewPager2.mUserInputEnabled) {
            return;
        }
        if (viewPager2.getOrientation() != 0) {
            if (viewPager2.mCurrentItem < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, (String) null), viewPager2$PageAwareAccessibilityProvider$12);
            }
            if (viewPager2.mCurrentItem > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, (String) null), viewPager2$PageAwareAccessibilityProvider$1);
                return;
            }
            return;
        }
        boolean z = viewPager2.mLayoutManager.mRecyclerView.getLayoutDirection() == 1;
        int i2 = z ? 16908360 : 16908361;
        if (z) {
            i = 16908361;
        }
        if (viewPager2.mCurrentItem < itemCount - 1) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, (String) null), viewPager2$PageAwareAccessibilityProvider$12);
        }
        if (viewPager2.mCurrentItem > 0) {
            ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, (String) null), viewPager2$PageAwareAccessibilityProvider$1);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visit(Name name, Object obj) {
        ((GsonBuilder) this.application).visit(name, obj);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationVisitor
    public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
        return ((SVGAndroidRenderer) ((FormBody.Builder) this.componentRegistry).names).loadAnnotationIfNotSpecial(classId, reflectAnnotationSource, (ArrayList) this.defaults);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArrayArgumentVisitor visitArray(Name name) {
        return ((GsonBuilder) this.application).visitArray(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitClassLiteral(Name name, ClassLiteralValue classLiteralValue) {
        ((GsonBuilder) this.application).visitClassLiteral(name, classLiteralValue);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitEnd() {
        switch (this.$r8$classId) {
            case 28:
                ArrayList arrayList = (ArrayList) this.defaults;
                if (!arrayList.isEmpty()) {
                    ((HashMap) ((FormBody.Builder) this.componentRegistry).values).put((MemberSignature) this.application, arrayList);
                    break;
                }
                break;
            default:
                ((GsonBuilder) this.defaults).visitEnd();
                ((ArrayList) ((DefaultSocket) this.componentRegistry).socket).add(new AnnotationValue((AnnotationDescriptor) CollectionsKt.single((List) this.extras)));
                break;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public void visitEnum(Name name, ClassId classId, Name name2) {
        ((GsonBuilder) this.application).visitEnum(name, classId, name2);
    }

    public GsonBuilder visitParameterAnnotation(int i, ClassId classId, ReflectAnnotationSource reflectAnnotationSource) {
        MemberSignature memberSignature = new MemberSignature(((MemberSignature) this.application).signature + '@' + i);
        FormBody.Builder builder = (FormBody.Builder) this.extras;
        HashMap hashMap = (HashMap) builder.values;
        List list = (List) hashMap.get(memberSignature);
        if (list == null) {
            list = new ArrayList();
            hashMap.put(memberSignature, list);
        }
        return ((SVGAndroidRenderer) builder.names).loadAnnotationIfNotSpecial(classId, reflectAnnotationSource, list);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.kotlin.KotlinJvmBinaryClass$AnnotationArgumentVisitor
    public KotlinJvmBinaryClass$AnnotationArgumentVisitor visitAnnotation(ClassId classId, Name name) {
        return ((GsonBuilder) this.application).visitAnnotation(classId, name);
    }

    public void addInput(NavigationEventInput navigationEventInput) {
        if (((LinkedHashSet) this.extras).add(navigationEventInput)) {
            ((NavigationEventProcessor) this.defaults).addInput(this, navigationEventInput, -1);
        }
    }

    @Override // androidx.compose.animation.core.VectorizedAnimationSpec
    public AnimationVector getVelocityFromNanos(long j, AnimationVector animationVector, AnimationVector animationVector2, AnimationVector animationVector3) {
        AnimationVector animationVector4 = (AnimationVector) this.componentRegistry;
        if (animationVector4 == null) {
            animationVector4 = animationVector3.newVector$animation_core();
            this.componentRegistry = animationVector4;
        }
        int size$animation_core = animationVector4.getSize$animation_core();
        int i = 0;
        while (true) {
            AnimationVector animationVector5 = (AnimationVector) this.componentRegistry;
            if (i >= size$animation_core) {
                if (animationVector5 != null) {
                    return animationVector5;
                }
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            if (animationVector5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("velocityVector");
                throw null;
            }
            long j2 = j;
            animationVector5.set$animation_core(i, ((PopupMenu$1) this.application).get(i).getVelocityFromNanos(j2, animationVector.get$animation_core(i), animationVector2.get$animation_core(i), animationVector3.get$animation_core(i)));
            i++;
            j = j2;
        }
    }

    public /* synthetic */ ImageLoader$Builder(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.$r8$classId = i;
        this.application = obj;
        this.defaults = obj2;
        this.componentRegistry = obj3;
        this.extras = obj4;
    }

    public ImageLoader$Builder(Handler handler, Context context, HCaptchaConfig hCaptchaConfig, HCaptchaInternalConfig hCaptchaInternalConfig, IHCaptchaVerifier iHCaptchaVerifier, HCaptchaWebView hCaptchaWebView) {
        this.$r8$classId = 25;
        if (context == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("context is marked non-null but is null");
            throw null;
        }
        if (hCaptchaInternalConfig == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("internalConfig is marked non-null but is null");
            throw null;
        }
        if (hCaptchaWebView != null) {
            this.application = context;
            this.defaults = hCaptchaConfig;
            this.componentRegistry = iHCaptchaVerifier;
            this.extras = hCaptchaWebView;
            hCaptchaWebView.setId(org.wikipedia.R.id.webView);
            HCaptchaJSInterface hCaptchaJSInterface = new HCaptchaJSInterface(handler, hCaptchaConfig, iHCaptchaVerifier);
            HCaptchaDebugInfo hCaptchaDebugInfo = new HCaptchaDebugInfo(context);
            WebSettings settings = hCaptchaWebView.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(true);
            settings.setCacheMode(-1);
            settings.setGeolocationEnabled(false);
            settings.setAllowFileAccess(false);
            settings.setAllowContentAccess(false);
            settings.setSupportMultipleWindows(true);
            hCaptchaWebView.setWebViewClient(new HCaptchaWebViewHelper$HCaptchaWebClient(this, handler));
            hCaptchaWebView.setWebChromeClient(new SingleWebViewActivity$onCreate$4(1, this));
            hCaptchaWebView.setBackgroundColor(0);
            if (hCaptchaConfig.getDisableHardwareAcceleration().booleanValue()) {
                hCaptchaWebView.setLayerType(1, null);
            }
            hCaptchaWebView.addJavascriptInterface(hCaptchaJSInterface, "JSInterface");
            hCaptchaWebView.addJavascriptInterface(hCaptchaDebugInfo, "JSDI");
            hCaptchaWebView.loadDataWithBaseURL(hCaptchaConfig.getBaseUrl(), "<!DOCTYPE HTML>\n<html lang=\"en\">\n<head>\n    <title>hCaptcha Android</title>\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, user-scalable=no\"/>\n    <style>\n        * {\n            padding: 0;\n            margin: 0;\n        }\n        html {\n            height: 100%;\n        }\n        body {\n            display: table;\n            width: 100%;\n            height: 100%;\n            text-align: center;\n        }\n        #hcaptcha-container {\n            margin-top: 5px;\n            display: table-cell;\n            vertical-align: middle;\n        }\n        /* overwrite hCaptcha iframe overlay which adds a #FFF background with opacity 0.05 */\n        div > div:nth-child(2) {\n            opacity: 0 !important;\n        }\n    </style>\n</head>\n<body>\n<div id=\"hcaptcha-container\"></div>\n<script type=\"text/javascript\">\n    if (window.JSDI) {\n        JSON.parse(window.JSDI.getDebugInfo()).forEach(function (v) { window[v] = true; });\n        window.sysDebug = JSON.parse(window.JSDI.getSysDebug());\n    }\n</script>\n<script type=\"text/javascript\">\n    // Android will inject this bridge object as `JSInterface`\n    // Browser is missing it, so we mock it\n    var BridgeObject = window.JSInterface || {\n        getConfig: function getConfig() {\n            return JSON.stringify({\n                siteKey: '10000000-ffff-ffff-ffff-000000000001',\n                locale: 'ro',\n                size: 'compact',\n                orientation: 'portrait',\n                theme: 'dark',\n                sentry: true,\n                rqdata: null,\n                jsSrc: 'https://js.hcaptcha.com/1/api.js',\n                endpoint: null,\n                assethost: null,\n                imghost: null,\n                reportapi: null\n            });\n        },\n        onPass: function onPass(token) {\n            return console.log(\"pass: token \".concat(token));\n        },\n        onError: function onError(errCode) {\n            return console.log(\"error: code \".concat(errCode));\n        },\n        onLoaded: function onLoaded() {\n            return console.log('cb: api is loaded');\n        },\n        onOpen: function onOpen() {\n            return console.log('cb: challenge is visible');\n        }\n    };\n    var bridgeConfig = JSON.parse(BridgeObject.getConfig());\n    var hCaptchaID = null;\n\n    function logError(e) {\n        try {\n            console.error(JSON.stringify(e));\n        } catch (error) {}\n    }\n\n    /**\n     * Called programmatically from HCaptchaWebViewHelper.\n     */\n    function setData(data) {\n        try {\n            if (data) {\n                hcaptcha.setData(hCaptchaID, data);\n            }\n        } catch (e) {\n            BridgeObject.onError(34);\n            logError(e);\n        }\n    }\n    /**\n     * Called programmatically from HCaptchaWebViewHelper.\n     */\n    function execute() {\n        try {\n            hcaptcha.execute(hCaptchaID);\n        } catch (e) {\n            BridgeObject.onError(29);\n            logError(e);\n        }\n    }\n\n    function reset() {\n        hcaptcha.reset();\n    }\n    function getTheme(bridgeConfig) {\n        var theme = bridgeConfig.theme;\n        var customTheme = bridgeConfig.customTheme;\n        if (customTheme) {\n            try {\n                return JSON.parse(customTheme);\n            } catch (e) {\n                BridgeObject.onError(32);\n                logError(e);\n            }\n        }\n        return theme;\n    }\n    function getRenderConfig() {\n        return {\n            sitekey: bridgeConfig.siteKey,\n            size: bridgeConfig.size,\n            orientation: bridgeConfig.orientation,\n            theme: getTheme(bridgeConfig),\n            callback: function callback(token) {\n                return BridgeObject.onPass(token);\n            },\n            'chalexpired-callback': function chalexpiredCallback() {\n                return BridgeObject.onError(15);\n            },\n            'close-callback': function closeCallback() {\n                return BridgeObject.onError(30);\n            },\n            'error-callback': function errorCallback(error) {\n                switch(error) {\n                    case \"rate-limited\":\n                        return BridgeObject.onError(31);\n                    case \"network-error\":\n                        return BridgeObject.onError(7);\n                    case \"invalid-data\":\n                        return BridgeObject.onError(8);\n                    case \"challenge-error\":\n                        return BridgeObject.onError(9);\n                    case \"internal-error\":\n                        return BridgeObject.onError(10);\n                    default:\n                        // Error not handled? Log it for debugging purposes\n                        logError(error);\n                        return BridgeObject.onError(29);\n                }\n            },\n            'open-callback': function openCallback() {\n                return BridgeObject.onOpen();\n            }\n        };\n    }\n    function onHcaptchaLoaded() {\n        try {\n            var renderConfig = getRenderConfig();\n            hCaptchaID = hcaptcha.render('hcaptcha-container', renderConfig);\n            BridgeObject.onLoaded();\n        } catch (e) {\n            BridgeObject.onError(29);\n            logError(e);\n        }\n    }\n    function addQueryParamIfDefined(url, queryName, queryValue) {\n        if (queryValue !== undefined && queryValue !== null) {\n            var link = url.indexOf('?') !== -1 ? '&' : '?';\n            return url + link + queryName + '=' + encodeURIComponent(queryValue);\n        }\n        return url;\n    }\n    function loadApi() {\n        var siteKey = bridgeConfig.siteKey;\n        var locale = bridgeConfig.locale;\n        var sentry = bridgeConfig.sentry;\n        var jsSrc = bridgeConfig.jsSrc;\n        var endpoint = bridgeConfig.endpoint;\n        var assethost = bridgeConfig.assethost;\n        var imghost = bridgeConfig.imghost;\n        var reportapi = bridgeConfig.reportapi;\n        var host = bridgeConfig.host || siteKey + '.android-sdk.hcaptcha.com';\n        var scriptSrc = jsSrc + '?render=explicit&onload=' + onHcaptchaLoaded.name;\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'recaptchacompat', 'off');\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'hl', locale);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'host', host);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'sentry', sentry);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'endpoint', endpoint);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'assethost', assethost);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'imghost', imghost);\n        scriptSrc = addQueryParamIfDefined(scriptSrc, 'reportapi', reportapi);\n        if (bridgeConfig.customTheme) {\n            scriptSrc = addQueryParamIfDefined(scriptSrc, 'custom', 'true');\n        }\n        var script = document.createElement('script');\n        script.async = true;\n        script.src = scriptSrc;\n        script.onerror = function () {\n            // network issue\n            BridgeObject.onError(7);\n        };\n        document.head.appendChild(script);\n    }\n\n    var container = document.getElementById(\"hcaptcha-container\");\n    container.addEventListener(\"click\", function () {\n        if (window.hcaptcha) {\n            // Allows dismissal of the checkbox view.\n            window.hcaptcha.close();\n        } else {\n            BridgeObject.onError(30);\n        }\n    });\n\n    loadApi();\n</script>\n</body>\n</html>\n", "text/html", "UTF-8", null);
            hCaptchaWebView.isHardwareAccelerated();
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("webView is marked non-null but is null");
        throw null;
    }

    public ImageLoader$Builder(LockBasedStorageManager lockBasedStorageManager, ModuleDescriptor moduleDescriptor) {
        this.$r8$classId = 26;
        moduleDescriptor.getClass();
        this.application = lockBasedStorageManager;
        this.defaults = moduleDescriptor;
        final int i = 1;
        this.componentRegistry = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$classes$1
            public final /* synthetic */ ImageLoader$Builder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor;
                int i2 = i;
                ImageLoader$Builder imageLoader$Builder = this.this$0;
                switch (i2) {
                    case 0:
                        NotFoundClasses$ClassRequest notFoundClasses$ClassRequest = (NotFoundClasses$ClassRequest) obj;
                        notFoundClasses$ClassRequest.getClass();
                        ClassId classId = notFoundClasses$ClassRequest.classId;
                        List list = notFoundClasses$ClassRequest.typeParametersCount;
                        if (classId.local) {
                            Gson$$ExternalSyntheticBUOutline0.m$5("Unresolved local class: ", classId);
                            return null;
                        }
                        ClassId outerClassId = classId.getOuterClassId();
                        if (outerClassId != null) {
                            classOrPackageFragmentDescriptor = imageLoader$Builder.getClass(outerClassId, CollectionsKt.drop(list));
                        } else {
                            LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull mapBasedMemoizedFunctionToNotNull = (LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) imageLoader$Builder.componentRegistry;
                            FqName packageFqName = classId.getPackageFqName();
                            packageFqName.getClass();
                            classOrPackageFragmentDescriptor = (ClassOrPackageFragmentDescriptor) mapBasedMemoizedFunctionToNotNull.invoke(packageFqName);
                        }
                        ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor2 = classOrPackageFragmentDescriptor;
                        boolean z = !classId.relativeClassName.parent().isRoot();
                        LockBasedStorageManager lockBasedStorageManager2 = (LockBasedStorageManager) imageLoader$Builder.application;
                        Name shortClassName = classId.getShortClassName();
                        shortClassName.getClass();
                        Integer num = (Integer) CollectionsKt.firstOrNull(list);
                        return new ClassDescriptorBase(lockBasedStorageManager2, classOrPackageFragmentDescriptor2, shortClassName, z, num != null ? num.intValue() : 0) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$MockClassDescriptor
                            public final ArrayList declaredTypeParameters;
                            public final boolean isInner;
                            public final ClassTypeConstructorImpl typeConstructor;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(lockBasedStorageManager2, classOrPackageFragmentDescriptor2, shortClassName, SourceElement.NO_SOURCE);
                                classOrPackageFragmentDescriptor2.getClass();
                                this.isInner = z;
                                IntRange until = RegexKt.until(0, r7);
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(until, 10));
                                Iterator it = until.iterator();
                                while (((IntProgressionIterator) it).hasNext) {
                                    int nextInt = ((IntIterator) it).nextInt();
                                    arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(this, Variance.INVARIANT, Name.identifier("T" + nextInt), nextInt, lockBasedStorageManager2));
                                }
                                this.declaredTypeParameters = arrayList;
                                List computeConstructorTypeParameters = DescriptorUtilKt.computeConstructorTypeParameters(this);
                                int i3 = DescriptorUtilsKt.$r8$clinit;
                                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(this);
                                containingModule.getClass();
                                this.typeConstructor = new ClassTypeConstructorImpl(this, computeConstructorTypeParameters, UuidKt.setOf(containingModule.getBuiltIns().getAnyType()), lockBasedStorageManager2);
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
                            public final Annotations getAnnotations() {
                                return Annotations.Companion.EMPTY;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final Collection getConstructors() {
                                return EmptySet.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
                            public final List getDeclaredTypeParameters() {
                                return this.declaredTypeParameters;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ClassKind getKind() {
                                return ClassKind.CLASS;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final Modality getModality() {
                                return Modality.FINAL;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final Collection getSealedSubclasses() {
                                return EmptyList.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final MemberScope getStaticScope() {
                                return MemberScope.Empty.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
                            public final TypeConstructor getTypeConstructor() {
                                return this.typeConstructor;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
                                return MemberScope.Empty.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
                                return null;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ValueClassRepresentation getValueClassRepresentation() {
                                return null;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
                                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
                                anonymousClass1.getClass();
                                return anonymousClass1;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isActual() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isCompanionObject() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isData() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isExpect() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isExternal() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isFun() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isInline() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
                            public final boolean isInner() {
                                return this.isInner;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isValue() {
                                return false;
                            }

                            public final String toString() {
                                return "class " + getName() + " (not found)";
                            }
                        };
                    default:
                        FqName fqName = (FqName) obj;
                        fqName.getClass();
                        return new EmptyPackageFragmentDescriptor((ModuleDescriptor) imageLoader$Builder.defaults, fqName, 0);
                }
            }
        });
        final int i2 = 0;
        this.extras = lockBasedStorageManager.createMemoizedFunction(new Function1(this) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$classes$1
            public final /* synthetic */ ImageLoader$Builder this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor;
                int i22 = i2;
                ImageLoader$Builder imageLoader$Builder = this.this$0;
                switch (i22) {
                    case 0:
                        NotFoundClasses$ClassRequest notFoundClasses$ClassRequest = (NotFoundClasses$ClassRequest) obj;
                        notFoundClasses$ClassRequest.getClass();
                        ClassId classId = notFoundClasses$ClassRequest.classId;
                        List list = notFoundClasses$ClassRequest.typeParametersCount;
                        if (classId.local) {
                            Gson$$ExternalSyntheticBUOutline0.m$5("Unresolved local class: ", classId);
                            return null;
                        }
                        ClassId outerClassId = classId.getOuterClassId();
                        if (outerClassId != null) {
                            classOrPackageFragmentDescriptor = imageLoader$Builder.getClass(outerClassId, CollectionsKt.drop(list));
                        } else {
                            LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull mapBasedMemoizedFunctionToNotNull = (LockBasedStorageManager.MapBasedMemoizedFunctionToNotNull) imageLoader$Builder.componentRegistry;
                            FqName packageFqName = classId.getPackageFqName();
                            packageFqName.getClass();
                            classOrPackageFragmentDescriptor = (ClassOrPackageFragmentDescriptor) mapBasedMemoizedFunctionToNotNull.invoke(packageFqName);
                        }
                        ClassOrPackageFragmentDescriptor classOrPackageFragmentDescriptor2 = classOrPackageFragmentDescriptor;
                        boolean z = !classId.relativeClassName.parent().isRoot();
                        LockBasedStorageManager lockBasedStorageManager2 = (LockBasedStorageManager) imageLoader$Builder.application;
                        Name shortClassName = classId.getShortClassName();
                        shortClassName.getClass();
                        Integer num = (Integer) CollectionsKt.firstOrNull(list);
                        return new ClassDescriptorBase(lockBasedStorageManager2, classOrPackageFragmentDescriptor2, shortClassName, z, num != null ? num.intValue() : 0) { // from class: kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses$MockClassDescriptor
                            public final ArrayList declaredTypeParameters;
                            public final boolean isInner;
                            public final ClassTypeConstructorImpl typeConstructor;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(lockBasedStorageManager2, classOrPackageFragmentDescriptor2, shortClassName, SourceElement.NO_SOURCE);
                                classOrPackageFragmentDescriptor2.getClass();
                                this.isInner = z;
                                IntRange until = RegexKt.until(0, r7);
                                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(until, 10));
                                Iterator it = until.iterator();
                                while (((IntProgressionIterator) it).hasNext) {
                                    int nextInt = ((IntIterator) it).nextInt();
                                    arrayList.add(TypeParameterDescriptorImpl.createWithDefaultBound(this, Variance.INVARIANT, Name.identifier("T" + nextInt), nextInt, lockBasedStorageManager2));
                                }
                                this.declaredTypeParameters = arrayList;
                                List computeConstructorTypeParameters = DescriptorUtilKt.computeConstructorTypeParameters(this);
                                int i3 = DescriptorUtilsKt.$r8$clinit;
                                ModuleDescriptor containingModule = DescriptorUtils.getContainingModule(this);
                                containingModule.getClass();
                                this.typeConstructor = new ClassTypeConstructorImpl(this, computeConstructorTypeParameters, UuidKt.setOf(containingModule.getBuiltIns().getAnyType()), lockBasedStorageManager2);
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotated
                            public final Annotations getAnnotations() {
                                return Annotations.Companion.EMPTY;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final Collection getConstructors() {
                                return EmptySet.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
                            public final List getDeclaredTypeParameters() {
                                return this.declaredTypeParameters;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ClassKind getKind() {
                                return ClassKind.CLASS;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final Modality getModality() {
                                return Modality.FINAL;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final Collection getSealedSubclasses() {
                                return EmptyList.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final MemberScope getStaticScope() {
                                return MemberScope.Empty.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
                            public final TypeConstructor getTypeConstructor() {
                                return this.typeConstructor;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final MemberScope getUnsubstitutedMemberScope(KotlinTypeRefiner$Default kotlinTypeRefiner$Default) {
                                return MemberScope.Empty.INSTANCE;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ClassConstructorDescriptorImpl getUnsubstitutedPrimaryConstructor() {
                                return null;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final ValueClassRepresentation getValueClassRepresentation() {
                                return null;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorWithVisibility, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final DescriptorVisibilities.AnonymousClass1 getVisibility() {
                                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
                                anonymousClass1.getClass();
                                return anonymousClass1;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isActual() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isCompanionObject() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isData() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isExpect() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorBase, kotlin.reflect.jvm.internal.impl.descriptors.MemberDescriptor
                            public final boolean isExternal() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isFun() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isInline() {
                                return false;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptorWithTypeParameters
                            public final boolean isInner() {
                                return this.isInner;
                            }

                            @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor
                            public final boolean isValue() {
                                return false;
                            }

                            public final String toString() {
                                return "class " + getName() + " (not found)";
                            }
                        };
                    default:
                        FqName fqName = (FqName) obj;
                        fqName.getClass();
                        return new EmptyPackageFragmentDescriptor((ModuleDescriptor) imageLoader$Builder.defaults, fqName, 0);
                }
            }
        });
    }

    public ImageLoader$Builder(MemoryCacheService memoryCacheService, AndroidSvg androidSvg) {
        this.$r8$classId = 17;
        this.application = memoryCacheService;
        this.defaults = androidSvg;
        this.componentRegistry = new Object();
        this.extras = new LinkedHashMap();
    }

    public ImageLoader$Builder(CoroutineScope coroutineScope, NodeChainKt$fillVector$1 nodeChainKt$fillVector$1, SingleProcessDataStore$data$1 singleProcessDataStore$data$1) {
        this.$r8$classId = 7;
        this.application = coroutineScope;
        this.defaults = singleProcessDataStore$data$1;
        this.componentRegistry = DpKt.Channel$default(Integer.MAX_VALUE, 6, null);
        int i = 0;
        this.extras = new AtomicInteger(0);
        Job job = (Job) coroutineScope.getCoroutineContext().get(Job.Key.$$INSTANCE);
        if (job == null) {
            return;
        }
        job.invokeOnCompletion(new SimpleActor$1(i, nodeChainKt$fillVector$1, this));
    }

    public ImageLoader$Builder(UnsafeLazyImpl unsafeLazyImpl, AnnotatedMember annotatedMember, JsonSerializer jsonSerializer) {
        this.$r8$classId = 23;
        this.defaults = annotatedMember;
        this.application = unsafeLazyImpl;
        this.componentRegistry = jsonSerializer;
        if (jsonSerializer instanceof MapSerializer) {
            this.extras = (MapSerializer) jsonSerializer;
        }
    }

    public ImageLoader$Builder(Drawable.Callback callback) {
        this.$r8$classId = 18;
        this.application = new ParseError();
        this.defaults = new HashMap();
        this.componentRegistry = new HashMap();
        if (!(callback instanceof View)) {
            Logger.warning("LottieDrawable must be inside of a view for images to work.");
            this.extras = null;
        } else {
            this.extras = ((View) callback).getContext().getAssets();
        }
    }

    public ImageLoader$Builder(ViewModelStore viewModelStore, ViewModelProvider$Factory viewModelProvider$Factory, CreationExtras creationExtras) {
        this.$r8$classId = 10;
        viewModelStore.getClass();
        viewModelProvider$Factory.getClass();
        creationExtras.getClass();
        this.application = viewModelStore;
        this.defaults = viewModelProvider$Factory;
        this.componentRegistry = creationExtras;
        this.extras = new SynchronizedObject();
    }

    public ImageLoader$Builder(int i) {
        this.$r8$classId = i;
        switch (i) {
            case 9:
                this.application = new ArrayList();
                this.defaults = new HashMap();
                this.componentRegistry = new HashMap();
                break;
            case 15:
                this.application = new ArrayMap(0);
                this.defaults = new SparseArray();
                this.componentRegistry = new LongSparseArray((Object) null);
                this.extras = new ArrayMap(0);
                break;
            case RADIO_ROW_VALUE:
                break;
            case 24:
                this.application = new Object();
                this.defaults = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: com.google.android.material.snackbar.SnackbarManager$1
                    @Override // android.os.Handler.Callback
                    public final boolean handleMessage(Message message) {
                        if (message.what != 0) {
                            return false;
                        }
                        ImageLoader$Builder imageLoader$Builder = ImageLoader$Builder.this;
                        SnackbarManager$SnackbarRecord snackbarManager$SnackbarRecord = (SnackbarManager$SnackbarRecord) message.obj;
                        synchronized (imageLoader$Builder.application) {
                            if (((SnackbarManager$SnackbarRecord) imageLoader$Builder.componentRegistry) == snackbarManager$SnackbarRecord || ((SnackbarManager$SnackbarRecord) imageLoader$Builder.extras) == snackbarManager$SnackbarRecord) {
                                imageLoader$Builder.cancelSnackbarLocked(snackbarManager$SnackbarRecord, 2);
                            }
                        }
                        return true;
                    }
                });
                break;
            default:
                this.application = new Pools$SimplePool(10);
                this.defaults = new SimpleArrayMap(0);
                this.componentRegistry = new ArrayList();
                this.extras = new HashSet();
                break;
        }
    }

    public ImageLoader$Builder(KSerializer kSerializer) {
        this.$r8$classId = 11;
        this.componentRegistry = "";
        this.extras = "";
        this.application = kSerializer;
        this.defaults = kSerializer.getDescriptor().getSerialName();
    }

    public ImageLoader$Builder(PointerInteropFilter pointerInteropFilter) {
        this.$r8$classId = 5;
        this.extras = pointerInteropFilter;
        this.defaults = PointerInteropFilter.DispatchToViewState.Unknown;
    }

    public ImageLoader$Builder(OnBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0 onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0) {
        this.$r8$classId = 12;
        this.application = onBackPressedDispatcher$OnBackPressedEventInput$$ExternalSyntheticLambda0;
        this.defaults = new NavigationEventProcessor();
        new LinkedHashSet();
        this.componentRegistry = new LinkedHashSet();
        this.extras = new LinkedHashSet();
    }

    public /* synthetic */ ImageLoader$Builder(int i, Object obj) {
        this.$r8$classId = i;
        this.application = obj;
    }

    public ImageLoader$Builder(HintHandler hintHandler) {
        this.$r8$classId = 13;
        this.application = new HintHandler.HintFlow();
        this.defaults = new HintHandler.HintFlow();
        this.extras = new AutoMigration_14_15(16);
    }

    public ImageLoader$Builder(Context context) {
        this.$r8$classId = 0;
        this.application = context.getApplicationContext();
        this.defaults = ImageRequest.Defaults.DEFAULT;
        this.componentRegistry = null;
        this.extras = new Extras.Builder();
    }

    public ImageLoader$Builder(FormBody.Builder builder, MemberSignature memberSignature) {
        this.$r8$classId = 28;
        this.extras = builder;
        this.$r8$classId = 28;
        this.componentRegistry = builder;
        this.application = memberSignature;
        this.defaults = new ArrayList();
    }

    public ImageLoader$Builder(BufferRecycler bufferRecycler, ContentReference contentReference) {
        this.$r8$classId = 21;
        this.defaults = bufferRecycler;
        this.application = contentReference._rawContent;
    }

    public ImageLoader$Builder(Context context, ActionMode.Callback callback) {
        this.$r8$classId = 1;
        this.application = context;
        this.defaults = callback;
        this.componentRegistry = new ArrayList();
        this.extras = new SimpleArrayMap(0);
    }

    public ImageLoader$Builder(PriorityQueue priorityQueue, NestedAdapterWrapper nestedAdapterWrapper) {
        this.$r8$classId = 14;
        this.extras = priorityQueue;
        this.application = new SparseIntArray(1);
        this.defaults = new SparseIntArray(1);
        this.componentRegistry = nestedAdapterWrapper;
    }

    public ImageLoader$Builder(GsonBuilder gsonBuilder, DefaultSocket defaultSocket, ArrayList arrayList) {
        this.$r8$classId = 29;
        this.defaults = gsonBuilder;
        this.componentRegistry = defaultSocket;
        this.extras = arrayList;
        this.application = gsonBuilder;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImageLoader$Builder(FloatAnimationSpec floatAnimationSpec) {
        this(2, new PopupMenu$1(11, floatAnimationSpec));
        this.$r8$classId = 2;
    }

    public ImageLoader$Builder(ViewPager2 viewPager2) {
        this.$r8$classId = 16;
        this.extras = viewPager2;
        final int i = 0;
        this.application = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1
            public final /* synthetic */ ImageLoader$Builder this$1;

            {
                this.this$1 = this;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view) {
                int i2 = i;
                ImageLoader$Builder imageLoader$Builder = this.this$1;
                switch (i2) {
                    case 0:
                        int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                        ViewPager2 viewPager22 = (ViewPager2) imageLoader$Builder.extras;
                        if (viewPager22.mUserInputEnabled) {
                            viewPager22.setCurrentItemInternal(currentItem, true);
                            break;
                        }
                        break;
                    default:
                        int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                        ViewPager2 viewPager23 = (ViewPager2) imageLoader$Builder.extras;
                        if (viewPager23.mUserInputEnabled) {
                            viewPager23.setCurrentItemInternal(currentItem2, true);
                            break;
                        }
                        break;
                }
                return true;
            }
        };
        final int i2 = 1;
        this.defaults = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2$PageAwareAccessibilityProvider$1
            public final /* synthetic */ ImageLoader$Builder this$1;

            {
                this.this$1 = this;
            }

            @Override // androidx.core.view.accessibility.AccessibilityViewCommand
            public final boolean perform(View view) {
                int i22 = i2;
                ImageLoader$Builder imageLoader$Builder = this.this$1;
                switch (i22) {
                    case 0:
                        int currentItem = ((ViewPager2) view).getCurrentItem() + 1;
                        ViewPager2 viewPager22 = (ViewPager2) imageLoader$Builder.extras;
                        if (viewPager22.mUserInputEnabled) {
                            viewPager22.setCurrentItemInternal(currentItem, true);
                            break;
                        }
                        break;
                    default:
                        int currentItem2 = ((ViewPager2) view).getCurrentItem() - 1;
                        ViewPager2 viewPager23 = (ViewPager2) imageLoader$Builder.extras;
                        if (viewPager23.mUserInputEnabled) {
                            viewPager23.setCurrentItemInternal(currentItem2, true);
                            break;
                        }
                        break;
                }
                return true;
            }
        };
    }
}
