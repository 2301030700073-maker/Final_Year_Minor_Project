package androidx.paging;

import android.os.Build;
import android.util.Log;
import androidx.compose.runtime.Latch;
import androidx.room.RoomDatabase$closeBarrier$1;
import androidx.work.impl.AutoMigration_14_15;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.text.StringsKt__IndentKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class PagingSource {
    public final Latch invalidateCallbackTracker = new Latch(new PagingSource$$ExternalSyntheticLambda0(0));

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class LoadParams {
        public final int loadSize;

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Append extends LoadParams {
            public final Object key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Append(int i, Object obj) {
                super(i);
                obj.getClass();
                this.key = obj;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public final Object getKey() {
                return this.key;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Prepend extends LoadParams {
            public final Object key;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Prepend(int i, Object obj) {
                super(i);
                obj.getClass();
                this.key = obj;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public final Object getKey() {
                return this.key;
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Refresh extends LoadParams {
            public final Object key;

            public Refresh(int i, Object obj) {
                super(i);
                this.key = obj;
            }

            @Override // androidx.paging.PagingSource.LoadParams
            public final Object getKey() {
                return this.key;
            }
        }

        public LoadParams(int i) {
            this.loadSize = i;
        }

        public abstract Object getKey();
    }

    public abstract void getRefreshKey(PagingState pagingState);

    public final void invalidate() {
        Latch latch = this.invalidateCallbackTracker;
        boolean z = false;
        if (!latch._isOpen) {
            synchronized (((AutoMigration_14_15) latch.spareList)) {
                if (!latch._isOpen) {
                    z = true;
                    latch._isOpen = true;
                    List list = CollectionsKt.toList((ArrayList) latch.awaiters);
                    ((ArrayList) latch.awaiters).clear();
                    PagingSource$$ExternalSyntheticLambda0 pagingSource$$ExternalSyntheticLambda0 = (PagingSource$$ExternalSyntheticLambda0) latch.lock;
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        pagingSource$$ExternalSyntheticLambda0.invoke(it.next());
                    }
                }
            }
        }
        if (z && Build.ID != null && Log.isLoggable("Paging", 3)) {
            Log.d("Paging", "Invalidated PagingSource " + this, null);
        }
    }

    public abstract Object load(LoadParams loadParams, ContinuationImpl continuationImpl);

    public final void unregisterInvalidatedCallback(RoomDatabase$closeBarrier$1 roomDatabase$closeBarrier$1) {
        Latch latch = this.invalidateCallbackTracker;
        synchronized (((AutoMigration_14_15) latch.spareList)) {
            ((ArrayList) latch.awaiters).remove(roomDatabase$closeBarrier$1);
        }
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract class LoadResult {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Error extends LoadResult {
            public final Exception throwable;

            public Error(Exception exc) {
                this.throwable = exc;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Error) && this.throwable.equals(((Error) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return StringsKt__IndentKt.trimMargin$default("LoadResult.Error(\n                    |   throwable: " + this.throwable + "\n                    |) ");
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class Page extends LoadResult implements Iterable, KMappedMarker {
            public final List data;
            public final int itemsAfter;
            public final int itemsBefore;
            public final Object nextKey;

            static {
                new Page(EmptyList.INSTANCE, null, 0, 0);
            }

            public Page(List list, Object obj, int i, int i2) {
                list.getClass();
                this.data = list;
                this.nextKey = obj;
                this.itemsBefore = i;
                this.itemsAfter = i2;
                if (i != Integer.MIN_VALUE && i < 0) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m("itemsBefore cannot be negative");
                    throw null;
                }
                if (i2 == Integer.MIN_VALUE || i2 >= 0) {
                    return;
                }
                _UtilJvmKt$$ExternalSyntheticLambda0.m("itemsAfter cannot be negative");
                throw null;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof Page)) {
                    return false;
                }
                Page page = (Page) obj;
                return Intrinsics.areEqual(this.data, page.data) && Intrinsics.areEqual(this.nextKey, page.nextKey) && this.itemsBefore == page.itemsBefore && this.itemsAfter == page.itemsAfter;
            }

            public final int hashCode() {
                int hashCode = this.data.hashCode() * 961;
                Object obj = this.nextKey;
                return ((((hashCode + (obj == null ? 0 : obj.hashCode())) * 31) + this.itemsBefore) * 31) + this.itemsAfter;
            }

            @Override // java.lang.Iterable
            public final Iterator iterator() {
                return this.data.listIterator();
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("LoadResult.Page(\n                    |   data size: ");
                List list = this.data;
                sb.append(list.size());
                sb.append("\n                    |   first Item: ");
                sb.append(CollectionsKt.firstOrNull(list));
                sb.append("\n                    |   last Item: ");
                sb.append(CollectionsKt.lastOrNull(list));
                sb.append("\n                    |   nextKey: ");
                sb.append(this.nextKey);
                sb.append("\n                    |   prevKey: null\n                    |   itemsBefore: ");
                sb.append(this.itemsBefore);
                sb.append("\n                    |   itemsAfter: ");
                sb.append(this.itemsAfter);
                sb.append("\n                    |) ");
                return StringsKt__IndentKt.trimMargin$default(sb.toString());
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Page(List list, Object obj) {
                this(list, obj, Integer.MIN_VALUE, Integer.MIN_VALUE);
                list.getClass();
            }
        }
    }
}
