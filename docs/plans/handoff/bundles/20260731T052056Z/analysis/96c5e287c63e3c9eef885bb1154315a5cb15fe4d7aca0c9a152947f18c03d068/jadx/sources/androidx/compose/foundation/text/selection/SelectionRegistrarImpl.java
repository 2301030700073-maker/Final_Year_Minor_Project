package androidx.compose.foundation.text.selection;

import androidx.cardview.widget.CardView;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.material3.ChipKt$$ExternalSyntheticLambda2;
import androidx.compose.runtime.ParcelableSnapshotMutableState;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.semantics.SemanticsSortKt$$ExternalSyntheticLambda0;
import androidx.compose.ui.text.SaversKt$$ExternalSyntheticLambda0;
import androidx.paging.HintHandler$$ExternalSyntheticLambda0;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import org.wikipedia.search.SearchResultsFragment$$ExternalSyntheticLambda15;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SelectionRegistrarImpl {
    public static final CardView.AnonymousClass1 Saver = new CardView.AnonymousClass1(12, new SaversKt$$ExternalSyntheticLambda0(9), new ChipKt$$ExternalSyntheticLambda2(14));
    public final MutableLongObjectMap _selectableMap;
    public final ArrayList _selectables = new ArrayList();
    public SelectionManager$$ExternalSyntheticLambda0 afterSelectableUnsubscribe;
    public final AtomicLong incrementId;
    public SelectionManager$$ExternalSyntheticLambda0 onPositionChangeCallback;
    public SelectionManager$$ExternalSyntheticLambda0 onSelectableChangeCallback;
    public SearchResultsFragment$$ExternalSyntheticLambda15 onSelectionUpdateCallback;
    public SelectionManager$$ExternalSyntheticLambda1 onSelectionUpdateEndCallback;
    public FrameworkSQLiteDatabase$$ExternalSyntheticLambda0 onSelectionUpdateStartCallback;
    public boolean sorted;
    public final ParcelableSnapshotMutableState subselections$delegate;

    public SelectionRegistrarImpl(long j) {
        MutableLongObjectMap mutableLongObjectMap = LongObjectMapKt.EmptyLongObjectMap;
        this._selectableMap = new MutableLongObjectMap();
        this.incrementId = new AtomicLong(j);
        MutableLongObjectMap mutableLongObjectMap2 = LongObjectMapKt.EmptyLongObjectMap;
        mutableLongObjectMap2.getClass();
        this.subselections$delegate = Updater.mutableStateOf$default(mutableLongObjectMap2);
    }

    public final MutableLongObjectMap getSubselections() {
        return (MutableLongObjectMap) this.subselections$delegate.getValue();
    }

    /* renamed from: notifySelectionUpdate-njBpvok, reason: not valid java name */
    public final boolean m234notifySelectionUpdatenjBpvok(LayoutCoordinates layoutCoordinates, long j, long j2, SelectionAdjustment$Companion$$ExternalSyntheticLambda0 selectionAdjustment$Companion$$ExternalSyntheticLambda0, boolean z) {
        SearchResultsFragment$$ExternalSyntheticLambda15 searchResultsFragment$$ExternalSyntheticLambda15 = this.onSelectionUpdateCallback;
        if (searchResultsFragment$$ExternalSyntheticLambda15 == null) {
            return true;
        }
        SelectionManager selectionManager = (SelectionManager) searchResultsFragment$$ExternalSyntheticLambda15.f$0;
        long m231convertToContainerCoordinatesR5De75A = selectionManager.m231convertToContainerCoordinatesR5De75A(layoutCoordinates, j);
        long m231convertToContainerCoordinatesR5De75A2 = selectionManager.m231convertToContainerCoordinatesR5De75A(layoutCoordinates, j2);
        selectionManager.setInTouchMode(z);
        return selectionManager.m232updateSelectionjyLRC_s$foundation(m231convertToContainerCoordinatesR5De75A, m231convertToContainerCoordinatesR5De75A2, false, selectionAdjustment$Companion$$ExternalSyntheticLambda0);
    }

    public final ArrayList sort(LayoutCoordinates layoutCoordinates) {
        boolean z = this.sorted;
        ArrayList arrayList = this._selectables;
        if (!z) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new SemanticsSortKt$$ExternalSyntheticLambda0(1, new HintHandler$$ExternalSyntheticLambda0(15, layoutCoordinates)));
            this.sorted = true;
        }
        return arrayList;
    }

    public final void unsubscribe(MultiWidgetSelectionDelegate multiWidgetSelectionDelegate) {
        long j = multiWidgetSelectionDelegate.selectableId;
        MutableLongObjectMap mutableLongObjectMap = this._selectableMap;
        if (mutableLongObjectMap.containsKey(j)) {
            this._selectables.remove(multiWidgetSelectionDelegate);
            mutableLongObjectMap.remove(j);
            SelectionManager$$ExternalSyntheticLambda0 selectionManager$$ExternalSyntheticLambda0 = this.afterSelectableUnsubscribe;
            if (selectionManager$$ExternalSyntheticLambda0 != null) {
                selectionManager$$ExternalSyntheticLambda0.invoke(Long.valueOf(j));
            }
        }
    }
}
