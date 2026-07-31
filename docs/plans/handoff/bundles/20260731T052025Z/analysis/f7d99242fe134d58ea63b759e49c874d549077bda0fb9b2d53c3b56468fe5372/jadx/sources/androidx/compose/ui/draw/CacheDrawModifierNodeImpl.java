package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetNode$invalidateFocus$1;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import org.jsoup.helper.Validate;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CacheDrawModifierNodeImpl extends Modifier.Node implements ObserverModifierNode, BuildDrawCacheParams, DrawModifierNode {
    public Function1 block;
    public final CacheDrawScope cacheDrawScope;
    public boolean isCacheValid;

    public CacheDrawModifierNodeImpl(CacheDrawScope cacheDrawScope, Function1 function1) {
        this.cacheDrawScope = cacheDrawScope;
        this.block = function1;
        cacheDrawScope.cacheParams = this;
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void draw(LayoutNodeDrawScope layoutNodeDrawScope) {
        boolean z = this.isCacheValid;
        CacheDrawScope cacheDrawScope = this.cacheDrawScope;
        if (!z) {
            cacheDrawScope.drawResult = null;
            HitTestResultKt.observeReads(this, new FocusTargetNode$invalidateFocus$1(1, this, cacheDrawScope));
            if (cacheDrawScope.drawResult == null) {
                throw Modifier.CC.m405m("DrawResult not defined, did you forget to call onDraw?");
            }
            this.isCacheValid = true;
        }
        DrawResult drawResult = cacheDrawScope.drawResult;
        drawResult.getClass();
        drawResult.block.invoke(layoutNodeDrawScope);
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final Density getDensity() {
        return HitTestResultKt.requireLayoutNode(this).density;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    public final LayoutDirection getLayoutDirection() {
        return HitTestResultKt.requireLayoutNode(this).layoutDirection;
    }

    @Override // androidx.compose.ui.draw.BuildDrawCacheParams
    /* renamed from: getSize-NH-jbRc */
    public final long mo406getSizeNHjbRc() {
        return Validate.m1072toSizeozmzZPI(HitTestResultKt.m604requireCoordinator64DMado(this, 4).measuredSize);
    }

    public final void invalidateDrawCache() {
        this.isCacheValid = false;
        this.cacheDrawScope.drawResult = null;
        HitTestResultKt.invalidateDraw(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDensityChange() {
        invalidateDrawCache();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onLayoutDirectionChange() {
        invalidateDrawCache();
    }

    @Override // androidx.compose.ui.node.DrawModifierNode
    public final void onMeasureResultChanged() {
        invalidateDrawCache();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void onObservedReadsChanged() {
        invalidateDrawCache();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        invalidateDrawCache();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onDetach() {
    }
}
