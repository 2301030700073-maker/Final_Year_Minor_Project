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
public final class EmittableRow extends EmittableWithChildren {
    public int horizontalAlignment;
    public GlanceModifier modifier;
    public int verticalAlignment;

    public EmittableRow() {
        super(3);
        this.modifier = GlanceModifier.Companion.$$INSTANCE;
        this.horizontalAlignment = 0;
        this.verticalAlignment = 0;
    }

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableRow emittableRow = new EmittableRow();
        emittableRow.modifier = this.modifier;
        emittableRow.horizontalAlignment = this.horizontalAlignment;
        emittableRow.verticalAlignment = this.verticalAlignment;
        ArrayList arrayList = this.children;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Emittable) it.next()).copy());
        }
        emittableRow.children.addAll(arrayList2);
        return emittableRow;
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
        return "EmittableRow(modifier=" + this.modifier + ", horizontalAlignment=" + ((Object) Alignment.Horizontal.m746toStringimpl(this.horizontalAlignment)) + ", verticalAlignment=" + ((Object) Alignment.Vertical.m748toStringimpl(this.verticalAlignment)) + ", children=[\n" + childrenToString() + "\n])";
    }
}
