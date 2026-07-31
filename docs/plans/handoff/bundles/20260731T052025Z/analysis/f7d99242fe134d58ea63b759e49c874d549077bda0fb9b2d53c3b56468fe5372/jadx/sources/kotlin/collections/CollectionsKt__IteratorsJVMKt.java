package kotlin.collections;

import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Collection;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class CollectionsKt__IteratorsJVMKt extends IntOffsetKt {
    public static int collectionSizeOrDefault(Iterable iterable, int i) {
        iterable.getClass();
        return iterable instanceof Collection ? ((Collection) iterable).size() : i;
    }
}
