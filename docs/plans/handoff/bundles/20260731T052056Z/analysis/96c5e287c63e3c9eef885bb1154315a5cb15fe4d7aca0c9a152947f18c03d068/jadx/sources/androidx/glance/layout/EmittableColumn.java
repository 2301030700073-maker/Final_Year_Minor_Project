package androidx.glance.layout;

import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableColumn extends EmittableWithChildren {
    public int horizontalAlignment;
    public GlanceModifier modifier;
    public int verticalAlignment;

    public EmittableColumn() {
        super(3);
        this.modifier = GlanceModifier.Companion.$$INSTANCE;
        this.verticalAlignment = 0;
        this.horizontalAlignment = 0;
    }

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableColumn emittableColumn = new EmittableColumn();
        emittableColumn.modifier = this.modifier;
        emittableColumn.verticalAlignment = this.verticalAlignment;
        emittableColumn.horizontalAlignment = this.horizontalAlignment;
        ArrayList arrayList = this.children;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Emittable) it.next()).copy());
        }
        emittableColumn.children.addAll(arrayList2);
        return emittableColumn;
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
        return "EmittableColumn(modifier=" + this.modifier + ", verticalAlignment=" + ((Object) Alignment.Vertical.m748toStringimpl(this.verticalAlignment)) + ", horizontalAlignment=" + ((Object) Alignment.Horizontal.m746toStringimpl(this.horizontalAlignment)) + ", children=[\n" + childrenToString() + "\n])";
    }
}
