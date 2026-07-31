package kotlin.reflect.jvm.internal;

import android.app.Activity;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.compose.material3.ThumbNode$onAttach$1;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawModifierNodeImpl;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNode$_foldedChildren$1;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.platform.AndroidComposeViewAccessibilityDelegateCompat;
import androidx.compose.ui.platform.ScrollObservationScope;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeWithAdjustedBounds;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.viewinterop.FocusTargetInteropNode;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.glance.session.SessionWorker$doWork$2$1;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelProvider$Factory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import coil3.ImageLoader$Builder;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import coil3.util.UtilsKt;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import com.google.gson.GsonBuilder;
import com.hcaptcha.sdk.HCaptcha;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlin.reflect.jvm.internal.calls.AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.CloneableClassScope;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInClassDescriptorFactory;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassOrPackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.ReflectJavaClassFinder;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaPackage;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeEnhancementState;
import kotlin.reflect.jvm.internal.impl.load.java.JavaTypeQualifiersByElementType;
import kotlin.reflect.jvm.internal.impl.load.java.components.JavaAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.TypeParameterResolver;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.JavaTypeEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.AnnotationAndConstantLoader;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefiner$Default;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.checker.NewKotlinTypeChecker;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutinesInternalError;
import leakcanary.AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2;
import leakcanary.internal.ReferenceCleaner;
import okhttp3.ConnectionPool;
import okhttp3.Request;
import okio.ByteString;
import org.wikipedia.activitytab.ActivityTabFragment;
import org.wikipedia.categories.CategoryDialog;
import org.wikipedia.commons.FilePageFragment;
import org.wikipedia.databinding.ActivityGalleryBinding;
import org.wikipedia.databinding.ActivityPageBinding;
import org.wikipedia.page.PageViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class KTypeImpl$arguments$2 extends Lambda implements Function0 {
    public final /* synthetic */ Object $computeJavaType;
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object this$0;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Variance.values().length];
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KTypeImpl$arguments$2(Function0 function0, NodeCoordinator nodeCoordinator) {
        super(0);
        this.$r8$classId = 8;
        this.$computeJavaType = function0;
        this.this$0 = nodeCoordinator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v34, types: [java.lang.Object, kotlin.reflect.jvm.internal.impl.descriptors.impl.FunctionDescriptorImpl, kotlin.reflect.jvm.internal.impl.descriptors.impl.TypeAliasConstructorDescriptorImpl] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v59 */
    /* JADX WARN: Type inference failed for: r2v60 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v48, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v56 */
    /* JADX WARN: Type inference failed for: r3v57 */
    /* JADX WARN: Type inference failed for: r3v58 */
    /* JADX WARN: Type inference failed for: r3v59 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r3v9 */
    /* JADX WARN: Type inference failed for: r8v12, types: [kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        KTypeProjection kTypeProjection;
        boolean dispatchKeyEvent;
        SemanticsNode semanticsNode;
        LayoutNode layoutNode;
        Rect rect;
        ViewModelProvider$Factory defaultViewModelProviderFactory;
        ViewModelProvider$Factory defaultViewModelProviderFactory2;
        ViewModelProvider$Factory defaultViewModelProviderFactory3;
        int i = this.$r8$classId;
        Collection collection = EmptyList.INSTANCE;
        int i2 = 1;
        Unit unit = Unit.INSTANCE;
        Object obj = this.this$0;
        Object obj2 = this.$computeJavaType;
        switch (i) {
            case 0:
                final KTypeImpl kTypeImpl = (KTypeImpl) obj;
                List arguments = kTypeImpl.type.getArguments();
                if (arguments.isEmpty()) {
                    return collection;
                }
                final Lazy lazy = ContextsKt.lazy(LazyThreadSafetyMode.PUBLICATION, new KTypeImpl$classifier$2(kTypeImpl, i2));
                Function0 function0 = (Function0) obj2;
                ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arguments, 10));
                for (Object obj3 : arguments) {
                    int i3 = r4 + 1;
                    if (r4 < 0) {
                        Room.throwIndexOverflow();
                        throw null;
                    }
                    TypeProjectionBase typeProjectionBase = (TypeProjectionBase) obj3;
                    if (typeProjectionBase.isStarProjection()) {
                        kTypeProjection = KTypeProjection.star;
                    } else {
                        KotlinType type = typeProjectionBase.getType();
                        type.getClass();
                        KTypeImpl kTypeImpl2 = new KTypeImpl(type, function0 == null ? null : new Function0() { // from class: kotlin.reflect.jvm.internal.KTypeImpl$arguments$2$1$type$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object invoke() {
                                KTypeImpl kTypeImpl3 = KTypeImpl.this;
                                ReflectProperties$LazySoftVal reflectProperties$LazySoftVal = kTypeImpl3.computeJavaType;
                                Type type2 = reflectProperties$LazySoftVal != null ? (Type) reflectProperties$LazySoftVal.invoke() : null;
                                if (type2 instanceof Class) {
                                    Class cls = (Class) type2;
                                    Class componentType = cls.isArray() ? cls.getComponentType() : Object.class;
                                    componentType.getClass();
                                    return componentType;
                                }
                                boolean z = type2 instanceof GenericArrayType;
                                int i4 = r2;
                                if (z) {
                                    if (i4 != 0) {
                                        Gson$$ExternalSyntheticBUOutline0.m$6("Array type has been queried for a non-0th argument: ", kTypeImpl3);
                                        return null;
                                    }
                                    Type genericComponentType = ((GenericArrayType) type2).getGenericComponentType();
                                    genericComponentType.getClass();
                                    return genericComponentType;
                                }
                                if (!(type2 instanceof ParameterizedType)) {
                                    Gson$$ExternalSyntheticBUOutline0.m$6("Non-generic type has been queried for arguments: ", kTypeImpl3);
                                    return null;
                                }
                                Type type3 = (Type) ((List) lazy.getValue()).get(i4);
                                if (type3 instanceof WildcardType) {
                                    WildcardType wildcardType = (WildcardType) type3;
                                    Type[] lowerBounds = wildcardType.getLowerBounds();
                                    lowerBounds.getClass();
                                    Type type4 = (Type) ArraysKt___ArraysKt.firstOrNull(lowerBounds);
                                    if (type4 == null) {
                                        Type[] upperBounds = wildcardType.getUpperBounds();
                                        upperBounds.getClass();
                                        type3 = (Type) ArraysKt___ArraysKt.first(upperBounds);
                                    } else {
                                        type3 = type4;
                                    }
                                }
                                type3.getClass();
                                return type3;
                            }
                        });
                        int i4 = WhenMappings.$EnumSwitchMapping$0[typeProjectionBase.getProjectionKind().ordinal()];
                        if (i4 == 1) {
                            kTypeProjection = new KTypeProjection(KVariance.INVARIANT, kTypeImpl2);
                        } else if (i4 == 2) {
                            kTypeProjection = new KTypeProjection(KVariance.IN, kTypeImpl2);
                        } else {
                            if (i4 != 3) {
                                ContextsKt$$ExternalSyntheticBUOutline0.m();
                                return null;
                            }
                            kTypeProjection = new KTypeProjection(KVariance.OUT, kTypeImpl2);
                        }
                    }
                    arrayList.add(kTypeProjection);
                    r4 = i3;
                }
                return arrayList;
            case 1:
                ((CacheDrawModifierNodeImpl) obj).block.invoke((CacheDrawScope) obj2);
                return unit;
            case 2:
                ((Ref$ObjectRef) obj).element = ((FocusTargetNode) obj2).fetchFocusProperties$ui();
                return unit;
            case 3:
                ((PageViewModel) obj).removePointerInputModifierNode((Modifier.Node) obj2);
                return unit;
            case 4:
                NodeChain nodeChain = ((LayoutNode) obj).nodes;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) obj2;
                if ((((Modifier.Node) nodeChain.head).aggregateChildKindSet & 8) != 0) {
                    for (Modifier.Node node = (TailModifierNode) nodeChain.tail; node != null; node = node.parent) {
                        if ((node.kindSet & 8) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r3 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof SemanticsModifierNode) {
                                    SemanticsModifierNode semanticsModifierNode = (SemanticsModifierNode) delegatingNode;
                                    if (semanticsModifierNode.getShouldClearDescendantSemantics()) {
                                        SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
                                        ref$ObjectRef.element = semanticsConfiguration;
                                        semanticsConfiguration.isClearingSemantics = true;
                                    }
                                    if (semanticsModifierNode.getShouldMergeDescendantSemantics()) {
                                        ((SemanticsConfiguration) ref$ObjectRef.element).isMergingSemanticsOfDescendants = true;
                                    }
                                    semanticsModifierNode.applySemantics((SemanticsPropertyReceiver) ref$ObjectRef.element);
                                } else if ((delegatingNode.kindSet & 8) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.delegate;
                                    int i5 = 0;
                                    delegatingNode = delegatingNode;
                                    r3 = r3;
                                    while (node2 != null) {
                                        if ((node2.kindSet & 8) != 0) {
                                            i5++;
                                            r3 = r3;
                                            if (i5 == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r3 == 0) {
                                                    r3 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r3.add(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r3.add(node2);
                                            }
                                        }
                                        node2 = node2.child;
                                        delegatingNode = delegatingNode;
                                        r3 = r3;
                                    }
                                    if (i5 == 1) {
                                    }
                                }
                                delegatingNode = HitTestResultKt.pop(r3);
                            }
                        }
                    }
                }
                return unit;
            case 5:
                ReusableGraphicsLayerScope reusableGraphicsLayerScope = NodeCoordinator.graphicsLayerScope;
                ((Function1) obj).invoke(reusableGraphicsLayerScope);
                NodeCoordinator nodeCoordinator = (NodeCoordinator) obj2;
                boolean areEqual = Intrinsics.areEqual(nodeCoordinator.lastShape, reusableGraphicsLayerScope.shape);
                boolean z = nodeCoordinator.lastClip;
                boolean z2 = reusableGraphicsLayerScope.clip;
                r4 = z != z2 ? 1 : 0;
                if (!areEqual || r4 != 0) {
                    nodeCoordinator.lastShape = reusableGraphicsLayerScope.shape;
                    nodeCoordinator.lastClip = z2;
                    if (nodeCoordinator.wasLayerBlockInvoked && (r4 != 0 || (z2 && !areEqual))) {
                        nodeCoordinator.layoutNode.invalidateSemantics$ui();
                    }
                }
                nodeCoordinator.wasLayerBlockInvoked = true;
                reusableGraphicsLayerScope.outline = reusableGraphicsLayerScope.shape.mo61createOutlinePq9zytI(reusableGraphicsLayerScope.size, reusableGraphicsLayerScope.layoutDirection, reusableGraphicsLayerScope.graphicsDensity);
                return unit;
            case 6:
                dispatchKeyEvent = super/*android.view.ViewGroup*/.dispatchKeyEvent((KeyEvent) obj2);
                return Boolean.valueOf(dispatchKeyEvent);
            case 7:
                AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = (AndroidComposeViewAccessibilityDelegateCompat) obj2;
                ScrollObservationScope scrollObservationScope = (ScrollObservationScope) obj;
                ScrollAxisRange scrollAxisRange = scrollObservationScope.horizontalScrollAxisRange;
                ScrollAxisRange scrollAxisRange2 = scrollObservationScope.verticalScrollAxisRange;
                Float f = scrollObservationScope.oldXValue;
                Float f2 = scrollObservationScope.oldYValue;
                float floatValue = (scrollAxisRange == null || f == null) ? 0.0f : ((Number) scrollAxisRange.value.invoke()).floatValue() - f.floatValue();
                float floatValue2 = (scrollAxisRange2 == null || f2 == null) ? 0.0f : ((Number) scrollAxisRange2.value.invoke()).floatValue() - f2.floatValue();
                if (floatValue != RecyclerView.DECELERATION_RATE || floatValue2 != RecyclerView.DECELERATION_RATE) {
                    int semanticsNodeIdToAccessibilityVirtualNodeId = androidComposeViewAccessibilityDelegateCompat.semanticsNodeIdToAccessibilityVirtualNodeId(scrollObservationScope.semanticsNodeId);
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(androidComposeViewAccessibilityDelegateCompat.accessibilityFocusedVirtualViewId);
                    if (semanticsNodeWithAdjustedBounds != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = androidComposeViewAccessibilityDelegateCompat.currentlyAccessibilityFocusedANI;
                            if (accessibilityNodeInfoCompat != null) {
                                accessibilityNodeInfoCompat.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds));
                            }
                        } catch (IllegalStateException unused) {
                        }
                    }
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds2 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(androidComposeViewAccessibilityDelegateCompat.focusedVirtualViewId);
                    if (semanticsNodeWithAdjustedBounds2 != null) {
                        try {
                            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2 = androidComposeViewAccessibilityDelegateCompat.currentlyFocusedANI;
                            if (accessibilityNodeInfoCompat2 != null) {
                                accessibilityNodeInfoCompat2.setBoundsInScreen(androidComposeViewAccessibilityDelegateCompat.boundsInScreen(semanticsNodeWithAdjustedBounds2));
                            }
                        } catch (IllegalStateException unused2) {
                        }
                    }
                    androidComposeViewAccessibilityDelegateCompat.view.invalidate();
                    SemanticsNodeWithAdjustedBounds semanticsNodeWithAdjustedBounds3 = (SemanticsNodeWithAdjustedBounds) androidComposeViewAccessibilityDelegateCompat.getCurrentSemanticsNodes().get(semanticsNodeIdToAccessibilityVirtualNodeId);
                    if (semanticsNodeWithAdjustedBounds3 != null && (semanticsNode = semanticsNodeWithAdjustedBounds3.semanticsNode) != null && (layoutNode = semanticsNode.layoutNode) != null) {
                        if (scrollAxisRange != null) {
                            androidComposeViewAccessibilityDelegateCompat.pendingHorizontalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange);
                        }
                        if (scrollAxisRange2 != null) {
                            androidComposeViewAccessibilityDelegateCompat.pendingVerticalScrollEvents.set(semanticsNodeIdToAccessibilityVirtualNodeId, scrollAxisRange2);
                        }
                        androidComposeViewAccessibilityDelegateCompat.notifySubtreeAccessibilityStateChangedIfNeeded(layoutNode);
                    }
                }
                if (scrollAxisRange != null) {
                    scrollObservationScope.oldXValue = (Float) scrollAxisRange.value.invoke();
                }
                if (scrollAxisRange2 != null) {
                    scrollObservationScope.oldYValue = (Float) scrollAxisRange2.value.invoke();
                }
                return unit;
            case 8:
                Function0 function02 = (Function0) obj2;
                if (function02 != null && (rect = (Rect) function02.invoke()) != null) {
                    return rect;
                }
                NodeCoordinator nodeCoordinator2 = (NodeCoordinator) obj;
                if (!nodeCoordinator2.getTail().isAttached) {
                    nodeCoordinator2 = null;
                }
                if (nodeCoordinator2 != null) {
                    return UtilsKt.m793Recttz77jQw(0L, ExceptionsKt.m813toSizeozmzZPI(nodeCoordinator2.measuredSize));
                }
                return null;
            case 9:
                ((Ref$ObjectRef) obj).element = HitTestResultKt.currentValueOf((FocusTargetInteropNode) obj2, PinnableContainerKt.LocalPinnableContainer);
                return unit;
            case 10:
                return ResultKt.preferencesDataStoreFile((Context) obj, ((PreferenceDataStoreSingletonDelegate) obj2).name);
            case 11:
                AwaitKt.launch$default((CoroutineScope) obj, null, null, new ThumbNode$onAttach$1(17, (SessionWorker$doWork$2$1) obj2, r8), 3);
                return unit;
            case 12:
                KFunctionImpl kFunctionImpl = (KFunctionImpl) obj;
                KDeclarationContainerImpl kDeclarationContainerImpl = kFunctionImpl.container;
                String str = (String) obj2;
                String str2 = kFunctionImpl.signature;
                kDeclarationContainerImpl.getClass();
                str2.getClass();
                Collection list = str.equals("<init>") ? CollectionsKt.toList(kDeclarationContainerImpl.getConstructorDescriptors()) : kDeclarationContainerImpl.getFunctions(Name.identifier(str));
                ArrayList arrayList2 = new ArrayList();
                for (Object obj4 : list) {
                    if (Intrinsics.areEqual(RuntimeTypeMapper.mapSignature((FunctionDescriptor) obj4).asString(), str2)) {
                        arrayList2.add(obj4);
                    }
                }
                if (arrayList2.size() == 1) {
                    return (FunctionDescriptor) CollectionsKt.single((List) arrayList2);
                }
                String joinToString$default = CollectionsKt.joinToString$default(list, "\n", null, null, CachesKt$K_CLASS_CACHE$1.INSTANCE$4, 30);
                StringBuilder m352m = Modifier.CC.m352m("Function '", str, "' (JVM signature: ", str2, ") not resolved in ");
                m352m.append(kDeclarationContainerImpl);
                m352m.append(':');
                m352m.append(joinToString$default.length() == 0 ? " no members found" : "\n".concat(joinToString$default));
                throw new CoroutinesInternalError(m352m.toString());
            case IMAGE_VALUE:
                StringBuilder sb = new StringBuilder();
                sb.append('@');
                sb.append(((Class) obj).getCanonicalName());
                CollectionsKt.joinTo$default(((Map) obj2).entrySet(), sb, ", ", "(", ")", AnnotationConstructorCallerKt$createAnnotationInstance$toString$2$1$1.INSTANCE, 48);
                return sb.toString();
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                JvmBuiltInClassDescriptorFactory jvmBuiltInClassDescriptorFactory = (JvmBuiltInClassDescriptorFactory) obj;
                Function1 function1 = jvmBuiltInClassDescriptorFactory.computeContainingDeclaration;
                ModuleDescriptorImpl moduleDescriptorImpl = jvmBuiltInClassDescriptorFactory.moduleDescriptor;
                LockBasedStorageManager lockBasedStorageManager = (LockBasedStorageManager) obj2;
                ClassDescriptorImpl classDescriptorImpl = new ClassDescriptorImpl((DeclarationDescriptor) function1.invoke(moduleDescriptorImpl), JvmBuiltInClassDescriptorFactory.CLONEABLE_NAME, Modality.ABSTRACT, ClassKind.INTERFACE, Room.listOf(moduleDescriptorImpl.builtIns.getAnyType()), lockBasedStorageManager);
                classDescriptorImpl.initialize(new CloneableClassScope(lockBasedStorageManager, classDescriptorImpl), EmptySet.INSTANCE, null);
                return classDescriptorImpl;
            case 15:
                JvmBuiltIns jvmBuiltIns = (JvmBuiltIns) obj;
                ModuleDescriptorImpl builtInsModule = jvmBuiltIns.getBuiltInsModule();
                builtInsModule.getClass();
                return new JvmBuiltInsCustomizer(builtInsModule, (LockBasedStorageManager) obj2, new LayoutNode$_foldedChildren$1(28, jvmBuiltIns));
            case LAZY_VERTICAL_GRID_VALUE:
                JvmBuiltInsCustomizer jvmBuiltInsCustomizer = (JvmBuiltInsCustomizer) obj;
                ModuleDescriptorImpl moduleDescriptorImpl2 = jvmBuiltInsCustomizer.getSettings().ownerModuleDescriptor;
                JvmBuiltInClassDescriptorFactory.Companion.getClass();
                return DescriptorUtilKt.findNonGenericClassAcrossDependencies(moduleDescriptorImpl2, JvmBuiltInClassDescriptorFactory.CLONEABLE_CLASS_ID, new ImageLoader$Builder((LockBasedStorageManager) obj2, jvmBuiltInsCustomizer.getSettings().ownerModuleDescriptor)).getDefaultType();
            case VERTICAL_GRID_ITEM_VALUE:
                LazyJavaClassDescriptor lazyJavaClassDescriptor = (LazyJavaClassDescriptor) obj;
                Request.Builder builder = lazyJavaClassDescriptor.c;
                ActivityPageBinding activityPageBinding = (ActivityPageBinding) builder.url;
                Request.Builder builder2 = new Request.Builder(new ActivityPageBinding((LockBasedStorageManager) activityPageBinding.rootView, (ReflectJavaClassFinder) activityPageBinding.navigationDrawer, (ReflectJavaClassFinder) activityPageBinding.containerWithNavTrigger, (DeserializedDescriptorResolver) activityPageBinding.pageFragment, (ByteString.Companion) activityPageBinding.pageProgressBar, (ConnectionPool) activityPageBinding.pageScrollerButton, (JvmTypeFactoryImpl) activityPageBinding.pageToolbar, (ModuleDescriptorImpl) activityPageBinding.pageToolbarButtonNotifications, (ReflectionTypes) activityPageBinding.pageToolbarButtonSearch, (AnnotationTypeQualifierResolver) activityPageBinding.pageToolbarButtonShowOverflowMenu, (JavaTypeEnhancement) activityPageBinding.pageToolbarButtonTabs, (NewKotlinTypeChecker) activityPageBinding.pageToolbarContainer, (JavaTypeEnhancementState) activityPageBinding.sidePanelContainer, (JvmTypeFactoryImpl) activityPageBinding.tocList), (TypeParameterResolver) builder.method, (Lazy) builder.headers);
                DeclarationDescriptor containingDeclaration = lazyJavaClassDescriptor.getContainingDeclaration();
                containingDeclaration.getClass();
                return new LazyJavaClassDescriptor(builder2, containingDeclaration, lazyJavaClassDescriptor.jClass, (ModuleAwareClassDescriptor) obj2);
            case RADIO_GROUP_VALUE:
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) obj;
                LockBasedStorageManager lockBasedStorageManager2 = typeAliasConstructorDescriptorImpl.storageManager;
                DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor = typeAliasConstructorDescriptorImpl.typeAliasDescriptor;
                ClassConstructorDescriptorImpl classConstructorDescriptorImpl = (ClassConstructorDescriptorImpl) obj2;
                Annotations annotations = classConstructorDescriptorImpl.getAnnotations();
                CallableMemberDescriptor.Kind kind = classConstructorDescriptorImpl.getKind();
                kind.getClass();
                DeserializedTypeAliasDescriptor deserializedTypeAliasDescriptor2 = typeAliasConstructorDescriptorImpl.typeAliasDescriptor;
                SourceElement source = deserializedTypeAliasDescriptor2.getSource();
                source.getClass();
                ?? typeAliasConstructorDescriptorImpl2 = new TypeAliasConstructorDescriptorImpl(lockBasedStorageManager2, deserializedTypeAliasDescriptor, classConstructorDescriptorImpl, typeAliasConstructorDescriptorImpl, annotations, kind, source);
                TypeAliasConstructorDescriptorImpl.Companion.getClass();
                TypeSubstitutor create = deserializedTypeAliasDescriptor2.getClassDescriptor() == null ? null : TypeSubstitutor.create(deserializedTypeAliasDescriptor2.getExpandedType());
                if (create == null) {
                    return null;
                }
                ReceiverParameterDescriptorImpl receiverParameterDescriptorImpl = classConstructorDescriptorImpl.dispatchReceiverParameter;
                ?? substitute = receiverParameterDescriptorImpl != null ? receiverParameterDescriptorImpl.substitute(create) : null;
                List contextReceiverParameters = classConstructorDescriptorImpl.getContextReceiverParameters();
                contextReceiverParameters.getClass();
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(contextReceiverParameters, 10));
                Iterator it = contextReceiverParameters.iterator();
                while (it.hasNext()) {
                    arrayList3.add(((ReceiverParameterDescriptorImpl) it.next()).substitute(create));
                }
                List declaredTypeParameters = deserializedTypeAliasDescriptor2.getDeclaredTypeParameters();
                List valueParameters = typeAliasConstructorDescriptorImpl.getValueParameters();
                KotlinType kotlinType = typeAliasConstructorDescriptorImpl.unsubstitutedReturnType;
                kotlinType.getClass();
                typeAliasConstructorDescriptorImpl2.mo829initialize(null, substitute, arrayList3, declaredTypeParameters, valueParameters, kotlinType, Modality.FINAL, deserializedTypeAliasDescriptor2.visibilityImpl);
                return typeAliasConstructorDescriptorImpl2;
            case RADIO_BUTTON_VALUE:
                SimpleType defaultType = ((ModuleDescriptorImpl) ((ActivityPageBinding) ((Request.Builder) obj).url).pageToolbarButtonNotifications).builtIns.getBuiltInClassByFqName(((JavaAnnotationDescriptor) obj2).fqName).getDefaultType();
                defaultType.getClass();
                return defaultType;
            case RADIO_ROW_VALUE:
                Request.Builder builder3 = (Request.Builder) obj;
                Annotations annotations2 = ((ClassOrPackageFragmentDescriptor) obj2).getAnnotations();
                builder3.getClass();
                annotations2.getClass();
                return ((AnnotationTypeQualifierResolver) ((ActivityPageBinding) builder3.url).pageToolbarButtonShowOverflowMenu).extractAndMergeDefaultQualifiers((JavaTypeQualifiersByElementType) ((Lazy) builder3.body).getValue(), annotations2);
            case RADIO_COLUMN_VALUE:
                Request.Builder builder4 = (Request.Builder) obj;
                Annotations annotations3 = (Annotations) obj2;
                builder4.getClass();
                annotations3.getClass();
                return ((AnnotationTypeQualifierResolver) ((ActivityPageBinding) builder4.url).pageToolbarButtonShowOverflowMenu).extractAndMergeDefaultQualifiers((JavaTypeQualifiersByElementType) ((Lazy) builder4.body).getValue(), annotations3);
            case SIZE_BOX_VALUE:
                return new LazyJavaPackageFragment(((LazyJavaPackageFragmentProvider) obj).c, (ReflectJavaPackage) obj2);
            case 23:
                HCaptcha hCaptcha = (HCaptcha) ((GsonBuilder) obj).excluder;
                return ((AnnotationAndConstantLoader) ((ActivityGalleryBinding) hCaptcha.result).transitionReceiver).loadTypeAnnotations((ProtoBuf$Type) obj2, (NameResolver) hCaptcha.hCaptchaException);
            case 24:
                DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) obj;
                return CollectionsKt.toList(((AnnotationAndConstantLoader) ((ActivityGalleryBinding) deserializedClassDescriptor.c.result).transitionReceiver).loadEnumEntryAnnotations(deserializedClassDescriptor.thisAsProtoContainer, (ProtoBuf$EnumEntry) obj2));
            case 25:
                Collection collection2 = (List) ((NewCapturedTypeConstructor) obj)._supertypes$delegate.getValue();
                if (collection2 != null) {
                    collection = collection2;
                }
                KotlinTypeRefiner$Default kotlinTypeRefiner$Default = (KotlinTypeRefiner$Default) obj2;
                ArrayList arrayList4 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(collection, 10));
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    arrayList4.add(((UnwrappedType) it2.next()).refine(kotlinTypeRefiner$Default));
                }
                return arrayList4;
            case 26:
                AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2 androidLeakFixes$IMM_FOCUSED_VIEW$apply$2 = (AndroidLeakFixes$IMM_FOCUSED_VIEW$apply$2) obj;
                ReferenceCleaner referenceCleaner = new ReferenceCleaner(androidLeakFixes$IMM_FOCUSED_VIEW$apply$2.$inputMethodManager, androidLeakFixes$IMM_FOCUSED_VIEW$apply$2.$mHField, androidLeakFixes$IMM_FOCUSED_VIEW$apply$2.$mServedViewField, androidLeakFixes$IMM_FOCUSED_VIEW$apply$2.$finishInputLockedMethod);
                Window window = ((Activity) obj2).getWindow();
                window.getClass();
                View decorView = window.getDecorView();
                decorView.getClass();
                View rootView = decorView.getRootView();
                rootView.getClass();
                rootView.getViewTreeObserver().addOnGlobalFocusChangeListener(referenceCleaner);
                return unit;
            case 27:
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) ((Lazy) obj2).getValue();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (defaultViewModelProviderFactory = hasDefaultViewModelProviderFactory.getDefaultViewModelProviderFactory()) == null) ? ((ActivityTabFragment) obj).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory;
            case 28:
                ViewModelStoreOwner viewModelStoreOwner2 = (ViewModelStoreOwner) ((Lazy) obj2).getValue();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory2 = viewModelStoreOwner2 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner2 : null;
                return (hasDefaultViewModelProviderFactory2 == null || (defaultViewModelProviderFactory2 = hasDefaultViewModelProviderFactory2.getDefaultViewModelProviderFactory()) == null) ? ((CategoryDialog) obj).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory2;
            default:
                ViewModelStoreOwner viewModelStoreOwner3 = (ViewModelStoreOwner) ((Lazy) obj2).getValue();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory3 = viewModelStoreOwner3 instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner3 : null;
                return (hasDefaultViewModelProviderFactory3 == null || (defaultViewModelProviderFactory3 = hasDefaultViewModelProviderFactory3.getDefaultViewModelProviderFactory()) == null) ? ((FilePageFragment) obj).getDefaultViewModelProviderFactory() : defaultViewModelProviderFactory3;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ KTypeImpl$arguments$2(int i, Object obj, Object obj2) {
        super(0);
        this.$r8$classId = i;
        this.this$0 = obj;
        this.$computeJavaType = obj2;
    }
}
