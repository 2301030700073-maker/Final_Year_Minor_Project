package androidx.compose.foundation.text.selection;

import androidx.activity.ImmLeaksCleaner$$ExternalSyntheticLambda0;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.runtime.StaticProvidableCompositionLocal;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class SelectionRegistrarKt {
    public static final StaticProvidableCompositionLocal LocalSelectionRegistrar = new StaticProvidableCompositionLocal(1, new ImmLeaksCleaner$$ExternalSyntheticLambda0(21));

    public static final boolean hasSelection(SelectionRegistrarImpl selectionRegistrarImpl, long j) {
        MutableLongObjectMap subselections = selectionRegistrarImpl.getSubselections();
        if (subselections != null) {
            return subselections.containsKey(j);
        }
        return false;
    }
}
