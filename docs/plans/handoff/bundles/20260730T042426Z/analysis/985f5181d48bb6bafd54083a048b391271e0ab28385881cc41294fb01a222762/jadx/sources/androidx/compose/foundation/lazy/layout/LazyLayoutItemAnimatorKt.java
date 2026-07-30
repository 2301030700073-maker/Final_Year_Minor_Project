package androidx.compose.foundation.lazy.layout;

/* compiled from: LazyLayoutItemAnimator.kt */
/* loaded from: classes.dex */
public abstract class LazyLayoutItemAnimatorKt {
    private static final LazyLayoutItemAnimation[] EmptyArray = new LazyLayoutItemAnimation[0];

    /* JADX INFO: Access modifiers changed from: private */
    public static final LazyLayoutAnimationSpecsNode getSpecs(Object obj) {
        if (obj instanceof LazyLayoutAnimationSpecsNode) {
            return (LazyLayoutAnimationSpecsNode) obj;
        }
        return null;
    }
}
