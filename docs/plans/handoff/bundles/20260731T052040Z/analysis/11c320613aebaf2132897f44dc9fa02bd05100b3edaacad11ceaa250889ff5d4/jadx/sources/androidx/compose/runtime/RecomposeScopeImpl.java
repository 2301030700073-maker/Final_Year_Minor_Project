package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RecomposeScopeImpl {
    public GapAnchor anchor;
    public Function2 block;
    public int currentToken;
    public int flags;
    public RecomposeScopeOwner owner;
    public MutableScatterMap trackedDependencies;
    public MutableObjectIntMap trackedInstances;

    public RecomposeScopeImpl(RecomposeScopeOwner recomposeScopeOwner) {
        this.owner = recomposeScopeOwner;
    }

    public final boolean getValid() {
        if (this.owner != null) {
            GapAnchor gapAnchor = this.anchor;
            if (gapAnchor != null ? gapAnchor.getValid() : false) {
                return true;
            }
        }
        return false;
    }

    public final InvalidationResult invalidateForResult(Object obj) {
        InvalidationResult invalidate;
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        return (recomposeScopeOwner == null || (invalidate = recomposeScopeOwner.invalidate(this, obj)) == null) ? InvalidationResult.IGNORED : invalidate;
    }

    public final void release() {
        RecomposeScopeOwner recomposeScopeOwner = this.owner;
        if (recomposeScopeOwner != null) {
            recomposeScopeOwner.recomposeScopeReleased();
        }
        this.owner = null;
        this.trackedInstances = null;
        this.trackedDependencies = null;
        this.block = null;
    }

    public final void setRereading(boolean z) {
        int i = this.flags;
        this.flags = z ? i | 32 : i & (-33);
    }
}
