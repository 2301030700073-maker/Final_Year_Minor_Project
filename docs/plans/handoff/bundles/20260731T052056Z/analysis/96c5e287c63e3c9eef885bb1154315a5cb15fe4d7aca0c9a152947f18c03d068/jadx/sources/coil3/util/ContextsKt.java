package coil3.util;

import android.content.Context;
import android.database.SQLException;
import android.graphics.Path;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.ExtractedText;
import androidx.appcompat.view.ActionMode;
import androidx.cardview.widget.CardView;
import androidx.compose.animation.core.Animation;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draganddrop.DragAndDropNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.platform.coreshims.AutofillIdCompat;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.unit.InlineClassHelperKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import androidx.core.graphics.PathParser$PathDataNode;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt$preferencesDataStore$1;
import androidx.datastore.preferences.PreferenceDataStoreSingletonDelegate;
import androidx.glance.AndroidResourceImageProvider;
import androidx.glance.Applier;
import androidx.glance.BackgroundModifier;
import androidx.glance.ButtonColors;
import androidx.glance.ColorFilter;
import androidx.glance.EmittableImage;
import androidx.glance.GlanceModifier;
import androidx.glance.GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1;
import androidx.glance.ImageKt$Image$1;
import androidx.glance.ImageKt$Image$2$1;
import androidx.glance.TintColorFilterParams;
import androidx.glance.action.ActionModifier;
import androidx.glance.appwidget.CornerRadiusModifier;
import androidx.glance.appwidget.EnabledModifier;
import androidx.glance.appwidget.action.RunCallbackAction;
import androidx.glance.appwidget.components.ButtonsKt$FilledButton$2;
import androidx.glance.appwidget.components.ButtonsKt$M3TextButton$1;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.ContentScale;
import androidx.glance.layout.PaddingModifier;
import androidx.glance.text.FontWeight;
import androidx.glance.text.TextStyle;
import androidx.glance.unit.ColorProvider;
import androidx.glance.unit.Dimension;
import androidx.navigation.NavGraph;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt$$ExternalSyntheticLambda13;
import androidx.recyclerview.widget.RecyclerView;
import androidx.room.Room;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.OperationKt;
import coil3.util.ContextsKt;
import com.google.android.material.shape.ShapePath;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt$WhenMappings;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.SafePublicationLazyImpl;
import kotlin.SynchronizedLazyImpl;
import kotlin.TuplesKt;
import kotlin.UNINITIALIZED_VALUE;
import kotlin.Unit;
import kotlin.UnsafeLazyImpl;
import kotlin.UnsignedKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlin.reflect.KClass;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MemberSignature;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.NameResolver;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmMemberSignature$Field;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedType;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorImpl;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntValue;
import kotlin.reflect.jvm.internal.impl.resolve.constants.StringValue;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.IndexedParametersSubstitution;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeAttributes;
import kotlin.reflect.jvm.internal.impl.types.TypeProjectionBase;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution$replaceWithNonApproximating$1;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.util.Check;
import kotlin.text.RegexKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.UStringsKt;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorJobImpl;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import leakcanary.AndroidLeakFixes$Companion$onDecorViewReady$1;
import okhttp3.Dispatcher$promoteAndExecute$Effects;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.maplibre.android.log.Logger;
import org.wikipedia.R;
import org.wikipedia.feed.HomeFragment$$ExternalSyntheticLambda5;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class ContextsKt {
    public static final void FilledButton(String str, RunCallbackAction runCallbackAction, GlanceModifier glanceModifier, boolean z, AndroidResourceImageProvider androidResourceImageProvider, ButtonColors buttonColors, int i, GapComposer gapComposer, int i2) {
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        int i5;
        gapComposer.startRestartGroup(-326511592);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(runCallbackAction) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changed(glanceModifier) ? 256 : 128;
        }
        int i6 = i3 | 3072;
        if ((i2 & 24576) == 0) {
            i6 |= gapComposer.changed(androidResourceImageProvider) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            int i7 = 262144 & i2;
            i6 |= gapComposer.changed(buttonColors) ? 131072 : 65536;
        }
        int i8 = i6 | 1572864;
        if ((599187 & i8) == 599186 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
            z3 = z;
            i5 = i;
        } else {
            gapComposer.startDefaults();
            if ((i2 & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                z2 = true;
                i4 = Integer.MAX_VALUE;
            } else {
                gapComposer.skipToGroupEnd();
                z2 = z;
                i4 = i;
            }
            gapComposer.endDefaults();
            M3TextButton(str, runCallbackAction, glanceModifier, z2, androidResourceImageProvider, buttonColors.contentColor, buttonColors.backgroundColor, i4, gapComposer, (65534 & i8) | ((i8 << 6) & 234881024));
            z3 = z2;
            i5 = i4;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new ButtonsKt$FilledButton$2(str, runCallbackAction, glanceModifier, z3, androidResourceImageProvider, buttonColors, i5, i2);
        }
    }

    /* renamed from: Image-GCr5PR4, reason: not valid java name */
    public static final void m787ImageGCr5PR4(final AndroidResourceImageProvider androidResourceImageProvider, final GlanceModifier glanceModifier, int i, ColorFilter colorFilter, GapComposer gapComposer, final int i2, final int i3) {
        int i4;
        gapComposer.startRestartGroup(491792371);
        int i5 = (gapComposer.changed(androidResourceImageProvider) ? 4 : 2) | i2 | (gapComposer.changed(glanceModifier) ? 256 : 128);
        int i6 = i5 | 3072;
        int i7 = i3 & 16;
        if (i7 != 0) {
            i4 = i5 | 27648;
        } else {
            int i8 = 32768 & i2;
            i4 = (gapComposer.changed(colorFilter) ? 16384 : 8192) | i6;
        }
        if ((i4 & 9363) == 9362 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            if (i7 != 0) {
                colorFilter = null;
            }
            gapComposer.startReplaceableGroup(135631275);
            int i9 = 0;
            gapComposer.end(false);
            ImageKt$Image$1 imageKt$Image$1 = ImageKt$Image$1.INSTANCE;
            gapComposer.startReplaceableGroup(-1115894518);
            gapComposer.startReplaceableGroup(1886828752);
            if (!(gapComposer.applier instanceof Applier)) {
                Updater.invalidApplier();
                throw null;
            }
            gapComposer.startNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(new GlanceNodeKt$GlanceNode$$inlined$ComposeNode$1(i9, imageKt$Image$1));
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, androidResourceImageProvider, ImageKt$Image$2$1.INSTANCE);
            Updater.m327setimpl(gapComposer, glanceModifier, ImageKt$Image$2$1.INSTANCE$2);
            Updater.m327setimpl(gapComposer, new ContentScale(), ImageKt$Image$2$1.INSTANCE$3);
            Updater.m327setimpl(gapComposer, colorFilter, ImageKt$Image$2$1.INSTANCE$4);
            i = 1;
            gapComposer.end(true);
            gapComposer.end(false);
            gapComposer.end(false);
        }
        final int i10 = i;
        final ColorFilter colorFilter2 = colorFilter;
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.glance.ImageKt$Image$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    ContextsKt.m787ImageGCr5PR4(AndroidResourceImageProvider.this, glanceModifier, i10, colorFilter2, (GapComposer) obj, i2 | 1, i3);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:185:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x03b0  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0168  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LazyList(androidx.compose.ui.Modifier r38, final androidx.compose.foundation.lazy.LazyListState r39, final androidx.compose.foundation.layout.PaddingValues r40, final boolean r41, final androidx.compose.foundation.gestures.FlingBehavior r42, final boolean r43, final androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect r44, androidx.compose.ui.Alignment.Horizontal r45, androidx.compose.foundation.layout.Arrangement$Vertical r46, androidx.compose.ui.BiasAlignment.Vertical r47, androidx.compose.foundation.layout.Arrangement$Horizontal r48, final kotlin.jvm.functions.Function1 r49, androidx.compose.runtime.GapComposer r50, final int r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 1135
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.ContextsKt.LazyList(androidx.compose.ui.Modifier, androidx.compose.foundation.lazy.LazyListState, androidx.compose.foundation.layout.PaddingValues, boolean, androidx.compose.foundation.gestures.FlingBehavior, boolean, androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect, androidx.compose.ui.Alignment$Horizontal, androidx.compose.foundation.layout.Arrangement$Vertical, androidx.compose.ui.BiasAlignment$Vertical, androidx.compose.foundation.layout.Arrangement$Horizontal, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int, int, int):void");
    }

    /* JADX WARN: Type inference failed for: r13v0, types: [androidx.glance.appwidget.components.ButtonsKt$M3TextButton$Text$1, kotlin.jvm.internal.Lambda] */
    public static final void M3TextButton(final String str, final RunCallbackAction runCallbackAction, final GlanceModifier glanceModifier, final boolean z, final AndroidResourceImageProvider androidResourceImageProvider, final ColorProvider colorProvider, final ColorProvider colorProvider2, final int i, GapComposer gapComposer, final int i2) {
        int i3;
        gapComposer.startRestartGroup(1704543196);
        if ((i2 & 6) == 0) {
            i3 = (gapComposer.changed(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changed(runCallbackAction) ? 32 : 16;
        }
        if ((i2 & 384) == 0) {
            i3 |= gapComposer.changed(glanceModifier) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposer.changed(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposer.changed(androidResourceImageProvider) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposer.changed(colorProvider) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposer.changed(R.drawable.glance_component_btn_filled) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposer.changed(colorProvider2) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposer.changed(i) ? 67108864 : 33554432;
        }
        if ((i3 & 38347923) == 38347922 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
        } else {
            float f = androidResourceImageProvider != null ? 24.0f : 16.0f;
            ComposableLambdaImpl composableLambda = Expect_jvmKt.composableLambda(gapComposer, -127672093, new Function2() { // from class: androidx.glance.appwidget.components.ButtonsKt$M3TextButton$Text$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    GapComposer gapComposer2 = (GapComposer) obj;
                    if ((((Number) obj2).intValue() & 3) == 2 && gapComposer2.getSkipping()) {
                        gapComposer2.skipToGroupEnd();
                    } else {
                        ResultKt.Text(str, null, new TextStyle(colorProvider, new TextUnit(ContextsKt.getSp(14)), new FontWeight(), 120), i, gapComposer2, 0, 2);
                    }
                    return Unit.INSTANCE;
                }
            });
            GlanceModifier then = glanceModifier.then(new PaddingModifier(UStringsKt.m846toPadding0680j_4(16.0f), UStringsKt.m846toPadding0680j_4(10.0f), UStringsKt.m846toPadding0680j_4(f), UStringsKt.m846toPadding0680j_4(10.0f))).then(new BackgroundModifier.Image(new AndroidResourceImageProvider(R.drawable.glance_component_btn_filled), new ColorFilter(new TintColorFilterParams(colorProvider2)))).then(new EnabledModifier(z));
            int i4 = Build.VERSION.SDK_INT;
            RegexKt.Box(then.then(new ActionModifier(runCallbackAction, i4 >= 31 ? 0 : R.drawable.glance_component_m3_button_ripple)).then(i4 >= 31 ? new CornerRadiusModifier(new Dimension.Resource()) : GlanceModifier.Companion.$$INSTANCE), Alignment.Center, Expect_jvmKt.composableLambda(gapComposer, 180493370, new ButtonsKt$M3TextButton$1(composableLambda, androidResourceImageProvider, colorProvider)), gapComposer, 384, 0);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: androidx.glance.appwidget.components.ButtonsKt$M3TextButton$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    ContextsKt.M3TextButton(str, runCallbackAction, glanceModifier, z, androidResourceImageProvider, colorProvider, colorProvider2, i, (GapComposer) obj, i2 | 1);
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static final void NavHost(androidx.navigation.NavHostController r42, androidx.navigation.NavGraph r43, androidx.compose.ui.Modifier r44, androidx.compose.ui.Alignment r45, kotlin.jvm.functions.Function1 r46, kotlin.jvm.functions.Function1 r47, kotlin.jvm.functions.Function1 r48, kotlin.jvm.functions.Function1 r49, androidx.compose.runtime.GapComposer r50, int r51) {
        /*
            Method dump skipped, instructions count: 2734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.ContextsKt.NavHost(androidx.navigation.NavHostController, androidx.navigation.NavGraph, androidx.compose.ui.Modifier, androidx.compose.ui.Alignment, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1, androidx.compose.runtime.GapComposer, int):void");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0048  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003b -> B:10:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object awaitFirstRightClickDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine r7, kotlin.coroutines.jvm.internal.BaseContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = (androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1 r0 = new androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$awaitFirstRightClickDown$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L30
            if (r2 != r3) goto L29
            androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine r7 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3e
        L29:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r7)
            r7 = 0
            return r7
        L30:
            kotlin.ResultKt.throwOnFailure(r8)
        L33:
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r8 = androidx.compose.ui.Modifier.CC.awaitPointerEvent$default(r7, r0)
            if (r8 != r1) goto L3e
            return r1
        L3e:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            int r2 = r8.buttons
            java.util.List r8 = r8.changes
            r2 = r2 & 66
            if (r2 == 0) goto L33
            int r2 = r8.size()
            r4 = 0
            r5 = r4
        L4e:
            if (r5 >= r2) goto L60
            java.lang.Object r6 = r8.get(r5)
            androidx.compose.ui.input.pointer.PointerInputChange r6 = (androidx.compose.ui.input.pointer.PointerInputChange) r6
            boolean r6 = androidx.compose.ui.input.pointer.PointerId.changedToDown(r6)
            if (r6 != 0) goto L5d
            goto L33
        L5d:
            int r5 = r5 + 1
            goto L4e
        L60:
            java.lang.Object r7 = r8.get(r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.ContextsKt.awaitFirstRightClickDown(androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static long calculateNextRunTime(boolean z, int i, BackoffPolicy backoffPolicy, long j, long j2, int i2, boolean z2, long j3, long j4, long j5, long j6) {
        backoffPolicy.getClass();
        if (j6 != Long.MAX_VALUE && z2) {
            if (i2 != 0) {
                long j7 = j2 + 900000;
                if (j6 < j7) {
                    return j7;
                }
            }
            return j6;
        }
        if (z) {
            long scalb = backoffPolicy == BackoffPolicy.LINEAR ? j * i : (long) Math.scalb(j, i - 1);
            if (scalb > 18000000) {
                scalb = 18000000;
            }
            return j2 + scalb;
        }
        if (z2) {
            long j8 = i2 == 0 ? j2 + j3 : j2 + j5;
            return (j4 == j5 || i2 != 0) ? j8 : (j5 - j4) + j8;
        }
        if (j2 == -1) {
            return Long.MAX_VALUE;
        }
        return j2 + j3;
    }

    public static boolean canMorph(PathParser$PathDataNode[] pathParser$PathDataNodeArr, PathParser$PathDataNode[] pathParser$PathDataNodeArr2) {
        int i;
        if (pathParser$PathDataNodeArr != null && pathParser$PathDataNodeArr2 != null && pathParser$PathDataNodeArr.length == pathParser$PathDataNodeArr2.length) {
            for (0; i < pathParser$PathDataNodeArr.length; i + 1) {
                PathParser$PathDataNode pathParser$PathDataNode = pathParser$PathDataNodeArr[i];
                char c = pathParser$PathDataNode.mType;
                PathParser$PathDataNode pathParser$PathDataNode2 = pathParser$PathDataNodeArr2[i];
                i = (c == pathParser$PathDataNode2.mType && pathParser$PathDataNode.mParams.length == pathParser$PathDataNode2.mParams.length) ? i + 1 : 0;
            }
            return true;
        }
        return false;
    }

    /* renamed from: checkArithmetic--R2X_6o, reason: not valid java name */
    public static final void m788checkArithmeticR2X_6o(long j) {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if ((j & 1095216660480L) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
    }

    /* renamed from: checkArithmetic-NB67dxo, reason: not valid java name */
    public static final void m789checkArithmeticNB67dxo(long j, long j2) {
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        if ((j & 1095216660480L) == 0 || (1095216660480L & j2) == 0) {
            InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for Unspecified type.");
        }
        if (TextUnitType.m728equalsimpl0(TextUnit.m724getTypeUIouoOA(j), TextUnit.m724getTypeUIouoOA(j2))) {
            return;
        }
        InlineClassHelperKt.throwIllegalArgumentException("Cannot perform operation for " + ((Object) TextUnitType.m729toStringimpl(TextUnit.m724getTypeUIouoOA(j))) + " and " + ((Object) TextUnitType.m729toStringimpl(TextUnit.m724getTypeUIouoOA(j2))));
    }

    /* renamed from: contains-Uv8p0NA, reason: not valid java name */
    public static final boolean m790containsUv8p0NA(DragAndDropNode dragAndDropNode, long j) {
        if (!dragAndDropNode.node.isAttached) {
            return false;
        }
        InnerNodeCoordinator innerNodeCoordinator = (InnerNodeCoordinator) HitTestResultKt.requireLayoutNode(dragAndDropNode).nodes.innerCoordinator;
        if (!innerNodeCoordinator.tail.isAttached) {
            return false;
        }
        long mo520localToRootMKHz9U = innerNodeCoordinator.mo520localToRootMKHz9U(0L);
        float intBitsToFloat = Float.intBitsToFloat((int) (mo520localToRootMKHz9U >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (mo520localToRootMKHz9U & 4294967295L));
        long j2 = dragAndDropNode.size;
        float f = ((int) (j2 >> 32)) + intBitsToFloat;
        float f2 = ((int) (j2 & 4294967295L)) + intBitsToFloat2;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
        if (intBitsToFloat > intBitsToFloat3 || intBitsToFloat3 > f) {
            return false;
        }
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
        return intBitsToFloat2 <= intBitsToFloat4 && intBitsToFloat4 <= f2;
    }

    public static final int contextFunctionTypeParamsCount(KotlinType kotlinType) {
        kotlinType.getClass();
        AnnotationDescriptor findAnnotation = kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.contextFunctionTypeParams);
        if (findAnnotation == null) {
            return 0;
        }
        ConstantValue constantValue = (ConstantValue) MapsKt__MapsKt.getValue(StandardNames.CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME, findAnnotation.getAllValueArguments());
        constantValue.getClass();
        return ((Number) ((IntValue) constantValue).value).intValue();
    }

    public static float[] copyOfRange(float[] fArr, int i) {
        if (i < 0) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m();
            return null;
        }
        int length = fArr.length;
        if (length < 0) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int min = Math.min(i, length);
        float[] fArr2 = new float[i];
        System.arraycopy(fArr, 0, fArr2, 0, min);
        return fArr2;
    }

    public static final TypeProjectionBase createCapturedIfNeeded(TypeProjectionBase typeProjectionBase, TypeParameterDescriptor typeParameterDescriptor) {
        if (typeParameterDescriptor == null || typeProjectionBase.getProjectionKind() == Variance.INVARIANT) {
            return typeProjectionBase;
        }
        if (typeParameterDescriptor.getVariance() != typeProjectionBase.getProjectionKind()) {
            CapturedTypeConstructorImpl capturedTypeConstructorImpl = new CapturedTypeConstructorImpl(typeProjectionBase);
            TypeAttributes.Companion.getClass();
            return new StarProjectionImpl(new CapturedType(typeProjectionBase, capturedTypeConstructorImpl, false, TypeAttributes.Empty));
        }
        if (!typeProjectionBase.isStarProjection()) {
            return new StarProjectionImpl(typeProjectionBase.getType());
        }
        LockBasedStorageManager.AnonymousClass1 anonymousClass1 = LockBasedStorageManager.NO_LOCKS;
        anonymousClass1.getClass();
        return new StarProjectionImpl(new LazyWrappedType(anonymousClass1, new AndroidLeakFixes$Companion$onDecorViewReady$1(9, typeProjectionBase)));
    }

    public static final SimpleType createFunctionType(KotlinBuiltIns kotlinBuiltIns, Annotations annotations, KotlinType kotlinType, List list, ArrayList arrayList, KotlinType kotlinType2, boolean z) {
        ModuleAwareClassDescriptor builtInClassByName;
        int i = 0;
        ArrayList arrayList2 = new ArrayList(list.size() + arrayList.size() + (kotlinType != null ? 1 : 0) + 1);
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            KotlinType kotlinType3 = (KotlinType) it.next();
            kotlinType3.getClass();
            arrayList3.add(new StarProjectionImpl(kotlinType3));
        }
        arrayList2.addAll(arrayList3);
        StarProjectionImpl starProjectionImpl = kotlinType != null ? new StarProjectionImpl(kotlinType) : null;
        if (starProjectionImpl != null) {
            arrayList2.add(starProjectionImpl);
        }
        Iterator it2 = arrayList.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            Object next = it2.next();
            int i3 = i2 + 1;
            if (i2 < 0) {
                Room.throwIndexOverflow();
                throw null;
            }
            KotlinType kotlinType4 = (KotlinType) next;
            kotlinType4.getClass();
            arrayList2.add(new StarProjectionImpl(kotlinType4));
            i2 = i3;
        }
        arrayList2.add(new StarProjectionImpl(kotlinType2));
        int size = list.size() + arrayList.size() + (kotlinType == null ? 0 : 1);
        if (z) {
            builtInClassByName = kotlinBuiltIns.getSuspendFunction(size);
        } else {
            Name name = StandardNames.ENUM_VALUES;
            builtInClassByName = kotlinBuiltIns.getBuiltInClassByName("Function" + size);
        }
        builtInClassByName.getClass();
        Annotations annotations2 = Annotations.Companion.EMPTY;
        if (kotlinType != null) {
            FqName fqName = StandardNames.FqNames.extensionFunctionType;
            if (!annotations.hasAnnotation(fqName)) {
                ArrayList plus = CollectionsKt.plus(annotations, new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName, EmptyMap.INSTANCE));
                annotations = plus.isEmpty() ? annotations2 : new AnnotationsImpl(i, plus);
            }
        }
        if (!list.isEmpty()) {
            int size2 = list.size();
            FqName fqName2 = StandardNames.FqNames.contextFunctionTypeParams;
            if (!annotations.hasAnnotation(fqName2)) {
                Map singletonMap = Collections.singletonMap(StandardNames.CONTEXT_FUNCTION_TYPE_PARAMETER_COUNT_NAME, new IntValue(size2));
                singletonMap.getClass();
                ArrayList plus2 = CollectionsKt.plus(annotations, new BuiltInAnnotationDescriptor(kotlinBuiltIns, fqName2, singletonMap));
                if (!plus2.isEmpty()) {
                    annotations2 = new AnnotationsImpl(i, plus2);
                }
                annotations = annotations2;
            }
        }
        return KotlinTypeKt.simpleNotNullType(KotlinTypeKt.toDefaultAttributes(annotations), builtInClassByName, arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0096 A[Catch: NumberFormatException -> 0x00aa, LOOP:3: B:25:0x0068->B:35:0x0096, LOOP_END, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0095 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x009c A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1 A[Catch: NumberFormatException -> 0x00aa, TryCatch #0 {NumberFormatException -> 0x00aa, blocks: (B:22:0x0054, B:25:0x0068, B:27:0x006e, B:31:0x007a, B:35:0x0096, B:39:0x009c, B:44:0x00b1, B:56:0x00b4), top: B:21:0x0054 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00d6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.core.graphics.PathParser$PathDataNode[] createNodesFromPathData(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.ContextsKt.createNodesFromPathData(java.lang.String):androidx.core.graphics.PathParser$PathDataNode[]");
    }

    public static PathParser$PathDataNode[] deepCopyNodes(PathParser$PathDataNode[] pathParser$PathDataNodeArr) {
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = new PathParser$PathDataNode[pathParser$PathDataNodeArr.length];
        for (int i = 0; i < pathParser$PathDataNodeArr.length; i++) {
            pathParser$PathDataNodeArr2[i] = new PathParser$PathDataNode(pathParser$PathDataNodeArr[i]);
        }
        return pathParser$PathDataNodeArr2;
    }

    public static final void execSQL(SQLiteConnection sQLiteConnection, String str) {
        sQLiteConnection.getClass();
        SQLiteStatement prepare = sQLiteConnection.prepare(str);
        try {
            prepare.step();
            TuplesKt.closeFinally(prepare, null);
        } finally {
        }
    }

    public static final Name extractParameterNameFromFunctionTypeArgument(KotlinType kotlinType) {
        String str;
        AnnotationDescriptor findAnnotation = kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.parameterName);
        if (findAnnotation != null) {
            Object singleOrNull = CollectionsKt.singleOrNull(findAnnotation.getAllValueArguments().values());
            StringValue stringValue = singleOrNull instanceof StringValue ? (StringValue) singleOrNull : null;
            if (stringValue != null && (str = (String) stringValue.value) != null) {
                if (!Name.isValidIdentifier(str)) {
                    str = null;
                }
                if (str != null) {
                    return Name.identifier(str);
                }
            }
        }
        return null;
    }

    public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, UuidKt uuidKt, Object obj) {
        obj.getClass();
        KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(uuidKt, obj);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
        }
        KClass orCreateKotlinClass = Reflection.factory.getOrCreateKotlinClass(obj.getClass());
        KClass baseClass = abstractPolymorphicSerializer.getBaseClass();
        baseClass.getClass();
        String simpleName = orCreateKotlinClass.getSimpleName();
        if (simpleName == null) {
            simpleName = String.valueOf(orCreateKotlinClass);
        }
        kotlinx.serialization.internal.TuplesKt.throwSubtypeNotRegistered(simpleName, baseClass);
        throw null;
    }

    public static AutofillIdCompat getAutofillId(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new AutofillIdCompat(BitmapsKt.getAutofillId(view));
        }
        return null;
    }

    public static final List getContextReceiverTypesFromFunctionType(KotlinType kotlinType) {
        kotlinType.getClass();
        isBuiltinFunctionalType(kotlinType);
        int contextFunctionTypeParamsCount = contextFunctionTypeParamsCount(kotlinType);
        if (contextFunctionTypeParamsCount == 0) {
            return EmptyList.INSTANCE;
        }
        List subList = kotlinType.getArguments().subList(0, contextFunctionTypeParamsCount);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(subList, 10));
        Iterator it = subList.iterator();
        while (it.hasNext()) {
            KotlinType type = ((TypeProjectionBase) it.next()).getType();
            type.getClass();
            arrayList.add(type);
        }
        return arrayList;
    }

    public static final Drawable getDrawableCompat(Context context, int i) {
        Drawable drawable = TuplesKt.getDrawable(context, i);
        if (drawable != null) {
            return drawable;
        }
        ContextsKt$$ExternalSyntheticBUOutline0.m791m((Object) Animation.CC.m(i, "Invalid resource ID: "));
        return null;
    }

    public static final FunctionClassKind getFunctionalClassKind(ClassifierDescriptor classifierDescriptor) {
        if (!(classifierDescriptor instanceof ModuleAwareClassDescriptor) || !KotlinBuiltIns.isUnderKotlinPackage(classifierDescriptor)) {
            return null;
        }
        int i = DescriptorUtilsKt.$r8$clinit;
        FqNameUnsafe fqName = DescriptorUtils.getFqName(classifierDescriptor);
        fqName.getClass();
        if (!fqName.isSafe() || fqName.fqName.isEmpty()) {
            return null;
        }
        FunctionClassKind.Companion companion = FunctionClassKind.Companion;
        String asString = fqName.shortName().asString();
        asString.getClass();
        FqName parent = fqName.toSafe().parent();
        companion.getClass();
        FunctionClassKind.Companion.KindWithArity parseClassName = FunctionClassKind.Companion.parseClassName(asString, parent);
        if (parseClassName != null) {
            return parseClassName.kind;
        }
        return null;
    }

    public static final int getProgressionLastElement(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                int i4 = i2 % i3;
                if (i4 < 0) {
                    i4 += i3;
                }
                int i5 = i % i3;
                if (i5 < 0) {
                    i5 += i3;
                }
                int i6 = (i4 - i5) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
                return i2 - i6;
            }
        } else {
            if (i3 >= 0) {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("Step is zero.");
                return 0;
            }
            if (i > i2) {
                int i7 = -i3;
                int i8 = i % i7;
                if (i8 < 0) {
                    i8 += i7;
                }
                int i9 = i2 % i7;
                if (i9 < 0) {
                    i9 += i7;
                }
                int i10 = (i8 - i9) % i7;
                if (i10 < 0) {
                    i10 += i7;
                }
                return i10 + i2;
            }
        }
        return i2;
    }

    public static final MemberSignature getPropertySignature(ProtoBuf$Property protoBuf$Property, NameResolver nameResolver, Dispatcher$promoteAndExecute$Effects dispatcher$promoteAndExecute$Effects, boolean z, boolean z2, boolean z3) {
        nameResolver.getClass();
        GeneratedMessageLite.GeneratedExtension generatedExtension = JvmProtoBuf.propertySignature;
        generatedExtension.getClass();
        JvmProtoBuf.JvmPropertySignature jvmPropertySignature = (JvmProtoBuf.JvmPropertySignature) UuidKt.getExtensionOrNull(protoBuf$Property, generatedExtension);
        if (jvmPropertySignature != null) {
            if (z) {
                ExtensionRegistryLite extensionRegistryLite = JvmProtoBufUtil.EXTENSION_REGISTRY;
                JvmMemberSignature$Field jvmFieldSignature = JvmProtoBufUtil.getJvmFieldSignature(protoBuf$Property, nameResolver, dispatcher$promoteAndExecute$Effects, z3);
                if (jvmFieldSignature != null) {
                    return UnsignedKt.fromJvmMemberSignature(jvmFieldSignature);
                }
            } else if (z2 && (jvmPropertySignature.bitField0_ & 2) == 2) {
                JvmProtoBuf.JvmMethodSignature jvmMethodSignature = jvmPropertySignature.syntheticMethod_;
                jvmMethodSignature.getClass();
                return new MemberSignature(nameResolver.getString(jvmMethodSignature.name_).concat(nameResolver.getString(jvmMethodSignature.desc_)));
            }
        }
        return null;
    }

    public static final KotlinType getReceiverTypeFromFunctionType(KotlinType kotlinType) {
        kotlinType.getClass();
        isBuiltinFunctionalType(kotlinType);
        if (kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.extensionFunctionType) == null) {
            return null;
        }
        return ((TypeProjectionBase) kotlinType.getArguments().get(contextFunctionTypeParamsCount(kotlinType))).getType();
    }

    public static final long getSp(double d) {
        return pack((float) d, 4294967296L);
    }

    public static final List getValueParameterTypesFromFunctionType(KotlinType kotlinType) {
        kotlinType.getClass();
        isBuiltinFunctionalType(kotlinType);
        List arguments = kotlinType.getArguments();
        return arguments.subList(((!isBuiltinFunctionalType(kotlinType) || kotlinType.getAnnotations().findAnnotation(StandardNames.FqNames.extensionFunctionType) == null) ? 0 : 1) + contextFunctionTypeParamsCount(kotlinType), arguments.size() - 1);
    }

    public static String invoke(Check check, JavaMethodDescriptor javaMethodDescriptor) {
        if (check.check(javaMethodDescriptor)) {
            return null;
        }
        return check.getDescription();
    }

    public static final boolean isBuiltinFunctionalType(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        if (declarationDescriptor == null) {
            return false;
        }
        FunctionClassKind functionalClassKind = getFunctionalClassKind(declarationDescriptor);
        return functionalClassKind == FunctionClassKind.Function || functionalClassKind == FunctionClassKind.SuspendFunction;
    }

    public static final boolean isDecorative(EmittableImage emittableImage) {
        return true;
    }

    public static boolean isFromSource(MotionEvent motionEvent, int i) {
        return (motionEvent.getSource() & i) == i;
    }

    public static final boolean isSuspendFunctionType(KotlinType kotlinType) {
        kotlinType.getClass();
        ClassifierDescriptor declarationDescriptor = kotlinType.getConstructor().getDeclarationDescriptor();
        return (declarationDescriptor != null ? getFunctionalClassKind(declarationDescriptor) : null) == FunctionClassKind.SuspendFunction;
    }

    public static Lazy lazy(LazyThreadSafetyMode lazyThreadSafetyMode, Function0 function0) {
        UNINITIALIZED_VALUE uninitialized_value = UNINITIALIZED_VALUE.INSTANCE;
        lazyThreadSafetyMode.getClass();
        int i = LazyKt__LazyJVMKt$WhenMappings.$EnumSwitchMapping$0[lazyThreadSafetyMode.ordinal()];
        if (i == 1) {
            return new SynchronizedLazyImpl(function0);
        }
        if (i == 2) {
            SafePublicationLazyImpl safePublicationLazyImpl = new SafePublicationLazyImpl();
            safePublicationLazyImpl.initializer = function0;
            safePublicationLazyImpl._value = uninitialized_value;
            return safePublicationLazyImpl;
        }
        if (i != 3) {
            ContextsKt$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        UnsafeLazyImpl unsafeLazyImpl = new UnsafeLazyImpl();
        unsafeLazyImpl.initializer = function0;
        unsafeLazyImpl._value = uninitialized_value;
        return unsafeLazyImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List moveGroup(SlotWriter slotWriter, int i, SlotWriter slotWriter2, boolean z, boolean z2, boolean z3) {
        EmptyList emptyList;
        boolean z4;
        int i2;
        int i3;
        int groupSize = slotWriter.groupSize(i);
        int i4 = i + groupSize;
        int dataIndex = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i));
        int dataIndex2 = slotWriter.dataIndex(slotWriter.groups, slotWriter.groupIndexToAddress(i4));
        int i5 = dataIndex2 - dataIndex;
        boolean z5 = i >= 0 && (slotWriter.groups[(slotWriter.groupIndexToAddress(i) * 5) + 1] & 201326592) != 0;
        slotWriter2.insertGroups(groupSize);
        slotWriter2.insertSlots(i5, slotWriter2.currentGroup);
        if (slotWriter.groupGapStart < i4) {
            slotWriter.moveGroupGapTo(i4);
        }
        if (slotWriter.slotsGapStart < dataIndex2) {
            slotWriter.moveSlotGapTo(dataIndex2, i4);
        }
        int[] iArr = slotWriter2.groups;
        int i6 = slotWriter2.currentGroup;
        int i7 = i6 * 5;
        ArraysKt___ArraysKt.copyInto(i7, i * 5, i4 * 5, slotWriter.groups, iArr);
        Object[] objArr = slotWriter2.slots;
        int i8 = slotWriter2.currentSlot;
        System.arraycopy(slotWriter.slots, dataIndex, objArr, i8, i5);
        int i9 = slotWriter2.parent;
        iArr[i7 + 2] = i9;
        int i10 = i6 - i;
        int i11 = i6 + groupSize;
        int dataIndex3 = i8 - slotWriter2.dataIndex(iArr, i6);
        int i12 = slotWriter2.slotsGapOwner;
        int i13 = slotWriter2.slotsGapLen;
        int length = objArr.length;
        boolean z6 = z5;
        int i14 = i12;
        int i15 = i6;
        while (i15 < i11) {
            if (i15 != i6) {
                int i16 = (i15 * 5) + 2;
                iArr[i16] = iArr[i16] + i10;
            }
            int[] iArr2 = iArr;
            int dataIndex4 = slotWriter2.dataIndex(iArr, i15) + dataIndex3;
            if (i14 < i15) {
                i2 = i6;
                i3 = 0;
            } else {
                i2 = i6;
                i3 = slotWriter2.slotsGapStart;
            }
            iArr2[(i15 * 5) + 4] = SlotWriter.dataIndexToDataAnchor(dataIndex4, i3, i13, length);
            if (i15 == i14) {
                i14++;
            }
            i15++;
            i6 = i2;
            iArr = iArr2;
        }
        int[] iArr3 = iArr;
        slotWriter2.slotsGapOwner = i14;
        int locationOf = SlotTableKt.locationOf(slotWriter.anchors, i, slotWriter.getSize$runtime());
        int locationOf2 = SlotTableKt.locationOf(slotWriter.anchors, i4, slotWriter.getSize$runtime());
        if (locationOf < locationOf2) {
            ArrayList arrayList = slotWriter.anchors;
            ArrayList arrayList2 = new ArrayList(locationOf2 - locationOf);
            for (int i17 = locationOf; i17 < locationOf2; i17++) {
                GapAnchor gapAnchor = (GapAnchor) arrayList.get(i17);
                gapAnchor.location += i10;
                arrayList2.add(gapAnchor);
            }
            slotWriter2.anchors.addAll(SlotTableKt.locationOf(slotWriter2.anchors, slotWriter2.currentGroup, slotWriter2.getSize$runtime()), arrayList2);
            arrayList.subList(locationOf, locationOf2).clear();
            emptyList = arrayList2;
        } else {
            emptyList = EmptyList.INSTANCE;
        }
        if (!emptyList.isEmpty()) {
            HashMap hashMap = slotWriter.sourceInformationMap;
            HashMap hashMap2 = slotWriter2.sourceInformationMap;
            if (hashMap != null && hashMap2 != null) {
                int size = emptyList.size();
                for (int i18 = 0; i18 < size; i18++) {
                }
            }
        }
        int i19 = slotWriter2.parent;
        slotWriter2.sourceInformationOf$runtime(i9);
        int parent = slotWriter.parent(slotWriter.groups, i);
        if (!z3) {
            z4 = false;
        } else if (z) {
            boolean z7 = parent >= 0;
            if (z7) {
                slotWriter.startGroup();
                slotWriter.advanceBy(parent - slotWriter.currentGroup);
                slotWriter.startGroup();
            }
            slotWriter.advanceBy(i - slotWriter.currentGroup);
            boolean removeGroup = slotWriter.removeGroup();
            if (z7) {
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
                slotWriter.skipToGroupEnd();
                slotWriter.endGroup();
            }
            z4 = removeGroup;
        } else {
            boolean removeGroups = slotWriter.removeGroups(i, groupSize);
            slotWriter.removeSlots(dataIndex, i5, i - 1);
            z4 = removeGroups;
        }
        if (z4) {
            ComposerKt.composeImmediateRuntimeError("Unexpectedly removed anchors");
        }
        int i20 = slotWriter2.nodeCount;
        int i21 = iArr3[i7 + 1];
        slotWriter2.nodeCount = i20 + ((1073741824 & i21) != 0 ? 1 : i21 & 67108863);
        if (z2) {
            slotWriter2.currentGroup = i11;
            slotWriter2.currentSlot = i8 + i5;
        }
        if (z6) {
            slotWriter2.updateContainsMark(i9);
        }
        return emptyList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void nodesToPath(PathParser$PathDataNode[] pathParser$PathDataNodeArr, Path path) {
        int i;
        float[] fArr;
        int i2;
        PathParser$PathDataNode pathParser$PathDataNode;
        int i3;
        char c;
        float f;
        float f2;
        PathParser$PathDataNode pathParser$PathDataNode2;
        boolean z;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        PathParser$PathDataNode[] pathParser$PathDataNodeArr2 = pathParser$PathDataNodeArr;
        Path path2 = path;
        float[] fArr2 = new float[6];
        int length = pathParser$PathDataNodeArr2.length;
        int i4 = 0;
        int i5 = 0;
        char c2 = 'm';
        while (i5 < length) {
            PathParser$PathDataNode pathParser$PathDataNode3 = pathParser$PathDataNodeArr2[i5];
            char c3 = pathParser$PathDataNode3.mType;
            float[] fArr3 = pathParser$PathDataNode3.mParams;
            float f11 = fArr2[i4];
            float f12 = fArr2[1];
            float f13 = fArr2[2];
            float f14 = fArr2[3];
            float f15 = fArr2[4];
            int i6 = i4;
            float f16 = fArr2[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case Logger.NONE /* 99 */:
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path2.close();
                    path2.moveTo(f15, f16);
                    f11 = f15;
                    f13 = f11;
                    f12 = f16;
                    f14 = f12;
                default:
                    i = 2;
                    break;
            }
            float f17 = f15;
            float f18 = f16;
            float f19 = f11;
            float f20 = f12;
            int i7 = i6;
            while (i7 < fArr3.length) {
                if (c3 == 'A') {
                    fArr = fArr3;
                    i2 = i7;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    float f21 = f19;
                    float f22 = f20;
                    i3 = i5;
                    c = c3;
                    int i8 = i2 + 5;
                    int i9 = i2 + 6;
                    PathParser$PathDataNode.drawArc(path, f21, f22, fArr[i8], fArr[i9], fArr[i2], fArr[i2 + 1], fArr[i2 + 2], fArr[i2 + 3] != RecyclerView.DECELERATION_RATE ? 1 : i6, fArr[i2 + 4] != RecyclerView.DECELERATION_RATE ? 1 : i6);
                    f13 = fArr[i8];
                    f = fArr[i9];
                    f14 = f;
                    f2 = f13;
                } else if (c3 == 'C') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    int i10 = i2 + 2;
                    int i11 = i2 + 3;
                    int i12 = i2 + 4;
                    int i13 = i2 + 5;
                    path2.cubicTo(fArr[i2], fArr[i2 + 1], fArr[i10], fArr[i11], fArr[i12], fArr[i13]);
                    float f23 = fArr[i12];
                    float f24 = fArr[i13];
                    f13 = fArr[i10];
                    f14 = fArr[i11];
                    f = f24;
                    f2 = f23;
                } else if (c3 == 'H') {
                    fArr = fArr3;
                    i2 = i7;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    f = f20;
                    i3 = i5;
                    path2.lineTo(fArr[i2], f);
                    f2 = fArr[i2];
                } else if (c3 == 'Q') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    c = c3;
                    int i14 = i2 + 1;
                    int i15 = i2 + 2;
                    int i16 = i2 + 3;
                    path2.quadTo(fArr[i2], fArr[i14], fArr[i15], fArr[i16]);
                    float f25 = fArr[i2];
                    float f26 = fArr[i14];
                    float f27 = fArr[i15];
                    float f28 = fArr[i16];
                    f13 = f25;
                    f14 = f26;
                    f2 = f27;
                    f = f28;
                } else if (c3 == 'V') {
                    fArr = fArr3;
                    i2 = i7;
                    i3 = i5;
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    f2 = f19;
                    c = c3;
                    path2.lineTo(f2, fArr[i2]);
                    f = fArr[i2];
                } else if (c3 != 'a') {
                    if (c3 == 'c') {
                        fArr = fArr3;
                        i2 = i7;
                        int i17 = i2 + 2;
                        int i18 = i2 + 3;
                        int i19 = i2 + 4;
                        int i20 = i2 + 5;
                        path2.rCubicTo(fArr[i2], fArr[i2 + 1], fArr[i17], fArr[i18], fArr[i19], fArr[i20]);
                        float f29 = fArr[i17] + f19;
                        float f30 = fArr[i18] + f20;
                        f19 += fArr[i19];
                        f20 += fArr[i20];
                        f13 = f29;
                        f14 = f30;
                    } else if (c3 != 'h') {
                        if (c3 != 'q') {
                            if (c3 != 'v') {
                                if (c3 == 'L') {
                                    fArr = fArr3;
                                    i2 = i7;
                                    int i21 = i2 + 1;
                                    path2.lineTo(fArr[i2], fArr[i21]);
                                    f2 = fArr[i2];
                                    f = fArr[i21];
                                } else if (c3 == 'M') {
                                    fArr = fArr3;
                                    i2 = i7;
                                    f2 = fArr[i2];
                                    f = fArr[i2 + 1];
                                    if (i2 > 0) {
                                        path2.lineTo(f2, f);
                                    } else {
                                        path2.moveTo(f2, f);
                                        f17 = f2;
                                        f18 = f;
                                    }
                                } else if (c3 != 'S') {
                                    if (c3 == 'T') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                            f19 = (f19 * 2.0f) - f13;
                                            f20 = (f20 * 2.0f) - f14;
                                        }
                                        int i22 = i2 + 1;
                                        path2.quadTo(f19, f20, fArr[i2], fArr[i22]);
                                        f2 = fArr[i2];
                                        f = fArr[i22];
                                        pathParser$PathDataNode = pathParser$PathDataNode3;
                                        f13 = f19;
                                        f14 = f20;
                                    } else if (c3 == 'l') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        int i23 = i2 + 1;
                                        path2.rLineTo(fArr[i2], fArr[i23]);
                                        f19 += fArr[i2];
                                        f6 = fArr[i23];
                                    } else if (c3 == 'm') {
                                        fArr = fArr3;
                                        i2 = i7;
                                        float f31 = fArr[i2];
                                        f19 += f31;
                                        float f32 = fArr[i2 + 1];
                                        f20 += f32;
                                        if (i2 > 0) {
                                            path2.rLineTo(f31, f32);
                                        } else {
                                            path2.rMoveTo(f31, f32);
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f19;
                                            f17 = f2;
                                            f = f20;
                                            f18 = f;
                                        }
                                    } else if (c3 != 's') {
                                        if (c3 != 't') {
                                            fArr = fArr3;
                                            i2 = i7;
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f19;
                                        } else {
                                            if (c2 == 'q' || c2 == 't' || c2 == 'Q' || c2 == 'T') {
                                                f9 = f19 - f13;
                                                f10 = f20 - f14;
                                            } else {
                                                f10 = RecyclerView.DECELERATION_RATE;
                                                f9 = RecyclerView.DECELERATION_RATE;
                                            }
                                            int i24 = i7 + 1;
                                            path2.rQuadTo(f9, f10, fArr3[i7], fArr3[i24]);
                                            float f33 = f9 + f19;
                                            float f34 = f10 + f20;
                                            float f35 = f19 + fArr3[i7];
                                            f20 += fArr3[i24];
                                            f14 = f34;
                                            fArr = fArr3;
                                            i2 = i7;
                                            pathParser$PathDataNode = pathParser$PathDataNode3;
                                            f2 = f35;
                                            f13 = f33;
                                        }
                                        f = f20;
                                    } else {
                                        if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                            f7 = f20 - f14;
                                            f8 = f19 - f13;
                                        } else {
                                            f8 = RecyclerView.DECELERATION_RATE;
                                            f7 = RecyclerView.DECELERATION_RATE;
                                        }
                                        int i25 = i7;
                                        int i26 = i25 + 1;
                                        int i27 = i25 + 2;
                                        int i28 = i25 + 3;
                                        fArr = fArr3;
                                        i2 = i25;
                                        path2.rCubicTo(f8, f7, fArr3[i25], fArr3[i26], fArr3[i27], fArr3[i28]);
                                        f3 = fArr[i2] + f19;
                                        f4 = fArr[i26] + f20;
                                        f19 += fArr[i27];
                                        f5 = fArr[i28];
                                    }
                                    i3 = i5;
                                    c = c3;
                                } else {
                                    fArr = fArr3;
                                    i2 = i7;
                                    if (c2 == 'c' || c2 == 's' || c2 == 'C' || c2 == 'S') {
                                        f19 = (f19 * 2.0f) - f13;
                                        f20 = (f20 * 2.0f) - f14;
                                    }
                                    float f36 = f19;
                                    float f37 = f20;
                                    int i29 = i2 + 1;
                                    int i30 = i2 + 2;
                                    int i31 = i2 + 3;
                                    path2.cubicTo(f36, f37, fArr[i2], fArr[i29], fArr[i30], fArr[i31]);
                                    f13 = fArr[i2];
                                    f14 = fArr[i29];
                                    f2 = fArr[i30];
                                    f = fArr[i31];
                                }
                                i3 = i5;
                                pathParser$PathDataNode = pathParser$PathDataNode3;
                                c = c3;
                            } else {
                                fArr = fArr3;
                                i2 = i7;
                                path2.rLineTo(RecyclerView.DECELERATION_RATE, fArr[i2]);
                                f6 = fArr[i2];
                            }
                            f20 += f6;
                        } else {
                            fArr = fArr3;
                            i2 = i7;
                            int i32 = i2 + 1;
                            int i33 = i2 + 2;
                            int i34 = i2 + 3;
                            path2.rQuadTo(fArr[i2], fArr[i32], fArr[i33], fArr[i34]);
                            f3 = fArr[i2] + f19;
                            f4 = fArr[i32] + f20;
                            f19 += fArr[i33];
                            f5 = fArr[i34];
                        }
                        f20 += f5;
                        f13 = f3;
                        f14 = f4;
                    } else {
                        fArr = fArr3;
                        i2 = i7;
                        path2.rLineTo(fArr[i2], RecyclerView.DECELERATION_RATE);
                        f19 += fArr[i2];
                    }
                    pathParser$PathDataNode = pathParser$PathDataNode3;
                    f2 = f19;
                    f = f20;
                    i3 = i5;
                    c = c3;
                } else {
                    fArr = fArr3;
                    i2 = i7;
                    int i35 = i2 + 5;
                    float f38 = fArr[i35] + f19;
                    int i36 = i2 + 6;
                    float f39 = fArr[i36] + f20;
                    float f40 = fArr[i2];
                    float f41 = fArr[i2 + 1];
                    float f42 = fArr[i2 + 2];
                    if (fArr[i2 + 3] != RecyclerView.DECELERATION_RATE) {
                        pathParser$PathDataNode2 = pathParser$PathDataNode3;
                        z = 1;
                    } else {
                        pathParser$PathDataNode2 = pathParser$PathDataNode3;
                        z = i6;
                    }
                    pathParser$PathDataNode = pathParser$PathDataNode2;
                    float f43 = f19;
                    c = c3;
                    float f44 = f20;
                    i3 = i5;
                    PathParser$PathDataNode.drawArc(path, f43, f44, f38, f39, f40, f41, f42, z, fArr[i2 + 4] != RecyclerView.DECELERATION_RATE ? 1 : i6);
                    f2 = f43 + fArr[i35];
                    f = f44 + fArr[i36];
                    f13 = f2;
                    f14 = f;
                }
                i7 = i2 + i;
                path2 = path;
                pathParser$PathDataNode3 = pathParser$PathDataNode;
                c3 = c;
                i5 = i3;
                f19 = f2;
                f20 = f;
                c2 = c3;
                fArr3 = fArr;
            }
            fArr2[i6] = f19;
            fArr2[1] = f20;
            fArr2[2] = f13;
            fArr2[3] = f14;
            fArr2[4] = f17;
            fArr2[5] = f18;
            c2 = pathParser$PathDataNode3.mType;
            i5++;
            pathParser$PathDataNodeArr2 = pathParser$PathDataNodeArr;
            path2 = path;
            i4 = i6;
        }
    }

    public static final long pack(float f, long j) {
        long floatToRawIntBits = j | (Float.floatToRawIntBits(f) & 4294967295L);
        TextUnitType[] textUnitTypeArr = TextUnit.TextUnitTypes;
        return floatToRawIntBits;
    }

    public static PreferenceDataStoreSingletonDelegate preferencesDataStore$default(String str) {
        DefaultScheduler defaultScheduler = Dispatchers.Default;
        DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.INSTANCE;
        SupervisorJobImpl SupervisorJob$default = AwaitKt.SupervisorJob$default();
        defaultIoScheduler.getClass();
        return new PreferenceDataStoreSingletonDelegate(str, PreferenceDataStoreDelegateKt$preferencesDataStore$1.INSTANCE, AwaitKt.CoroutineScope(OperationKt.plus(defaultIoScheduler, SupervisorJob$default)));
    }

    public static Name propertyNameFromAccessorMethodName$default(Name name, String str, String str2, int i) {
        char charAt;
        char charAt2;
        Object obj;
        boolean z = (i & 4) != 0;
        if ((i & 8) != 0) {
            str2 = null;
        }
        if (!name.special) {
            String identifier = name.getIdentifier();
            if (StringsKt__StringsJVMKt.startsWith(identifier, str, false) && identifier.length() != str.length() && ('a' > (charAt = identifier.charAt(str.length())) || charAt >= '{')) {
                if (str2 != null) {
                    return Name.identifier(str2.concat(StringsKt.removePrefix(str, identifier)));
                }
                if (!z) {
                    return name;
                }
                String removePrefix = StringsKt.removePrefix(str, identifier);
                if (removePrefix.length() != 0 && ResultKt.isUpperCaseCharAt(0, removePrefix)) {
                    if (removePrefix.length() != 1 && ResultKt.isUpperCaseCharAt(1, removePrefix)) {
                        Iterator it = new IntRange(0, removePrefix.length() - 1, 1).iterator();
                        while (true) {
                            if (!((IntProgressionIterator) it).hasNext) {
                                obj = null;
                                break;
                            }
                            obj = ((IntIterator) it).next();
                            if (!ResultKt.isUpperCaseCharAt(((Number) obj).intValue(), removePrefix)) {
                                break;
                            }
                        }
                        Integer num = (Integer) obj;
                        if (num != null) {
                            int intValue = num.intValue() - 1;
                            removePrefix = ResultKt.toLowerCaseAsciiOnly(removePrefix.substring(0, intValue)).concat(removePrefix.substring(intValue));
                        } else {
                            removePrefix = ResultKt.toLowerCaseAsciiOnly(removePrefix);
                        }
                    } else if (removePrefix.length() != 0 && 'A' <= (charAt2 = removePrefix.charAt(0)) && charAt2 < '[') {
                        removePrefix = Character.toLowerCase(charAt2) + removePrefix.substring(1);
                    }
                }
                if (Name.isValidIdentifier(removePrefix)) {
                    return Name.identifier(removePrefix);
                }
            }
        }
        return null;
    }

    public static final void throwSQLiteException(int i, String str) {
        throw new SQLException(Animation.CC.m(i, "Error code: ") + ", message: ".concat(str));
    }

    public static final ExtractedText toExtractedText(TextFieldValue textFieldValue) {
        ExtractedText extractedText = new ExtractedText();
        String str = textFieldValue.annotatedString.text;
        extractedText.text = str;
        extractedText.startOffset = 0;
        extractedText.partialEndOffset = str.length();
        extractedText.partialStartOffset = -1;
        long j = textFieldValue.selection;
        extractedText.selectionStart = TextRange.m644getMinimpl(j);
        extractedText.selectionEnd = TextRange.m643getMaximpl(j);
        extractedText.flags = !StringsKt.contains$default(textFieldValue.annotatedString.text, '\n') ? 1 : 0;
        return extractedText;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object withTimerOrNull(androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0 r5, androidx.paging.PageFetcher$flow$1 r6, kotlin.coroutines.jvm.internal.ContinuationImpl r7) {
        /*
            boolean r0 = r7 instanceof androidx.glance.session.TimerScopeKt$withTimerOrNull$1
            if (r0 == 0) goto L13
            r0 = r7
            androidx.glance.session.TimerScopeKt$withTimerOrNull$1 r0 = (androidx.glance.session.TimerScopeKt$withTimerOrNull$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.glance.session.TimerScopeKt$withTimerOrNull$1 r0 = new androidx.glance.session.TimerScopeKt$withTimerOrNull$1
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.result
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2c
            androidx.paging.PageFetcher$flow$1 r6 = r0.L$0
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            return r7
        L2a:
            r5 = move-exception
            goto L48
        L2c:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0.m$1(r5)
            return r3
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            r0.L$0 = r6     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            r0.label = r4     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            androidx.paging.SingleRunner$runInIsolation$2 r7 = new androidx.paging.SingleRunner$runInIsolation$2     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            r2 = 20
            r7.<init>(r6, r5, r3, r2)     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            java.lang.Object r5 = kotlinx.coroutines.AwaitKt.coroutineScope(r7, r0)     // Catch: androidx.glance.session.TimeoutCancellationException -> L2a
            if (r5 != r1) goto L47
            return r1
        L47:
            return r5
        L48:
            int r7 = r5.block
            int r6 = r6.hashCode()
            if (r7 != r6) goto L51
            return r3
        L51:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: coil3.util.ContextsKt.withTimerOrNull(androidx.glance.session.TimeSource$Companion$$ExternalSyntheticLambda0, androidx.paging.PageFetcher$flow$1, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public static TypeSubstitution wrapWithCapturingSubstitution$default(TypeSubstitution typeSubstitution) {
        int i = 1;
        if (!(typeSubstitution instanceof IndexedParametersSubstitution)) {
            return new TypeSubstitution$replaceWithNonApproximating$1(typeSubstitution, i);
        }
        IndexedParametersSubstitution indexedParametersSubstitution = (IndexedParametersSubstitution) typeSubstitution;
        TypeParameterDescriptor[] typeParameterDescriptorArr = indexedParametersSubstitution.parameters;
        ArrayList zip = ArraysKt___ArraysKt.zip(indexedParametersSubstitution.arguments, typeParameterDescriptorArr);
        ArrayList arrayList = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(zip, 10));
        Iterator it = zip.iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            arrayList.add(createCapturedIfNeeded((TypeProjectionBase) pair.first, (TypeParameterDescriptor) pair.second));
        }
        return new IndexedParametersSubstitution(typeParameterDescriptorArr, (TypeProjectionBase[]) arrayList.toArray(new TypeProjectionBase[0]), true);
    }

    public boolean closeOptionsMenu() {
        return false;
    }

    public abstract boolean collapseActionView();

    public abstract void dispatchMenuVisibilityChanged(boolean z);

    public abstract void getCornerPath(ShapePath shapePath, float f, float f2);

    public abstract int getDisplayOptions();

    public abstract int getHeight();

    public abstract Context getThemedContext();

    public boolean invalidateOptionsMenu() {
        return false;
    }

    public abstract void onConfigurationChanged();

    public abstract boolean onKeyShortcut(int i, KeyEvent keyEvent);

    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    public boolean openOptionsMenu() {
        return false;
    }

    public abstract void setDefaultDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayHomeAsUpEnabled(boolean z);

    public abstract void setDisplayShowTitleEnabled(boolean z);

    public abstract void setElevation(float f);

    public abstract void setShowHideAnimationEnabled(boolean z);

    public abstract void setTitle();

    public abstract void setTitle(CharSequence charSequence);

    public abstract void setWindowTitle(CharSequence charSequence);

    public ActionMode startActionMode(CardView.AnonymousClass1 anonymousClass1) {
        return null;
    }

    public static final long getSp(int i) {
        return pack(i, 4294967296L);
    }

    public void onDestroy() {
    }

    public static final KSerializer findPolymorphicSerializer(AbstractPolymorphicSerializer abstractPolymorphicSerializer, CompositeDecoder compositeDecoder, String str) {
        KSerializer findPolymorphicSerializerOrNull = abstractPolymorphicSerializer.findPolymorphicSerializerOrNull(compositeDecoder, str);
        if (findPolymorphicSerializerOrNull != null) {
            return findPolymorphicSerializerOrNull;
        }
        kotlinx.serialization.internal.TuplesKt.throwSubtypeNotRegistered(str, abstractPolymorphicSerializer.getBaseClass());
        throw null;
    }

    public static SynchronizedLazyImpl lazy(Function0 function0) {
        function0.getClass();
        return new SynchronizedLazyImpl(function0);
    }

    public static final void NavHost(NavHostController navHostController, Object obj, Modifier modifier, androidx.compose.ui.Alignment alignment, Map map, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, GapComposer gapComposer, int i) {
        androidx.compose.ui.Alignment alignment2;
        Modifier modifier2;
        Map map2;
        androidx.compose.ui.Alignment alignment3;
        Map map3;
        Modifier modifier3;
        gapComposer.startRestartGroup(-1476019057);
        int i2 = i | (gapComposer.changedInstance(navHostController) ? 4 : 2) | (gapComposer.changedInstance(obj) ? 32 : 16) | 224640;
        int i3 = 6 | (gapComposer.changedInstance(function15) ? ' ' : (char) 16);
        if ((306783379 & i2) == 306783378 && (i3 & 19) == 18 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
            modifier3 = modifier;
            alignment3 = alignment;
            map3 = map;
        } else {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
                alignment2 = alignment;
                map2 = map;
            } else {
                alignment2 = Alignment.Companion.TopStart;
                modifier2 = Modifier.Companion.$$INSTANCE;
                map2 = EmptyMap.INSTANCE;
            }
            gapComposer.endDefaults();
            boolean changed = ((i3 & 112) == 32) | gapComposer.changed((Object) null) | gapComposer.changed(obj);
            Object rememberedValue = gapComposer.rememberedValue();
            if (changed || rememberedValue == Composer$Companion.Empty) {
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.impl._navigatorProvider, obj, map2);
                function15.invoke(navGraphBuilder);
                rememberedValue = navGraphBuilder.build();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            androidx.compose.ui.Alignment alignment4 = alignment2;
            NavHost(navHostController, (NavGraph) rememberedValue, modifier2, alignment4, function1, function12, function13, function14, gapComposer, (i2 & 8078) | 115040256);
            alignment3 = alignment4;
            map3 = map2;
            modifier3 = modifier2;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new NavHostKt$$ExternalSyntheticLambda13(navHostController, obj, modifier3, alignment3, map3, function1, function12, function13, function14, function15, i);
        }
    }

    public static final void NavHost(NavHostController navHostController, Modifier modifier, androidx.compose.ui.Alignment alignment, Function1 function1, Function1 function12, Function1 function13, Function1 function14, Function1 function15, GapComposer gapComposer, int i) {
        androidx.compose.ui.Alignment alignment2;
        Modifier modifier2;
        androidx.compose.ui.Alignment alignment3;
        gapComposer.startRestartGroup(1840250294);
        int i2 = i | (gapComposer.changedInstance(navHostController) ? 4 : 2) | 805334400;
        char c = gapComposer.changedInstance(function15) ? (char) 4 : (char) 2;
        if ((306783379 & i2) == 306783378 && (c & 3) == 2 && gapComposer.getSkipping()) {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            alignment3 = alignment;
        } else {
            gapComposer.startDefaults();
            if ((i & 1) != 0 && !gapComposer.getDefaultsInvalid()) {
                gapComposer.skipToGroupEnd();
                modifier2 = modifier;
                alignment2 = alignment;
            } else {
                alignment2 = Alignment.Companion.TopStart;
                modifier2 = Modifier.Companion.$$INSTANCE;
            }
            gapComposer.endDefaults();
            boolean z = (c & 14) == 4;
            Object rememberedValue = gapComposer.rememberedValue();
            if (z || rememberedValue == Composer$Companion.Empty) {
                NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navHostController.impl._navigatorProvider);
                function15.invoke(navGraphBuilder);
                rememberedValue = navGraphBuilder.build();
                gapComposer.updateRememberedValue(rememberedValue);
            }
            alignment3 = alignment2;
            NavHost(navHostController, (NavGraph) rememberedValue, modifier2, alignment3, function1, function12, function13, function14, gapComposer, (i2 & 8078) | 115040256);
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new HomeFragment$$ExternalSyntheticLambda5(navHostController, modifier2, alignment3, function1, function12, function13, function14, function15, i, 1);
        }
    }
}
