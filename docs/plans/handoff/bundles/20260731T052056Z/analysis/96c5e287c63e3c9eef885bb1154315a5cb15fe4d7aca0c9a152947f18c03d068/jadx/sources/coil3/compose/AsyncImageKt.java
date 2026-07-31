package coil3.compose;

import android.content.Context;
import android.os.Trace;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer$Companion;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.NeverEqualPolicy;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.AbsoluteAlignment;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.LayoutNode$Companion$Constructor$1;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import coil3.BitmapImage;
import coil3.DrawableImage;
import coil3.Extras;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.SingletonImageLoader;
import coil3.UriKt;
import coil3.compose.AsyncImagePainter;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.ContentPainterElement;
import coil3.compose.internal.SubcomposeContentPainterElement;
import coil3.compose.internal.UtilsKt;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda0;
import coil3.compose.internal.UtilsKt$$ExternalSyntheticLambda1;
import coil3.compose.internal.UtilsKt$UseMinConstraintsMeasurePolicy$1;
import coil3.request.ImageRequest;
import coil3.size.SizeResolver;
import com.google.accompanist.drawablepainter.DrawablePainter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.uuid.UuidKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class AsyncImageKt {
    public static final Extras.Key useExistingImageAsPlaceholderKey = new Extras.Key(Boolean.FALSE);

    /* renamed from: AsyncImage-10Xjiaw, reason: not valid java name */
    public static final void m772AsyncImage10Xjiaw(Object obj, Modifier modifier, GapComposer gapComposer) {
        m773AsyncImage76YX9Dk(new AsyncImageState(obj, (AsyncImageModelEqualityDelegate$Companion$Default$1) gapComposer.consume(LocalAsyncImageModelEqualityDelegateKt.LocalAsyncImageModelEqualityDelegate), SingletonImageLoader.get((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext))), null, modifier, AsyncImagePainter.DefaultTransform, null, Alignment.Companion.Center, ContentScale.Companion.Crop, gapComposer, 1572912, 0);
    }

    /* renamed from: AsyncImage-76YX9Dk, reason: not valid java name */
    public static final void m773AsyncImage76YX9Dk(AsyncImageState asyncImageState, String str, Modifier modifier, Function1 function1, Function1 function12, Alignment alignment, ContentScale contentScale, GapComposer gapComposer, int i, int i2) {
        int i3;
        Function1 function13;
        Function1 function14;
        Alignment alignment2;
        int i4;
        gapComposer.startRestartGroup(1236588022);
        if ((i & 6) == 0) {
            i3 = (gapComposer.changed(asyncImageState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            i3 |= gapComposer.changed(str) ? 32 : 16;
        }
        if ((i & 384) == 0) {
            i3 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            function13 = function1;
            i3 |= gapComposer.changedInstance(function13) ? 2048 : 1024;
        } else {
            function13 = function1;
        }
        if ((i & 24576) == 0) {
            function14 = function12;
            i3 |= gapComposer.changedInstance(function14) ? 16384 : 8192;
        } else {
            function14 = function12;
        }
        if ((196608 & i) == 0) {
            alignment2 = alignment;
            i3 |= gapComposer.changed(alignment2) ? 131072 : 65536;
        } else {
            alignment2 = alignment;
        }
        if ((1572864 & i) == 0) {
            i3 |= gapComposer.changed(contentScale) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= gapComposer.changed(1.0f) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= gapComposer.changed((Object) null) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i3 |= gapComposer.changed(1) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposer.changed(true) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if (gapComposer.shouldExecute(i3 & 1, ((306783379 & i3) == 306783378 && (i4 & 3) == 2) ? false : true)) {
            ImageRequest requestOfWithSizeResolver = UtilsKt.requestOfWithSizeResolver(asyncImageState.model, contentScale, gapComposer, (i3 >> 15) & 112);
            UtilsKt.validateRequest(requestOfWithSizeResolver);
            Modifier then = modifier.then(new ContentPainterElement(requestOfWithSizeResolver, asyncImageState.imageLoader, asyncImageState.modelEqualityDelegate, function13, function14, alignment2, contentScale, UtilsKt.previewHandler(gapComposer), str));
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, UtilsKt$UseMinConstraintsMeasurePolicy$1.INSTANCE, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(i5))) {
                Modifier.CC.m(i5, gapComposer, i5, composeUiNode$Companion$SetModifier$1);
            }
            gapComposer.end(true);
        } else {
            gapComposer.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new AsyncImageKt$$ExternalSyntheticLambda0(asyncImageState, str, modifier, function1, function12, alignment, contentScale, i, i2);
        }
    }

    /* renamed from: AsyncImage-x1rPTaM, reason: not valid java name */
    public static final void m774AsyncImagex1rPTaM(Object obj, String str, Modifier modifier, Painter painter, Painter painter2, Function1 function1, Function1 function12, ContentScale contentScale, GapComposer gapComposer, int i, int i2, int i3) {
        Painter painter3 = (i3 & 8) != 0 ? null : painter;
        Function1 function13 = (i3 & 64) != 0 ? null : function1;
        Function1 function14 = (i3 & 128) != 0 ? null : function12;
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        int i4 = i << 3;
        int i5 = (i & 126) | (i4 & 7168) | (i4 & 57344) | (i4 & 458752) | (i4 & 3670016) | (i4 & 29360128) | (i4 & 234881024) | (i4 & 1879048192);
        int i6 = i2 << 3;
        int i7 = (i6 & 458752) | ((i >> 27) & 14) | (i6 & 112) | (i6 & 896) | (i6 & 7168) | (i6 & 57344);
        int i8 = i5 >> 3;
        AsyncImageState asyncImageState = new AsyncImageState(obj, (AsyncImageModelEqualityDelegate$Companion$Default$1) gapComposer.consume(LocalAsyncImageModelEqualityDelegateKt.LocalAsyncImageModelEqualityDelegate), SingletonImageLoader.get((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)));
        int i9 = UtilsKt.$r8$clinit;
        Function1 utilsKt$$ExternalSyntheticLambda1 = (painter3 == null && painter2 == null && painter2 == null) ? AsyncImagePainter.DefaultTransform : new UtilsKt$$ExternalSyntheticLambda1(painter3, painter2, painter2, 0);
        int i10 = i7 << 15;
        m773AsyncImage76YX9Dk(asyncImageState, str, modifier, utilsKt$$ExternalSyntheticLambda1, (function13 == null && function14 == null) ? null : new UtilsKt$$ExternalSyntheticLambda0(function13, function14, 0), biasAlignment, contentScale, gapComposer, (i5 & 112) | (i8 & 896) | (i10 & 458752) | (i10 & 3670016) | (i10 & 29360128) | (i10 & 234881024) | (i10 & 1879048192), (i7 >> 15) & 14);
    }

    /* renamed from: SubcomposeAsyncImage-gl8XCv8, reason: not valid java name */
    public static final void m775SubcomposeAsyncImagegl8XCv8(final AsyncImageState asyncImageState, final String str, final Modifier modifier, final Function1 function1, final Function1 function12, final Alignment alignment, final ContentScale contentScale, final ComposableLambdaImpl composableLambdaImpl, GapComposer gapComposer, final int i, final int i2) {
        String str2;
        int i3;
        GapComposer gapComposer2;
        gapComposer.startRestartGroup(-205779950);
        int i4 = (gapComposer.changed(asyncImageState) ? 4 : 2) | i;
        if ((i & 48) == 0) {
            str2 = str;
            i4 |= gapComposer.changed(str2) ? 32 : 16;
        } else {
            str2 = str;
        }
        if ((i & 384) == 0) {
            i4 |= gapComposer.changed(modifier) ? 256 : 128;
        }
        if ((i & 3072) == 0) {
            i4 |= gapComposer.changedInstance(function1) ? 2048 : 1024;
        }
        int i5 = i4 | (gapComposer.changedInstance(function12) ? 16384 : 8192);
        if ((196608 & i) == 0) {
            i5 |= gapComposer.changed(alignment) ? 131072 : 65536;
        }
        if ((1572864 & i) == 0) {
            i5 |= gapComposer.changed(contentScale) ? 1048576 : 524288;
        }
        if ((12582912 & i) == 0) {
            i5 |= gapComposer.changed(1.0f) ? 8388608 : 4194304;
        }
        if ((100663296 & i) == 0) {
            i5 |= gapComposer.changed((Object) null) ? 67108864 : 33554432;
        }
        if ((805306368 & i) == 0) {
            i5 |= gapComposer.changed(1) ? 536870912 : 268435456;
        }
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposer.changed(true) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposer.changedInstance(composableLambdaImpl) ? 32 : 16;
        }
        int i6 = i3;
        if (gapComposer.shouldExecute(i5 & 1, ((306783379 & i5) == 306783378 && (i6 & 19) == 18) ? false : true)) {
            ImageRequest requestOfWithSizeResolver = UtilsKt.requestOfWithSizeResolver(asyncImageState.model, contentScale, gapComposer, (i5 >> 15) & 112);
            RealImageLoader realImageLoader = asyncImageState.imageLoader;
            int i7 = i5 >> 6;
            int i8 = i5 >> 12;
            AsyncImageModelEqualityDelegate$Companion$Default$1 asyncImageModelEqualityDelegate$Companion$Default$1 = (AsyncImageModelEqualityDelegate$Companion$Default$1) gapComposer.consume(LocalAsyncImageModelEqualityDelegateKt.LocalAsyncImageModelEqualityDelegate);
            gapComposer.startReplaceGroup(-1242991349);
            Trace.beginSection("rememberAsyncImagePainter");
            try {
                ImageRequest requestOf = UtilsKt.requestOf(requestOfWithSizeResolver, gapComposer);
                UtilsKt.validateRequest(requestOf);
                AsyncImagePainter.Input input = new AsyncImagePainter.Input(realImageLoader, requestOf, asyncImageModelEqualityDelegate$Companion$Default$1);
                Object rememberedValue = gapComposer.rememberedValue();
                NeverEqualPolicy neverEqualPolicy = Composer$Companion.Empty;
                if (rememberedValue == neverEqualPolicy) {
                    rememberedValue = new AsyncImagePainter(input);
                    gapComposer.updateRememberedValue(rememberedValue);
                }
                AsyncImagePainter asyncImagePainter = (AsyncImagePainter) rememberedValue;
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == neverEqualPolicy) {
                    rememberedValue2 = Updater.createCompositionCoroutineScope(gapComposer);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                asyncImagePainter.scope = (CoroutineScope) rememberedValue2;
                asyncImagePainter.transform = function1;
                asyncImagePainter.onState = function12;
                asyncImagePainter.contentScale = contentScale;
                asyncImagePainter.previewHandler = UtilsKt.previewHandler(gapComposer);
                asyncImagePainter.set_input$coil_compose_core(input);
                gapComposer.end(false);
                Trace.endSection();
                SizeResolver sizeResolver = requestOfWithSizeResolver.sizeResolver;
                if (sizeResolver instanceof ConstraintsSizeResolver) {
                    gapComposer.startReplaceGroup(-1470570430);
                    gapComposer2 = gapComposer;
                    OffsetKt.BoxWithConstraints(modifier, alignment, true, Expect_jvmKt.rememberComposableLambda(-374957172, new SubcomposeAsyncImageKt$$ExternalSyntheticLambda0(sizeResolver, composableLambdaImpl, asyncImagePainter, str, alignment, contentScale, 0), gapComposer2), gapComposer2, (i7 & 14) | 3456 | (i8 & 112), 0);
                    gapComposer2.end(false);
                } else {
                    gapComposer.startReplaceGroup(-1471259157);
                    MeasurePolicy maybeCachedBoxMeasurePolicy = BoxKt.maybeCachedBoxMeasurePolicy(alignment, true);
                    long j = gapComposer.compositeKeyHashCode;
                    int i9 = (int) (j ^ (j >>> 32));
                    PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
                    Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, modifier);
                    ComposeUiNode.Companion.getClass();
                    LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
                    gapComposer.startReusableNode();
                    if (gapComposer.inserting) {
                        gapComposer.createNode(layoutNode$Companion$Constructor$1);
                    } else {
                        gapComposer.useNode();
                    }
                    Updater.m327setimpl(gapComposer, maybeCachedBoxMeasurePolicy, ComposeUiNode.Companion.SetMeasurePolicy);
                    Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
                    ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
                    if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(i9))) {
                        Modifier.CC.m(i9, gapComposer, i9, composeUiNode$Companion$SetModifier$1);
                    }
                    Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
                    composableLambdaImpl.invoke(new RealSubcomposeAsyncImageScope(BoxScopeInstance.INSTANCE, asyncImagePainter, str2, alignment, contentScale), gapComposer, Integer.valueOf(i6 & 112));
                    gapComposer.end(true);
                    gapComposer.end(false);
                    gapComposer2 = gapComposer;
                }
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        } else {
            gapComposer2 = gapComposer;
            gapComposer2.skipToGroupEnd();
        }
        RecomposeScopeImpl endRestartGroup = gapComposer2.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AsyncImageKt.m775SubcomposeAsyncImagegl8XCv8(AsyncImageState.this, str, modifier, function1, function12, alignment, contentScale, composableLambdaImpl, (GapComposer) obj, Updater.updateChangedFlags(i | 1), Updater.updateChangedFlags(i2));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: SubcomposeAsyncImage-nc27qi8, reason: not valid java name */
    public static final void m776SubcomposeAsyncImagenc27qi8(ImageRequest imageRequest, String str, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, Function1 function1, GapComposer gapComposer, int i, int i2) {
        if ((i2 & 16) != 0) {
            composableLambdaImpl = null;
        }
        Function1 function12 = (i2 & 256) != 0 ? null : function1;
        BiasAlignment biasAlignment = Alignment.Companion.Center;
        int i3 = i << 3;
        int i4 = (i & 126) | (i3 & 7168) | (i3 & 458752) | 1572864;
        int i5 = i4 >> 3;
        AsyncImageState asyncImageState = new AsyncImageState(imageRequest, (AsyncImageModelEqualityDelegate$Companion$Default$1) gapComposer.consume(LocalAsyncImageModelEqualityDelegateKt.LocalAsyncImageModelEqualityDelegate), SingletonImageLoader.get((Context) gapComposer.consume(AndroidCompositionLocals_androidKt.LocalContext)));
        int i6 = UtilsKt.$r8$clinit;
        m775SubcomposeAsyncImagegl8XCv8(asyncImageState, str, modifier, AsyncImagePainter.DefaultTransform, function12 != null ? new UtilsKt$$ExternalSyntheticLambda0(null, function12, 0) : null, biasAlignment, ContentScale.Companion.Fit, new ComposableLambdaImpl(new SubcomposeAsyncImageKt$$ExternalSyntheticLambda2(0, composableLambdaImpl, composableLambdaImpl2), true, -1106738291), gapComposer, (i4 & 112) | (i5 & 896), 0);
    }

    public static final void SubcomposeAsyncImageContent(final RealSubcomposeAsyncImageScope realSubcomposeAsyncImageScope, Modifier modifier, Painter painter, String str, Alignment alignment, ContentScale contentScale, float f, boolean z, GapComposer gapComposer, final int i) {
        int i2;
        final Modifier modifier2;
        final Painter painter2;
        final String str2;
        final Alignment alignment2;
        final ContentScale contentScale2;
        final float f2;
        final boolean z2;
        Painter painter3;
        String str3;
        Alignment alignment3;
        Modifier modifier3;
        float f3;
        boolean z3;
        gapComposer.startRestartGroup(-1375825518);
        if ((i & 6) == 0) {
            i2 = (gapComposer.changed(realSubcomposeAsyncImageScope) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        int i3 = i2 | 48;
        if ((i & 384) == 0) {
            i3 = i2 | 176;
        }
        if ((i & 3072) == 0) {
            i3 |= 1024;
        }
        if ((i & 24576) == 0) {
            i3 |= 8192;
        }
        if ((196608 & i) == 0) {
            i3 |= 65536;
        }
        if ((1572864 & i) == 0) {
            i3 |= 524288;
        }
        if ((12582912 & i) == 0) {
            i3 |= 4194304;
        }
        if ((100663296 & i) == 0) {
            i3 |= 33554432;
        }
        if (gapComposer.shouldExecute(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposer.startDefaults();
            if ((i & 1) == 0 || gapComposer.getDefaultsInvalid()) {
                painter3 = realSubcomposeAsyncImageScope.painter;
                str3 = realSubcomposeAsyncImageScope.contentDescription;
                alignment3 = realSubcomposeAsyncImageScope.alignment;
                contentScale2 = realSubcomposeAsyncImageScope.contentScale;
                realSubcomposeAsyncImageScope.getClass();
                realSubcomposeAsyncImageScope.getClass();
                realSubcomposeAsyncImageScope.getClass();
                modifier3 = Modifier.Companion.$$INSTANCE;
                f3 = 1.0f;
                z3 = true;
            } else {
                gapComposer.skipToGroupEnd();
                modifier3 = modifier;
                painter3 = painter;
                str3 = str;
                alignment3 = alignment;
                contentScale2 = contentScale;
                f3 = f;
                z3 = z;
            }
            gapComposer.endDefaults();
            Modifier then = modifier3.then(new SubcomposeContentPainterElement(painter3, alignment3, contentScale2, f3, z3, str3));
            int i4 = UtilsKt.$r8$clinit;
            long j = gapComposer.compositeKeyHashCode;
            int i5 = (int) (j ^ (j >>> 32));
            Modifier materializeModifier = AbsoluteAlignment.materializeModifier(gapComposer, then);
            PersistentCompositionLocalHashMap currentCompositionLocalScope = gapComposer.currentCompositionLocalScope();
            ComposeUiNode.Companion.getClass();
            LayoutNode$Companion$Constructor$1 layoutNode$Companion$Constructor$1 = ComposeUiNode.Companion.Constructor;
            gapComposer.startReusableNode();
            if (gapComposer.inserting) {
                gapComposer.createNode(layoutNode$Companion$Constructor$1);
            } else {
                gapComposer.useNode();
            }
            Updater.m327setimpl(gapComposer, UtilsKt$UseMinConstraintsMeasurePolicy$1.INSTANCE, ComposeUiNode.Companion.SetMeasurePolicy);
            Updater.m327setimpl(gapComposer, currentCompositionLocalScope, ComposeUiNode.Companion.SetResolvedCompositionLocals);
            Updater.m327setimpl(gapComposer, materializeModifier, ComposeUiNode.Companion.SetModifier);
            ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1 = ComposeUiNode.Companion.SetCompositeKeyHash;
            if (gapComposer.inserting || !Intrinsics.areEqual(gapComposer.rememberedValue(), Integer.valueOf(i5))) {
                Modifier.CC.m(i5, gapComposer, i5, composeUiNode$Companion$SetModifier$1);
            }
            gapComposer.end(true);
            alignment2 = alignment3;
            str2 = str3;
            painter2 = painter3;
            modifier2 = modifier3;
            f2 = f3;
            z2 = z3;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
            painter2 = painter;
            str2 = str;
            alignment2 = alignment;
            contentScale2 = contentScale;
            f2 = f;
            z2 = z;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new Function2() { // from class: coil3.compose.SubcomposeAsyncImageKt$$ExternalSyntheticLambda3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AsyncImageKt.SubcomposeAsyncImageContent(RealSubcomposeAsyncImageScope.this, modifier2, painter2, str2, alignment2, contentScale2, f2, z2, (GapComposer) obj, Updater.updateChangedFlags(i | 1));
                    return Unit.INSTANCE;
                }
            };
        }
    }

    /* renamed from: asPainter-55t9-rM, reason: not valid java name */
    public static final Painter m777asPainter55t9rM(Image image, Context context) {
        return image instanceof BitmapImage ? UuidKt.m857BitmapPainterQZhYCtY$default(new AndroidImageBitmap(((BitmapImage) image).bitmap)) : image instanceof DrawableImage ? new DrawablePainter(UriKt.asDrawable(image, context.getResources()).mutate()) : new ImagePainter(image);
    }
}
