package androidx.compose.material.ripple;

import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticLambda0;
import androidx.camera.core.impl.Config;
import androidx.camera.view.PreviewView;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.interaction.MutableInteractionSourceImpl;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.material3.DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0;
import androidx.compose.material3.RippleNodeFactory$create$colorProducer$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.core.view.MenuHostHelper;
import androidx.room.util.DBUtil$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.coroutines.Continuation;
import kotlin.math.MathKt;
import kotlinx.coroutines.JobKt;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AndroidRippleNode extends Modifier.Node implements CompositionLocalConsumerModifierNode, DrawModifierNode, LayoutAwareModifierNode {
    public final boolean bounded;
    public final RippleNodeFactory$create$colorProducer$1 color;
    public boolean hasValidSize;
    public final MutableInteractionSourceImpl interactionSource;
    public final float radius;
    public final DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 rippleAlpha;
    public RippleContainer rippleContainer;
    public RippleHostView rippleHostView;
    public StateLayer stateLayer;
    public float targetRadius;
    public long rippleSize = 0;
    public final MutableObjectList pendingInteractions = new MutableObjectList();

    public AndroidRippleNode(MutableInteractionSourceImpl mutableInteractionSourceImpl, boolean z, float f, RippleNodeFactory$create$colorProducer$1 rippleNodeFactory$create$colorProducer$1, DelegatingThemeAwareRippleNode$$ExternalSyntheticLambda0 delegatingThemeAwareRippleNode$$ExternalSyntheticLambda0) {
        this.interactionSource = mutableInteractionSourceImpl;
        this.bounded = z;
        this.radius = f;
        this.color = rippleNodeFactory$create$colorProducer$1;
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
            long mo356invoke0d7_KjU = this.color.mo356invoke0d7_KjU();
            float floatValue = ((Number) ((Animatable) stateLayer.animatedAlpha).getValue()).floatValue();
            if (floatValue > 0.0f) {
                Color = ColorKt.Color(Color.m487getRedimpl(mo356invoke0d7_KjU), Color.m486getGreenimpl(mo356invoke0d7_KjU), Color.m484getBlueimpl(mo356invoke0d7_KjU), floatValue, Color.m485getColorSpaceimpl(mo356invoke0d7_KjU));
                if (stateLayer.bounded) {
                    float intBitsToFloat = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() >> 32));
                    float intBitsToFloat2 = Float.intBitsToFloat((int) (layoutNodeDrawScope.mo534getSizeNHjbRc() & 4294967295L));
                    MenuHostHelper menuHostHelper = canvasDrawScope.drawContext;
                    long m795getSizeNHjbRc = menuHostHelper.m795getSizeNHjbRc();
                    menuHostHelper.getCanvas().save();
                    try {
                        ((MenuHostHelper) ((PreviewView.AnonymousClass1) menuHostHelper.mOnInvalidateMenuCallback).this$0).getCanvas().mo454clipRectN_I0leg(0.0f, 0.0f, intBitsToFloat, intBitsToFloat2, 1);
                        Modifier.CC.m397drawCircleVaOC9Bg$default(layoutNodeDrawScope, Color, f, 0L, null, 124);
                    } finally {
                        Config.CC.m(menuHostHelper, m795getSizeNHjbRc);
                    }
                } else {
                    Modifier.CC.m397drawCircleVaOC9Bg$default(layoutNodeDrawScope, Color, f, 0L, null, 124);
                }
            }
        }
        Canvas canvas = canvasDrawScope.drawContext.getCanvas();
        RippleHostView rippleHostView = this.rippleHostView;
        if (rippleHostView != null) {
            long j = this.rippleSize;
            int roundToInt = MathKt.roundToInt(this.targetRadius);
            long mo356invoke0d7_KjU2 = this.color.mo356invoke0d7_KjU();
            this.rippleAlpha.invoke();
            rippleHostView.m315setRipplePropertiesbiQXAtU(roundToInt, j, mo356invoke0d7_KjU2);
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
                RippleHostView rippleHostView2 = this.rippleHostView;
                if (rippleHostView2 != null) {
                    rippleHostView2.removeRipple();
                    return;
                }
                return;
            }
            if (!(pressInteraction instanceof PressInteraction.Cancel) || (rippleHostView = this.rippleHostView) == null) {
                return;
            }
            rippleHostView.removeRipple();
            return;
        }
        PressInteraction.Press press = (PressInteraction.Press) pressInteraction;
        long j = this.rippleSize;
        float f = this.targetRadius;
        RippleContainer rippleContainer = this.rippleContainer;
        if (rippleContainer == null) {
            Object obj = (View) HitTestResultKt.currentValueOf(this, AndroidCompositionLocals_androidKt.LocalView);
            while (!(obj instanceof ViewGroup)) {
                Object parent = ((View) obj).getParent();
                if (!(parent instanceof View)) {
                    DBUtil$$ExternalSyntheticBUOutline0.m(obj, ". Are you overriding LocalView and providing a View that is not attached to the view hierarchy?", "Couldn't find a valid parent for ");
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
            this.rippleContainer = rippleContainer;
        }
        ArrayList arrayList = rippleContainer.rippleHosts;
        CardView.AnonymousClass1 anonymousClass1 = rippleContainer.rippleHostMap;
        LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass1.mCardBackground;
        LinkedHashMap linkedHashMap2 = (LinkedHashMap) anonymousClass1.mCardBackground;
        LinkedHashMap linkedHashMap3 = (LinkedHashMap) anonymousClass1.this$0;
        RippleHostView rippleHostView3 = (RippleHostView) linkedHashMap.get(this);
        if (rippleHostView3 == null) {
            ArrayList arrayList2 = rippleContainer.unusedRippleHosts;
            arrayList2.getClass();
            rippleHostView3 = (RippleHostView) (arrayList2.isEmpty() ? null : arrayList2.remove(0));
            if (rippleHostView3 == null) {
                if (rippleContainer.nextHostIndex > IntOffsetKt.getLastIndex(arrayList)) {
                    rippleHostView3 = new RippleHostView(rippleContainer.getContext());
                    rippleContainer.addView(rippleHostView3);
                    arrayList.add(rippleHostView3);
                } else {
                    rippleHostView3 = (RippleHostView) arrayList.get(rippleContainer.nextHostIndex);
                    AndroidRippleNode androidRippleNode = (AndroidRippleNode) linkedHashMap3.get(rippleHostView3);
                    if (androidRippleNode != null) {
                        androidRippleNode.rippleHostView = null;
                        HitTestResultKt.invalidateDraw(androidRippleNode);
                        RippleHostView rippleHostView4 = (RippleHostView) linkedHashMap2.get(androidRippleNode);
                        if (rippleHostView4 != null) {
                        }
                        linkedHashMap2.remove(androidRippleNode);
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
            linkedHashMap2.put(this, rippleHostView3);
            linkedHashMap3.put(rippleHostView3, this);
        }
        RippleHostView rippleHostView5 = rippleHostView3;
        int roundToInt = MathKt.roundToInt(f);
        long mo356invoke0d7_KjU = this.color.mo356invoke0d7_KjU();
        this.rippleAlpha.invoke();
        rippleHostView5.m314addRippleKOepWvA(press, this.bounded, j, roundToInt, mo356invoke0d7_KjU, new OnBackPressedDispatcher$$ExternalSyntheticLambda0(29, this));
        this.rippleHostView = rippleHostView5;
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onAttach() {
        JobKt.launch$default(getCoroutineScope(), null, null, new RippleNode$onAttach$1(this, (Continuation) null, 0), 3);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
        RippleContainer rippleContainer = this.rippleContainer;
        if (rippleContainer != null) {
            this.rippleHostView = null;
            HitTestResultKt.invalidateDraw(this);
            CardView.AnonymousClass1 anonymousClass1 = rippleContainer.rippleHostMap;
            RippleHostView rippleHostView = (RippleHostView) ((LinkedHashMap) anonymousClass1.mCardBackground).get(this);
            if (rippleHostView != null) {
                rippleHostView.disposeRipple();
                LinkedHashMap linkedHashMap = (LinkedHashMap) anonymousClass1.mCardBackground;
                RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap.get(this);
                if (rippleHostView2 != null) {
                }
                linkedHashMap.remove(this);
                rippleContainer.unusedRippleHosts.add(rippleHostView);
            }
        }
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* renamed from: onRemeasured-ozmzZPI */
    public final void mo152onRemeasuredozmzZPI(long j) {
        float mo177toPx0680j_4;
        this.hasValidSize = true;
        Density density = HitTestResultKt.requireLayoutNode(this).density;
        this.rippleSize = Validate.m1072toSizeozmzZPI(j);
        float f = this.radius;
        if (Float.isNaN(f)) {
            long j2 = this.rippleSize;
            float intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j2 & 4294967295L));
            mo177toPx0680j_4 = Offset.m438getDistanceimpl((Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32)) / 2.0f;
            if (this.bounded) {
                mo177toPx0680j_4 += density.mo177toPx0680j_4(10.0f);
            }
        } else {
            mo177toPx0680j_4 = density.mo177toPx0680j_4(f);
        }
        this.targetRadius = mo177toPx0680j_4;
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
