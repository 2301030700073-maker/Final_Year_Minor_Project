package com.skydoves.landscapist.crossfade;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.ArcSplineKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.AndroidPaint;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ColorMatrixColorFilter;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.core.view.MenuHostHelper;
import kotlinx.coroutines.JobKt;
import org.slf4j.helpers.Util;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FadeOutEffectNode extends Modifier.Node implements DrawModifierNode {
    public int durationMs;
    public MutableState key;
    public final Animatable alpha = ArcSplineKt.Animatable$default(1.0f);
    public final Animatable brightness = ArcSplineKt.Animatable$default(1.0f);
    public final Animatable saturation = ArcSplineKt.Animatable$default(1.0f);
    public final float[] colorMatrix = ColorKt.m491constructorimpl$default();
    public final AndroidPaint paint = ColorKt.Paint();

    public FadeOutEffectNode(MutableState mutableState, int i) {
        this.key = mutableState;
        this.durationMs = i;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        float floatValue = ((Number) this.alpha.getValue()).floatValue();
        float floatValue2 = ((Number) this.brightness.getValue()).floatValue();
        float floatValue3 = ((Number) this.saturation.getValue()).floatValue();
        if (floatValue > 0.0f) {
            float[] fArr = this.colorMatrix;
            fArr.getClass();
            float f = (1.0f - floatValue2) * 255.0f;
            fArr[4] = f;
            fArr[9] = f;
            fArr[14] = f;
            CrossfadeWithEffectKt.m968updateSaturationRaGpIIw(fArr, floatValue3);
            ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(new android.graphics.ColorMatrixColorFilter(fArr));
            colorMatrixColorFilter.colorMatrix = fArr;
            AndroidPaint androidPaint = this.paint;
            androidPaint.setColorFilter(colorMatrixColorFilter);
            androidPaint.setAlpha(floatValue);
            MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
            MenuHostHelper menuHostHelper2 = canvasDrawScope.drawContext;
            menuHostHelper.getCanvas().saveLayer(Util.m1090Recttz77jQw(0L, menuHostHelper2.m795getSizeNHjbRc()), androidPaint);
            layoutNodeDrawScope.drawContent();
            menuHostHelper2.getCanvas().restore();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        JobKt.launch$default(getCoroutineScope(), null, null, new FadeOutEffectNode$onAttach$1(this, null, 0), 3);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* bridge */ void onMeasureResultChanged() {
    }
}
