package androidx.glance.appwidget.lazy;

import androidx.compose.ui.unit.DpKt;
import androidx.glance.Emittable;
import androidx.glance.EmittableWithChildren;
import androidx.glance.GlanceModifier;
import androidx.glance.layout.Alignment;
import androidx.glance.layout.HeightModifier;
import androidx.glance.unit.Dimension;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__IteratorsJVMKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class EmittableLazyListItem extends EmittableWithChildren {
    public Alignment alignment;
    public long itemId;
    public GlanceModifier modifier;

    public EmittableLazyListItem() {
        super(3);
        this.alignment = Alignment.CenterStart;
        this.modifier = DpKt.fillMaxWidth(new HeightModifier(Dimension.Wrap.INSTANCE));
    }

    @Override // androidx.glance.Emittable
    public final Emittable copy() {
        EmittableLazyListItem emittableLazyListItem = new EmittableLazyListItem();
        emittableLazyListItem.itemId = this.itemId;
        emittableLazyListItem.alignment = this.alignment;
        ArrayList arrayList = this.children;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IteratorsJVMKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((Emittable) it.next()).copy());
        }
        emittableLazyListItem.children.addAll(arrayList2);
        return emittableLazyListItem;
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
        return "EmittableLazyListItem(modifier=" + this.modifier + ", alignment=" + this.alignment + ", children=[\n" + childrenToString() + "\n])";
    }
}
