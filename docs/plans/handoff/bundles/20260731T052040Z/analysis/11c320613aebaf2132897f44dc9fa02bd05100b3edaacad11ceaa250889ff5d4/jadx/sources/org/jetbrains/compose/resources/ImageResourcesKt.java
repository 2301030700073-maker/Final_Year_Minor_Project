package org.jetbrains.compose.resources;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.GroupComponent;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathParserKt;
import androidx.compose.ui.graphics.vector.VectorComponent;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class ImageResourcesKt {
    public static final SynchronizedLazyImpl emptyImageBitmap$delegate = new SynchronizedLazyImpl(new ImageResourcesKt$$ExternalSyntheticLambda0(25));
    public static final SynchronizedLazyImpl emptyImageVector$delegate = new SynchronizedLazyImpl(new ImageResourcesKt$$ExternalSyntheticLambda0(26));
    public static final SynchronizedLazyImpl emptySvgPainter$delegate = new SynchronizedLazyImpl(new ImageResourcesKt$$ExternalSyntheticLambda0(27));
    public static final AsyncCache imageCache = new AsyncCache();

    public static final Painter painterResource(DrawableResource drawableResource, Composer composer) {
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
        int i = 0;
        if (!StringsKt__StringsJVMKt.endsWith(str, ".xml", true)) {
            if (StringsKt__StringsJVMKt.endsWith(str, ".svg", true)) {
                gapComposer.startReplaceGroup(-1267490226);
                ResourceReader currentOrPreview = StringResourcesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
                Density density = (Density) gapComposer.consume(CompositionLocalsKt.LocalDensity);
                Object rememberedValue2 = gapComposer.rememberedValue();
                if (rememberedValue2 == obj) {
                    rememberedValue2 = new ImageResourcesKt$$ExternalSyntheticLambda0(28);
                    gapComposer.updateRememberedValue(rememberedValue2);
                }
                Function0 function0 = (Function0) rememberedValue2;
                boolean changed2 = gapComposer.changed(drawableResource) | gapComposer.changedInstance(currentOrPreview) | gapComposer.changed(density);
                Object rememberedValue3 = gapComposer.rememberedValue();
                if (changed2 || rememberedValue3 == obj) {
                    rememberedValue3 = new ImageResourcesKt$svgPainter$svgPainter$3$1(drawableResource, currentOrPreview, density, null);
                    gapComposer.updateRememberedValue(rememberedValue3);
                }
                Painter painter = (Painter) StringResourcesKt.rememberResourceState(drawableResource, currentOrPreview, density, function0, (Function2) rememberedValue3, gapComposer).getValue();
                gapComposer.end(false);
                gapComposer.end(false);
                return painter;
            }
            gapComposer.startReplaceGroup(-1267441060);
            ResourceReader currentOrPreview2 = StringResourcesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
            ((ResourceEnvironmentKt$DefaultComposeEnvironment$1) gapComposer.consume(providableCompositionLocal)).getClass();
            ResourceEnvironment rememberEnvironment2 = ResourceEnvironmentKt$DefaultComposeEnvironment$1.rememberEnvironment(gapComposer);
            Object rememberedValue4 = gapComposer.rememberedValue();
            if (rememberedValue4 == obj) {
                rememberedValue4 = new ImageResourcesKt$$ExternalSyntheticLambda0(i);
                gapComposer.updateRememberedValue(rememberedValue4);
            }
            Function0 function02 = (Function0) rememberedValue4;
            boolean changed3 = gapComposer.changed(drawableResource) | gapComposer.changed(rememberEnvironment2) | gapComposer.changedInstance(currentOrPreview2);
            Object rememberedValue5 = gapComposer.rememberedValue();
            if (changed3 || rememberedValue5 == obj) {
                rememberedValue5 = new ImageResourcesKt$imageResource$imageBitmap$3$1(drawableResource, rememberEnvironment2, currentOrPreview2, null);
                gapComposer.updateRememberedValue(rememberedValue5);
            }
            BitmapPainter bitmapPainter = new BitmapPainter((AndroidImageBitmap) StringResourcesKt.rememberResourceState(drawableResource, currentOrPreview2, rememberEnvironment2, function02, (Function2) rememberedValue5, gapComposer).getValue());
            gapComposer.end(false);
            gapComposer.end(false);
            return bitmapPainter;
        }
        gapComposer.startReplaceGroup(-1267601485);
        ResourceReader currentOrPreview3 = StringResourcesKt.getCurrentOrPreview(ResourceReaderKt.LocalResourceReader, gapComposer);
        ProvidableCompositionLocal providableCompositionLocal2 = CompositionLocalsKt.LocalDensity;
        Density density2 = (Density) gapComposer.consume(providableCompositionLocal2);
        Object rememberedValue6 = gapComposer.rememberedValue();
        if (rememberedValue6 == obj) {
            rememberedValue6 = new ImageResourcesKt$$ExternalSyntheticLambda0(29);
            gapComposer.updateRememberedValue(rememberedValue6);
        }
        Function0 function03 = (Function0) rememberedValue6;
        boolean changed4 = gapComposer.changed(drawableResource) | gapComposer.changedInstance(currentOrPreview3) | gapComposer.changed(density2);
        Object rememberedValue7 = gapComposer.rememberedValue();
        if (changed4 || rememberedValue7 == obj) {
            rememberedValue7 = new ImageResourcesKt$vectorResource$imageVector$3$1(drawableResource, currentOrPreview3, density2, null);
            gapComposer.updateRememberedValue(rememberedValue7);
        }
        ImageVector imageVector = (ImageVector) StringResourcesKt.rememberResourceState(drawableResource, currentOrPreview3, density2, function03, (Function2) rememberedValue7, gapComposer).getValue();
        Density density3 = (Density) gapComposer.consume(providableCompositionLocal2);
        float f = imageVector.genId;
        boolean changed5 = gapComposer.changed((Float.floatToRawIntBits(density3.getDensity()) & 4294967295L) | (Float.floatToRawIntBits(f) << 32));
        Object rememberedValue8 = gapComposer.rememberedValue();
        if (changed5 || rememberedValue8 == obj) {
            GroupComponent groupComponent = new GroupComponent();
            PathParserKt.createGroupComponent(groupComponent, imageVector.root);
            float f2 = imageVector.defaultWidth;
            float f3 = imageVector.defaultHeight;
            long floatToRawIntBits = (Float.floatToRawIntBits(density3.mo63toPx0680j_4(f2)) << 32) | (Float.floatToRawIntBits(density3.mo63toPx0680j_4(f3)) & 4294967295L);
            float f4 = imageVector.viewportWidth;
            float f5 = imageVector.viewportHeight;
            if (Float.isNaN(f4)) {
                f4 = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
            }
            if (Float.isNaN(f5)) {
                f5 = Float.intBitsToFloat((int) (floatToRawIntBits & 4294967295L));
            }
            long floatToRawIntBits2 = (Float.floatToRawIntBits(f4) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
            VectorPainter vectorPainter = new VectorPainter(groupComponent);
            String str2 = imageVector.name;
            long j = imageVector.tintColor;
            BlendModeColorFilter blendModeColorFilter = j != 16 ? new BlendModeColorFilter(j, imageVector.tintBlendMode) : null;
            boolean z = imageVector.autoMirror;
            vectorPainter.size$delegate.setValue(new Size(floatToRawIntBits));
            vectorPainter.autoMirror$delegate.setValue(Boolean.valueOf(z));
            VectorComponent vectorComponent = vectorPainter.vector;
            vectorComponent.intrinsicColorFilter$delegate.setValue(blendModeColorFilter);
            vectorComponent.viewportSize$delegate.setValue(new Size(floatToRawIntBits2));
            vectorComponent.name = str2;
            gapComposer.updateRememberedValue(vectorPainter);
            rememberedValue8 = vectorPainter;
        }
        VectorPainter vectorPainter2 = (VectorPainter) rememberedValue8;
        gapComposer.end(false);
        gapComposer.end(false);
        return vectorPainter2;
    }
}
