package org.jetbrains.compose.resources;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathParserKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.navigation.compose.NavHostKt$NavHost$29$1;
import kotlin.SynchronizedLazyImpl;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jsoup.internal.SoftPool;
import org.koin.java.KoinJavaComponent$$ExternalSyntheticLambda0;
import org.minidns.util.Base64;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class ImageResourcesKt {
    public static final SynchronizedLazyImpl emptyImageBitmap$delegate = new SynchronizedLazyImpl(new KoinJavaComponent$$ExternalSyntheticLambda0(3));
    public static final SynchronizedLazyImpl emptyImageVector$delegate = new SynchronizedLazyImpl(new KoinJavaComponent$$ExternalSyntheticLambda0(4));
    public static final SynchronizedLazyImpl emptySvgPainter$delegate = new SynchronizedLazyImpl(new KoinJavaComponent$$ExternalSyntheticLambda0(5));
    public static final SoftPool imageCache = new SoftPool();

    public static final Painter painterResource(DrawableResource drawableResource, Composer composer) {
        Painter bitmapPainter;
        DrawableResource drawableResource2;
        drawableResource.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startReplaceGroup(-1508925367);
        ProvidableCompositionLocal providableCompositionLocal = ResourceEnvironmentKt.LocalComposeEnvironment;
        ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(providableCompositionLocal)).getClass();
        ResourceEnvironment rememberEnvironment = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
        boolean changed = gapComposer.changed(drawableResource) | gapComposer.changed(rememberEnvironment);
        Object rememberedValue = gapComposer.rememberedValue();
        Object obj = Composer.Companion.Empty;
        if (changed || rememberedValue == obj) {
            rememberedValue = ResourceEnvironmentKt.getResourceItemByEnvironment(drawableResource, rememberEnvironment).path;
            gapComposer.updateRememberedValue(rememberedValue);
        }
        String str = (String) rememberedValue;
        Continuation continuation = null;
        if (StringsKt__StringsJVMKt.endsWith(str, ".xml", true)) {
            gapComposer.startReplaceGroup(-1267601485);
            DefaultAndroidResourceReader currentOrPreview = RangesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
            Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
            Object rememberedValue2 = gapComposer.rememberedValue();
            if (rememberedValue2 == obj) {
                rememberedValue2 = new KoinJavaComponent$$ExternalSyntheticLambda0(7);
                gapComposer.updateRememberedValue(rememberedValue2);
            }
            Function0 function0 = (Function0) rememberedValue2;
            boolean changed2 = gapComposer.changed(drawableResource) | gapComposer.changedInstance(currentOrPreview) | gapComposer.changed(density);
            Object rememberedValue3 = gapComposer.rememberedValue();
            if (changed2 || rememberedValue3 == obj) {
                Object imageResourcesKt$svgPainter$svgPainter$3$1 = new ImageResourcesKt$svgPainter$svgPainter$3$1(drawableResource, currentOrPreview, density, continuation, 1);
                drawableResource2 = drawableResource;
                gapComposer.updateRememberedValue(imageResourcesKt$svgPainter$svgPainter$3$1);
                rememberedValue3 = imageResourcesKt$svgPainter$svgPainter$3$1;
            } else {
                drawableResource2 = drawableResource;
            }
            bitmapPainter = PathParserKt.rememberVectorPainter((ImageVector) Base64.rememberResourceState(drawableResource2, currentOrPreview, density, function0, (Function2) rememberedValue3, gapComposer).getValue(), gapComposer);
            gapComposer.end(false);
        } else if (StringsKt__StringsJVMKt.endsWith(str, ".svg", true)) {
            gapComposer.startReplaceGroup(-1267490226);
            DefaultAndroidResourceReader currentOrPreview2 = RangesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
            Density density2 = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == obj) {
                rememberedValue4 = new KoinJavaComponent$$ExternalSyntheticLambda0(6);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function02 = (Function0) rememberedValue4;
            boolean changed3 = gapComposer.changed(drawableResource) | gapComposer.changedInstance(currentOrPreview2) | gapComposer.changed(density2);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue5 == obj) {
                Object imageResourcesKt$svgPainter$svgPainter$3$12 = new ImageResourcesKt$svgPainter$svgPainter$3$1(drawableResource, currentOrPreview2, density2, continuation, 0);
                gapComposer.updateRememberedValue(imageResourcesKt$svgPainter$svgPainter$3$12);
                rememberedValue5 = imageResourcesKt$svgPainter$svgPainter$3$12;
            }
            bitmapPainter = (Painter) Base64.rememberResourceState(drawableResource, currentOrPreview2, density2, function02, (Function2) rememberedValue5, gapComposer).getValue();
            gapComposer.end(false);
        } else {
            gapComposer.startReplaceGroup(-1267441060);
            DefaultAndroidResourceReader currentOrPreview3 = RangesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
            ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(providableCompositionLocal)).getClass();
            Object rememberEnvironment2 = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
            Object rememberedValue6 = gapComposer.rememberedValue();
            if (rememberedValue6 == obj) {
                rememberedValue6 = new KoinJavaComponent$$ExternalSyntheticLambda0(2);
                gapComposer.updateRememberedValue(rememberedValue6);
            }
            Function0 function03 = (Function0) rememberedValue6;
            boolean changed4 = gapComposer.changed(drawableResource) | gapComposer.changed(rememberEnvironment2) | gapComposer.changedInstance(currentOrPreview3);
            Object rememberedValue7 = gapComposer.rememberedValue();
            if (changed4 || rememberedValue7 == obj) {
                rememberedValue7 = new NavHostKt$NavHost$29$1(drawableResource, rememberEnvironment2, currentOrPreview3, (Continuation) null, 25);
                gapComposer.updateRememberedValue(rememberedValue7);
            }
            bitmapPainter = new BitmapPainter((ImageBitmap) Base64.rememberResourceState(drawableResource, currentOrPreview3, rememberEnvironment2, function03, (Function2) rememberedValue7, gapComposer).getValue());
            gapComposer.end(false);
        }
        gapComposer.end(false);
        return bitmapPainter;
    }
}
