package com.skydoves.landscapist.crossfade;

import androidx.compose.runtime.MutableState;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
final class FadeInEffectElement extends ModifierNodeElement {
    public final int durationMs;
    public final MutableState key;

    public FadeInEffectElement(MutableState mutableState, int i) {
        this.key = mutableState;
        this.durationMs = i;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node create() {
        return new FadeInEffectNode(this.key, this.durationMs);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FadeInEffectElement)) {
            return false;
        }
        FadeInEffectElement fadeInEffectElement = (FadeInEffectElement) obj;
        return this.key.equals(fadeInEffectElement.key) && this.durationMs == fadeInEffectElement.durationMs;
    }

    public final int hashCode() {
        return (this.key.hashCode() * 31) + this.durationMs;
    }

    public final String toString() {
        return "FadeInEffectElement(key=" + this.key + ", durationMs=" + this.durationMs + ")";
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void update(Modifier.Node node) {
        FadeInEffectNode fadeInEffectNode = (FadeInEffectNode) node;
        fadeInEffectNode.getClass();
        fadeInEffectNode.key = this.key;
        fadeInEffectNode.durationMs = this.durationMs;
    }
}
