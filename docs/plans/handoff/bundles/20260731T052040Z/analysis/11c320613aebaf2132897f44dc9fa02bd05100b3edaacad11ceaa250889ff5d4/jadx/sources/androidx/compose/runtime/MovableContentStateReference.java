package androidx.compose.runtime;

import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class MovableContentStateReference {
    public final GapAnchor anchor;
    public final CompositionImpl composition;
    public final MovableContent content;
    public List invalidations;
    public final PersistentCompositionLocalHashMap locals;
    public final List nestedReferences;
    public final Object parameter;
    public final SlotTable slotStorage;

    public MovableContentStateReference(MovableContent movableContent, Object obj, CompositionImpl compositionImpl, SlotTable slotTable, GapAnchor gapAnchor, List list, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap, ArrayList arrayList) {
        this.content = movableContent;
        this.parameter = obj;
        this.composition = compositionImpl;
        this.slotStorage = slotTable;
        this.anchor = gapAnchor;
        this.invalidations = list;
        this.locals = persistentCompositionLocalHashMap;
        this.nestedReferences = arrayList;
    }
}
