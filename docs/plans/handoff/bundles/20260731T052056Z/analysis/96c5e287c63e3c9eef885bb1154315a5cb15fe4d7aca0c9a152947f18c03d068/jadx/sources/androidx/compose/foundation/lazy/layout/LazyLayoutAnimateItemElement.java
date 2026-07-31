package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import kotlin.Metadata;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0081\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimationSpecsNode;", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class LazyLayoutAnimateItemElement extends ModifierNodeElement {
    public final SpringSpec fadeInSpec;
    public final SpringSpec fadeOutSpec;
    public final SpringSpec placementSpec;

    public LazyLayoutAnimateItemElement(SpringSpec springSpec, SpringSpec springSpec2, SpringSpec springSpec3) {
        this.fadeInSpec = springSpec;
        this.placementSpec = springSpec2;
        this.fadeOutSpec = springSpec3;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode = new LazyLayoutAnimationSpecsNode();
        lazyLayoutAnimationSpecsNode.fadeInSpec = this.fadeInSpec;
        lazyLayoutAnimationSpecsNode.placementSpec = this.placementSpec;
        lazyLayoutAnimationSpecsNode.fadeOutSpec = this.fadeOutSpec;
        return lazyLayoutAnimationSpecsNode;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LazyLayoutAnimateItemElement)) {
            return false;
        }
        LazyLayoutAnimateItemElement lazyLayoutAnimateItemElement = (LazyLayoutAnimateItemElement) obj;
        return this.fadeInSpec.equals(lazyLayoutAnimateItemElement.fadeInSpec) && this.placementSpec.equals(lazyLayoutAnimateItemElement.placementSpec) && this.fadeOutSpec.equals(lazyLayoutAnimateItemElement.fadeOutSpec);
    }

    public final int hashCode() {
        return this.fadeOutSpec.hashCode() + ((this.placementSpec.hashCode() + (this.fadeInSpec.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "LazyLayoutAnimateItemElement(fadeInSpec=" + this.fadeInSpec + ", placementSpec=" + this.placementSpec + ", fadeOutSpec=" + this.fadeOutSpec + ')';
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        LazyLayoutAnimationSpecsNode lazyLayoutAnimationSpecsNode = (LazyLayoutAnimationSpecsNode) node;
        lazyLayoutAnimationSpecsNode.fadeInSpec = this.fadeInSpec;
        lazyLayoutAnimationSpecsNode.placementSpec = this.placementSpec;
        lazyLayoutAnimationSpecsNode.fadeOutSpec = this.fadeOutSpec;
    }
}
