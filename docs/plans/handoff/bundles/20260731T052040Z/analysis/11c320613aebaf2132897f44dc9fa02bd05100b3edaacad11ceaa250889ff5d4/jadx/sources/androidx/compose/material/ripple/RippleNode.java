package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.work.Worker$$ExternalSyntheticLambda0;
import coil3.decode.DecodeUtils$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.math.MathKt;
import kotlinx.coroutines.JobKt;
import okhttp3.Cookie;
import org.acra.util.ProcessFinisher;
import org.jsoup.Jsoup;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public abstract class RippleNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, DrawModifierNode, LayoutAwareModifierNode {
    public final boolean bounded;
    public final PopupMenu$1 color;
    public boolean hasValidSize;
    public final InteractionSource interactionSource;
    public final float radius;
    public final DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 rippleAlpha;
    public StateLayer stateLayer;
    public float targetRadius;
    public long rippleSize = 0;
    public final MutableObjectList pendingInteractions = new MutableObjectList();

    public RippleNode(InteractionSource interactionSource, boolean z, float f, PopupMenu$1 popupMenu$1, DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0) {
        this.interactionSource = interactionSource;
        this.bounded = z;
        this.radius = f;
        this.color = popupMenu$1;
        this.rippleAlpha = delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        long Color;
        CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.canvasDrawScope;
        layoutNodeDrawScope.drawContent();
        StateLayer stateLayer = this.stateLayer;
        if (stateLayer != null) {
            float f = this.targetRadius;
            long m2invoke0d7_KjU = this.color.m2invoke0d7_KjU();
            float floatValue = ((Number) stateLayer.animatedAlpha.getValue()).floatValue();
            if (floatValue > 0.0f) {
                Color = Brush.Color(Color.m249getRedimpl(m2invoke0d7_KjU), Color.m248getGreenimpl(m2invoke0d7_KjU), Color.m246getBlueimpl(m2invoke0d7_KjU), floatValue, Color.m247getColorSpaceimpl(m2invoke0d7_KjU));
                if (stateLayer.bounded) {
                    float intBitsToFloat = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo266getSizeNHjbRc() >> 32));
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo266getSizeNHjbRc() & 4294967295L));
                    ProcessFinisher processFinisher = canvasDrawScope.drawContext;
                    long m729getSizeNHjbRc = processFinisher.m729getSizeNHjbRc();
                    processFinisher.getCanvas().save();
                    try {
                        ((ProcessFinisher) ((PopupMenu$1) processFinisher.context).this$0).getCanvas().mo211clipRectN_I0leg(0.0f, 0.0f, intBitsToFloat, intBitsToFloat2, 1);
                        Owner.CC.m364drawCircleVaOC9Bg$default(layoutNodeDrawScope, Color, f);
                    } finally {
                        processFinisher.getCanvas().restore();
                        processFinisher.m730setSizeuvyYCjk(m729getSizeNHjbRc);
                    }
                } else {
                    Owner.CC.m364drawCircleVaOC9Bg$default(layoutNodeDrawScope, Color, f);
                }
            }
        }
        AndroidRippleNode androidRippleNode = (AndroidRippleNode) this;
        Canvas canvas = canvasDrawScope.drawContext.getCanvas();
        RippleHostView rippleHostView = androidRippleNode.rippleHostView;
        if (rippleHostView != null) {
            long j = androidRippleNode.rippleSize;
            int roundToInt = MathKt.roundToInt(androidRippleNode.targetRadius);
            long m2invoke0d7_KjU2 = androidRippleNode.color.m2invoke0d7_KjU();
            androidRippleNode.rippleAlpha.invoke();
            rippleHostView.m125setRipplePropertiesbiQXAtU(roundToInt, j, m2invoke0d7_KjU2);
            rippleHostView.draw(AndroidCanvas_androidKt.getNativeCanvas(canvas));
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean getShouldAutoInvalidate() {
        return false;
    }

    public final void handlePressInteraction(PressInteraction pressInteraction) {
        RippleHostView rippleHostView;
        if (!(pressInteraction instanceof PressInteraction.Press)) {
            if (pressInteraction instanceof PressInteraction.Release) {
                RippleHostView rippleHostView2 = ((AndroidRippleNode) this).rippleHostView;
                if (rippleHostView2 != null) {
                    rippleHostView2.removeRipple();
                    return;
                }
                return;
            }
            if (!(pressInteraction instanceof PressInteraction.Cancel) || (rippleHostView = ((AndroidRippleNode) this).rippleHostView) == null) {
                return;
            }
            rippleHostView.removeRipple();
            return;
        }
        PressInteraction.Press press = (PressInteraction.Press) pressInteraction;
        long j = this.rippleSize;
        float f = this.targetRadius;
        AndroidRippleNode androidRippleNode = (AndroidRippleNode) this;
        RippleContainer rippleContainer = androidRippleNode.rippleContainer;
        if (rippleContainer == null) {
            Object obj = (View) HitTestResultKt.currentValueOf(androidRippleNode, AndroidCompositionLocals_androidKt.LocalView);
            while (!(obj instanceof ViewGroup)) {
                Object parent = ((View) obj).getParent();
                if (!(parent instanceof View)) {
                    DecodeUtils$$ExternalSyntheticBUOutline0.m$1(obj, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?", "Couldn't find a valid parent for ");
                    return;
                }
                obj = parent;
            }
            ViewGroup viewGroup = (ViewGroup) obj;
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    RippleContainer rippleContainer2 = new RippleContainer(viewGroup.getContext());
                    viewGroup.addView(rippleContainer2);
                    rippleContainer = rippleContainer2;
                    break;
                } else {
                    View childAt = viewGroup.getChildAt(i);
                    if (childAt instanceof RippleContainer) {
                        rippleContainer = (RippleContainer) childAt;
                        break;
                    }
                    i++;
                }
            }
            androidRippleNode.rippleContainer = rippleContainer;
        }
        ArrayList arrayList = rippleContainer.rippleHosts;
        CardView.AnonymousClass1 anonymousClass1 = rippleContainer.rippleHostMap;
        LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass1.mCardBackground;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) anonymousClass1.mCardBackground;
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) anonymousClass1.this$0;
        RippleHostView rippleHostView3 = (RippleHostView) linkedHashMap.get(androidRippleNode);
        if (rippleHostView3 == null) {
            ArrayList arrayList2 = rippleContainer.unusedRippleHosts;
            arrayList2.getClass();
            rippleHostView3 = (RippleHostView) (arrayList2.isEmpty() ? null : arrayList2.remove(0));
            if (rippleHostView3 == null) {
                if (rippleContainer.nextHostIndex > Jsoup.getLastIndex(arrayList)) {
                    rippleHostView3 = new RippleHostView(rippleContainer.getContext());
                    rippleContainer.addView(rippleHostView3);
                    arrayList.add(rippleHostView3);
                } else {
                    rippleHostView3 = (RippleHostView) arrayList.get(rippleContainer.nextHostIndex);
                    AndroidRippleNode androidRippleNode2 = (AndroidRippleNode) linkedHashMap3.get(rippleHostView3);
                    if (androidRippleNode2 != null) {
                        androidRippleNode2.rippleHostView = null;
                        HitTestResultKt.invalidateDraw(androidRippleNode2);
                        RippleHostView rippleHostView4 = (RippleHostView) linkedHashMap2.get(androidRippleNode2);
                        if (rippleHostView4 != null) {
                        }
                        linkedHashMap2.remove(androidRippleNode2);
                        rippleHostView3.disposeRipple();
                    }
                }
                int i2 = rippleContainer.nextHostIndex;
                if (i2 < rippleContainer.MaxRippleHosts - 1) {
                    rippleContainer.nextHostIndex = i2 + 1;
                } else {
                    rippleContainer.nextHostIndex = 0;
                }
            }
            linkedHashMap2.put(androidRippleNode, rippleHostView3);
            linkedHashMap3.put(rippleHostView3, androidRippleNode);
        }
        RippleHostView rippleHostView5 = rippleHostView3;
        int roundToInt = MathKt.roundToInt(f);
        long m2invoke0d7_KjU = androidRippleNode.color.m2invoke0d7_KjU();
        androidRippleNode.rippleAlpha.invoke();
        rippleHostView5.m124addRippleKOepWvA(press, androidRippleNode.bounded, j, roundToInt, m2invoke0d7_KjU, new Worker$$ExternalSyntheticLambda0(androidRippleNode, 5));
        androidRippleNode.rippleHostView = rippleHostView5;
        HitTestResultKt.invalidateDraw(androidRippleNode);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        JobKt.launch$default(getCoroutineScope(), null, null, new RippleNode$onAttach$1(this, null), 3);
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo40onRemeasuredozmzZPI(long j) {
        float mo63toPx0680j_4;
        this.hasValidSize = true;
        Density density = HitTestResultKt.requireLayoutNode(this).density;
        this.rippleSize = Cookie.Companion.m708toSizeozmzZPI(j);
        float f = this.radius;
        if (Float.isNaN(f)) {
            long j2 = this.rippleSize;
            float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L));
            mo63toPx0680j_4 = Offset.m197getDistanceimpl((Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32)) / 2.0f;
            if (this.bounded) {
                mo63toPx0680j_4 += density.mo63toPx0680j_4(10.0f);
            }
        } else {
            mo63toPx0680j_4 = density.mo63toPx0680j_4(f);
        }
        this.targetRadius = mo63toPx0680j_4;
        MutableObjectList mutableObjectList = this.pendingInteractions;
        Object[] objArr = mutableObjectList.content;
        int i = mutableObjectList._size;
        for (int i2 = 0; i2 < i; i2++) {
            handlePressInteraction((PressInteraction) objArr[i2]);
        }
        mutableObjectList.clear();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final /* synthetic */ void onMeasureResultChanged() {
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final /* synthetic */ void onPlaced(LayoutCoordinates layoutCoordinates) {
    }
}
