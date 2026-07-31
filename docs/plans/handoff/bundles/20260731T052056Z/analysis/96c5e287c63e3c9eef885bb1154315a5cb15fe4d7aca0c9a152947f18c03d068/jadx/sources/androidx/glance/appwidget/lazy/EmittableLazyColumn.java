package androidx.glance.appwidget.lazy;

import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableLazyColumn extends EmittableWithChildren {
    public int horizontalAlignment;
    public GlanceModifier modifier;

    public EmittableLazyColumn() {
        super(1);
        this.modifier = GlanceModifier.Companion.$$INSTANCE;
        this.horizontalAlignment = 0;
    }

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableLazyColumn emittableLazyColumn = new EmittableLazyColumn();
        emittableLazyColumn.modifier = this.modifier;
        emittableLazyColumn.horizontalAlignment = this.horizontalAlignment;
        ArrayList arrayList = this.children;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Emittable) it.next()).copy());
        }
        emittableLazyColumn.children.addAll(arrayList2);
        return emittableLazyColumn;
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
        return "EmittableLazyList(modifier=" + this.modifier + ", horizontalAlignment=" + ((Object) Alignment.Horizontal.m746toStringimpl(this.horizontalAlignment)) + ", activityOptions=null, children=[\n" + childrenToString() + "\n])";
    }
}
