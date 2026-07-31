package androidx.compose.runtime;

import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
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
