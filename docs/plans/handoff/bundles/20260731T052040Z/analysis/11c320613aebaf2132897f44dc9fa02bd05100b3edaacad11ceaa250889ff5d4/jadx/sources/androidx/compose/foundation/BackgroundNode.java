package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Outline$Generic;
import androidx.compose.ui.graphics.Outline$Rectangle;
import androidx.compose.ui.graphics.Outline$Rounded;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.LayoutDirection;
import coil3.ComponentRegistry$Builder$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.Intrinsics;
import org.mozilla.javascript.Token;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class BackgroundNode extends Modifier.Node implements DrawModifierNode, ObserverModifierNode, SemanticsModifierNode {
    public long color;
    public LayoutDirection lastLayoutDirection;
    public Brush lastOutline;
    public Shape lastShape;
    public long lastSize;
    public Shape shape;
    public Brush tmpOutline;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setShape(semanticsPropertyReceiver, this.shape);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        Brush brush;
        LayoutNodeDrawScope layoutNodeDrawScope2;
        AndroidPath androidPath;
        LayoutNodeDrawScope layoutNodeDrawScope3 = layoutNodeDrawScope;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope3.canvasDrawScope;
        if (this.shape != Brush.RectangleShape) {
            if (Size.m206equalsimpl0(canvasDrawScope.drawContext.m729getSizeNHjbRc(), this.lastSize) && layoutNodeDrawScope3.getLayoutDirection() == this.lastLayoutDirection && Intrinsics.areEqual(this.lastShape, this.shape)) {
                brush = this.lastOutline;
                brush.getClass();
            } else {
                HitTestResultKt.observeReads(this, new ComponentRegistry$Builder$$ExternalSyntheticLambda0(this, layoutNodeDrawScope3, 2));
                brush = this.tmpOutline;
                this.tmpOutline = null;
            }
            this.lastOutline = brush;
            this.lastSize = canvasDrawScope.drawContext.m729getSizeNHjbRc();
            this.lastLayoutDirection = layoutNodeDrawScope3.getLayoutDirection();
            this.lastShape = this.shape;
            brush.getClass();
            if (!Color.m244equalsimpl0(this.color, Color.Unspecified)) {
                long j = this.color;
                boolean z = brush instanceof Outline$Rectangle;
                Fill fill = Fill.INSTANCE;
                if (z) {
                    Rect rect = ((Outline$Rectangle) brush).rect;
                    float f = rect.left;
                    float f2 = rect.top;
                    long floatToRawIntBits = (Float.floatToRawIntBits(f2) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
                    float f3 = rect.right - rect.left;
                    float f4 = rect.bottom - rect.top;
                    layoutNodeDrawScope2 = layoutNodeDrawScope;
                    layoutNodeDrawScope2.mo264drawRectnJ9OG0(j, floatToRawIntBits, (4294967295L & Float.floatToRawIntBits(f4)) | (Float.floatToRawIntBits(f3) << 32), fill, 3);
                } else {
                    layoutNodeDrawScope2 = layoutNodeDrawScope3;
                    if (brush instanceof Outline$Rounded) {
                        Outline$Rounded outline$Rounded = (Outline$Rounded) brush;
                        androidPath = outline$Rounded.roundRectPath;
                        if (androidPath == null) {
                            RoundRect roundRect = outline$Rounded.roundRect;
                            float f5 = roundRect.top;
                            float f6 = roundRect.left;
                            float intBitsToFloat = Float.intBitsToFloat((int) (roundRect.bottomLeftCornerRadius >> 32));
                            long floatToRawIntBits2 = (Float.floatToRawIntBits(f6) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L);
                            float f7 = roundRect.right - f6;
                            float f8 = roundRect.bottom - f5;
                            long floatToRawIntBits3 = (Float.floatToRawIntBits(f8) & 4294967295L) | (Float.floatToRawIntBits(f7) << 32);
                            long floatToRawIntBits4 = (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
                            int i = (int) (floatToRawIntBits2 >> 32);
                            int i2 = (int) (floatToRawIntBits2 & 4294967295L);
                            canvasDrawScope.drawParams.canvas.drawRoundRect(Float.intBitsToFloat(i), Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (floatToRawIntBits3 >> 32)) + Float.intBitsToFloat(i), Float.intBitsToFloat((int) (floatToRawIntBits3 & 4294967295L)) + Float.intBitsToFloat(i2), Float.intBitsToFloat((int) (floatToRawIntBits4 >> 32)), Float.intBitsToFloat((int) (floatToRawIntBits4 & 4294967295L)), CanvasDrawScope.m259configurePaint2qPWKa0$default(canvasDrawScope, j, fill, 3));
                        }
                    } else {
                        if (!(brush instanceof Outline$Generic)) {
                            DecodeUtils$$ExternalSyntheticBUOutline0.m();
                            return;
                        }
                        androidPath = ((Outline$Generic) brush).path;
                    }
                    layoutNodeDrawScope2.m325drawPathLG529CI(androidPath, j, fill);
                }
                layoutNodeDrawScope2.drawContent();
            }
        } else if (!Color.m244equalsimpl0(this.color, Color.Unspecified)) {
            Owner.CC.m367drawRectnJ9OG0$default(layoutNodeDrawScope, this.color, 0L, Token.ELSE);
            layoutNodeDrawScope3 = layoutNodeDrawScope;
        }
        layoutNodeDrawScope2 = layoutNodeDrawScope3;
        layoutNodeDrawScope2.drawContent();
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldClearDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final /* synthetic */ boolean getShouldMergeDescendantSemantics() {
        return false;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean isImportantForBounds() {
        return false;
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        this.lastSize = 9205357640488583168L;
        this.lastLayoutDirection = null;
        this.lastOutline = null;
        this.lastShape = null;
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }
}
