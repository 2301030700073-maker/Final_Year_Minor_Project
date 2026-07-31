package kotlin;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.LongSparseArray;
import android.view.DragEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.collection.ArrayMap;
import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListMeasuredItem;
import androidx.compose.foundation.text.contextmenu.internal.AndroidTextContextMenuToolbarProvider_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.TailModifierNode;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.core.content.res.FontResourcesParserCompat$FontFamilyFilesResourceEntry;
import androidx.core.provider.FontsContractCompat$FontInfo;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.glance.Applier;
import androidx.glance.GlanceModifier;
import androidx.glance.GlanceThemeKt$GlanceTheme$1;
import androidx.glance.action.ActionModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.appwidget.lazy.LazyListKt$LazyColumn$1;
import androidx.glance.appwidget.lazy.LazyListKt$LazyColumn$2$1;
import androidx.glance.appwidget.lazy.LazyListKt$LazyListItem$1;
import androidx.glance.appwidget.lazy.LazyListKt$applyListScope$listScopeImpl$1;
import androidx.glance.layout.Alignment;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.OperationKt;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import coil3.size.ViewSizeResolver$CC;
import coil3.util.ContextsKt;
import coil3.util.ContextsKt$$ExternalSyntheticBUOutline0;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionInvokeDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DescriptorVisibilities;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageFragmentDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SourceElement;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PackageFragmentDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.PropertyAccessorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ReceiverParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.SimpleFunctionDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmTypeFactoryImpl;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeAliasExpander;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.SubtypePathNode;
import kotlin.reflect.jvm.internal.impl.types.checker.UtilsKt;
import kotlin.text.RegexKt;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.internal.PrimitivesKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.compose.components.ArticleCardKt$$ExternalSyntheticLambda1;
import org.wikipedia.login.LoginClient;
import org.wikipedia.random.RandomScreenKt$$ExternalSyntheticLambda1;
import org.wikipedia.settings.AboutActivityKt$$ExternalSyntheticLambda9;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ResultKt implements ViewPropertyAnimatorListener {
    public static Field sDrawableCacheField;
    public static boolean sDrawableCacheFieldFetched;
    public static Field sResourcesImplField;
    public static boolean sResourcesImplFieldFetched;
    public static Class sThemedResourceCacheClazz;
    public static boolean sThemedResourceCacheClazzFetched;
    public static Field sThemedResourceCache_mUnthemedEntriesField;
    public static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;

    public ResultKt(int i) {
        switch (i) {
            case RADIO_COLUMN_VALUE:
                break;
            default:
                new ConcurrentHashMap();
                break;
        }
    }

    /* renamed from: LazyColumn-EiNPFjs, reason: not valid java name */
    public static final void m816LazyColumnEiNPFjs(GlanceModifier glanceModifier, Function1 function1, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1060451148);
        if ((((gapComposer.changed(glanceModifier) ? 4 : 2) | i | 16 | (gapComposer.changed(function1) ? 256 : 128)) & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
            }
            gapComposer.endDefaults();
            LazyListKt$LazyColumn$1 lazyListKt$LazyColumn$1 = LazyListKt$LazyColumn$1.INSTANCE;
            Alignment alignment = new Alignment(0, 1);
            ArrayList arrayList = new ArrayList();
            function1.invoke(new LazyListKt$applyListScope$listScopeImpl$1(arrayList));
            ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(new GlanceThemeKt$GlanceTheme$1(6, arrayList, alignment), true, 1748368075);
            gapComposer.startReplaceableGroup(578571862);
            gapComposer.startReplaceableGroup(-548224868);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(lazyListKt$LazyColumn$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, glanceModifier, LazyListKt$LazyColumn$2$1.INSTANCE);
            Updater.m327setimpl(gapComposer, new Alignment.Horizontal(0), LazyListKt$LazyColumn$2$1.INSTANCE$1);
            composableLambdaImpl.invoke((Object) gapComposer, (Object) 0);
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new GlanceThemeKt$GlanceTheme$1(i, 5, glanceModifier, function1);
        }
    }

    public static final void LazyListItem(final long j, final Alignment alignment, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i) {
        gapComposer.startRestartGroup(-2015416678);
        if ((((gapComposer.changed(j) ? 4 : 2) | i | (gapComposer.changed(alignment) ? 32 : 16)) & 147) == 146 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            gapComposer.startMovableGroup(1110757559, Long.valueOf(j));
            LazyListKt$LazyListItem$1 lazyListKt$LazyListItem$1 = LazyListKt$LazyListItem$1.INSTANCE;
            gapComposer.startReplaceableGroup(578571862);
            gapComposer.startReplaceableGroup(-548224868);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(lazyListKt$LazyListItem$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, Long.valueOf(j), LazyListKt$LazyColumn$2$1.INSTANCE$2);
            Updater.m327setimpl(gapComposer, alignment, LazyListKt$LazyColumn$2$1.INSTANCE$3);
            composableLambdaImpl.invoke((Object) gapComposer, (Object) 6);
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2(j, alignment, composableLambdaImpl, i) { // from class: androidx.glance.appwidget.lazy.LazyListKt$LazyListItem$3
                public final /* synthetic */ Alignment $alignment;
                public final /* synthetic */ ComposableLambdaImpl $content;
                public final /* synthetic */ long $itemId;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    ComposableLambdaImpl composableLambdaImpl2 = this.$content;
                    ResultKt.LazyListItem(this.$itemId, this.$alignment, composableLambdaImpl2, (GapComposer) obj, 385);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    public static final void PredictiveBackHandler(boolean z, Function2 function2, GapComposer gapComposer, int i) {
        gapComposer.startRestartGroup(1818896922);
        int i2 = (gapComposer.changed(z) ? 4 : 2) | i | (gapComposer.changedInstance(function2) ? 32 : 16);
        if ((i2 & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            OperationKt.PredictiveBackHandler(z, function2, gapComposer, i2 & 126);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ArticleCardKt$$ExternalSyntheticLambda1(z, function2, i);
        }
    }

    public static final void ProvideBasicTextContextMenu(Modifier modifier, ProvidableCompositionLocal providableCompositionLocal, ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        int i2;
        gapComposer.startRestartGroup(-714464401);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(modifier) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            i2 |= gapComposer.changed(providableCompositionLocal) ? 32 : 16;
        }
        int i3 = i & 384;
        ComposableLambdaImpl composableLambdaImpl2 = AndroidTextContextMenuToolbarProvider_androidKt.lambda$636288403;
        if (i3 == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl2) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i2 |= gapComposer.changedInstance(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 1171) != 1170)) {
            Object rememberedValue = gapComposer.rememberedValue();
            if (rememberedValue == Composer$Companion.Empty) {
                Object parcelableSnapshotMutableState = new ParcelableSnapshotMutableState(null, NeverEqualPolicy.INSTANCE);
                gapComposer.updateRememberedValue(parcelableSnapshotMutableState);
                rememberedValue = parcelableSnapshotMutableState;
            }
            BasicTextContextMenuProvider basicTextContextMenuProvider = basicTextContextMenuProvider(composableLambdaImpl2, gapComposer, (i2 >> 6) & 14);
            Updater.CompositionLocalProvider(providableCompositionLocal.defaultProvidedValue$runtime(basicTextContextMenuProvider), Expect_jvmKt.rememberComposableLambda(274270255, new RandomScreenKt$$ExternalSyntheticLambda1(modifier, (MutableState) rememberedValue, composableLambdaImpl, basicTextContextMenuProvider, 1), gapComposer), gapComposer, 56);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AboutActivityKt$$ExternalSyntheticLambda9((Object) modifier, (Object) providableCompositionLocal, (Object) composableLambdaImpl, i, 7);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Text(java.lang.String r9, androidx.glance.GlanceModifier r10, androidx.glance.text.TextStyle r11, int r12, androidx.compose.runtime.GapComposer r13, int r14, int r15) {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ResultKt.Text(java.lang.String, androidx.glance.GlanceModifier, androidx.glance.text.TextStyle, int, androidx.compose.runtime.GapComposer, int, int):void");
    }

    public static final long Velocity(float f, float f2) {
        return (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
    }

    public static final BasicTextContextMenuProvider basicTextContextMenuProvider(ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, int i) {
        boolean z = (((i & 14) ^ 6) > 4 && gapComposer.changed(composableLambdaImpl)) || (i & 6) == 4;
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer$Companion.Empty;
        if (z || rememberedValue == obj) {
            rememberedValue = new BasicTextContextMenuProvider(composableLambdaImpl);
            gapComposer.updateRememberedValue(rememberedValue);
        }
        BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) rememberedValue;
        boolean changed = gapComposer.changed(basicTextContextMenuProvider);
        Object rememberedValue2 = gapComposer.rememberedValue();
        if (changed || rememberedValue2 == obj) {
            rememberedValue2 = new AppBarKt$$ExternalSyntheticLambda11(25, basicTextContextMenuProvider);
            gapComposer.updateRememberedValue(rememberedValue2);
        }
        Updater.DisposableEffect(basicTextContextMenuProvider, (Function1) rememberedValue2, gapComposer);
        return basicTextContextMenuProvider;
    }

    public static final Object bringIntoView(DelegatableNode delegatableNode, Function0 function0, ContinuationImpl continuationImpl) {
        Object obj;
        NodeCoordinator requireLayoutCoordinates;
        Object bringIntoView;
        NodeChain nodeChain;
        if (((Modifier.Node) delegatableNode).node.isAttached) {
            Modifier.Node node = (Modifier.Node) delegatableNode;
            if (!node.node.isAttached) {
                InlineClassHelperKt.throwIllegalStateException("visitAncestors called on an unattached node");
            }
            Modifier.Node node2 = node.node.parent;
            LayoutNode requireLayoutNode = HitTestResultKt.requireLayoutNode(delegatableNode);
            loop0: while (true) {
                obj = null;
                if (requireLayoutNode == null) {
                    break;
                }
                if ((((Modifier.Node) requireLayoutNode.nodes.head).aggregateChildKindSet & 524288) != 0) {
                    while (node2 != null) {
                        if ((node2.kindSet & 524288) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                if (node3 instanceof BringIntoViewModifierNode) {
                                    obj = node3;
                                    break loop0;
                                }
                                if ((node3.kindSet & 524288) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).delegate; node4 != null; node4 = node4.child) {
                                        if ((node4.kindSet & 524288) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node3 = node4;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node3 != null) {
                                                    mutableVector.add(node3);
                                                    node3 = null;
                                                }
                                                mutableVector.add(node4);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node3 = HitTestResultKt.pop(mutableVector);
                            }
                        }
                        node2 = node2.parent;
                    }
                }
                requireLayoutNode = requireLayoutNode.getParent$ui();
                node2 = (requireLayoutNode == null || (nodeChain = requireLayoutNode.nodes) == null) ? null : (TailModifierNode) nodeChain.tail;
            }
            BringIntoViewModifierNode bringIntoViewModifierNode = (BringIntoViewModifierNode) obj;
            if (bringIntoViewModifierNode != null && (bringIntoView = bringIntoViewModifierNode.bringIntoView((requireLayoutCoordinates = HitTestResultKt.requireLayoutCoordinates(delegatableNode)), new KTypeImpl$arguments$2(function0, requireLayoutCoordinates), continuationImpl)) == CoroutineSingletons.COROUTINE_SUSPENDED) {
                return bringIntoView;
            }
        }
        return Unit.INSTANCE;
    }

    public static final String capitalizeAsciiOnly(String str) {
        str.getClass();
        if (str.length() == 0) {
            return str;
        }
        char charAt = str.charAt(0);
        if ('a' > charAt || charAt >= '{') {
            return str;
        }
        return Character.toUpperCase(charAt) + str.substring(1);
    }

    public static final GlanceModifier clickable(GlanceModifier glanceModifier, RunCallbackAction runCallbackAction) {
        return glanceModifier.then(new ActionModifier(runCallbackAction, 0));
    }

    public static final void closeFinally(Closeable closeable, Throwable th) {
        if (closeable != null) {
            if (th == null) {
                closeable.close();
                return;
            }
            try {
                closeable.close();
            } catch (Throwable th2) {
                ExceptionsKt.addSuppressed(th, th2);
            }
        }
    }

    public static final String computeInternalName(ModuleAwareClassDescriptor moduleAwareClassDescriptor, JvmTypeFactoryImpl jvmTypeFactoryImpl) {
        jvmTypeFactoryImpl.getClass();
        DeclarationDescriptor containingDeclaration = moduleAwareClassDescriptor.getContainingDeclaration();
        containingDeclaration.getClass();
        Name name = moduleAwareClassDescriptor.getName();
        Name name2 = SpecialNames.NO_NAME_PROVIDED;
        if (name == null || name.special) {
            name = SpecialNames.SAFE_IDENTIFIER_FOR_NO_NAME;
        }
        String identifier = name.getIdentifier();
        if (!(containingDeclaration instanceof PackageFragmentDescriptor)) {
            ModuleAwareClassDescriptor moduleAwareClassDescriptor2 = containingDeclaration instanceof ModuleAwareClassDescriptor ? (ModuleAwareClassDescriptor) containingDeclaration : null;
            if (moduleAwareClassDescriptor2 == null) {
                Utils$$ExternalSyntheticBUOutline0.m("Unexpected container: ", containingDeclaration, " for ", moduleAwareClassDescriptor);
                return null;
            }
            return computeInternalName(moduleAwareClassDescriptor2, jvmTypeFactoryImpl) + '$' + identifier;
        }
        FqName fqName = ((PackageFragmentDescriptorImpl) ((PackageFragmentDescriptor) containingDeclaration)).fqName;
        if (fqName.isRoot()) {
            return identifier;
        }
        String replace = fqName.asString().replace('.', '/');
        replace.getClass();
        return replace + '/' + identifier;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005a, code lost:
    
        if (r2 == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap convertToBitmap(android.graphics.drawable.Drawable r16, android.graphics.Bitmap.Config r17, coil3.size.Size r18, coil3.size.Scale r19, coil3.size.Size r20, boolean r21) {
        /*
            r0 = r16
            r1 = r18
            r4 = r19
            r5 = r20
            boolean r2 = r0 instanceof android.graphics.drawable.BitmapDrawable
            r8 = 4294967295(0xffffffff, double:2.1219957905E-314)
            r10 = 32
            if (r2 == 0) goto L5d
            r2 = r0
            android.graphics.drawable.BitmapDrawable r2 = (android.graphics.drawable.BitmapDrawable) r2
            android.graphics.Bitmap r11 = r2.getBitmap()
            android.graphics.Bitmap$Config r2 = r11.getConfig()
            if (r17 == 0) goto L2a
            boolean r3 = coil3.util.BitmapsKt.isHardware(r17)
            if (r3 == 0) goto L27
            goto L2a
        L27:
            r3 = r17
            goto L2c
        L2a:
            android.graphics.Bitmap$Config r3 = android.graphics.Bitmap.Config.ARGB_8888
        L2c:
            if (r2 != r3) goto L5d
            if (r21 == 0) goto L31
            goto L5c
        L31:
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            long r2 = kotlin.UnsignedKt.m821computeDstSizesEdh43o(r2, r3, r1, r4, r5)
            long r6 = r2 >> r10
            int r6 = (int) r6
            long r2 = r2 & r8
            int r2 = (int) r2
            r5 = r2
            int r2 = r11.getWidth()
            int r3 = r11.getHeight()
            r7 = r6
            r6 = r4
            r4 = r7
            r7 = r20
            double r2 = kotlin.UnsignedKt.computeSizeMultiplier(r2, r3, r4, r5, r6, r7)
            r4 = r6
            r5 = r7
            r6 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 != 0) goto L5d
        L5c:
            return r11
        L5d:
            android.graphics.drawable.Drawable r6 = r0.mutate()
            int r0 = coil3.util.Utils_androidKt.getWidth(r6)
            r2 = 512(0x200, float:7.17E-43)
            if (r0 <= 0) goto L6a
            goto L6b
        L6a:
            r0 = r2
        L6b:
            int r3 = coil3.util.Utils_androidKt.getHeight(r6)
            if (r3 <= 0) goto L72
            r2 = r3
        L72:
            long r11 = kotlin.UnsignedKt.m821computeDstSizesEdh43o(r0, r2, r1, r4, r5)
            long r13 = r11 >> r10
            int r1 = (int) r13
            long r8 = r8 & r11
            int r3 = (int) r8
            r15 = r2
            r2 = r1
            r1 = r15
            double r2 = kotlin.UnsignedKt.computeSizeMultiplier(r0, r1, r2, r3, r4, r5)
            double r4 = (double) r0
            double r4 = r4 * r2
            int r0 = kotlin.UnsignedKt.roundToInt(r4)
            double r4 = (double) r1
            double r2 = r2 * r4
            int r1 = kotlin.UnsignedKt.roundToInt(r2)
            if (r17 == 0) goto L9a
            boolean r2 = coil3.util.BitmapsKt.isHardware(r17)
            if (r2 == 0) goto L97
            goto L9a
        L97:
            r2 = r17
            goto L9c
        L9a:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
        L9c:
            android.graphics.Bitmap r2 = android.graphics.Bitmap.createBitmap(r0, r1, r2)
            android.graphics.Rect r3 = r6.getBounds()
            int r4 = r3.left
            int r5 = r3.top
            int r7 = r3.right
            int r3 = r3.bottom
            r8 = 0
            r6.setBounds(r8, r8, r0, r1)
            android.graphics.Canvas r0 = new android.graphics.Canvas
            r0.<init>(r2)
            r6.draw(r0)
            r6.setBounds(r4, r5, r7, r3)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ResultKt.convertToBitmap(android.graphics.drawable.Drawable, android.graphics.Bitmap$Config, coil3.size.Size, coil3.size.Scale, coil3.size.Size, boolean):android.graphics.Bitmap");
    }

    public static FunctionInvokeDescriptor create(FunctionClassDescriptor functionClassDescriptor, boolean z) {
        String lowerCase;
        functionClassDescriptor.getClass();
        List list = functionClassDescriptor.parameters;
        FunctionInvokeDescriptor functionInvokeDescriptor = new FunctionInvokeDescriptor(functionClassDescriptor, null, CallableMemberDescriptor.Kind.DECLARATION, z);
        ReceiverParameterDescriptorImpl thisAsReceiverParameter = functionClassDescriptor.getThisAsReceiverParameter();
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((TypeParameterDescriptor) obj).getVariance() != Variance.IN_VARIANCE) {
                break;
            }
            arrayList.add(obj);
        }
        IndexingIterable withIndex = CollectionsKt.withIndex(arrayList);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(withIndex, 10));
        Iterator it = withIndex.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it;
            if (!indexingIterator.iterator.hasNext()) {
                SimpleType defaultType = ((TypeParameterDescriptor) CollectionsKt.last(list)).getDefaultType();
                Modality modality = Modality.ABSTRACT;
                DescriptorVisibilities.AnonymousClass1 anonymousClass1 = DescriptorVisibilities.PUBLIC;
                EmptyList emptyList = EmptyList.INSTANCE;
                functionInvokeDescriptor.mo829initialize((ReceiverParameterDescriptorImpl) null, thisAsReceiverParameter, (List) emptyList, (List) emptyList, (List) arrayList2, (KotlinType) defaultType, modality, anonymousClass1);
                FunctionInvokeDescriptor functionInvokeDescriptor2 = functionInvokeDescriptor;
                functionInvokeDescriptor2.hasSynthesizedParameterNames = true;
                return functionInvokeDescriptor2;
            }
            IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
            int i = indexedValue.index;
            TypeParameterDescriptor typeParameterDescriptor = (TypeParameterDescriptor) indexedValue.value;
            String asString = typeParameterDescriptor.getName().asString();
            asString.getClass();
            if (asString.equals("T")) {
                lowerCase = "instance";
            } else if (asString.equals("E")) {
                lowerCase = "receiver";
            } else {
                lowerCase = asString.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
            }
            FunctionInvokeDescriptor functionInvokeDescriptor3 = functionInvokeDescriptor;
            Name identifier = Name.identifier(lowerCase);
            SimpleType defaultType2 = typeParameterDescriptor.getDefaultType();
            defaultType2.getClass();
            arrayList2.add(new ValueParameterDescriptorImpl(functionInvokeDescriptor3, null, i, Annotations.Companion.EMPTY, identifier, defaultType2, false, false, false, null, SourceElement.NO_SOURCE));
            functionInvokeDescriptor = functionInvokeDescriptor3;
        }
    }

    public static ContextsKt createCornerTreatment(int i) {
        return i != 0 ? i != 1 ? new RoundedCornerTreatment() : new CutCornerTreatment() : new RoundedCornerTreatment();
    }

    public static final Result.Failure createFailure(Throwable th) {
        th.getClass();
        return new Result.Failure(th);
    }

    public static FontsContractCompat$FontInfo findBestInfo(FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        FontsContractCompat$FontInfo fontsContractCompat$FontInfo = null;
        int i3 = Integer.MAX_VALUE;
        for (FontsContractCompat$FontInfo fontsContractCompat$FontInfo2 : fontsContractCompat$FontInfoArr) {
            int abs = (Math.abs(fontsContractCompat$FontInfo2.mWeight - i2) * 2) + (fontsContractCompat$FontInfo2.mItalic == z ? 0 : 1);
            if (fontsContractCompat$FontInfo == null || i3 > abs) {
                fontsContractCompat$FontInfo = fontsContractCompat$FontInfo2;
                i3 = abs;
            }
        }
        return fontsContractCompat$FontInfo;
    }

    public static void flushThemedResourcesCache(Object obj) {
        LongSparseArray longSparseArray;
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        Class cls = sThemedResourceCacheClazz;
        if (cls == null) {
            return;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        Field field = sThemedResourceCache_mUnthemedEntriesField;
        if (field == null) {
            return;
        }
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e3) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e3);
            longSparseArray = null;
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    public static final WorkGenerationalId generationalId(WorkSpec workSpec) {
        workSpec.getClass();
        return new WorkGenerationalId(workSpec.generation, workSpec.id);
    }

    public static final String getJvmMethodNameIfSpecial(FunctionDescriptor functionDescriptor) {
        Name name;
        CallableMemberDescriptor overriddenBuiltinWithDifferentJvmName = KotlinBuiltIns.isBuiltIn(functionDescriptor) ? getOverriddenBuiltinWithDifferentJvmName(functionDescriptor) : null;
        if (overriddenBuiltinWithDifferentJvmName != null) {
            CallableMemberDescriptor propertyIfAccessor = DescriptorUtilsKt.getPropertyIfAccessor(overriddenBuiltinWithDifferentJvmName);
            if (propertyIfAccessor instanceof PropertyDescriptor) {
                KotlinBuiltIns.isBuiltIn(propertyIfAccessor);
                CallableMemberDescriptor firstOverridden$default = DescriptorUtilsKt.firstOverridden$default(DescriptorUtilsKt.getPropertyIfAccessor(propertyIfAccessor), SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$3);
                if (firstOverridden$default != null && (name = (Name) BuiltinSpecialProperties.PROPERTY_FQ_NAME_TO_JVM_GETTER_NAME_MAP.get(DescriptorUtilsKt.getFqNameSafe(firstOverridden$default))) != null) {
                    return name.asString();
                }
            } else if (propertyIfAccessor instanceof SimpleFunctionDescriptorImpl) {
                int i = BuiltinMethodsWithDifferentJvmName.$r8$clinit;
                LinkedHashMap linkedHashMap = SpecialGenericSignatures.SIGNATURE_TO_JVM_REPRESENTATION_NAME;
                String computeJvmSignature = RegexKt.computeJvmSignature((SimpleFunctionDescriptorImpl) propertyIfAccessor);
                Name name2 = computeJvmSignature == null ? null : (Name) linkedHashMap.get(computeJvmSignature);
                if (name2 != null) {
                    return name2.asString();
                }
            }
        }
        return null;
    }

    public static final CallableMemberDescriptor getOverriddenBuiltinWithDifferentJvmName(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        if (!SpecialGenericSignatures.ORIGINAL_SHORT_NAMES.contains(callableMemberDescriptor.getName()) && !BuiltinSpecialProperties.SPECIAL_SHORT_NAMES.contains(DescriptorUtilsKt.getPropertyIfAccessor(callableMemberDescriptor).getName())) {
            return null;
        }
        if (callableMemberDescriptor instanceof PropertyDescriptor ? true : callableMemberDescriptor instanceof PropertyAccessorDescriptorImpl) {
            return DescriptorUtilsKt.firstOverridden$default(callableMemberDescriptor, SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$5);
        }
        if (callableMemberDescriptor instanceof SimpleFunctionDescriptorImpl) {
            return DescriptorUtilsKt.firstOverridden$default(callableMemberDescriptor, SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE$6);
        }
        return null;
    }

    public static final CallableMemberDescriptor getOverriddenSpecialBuiltin(CallableMemberDescriptor callableMemberDescriptor) {
        callableMemberDescriptor.getClass();
        CallableMemberDescriptor overriddenBuiltinWithDifferentJvmName = getOverriddenBuiltinWithDifferentJvmName(callableMemberDescriptor);
        if (overriddenBuiltinWithDifferentJvmName != null) {
            return overriddenBuiltinWithDifferentJvmName;
        }
        int i = BuiltinMethodsWithSpecialGenericSignature.$r8$clinit;
        Name name = callableMemberDescriptor.getName();
        name.getClass();
        if (SpecialGenericSignatures.ERASED_VALUE_PARAMETERS_SHORT_NAMES.contains(name)) {
            return DescriptorUtilsKt.firstOverridden$default(callableMemberDescriptor, SpecialBuiltinMembers$getOverriddenSpecialBuiltin$2.INSTANCE);
        }
        return null;
    }

    public static final long getPositionInRoot(PopupMenu$1 popupMenu$1) {
        DragEvent dragEvent = (DragEvent) popupMenu$1.this$0;
        float x = dragEvent.getX();
        float y = dragEvent.getY();
        return (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
    }

    public static final boolean hasRealKotlinSuperClassWithOverrideOf(ModuleAwareClassDescriptor moduleAwareClassDescriptor, CallableMemberDescriptor callableMemberDescriptor) {
        moduleAwareClassDescriptor.getClass();
        callableMemberDescriptor.getClass();
        DeclarationDescriptor containingDeclaration = callableMemberDescriptor.getContainingDeclaration();
        containingDeclaration.getClass();
        SimpleType defaultType = ((ModuleAwareClassDescriptor) containingDeclaration).getDefaultType();
        defaultType.getClass();
        for (ModuleAwareClassDescriptor superClassDescriptor = DescriptorUtils.getSuperClassDescriptor(moduleAwareClassDescriptor); superClassDescriptor != null; superClassDescriptor = DescriptorUtils.getSuperClassDescriptor(superClassDescriptor)) {
            if (!(superClassDescriptor instanceof LazyJavaClassDescriptor)) {
                SimpleType defaultType2 = superClassDescriptor.getDefaultType();
                if (defaultType2 == null) {
                    ContextsKt$$ExternalSyntheticBUOutline0.m("Argument for @NotNull parameter '%s' of %s.%s must not be null", new Object[]{"subtype", "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure", "findCorrespondingSupertype"});
                    return false;
                }
                ArrayDeque arrayDeque = new ArrayDeque();
                UnwrappedType unwrappedType = null;
                arrayDeque.add(new SubtypePathNode(defaultType2, null));
                TypeConstructor constructor = defaultType.getConstructor();
                while (true) {
                    if (arrayDeque.isEmpty()) {
                        break;
                    }
                    SubtypePathNode subtypePathNode = (SubtypePathNode) arrayDeque.poll();
                    KotlinType kotlinType = subtypePathNode.type;
                    TypeConstructor constructor2 = kotlinType.getConstructor();
                    if (constructor2 == null) {
                        UtilsKt.$$$reportNull$$$0(3);
                        throw null;
                    }
                    if (constructor == null) {
                        UtilsKt.$$$reportNull$$$0(4);
                        throw null;
                    }
                    if (constructor2.equals(constructor)) {
                        boolean isMarkedNullable = kotlinType.isMarkedNullable();
                        for (SubtypePathNode subtypePathNode2 = subtypePathNode.previous; subtypePathNode2 != null; subtypePathNode2 = subtypePathNode2.previous) {
                            KotlinType kotlinType2 = subtypePathNode2.type;
                            List arguments = kotlinType2.getArguments();
                            TypeAliasExpander typeAliasExpander = TypeConstructorSubstitution.Companion;
                            if (arguments == null || !arguments.isEmpty()) {
                                Iterator it = arguments.iterator();
                                while (it.hasNext()) {
                                    Variance projectionKind = ((TypeProjectionBase) it.next()).getProjectionKind();
                                    Variance variance = Variance.INVARIANT;
                                    if (projectionKind != variance) {
                                        kotlinType = (KotlinType) ExceptionsKt.approximateCapturedTypes(new TypeSubstitutor(ContextsKt.wrapWithCapturingSubstitution$default(typeAliasExpander.create(kotlinType2.getConstructor(), kotlinType2.getArguments()))).safeSubstitute(kotlinType, variance)).upper;
                                        break;
                                    }
                                }
                            }
                            kotlinType = new TypeSubstitutor(typeAliasExpander.create(kotlinType2.getConstructor(), kotlinType2.getArguments())).safeSubstitute(kotlinType, Variance.INVARIANT);
                            isMarkedNullable = isMarkedNullable || kotlinType2.isMarkedNullable();
                        }
                        TypeConstructor constructor3 = kotlinType.getConstructor();
                        if (constructor3 == null) {
                            UtilsKt.$$$reportNull$$$0(3);
                            throw null;
                        }
                        if (!constructor3.equals(constructor)) {
                            throw new AssertionError("Type constructors should be equals!\nsubstitutedSuperType: " + UtilsKt.debugInfo(constructor3) + ", \n\nsupertype: " + UtilsKt.debugInfo(constructor) + " \n" + constructor3.equals(constructor));
                        }
                        unwrappedType = TypeUtils.makeNullableAsSpecified(kotlinType, isMarkedNullable);
                    } else {
                        for (KotlinType kotlinType3 : constructor2.getSupertypes()) {
                            kotlinType3.getClass();
                            arrayDeque.add(new SubtypePathNode(kotlinType3, subtypePathNode));
                        }
                    }
                }
                if (unwrappedType != null) {
                    return !KotlinBuiltIns.isBuiltIn(superClassDescriptor);
                }
            }
        }
        return false;
    }

    public static final boolean isUpperCaseCharAt(int i, String str) {
        char charAt = str.charAt(i);
        return 'A' <= charAt && charAt < '[';
    }

    /* JADX WARN: Removed duplicated region for block: B:142:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0249  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object mapType(kotlin.reflect.jvm.internal.impl.types.KotlinType r18, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode r19, kotlin.jvm.functions.Function3 r20) {
        /*
            Method dump skipped, instructions count: 976
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ResultKt.mapType(kotlin.reflect.jvm.internal.impl.types.KotlinType, kotlin.reflect.jvm.internal.impl.load.kotlin.TypeMappingMode, kotlin.jvm.functions.Function3):java.lang.Object");
    }

    public static final File preferencesDataStoreFile(Context context, String str) {
        context.getClass();
        str.getClass();
        return ExceptionsKt.dataStoreFile(context, Intrinsics.stringPlus(str, ".preferences_pb"));
    }

    public static final Class prettyClass$SerializersKt__SerializersJvmKt(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            rawType.getClass();
            return prettyClass$SerializersKt__SerializersJvmKt(rawType);
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            upperBounds.getClass();
            Object first = ArraysKt___ArraysKt.first(upperBounds);
            first.getClass();
            return prettyClass$SerializersKt__SerializersJvmKt((Type) first);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            genericComponentType.getClass();
            return prettyClass$SerializersKt__SerializersJvmKt(genericComponentType);
        }
        StringBuilder sb = new StringBuilder("type should be an instance of Class<?>, GenericArrayType, ParametrizedType or WildcardType, but actual argument ");
        sb.append(type);
        sb.append(" has type ");
        _UtilJvmKt$$ExternalSyntheticLambda0.m(ViewSizeResolver$CC.m(Reflection.factory, type.getClass(), sb));
        return null;
    }

    public static final void recursiveFetchArrayMap(ArrayMap arrayMap, Function1 function1) {
        ArrayMap arrayMap2 = new ArrayMap(999);
        int i = arrayMap.size;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            arrayMap2.put(arrayMap.keyAt(i2), arrayMap.valueAt(i2));
            i2++;
            i3++;
            if (i3 == 999) {
                function1.invoke(arrayMap2);
                arrayMap2.clear();
                i3 = 0;
            }
        }
        if (i3 > 0) {
            function1.invoke(arrayMap2);
        }
    }

    public static final KSerializer reflectiveOrContextual$SerializersKt__SerializersJvmKt(LoginClient loginClient, Class cls, List list) {
        KSerializer[] kSerializerArr = (KSerializer[]) list.toArray(new KSerializer[0]);
        KSerializer constructSerializerForGivenTypeArgs = kotlinx.serialization.internal.TuplesKt.constructSerializerForGivenTypeArgs(cls, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
        if (constructSerializerForGivenTypeArgs != null) {
            return constructSerializerForGivenTypeArgs;
        }
        ReflectionFactory reflectionFactory = Reflection.factory;
        KSerializer kSerializer = (KSerializer) PrimitivesKt.BUILTIN_SERIALIZERS.get(reflectionFactory.getOrCreateKotlinClass(cls));
        if (kSerializer != null) {
            return kSerializer;
        }
        if (cls.isInterface()) {
            return new PolymorphicSerializer(reflectionFactory.getOrCreateKotlinClass(cls));
        }
        return null;
    }

    public static final boolean requiresFunctionNameManglingInParameterTypes(KotlinType kotlinType) {
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor != null && InlineClassesUtilsKt.isInlineClass(declarationDescriptor) && !DescriptorUtilsKt.getFqNameSafe((ModuleAwareClassDescriptor) declarationDescriptor).equals(StandardNames.RESULT_FQ_NAME)) {
            return true;
        }
        ClassifierDescriptor declarationDescriptor2 = kotlinType.getConstructor().getDeclarationDescriptor();
        TypeParameterDescriptor typeParameterDescriptor = declarationDescriptor2 instanceof TypeParameterDescriptor ? (TypeParameterDescriptor) declarationDescriptor2 : null;
        return typeParameterDescriptor == null ? false : requiresFunctionNameManglingInParameterTypes(OperationKt.getRepresentativeUpperBound(typeParameterDescriptor));
    }

    public static final KSerializer serializer(LoginClient loginClient, Type type) {
        loginClient.getClass();
        type.getClass();
        KSerializer serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt = serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(loginClient, type, true);
        if (serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt != null) {
            return serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt;
        }
        Class prettyClass$SerializersKt__SerializersJvmKt = prettyClass$SerializersKt__SerializersJvmKt(type);
        prettyClass$SerializersKt__SerializersJvmKt.getClass();
        throw new SerializationException(kotlinx.serialization.internal.TuplesKt.notRegisteredMessage(Reflection.factory.getOrCreateKotlinClass(prettyClass$SerializersKt__SerializersJvmKt)));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r7v21 kotlinx.serialization.KSerializer, still in use, count: 2, list:
          (r7v21 kotlinx.serialization.KSerializer) from 0x002d: IF  (r7v21 kotlinx.serialization.KSerializer) == (null kotlinx.serialization.KSerializer)  -> B:22:0x00f1 A[HIDDEN] (LINE:46)
          (r7v21 kotlinx.serialization.KSerializer) from 0x0031: PHI (r7v22 kotlinx.serialization.KSerializer) = (r7v21 kotlinx.serialization.KSerializer) binds: [B:21:0x002d] A[DONT_GENERATE, DONT_INLINE]
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:125)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:62)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:45)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:35)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:34)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    public static final kotlinx.serialization.KSerializer serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(org.wikipedia.login.LoginClient r7, java.lang.reflect.Type r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 538
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ResultKt.serializerByJavaTypeImpl$SerializersKt__SerializersJvmKt(org.wikipedia.login.LoginClient, java.lang.reflect.Type, boolean):kotlinx.serialization.KSerializer");
    }

    public static void setElevation(ViewGroup viewGroup, float f) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            ((MaterialShapeDrawable) background).setElevation(f);
        }
    }

    public static void setParentAbsoluteElevation(View view, MaterialShapeDrawable materialShapeDrawable) {
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawable.drawableState.elevationOverlayProvider;
        if (elevationOverlayProvider == null || !elevationOverlayProvider.elevationOverlayEnabled) {
            return;
        }
        float f = RecyclerView.DECELERATION_RATE;
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            f += ((View) parent).getElevation();
        }
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.parentAbsoluteElevation != f) {
            materialShapeDrawableState.parentAbsoluteElevation = f;
            materialShapeDrawable.updateZ();
        }
    }

    public static final void throwOnFailure(Object obj) {
        if (obj instanceof Result.Failure) {
            throw ((Result.Failure) obj).exception;
        }
    }

    public static final String toLowerCaseAsciiOnly(String str) {
        str.getClass();
        StringBuilder sb = new StringBuilder(str.length());
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if ('A' <= charAt && charAt < '[') {
                charAt = Character.toLowerCase(charAt);
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    public static final int visibleItemsAverageSize(LazyListMeasureResult lazyListMeasureResult) {
        List list = lazyListMeasureResult.visibleItemsInfo;
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((LazyListMeasuredItem) list.get(i2)).size;
        }
        return (i / list.size()) + lazyListMeasureResult.mainAxisItemSpacing;
    }

    public abstract Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat$FontFamilyFilesResourceEntry fontResourcesParserCompat$FontFamilyFilesResourceEntry, Resources resources, int i);

    public abstract Typeface createFromFontInfo(Context context, FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr, int i);

    public Typeface createFromFontInfoWithFallback(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    public Typeface createFromResourcesFontFile(Context context, Resources resources, int i, String str, int i2) {
        File tempFile = TuplesKt.getTempFile(context);
        if (tempFile == null) {
            return null;
        }
        try {
            if (TuplesKt.copyToFile(tempFile, resources, i)) {
                return Typeface.createFromFile(tempFile.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            tempFile.delete();
        }
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationCancel() {
    }

    @Override // androidx.core.view.ViewPropertyAnimatorListener
    public void onAnimationStart() {
    }

    public static void setParentAbsoluteElevation(ViewGroup viewGroup) {
        Drawable background = viewGroup.getBackground();
        if (background instanceof MaterialShapeDrawable) {
            setParentAbsoluteElevation(viewGroup, (MaterialShapeDrawable) background);
        }
    }
}
