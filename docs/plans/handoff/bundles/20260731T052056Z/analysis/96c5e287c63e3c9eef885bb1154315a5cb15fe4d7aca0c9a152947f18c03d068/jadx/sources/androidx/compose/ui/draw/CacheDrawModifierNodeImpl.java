package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DrawModifierNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.ExceptionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.KTypeImpl$arguments$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
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
            HitTestResultKt.observeReads(this, new KTypeImpl$arguments$2(1, this, cacheDrawScope));
            if (cacheDrawScope.drawResult == null) {
                throw Modifier.CC.m("DrawResult not defined, did you forget to call onDraw?");
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
    public final long mo353getSizeNHjbRc() {
        return ExceptionsKt.m813toSizeozmzZPI(HitTestResultKt.m547requireCoordinator64DMado(this, 4).measuredSize);
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
