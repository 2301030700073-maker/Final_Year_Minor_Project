package androidx.glance;

import androidx.compose.runtime.AbstractApplier;
import androidx.glance.appwidget.RemoteViewsRoot;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.CollectionsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class Applier extends AbstractApplier {
    public final int newRootMaxDepth;

    public Applier(RemoteViewsRoot remoteViewsRoot) {
        super(remoteViewsRoot);
        this.newRootMaxDepth = remoteViewsRoot.maxDepth;
    }

    public final ArrayList getCurrentChildren() {
        Emittable emittable = (Emittable) this.current;
        if (emittable instanceof EmittableWithChildren) {
            return ((EmittableWithChildren) emittable).children;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Current node cannot accept children");
        return null;
    }

    @Override // androidx.compose.runtime.Applier
    public final void insertBottomUp(int i, Object obj) {
    }

    @Override // androidx.compose.runtime.Applier
    public final void insertTopDown(int i, Object obj) {
        Emittable emittable = (Emittable) obj;
        Object obj2 = this.current;
        obj2.getClass();
        int i2 = ((EmittableWithChildren) obj2).maxDepth;
        if (i2 > 0) {
            if (emittable instanceof EmittableWithChildren) {
                EmittableWithChildren emittableWithChildren = (EmittableWithChildren) emittable;
                emittableWithChildren.maxDepth = emittableWithChildren.resetsDepthForChildren ? this.newRootMaxDepth : i2 - 1;
            }
            getCurrentChildren().add(i, emittable);
            return;
        }
        Object obj3 = this.root;
        obj3.getClass();
        throw new IllegalArgumentException(("Too many embedded views for the current surface. The maximum depth is: " + ((EmittableWithChildren) obj3).maxDepth).toString());
    }

    @Override // androidx.compose.runtime.Applier
    public final void move(int i, int i2, int i3) {
        ArrayList currentChildren = getCurrentChildren();
        int i4 = i > i2 ? i2 : i2 - i3;
        if (i3 != 1) {
            List subList = currentChildren.subList(i, i3 + i);
            ArrayList mutableList = CollectionsKt.toMutableList((Collection) subList);
            subList.clear();
            currentChildren.addAll(i4, mutableList);
            return;
        }
        if (i == i2 + 1 || i == i2 - 1) {
            currentChildren.set(i, currentChildren.set(i2, currentChildren.get(i)));
        } else {
            currentChildren.add(i4, currentChildren.remove(i));
        }
    }

    @Override // androidx.compose.runtime.AbstractApplier
    public final void onClear() {
        Object obj = this.root;
        obj.getClass();
        ((EmittableWithChildren) obj).children.clear();
    }

    @Override // androidx.compose.runtime.Applier
    public final void remove(int i, int i2) {
        ArrayList currentChildren = getCurrentChildren();
        if (i2 == 1) {
            currentChildren.remove(i);
        } else {
            currentChildren.subList(i, i2 + i).clear();
        }
    }
}
