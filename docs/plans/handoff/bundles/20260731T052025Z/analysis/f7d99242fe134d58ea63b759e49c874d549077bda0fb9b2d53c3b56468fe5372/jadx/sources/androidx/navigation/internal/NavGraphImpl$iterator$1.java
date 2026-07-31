package androidx.navigation.internal;

import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.apache.james.mime4j.stream.RawField;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NavGraphImpl$iterator$1 implements Iterator, KMappedMarker {
    public int index = -1;
    public final /* synthetic */ RawField this$0;
    public boolean wentToNext;

    public NavGraphImpl$iterator$1(RawField rawField) {
        this.this$0 = rawField;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.index + 1 < ((SparseArrayCompat) this.this$0.nameLowerCase).size();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            Regex$$ExternalSyntheticBUOutline0.m990m();
            return null;
        }
        this.wentToNext = true;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.this$0.nameLowerCase;
        int i = this.index + 1;
        this.index = i;
        return (NavDestination) sparseArrayCompat.valueAt(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.wentToNext) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$2("You must call next() before you can remove an element");
            return;
        }
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.this$0.nameLowerCase;
        ((NavDestination) sparseArrayCompat.valueAt(this.index)).parent = null;
        int i = this.index;
        Object[] objArr = sparseArrayCompat.values;
        Object obj = objArr[i];
        Object obj2 = ArraySetKt.DELETED$1;
        if (obj != obj2) {
            objArr[i] = obj2;
            sparseArrayCompat.garbage = true;
        }
        this.index = i - 1;
        this.wentToNext = false;
    }
}
