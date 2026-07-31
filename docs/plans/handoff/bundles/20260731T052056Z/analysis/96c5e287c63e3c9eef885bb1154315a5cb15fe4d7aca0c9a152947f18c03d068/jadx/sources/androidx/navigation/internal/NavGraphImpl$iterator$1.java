package androidx.navigation.internal;

import androidx.collection.ArraySetKt;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import okhttp3.Dispatcher;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class NavGraphImpl$iterator$1 implements Iterator, KMappedMarker {
    public int index = -1;
    public final /* synthetic */ Dispatcher this$0;
    public boolean wentToNext;

    public NavGraphImpl$iterator$1(Dispatcher dispatcher) {
        this.this$0 = dispatcher;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.index + 1 < ((SparseArrayCompat) this.this$0.readyAsyncCalls).size();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            Utils$$ExternalSyntheticBUOutline0.m();
            return null;
        }
        this.wentToNext = true;
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.this$0.readyAsyncCalls;
        int i = this.index + 1;
        this.index = i;
        return (NavDestination) sparseArrayCompat.valueAt(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.wentToNext) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("You must call next() before you can remove an element");
            return;
        }
        SparseArrayCompat sparseArrayCompat = (SparseArrayCompat) this.this$0.readyAsyncCalls;
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
