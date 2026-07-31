package androidx.glance.appwidget;

import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class RemoteViewsRoot extends EmittableWithChildren {
    public GlanceModifier modifier;

    public RemoteViewsRoot() {
        super(2);
        this.modifier = GlanceModifier.Companion.$$INSTANCE;
    }

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        RemoteViewsRoot remoteViewsRoot = new RemoteViewsRoot();
        remoteViewsRoot.modifier = this.modifier;
        ArrayList arrayList = this.children;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Emittable) it.next()).copy());
        }
        remoteViewsRoot.children.addAll(arrayList2);
        return remoteViewsRoot;
    }

    @Override // androidx.glance.Emittable
    public final GlanceModifier getModifier() {
        return this.modifier;
    }

    @Override // androidx.glance.Emittable
    public final void setModifier(GlanceModifier glanceModifier) {
        this.modifier = glanceModifier;
    }

    public final String toString() {
        return "RemoteViewsRoot(modifier=" + this.modifier + ", children=[\n" + childrenToString() + "\n])";
    }
}
