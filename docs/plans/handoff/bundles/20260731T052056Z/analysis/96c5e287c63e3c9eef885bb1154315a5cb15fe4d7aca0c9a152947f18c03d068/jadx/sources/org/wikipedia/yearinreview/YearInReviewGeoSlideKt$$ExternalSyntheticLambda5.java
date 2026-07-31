package org.wikipedia.yearinreview;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class YearInReviewGeoSlideKt$$ExternalSyntheticLambda5 implements ObserverHandle {
    public final /* synthetic */ Function2 f$0;

    public /* synthetic */ YearInReviewGeoSlideKt$$ExternalSyntheticLambda5(Function2 function2) {
        this.f$0 = function2;
    }

    @Override // androidx.compose.runtime.snapshots.ObserverHandle
    public void dispose() {
        Function2 function2 = this.f$0;
        synchronized (SnapshotKt.lock) {
            SnapshotKt.applyObservers = CollectionsKt.minus(SnapshotKt.applyObservers, function2);
        }
    }

    public void onSnapshotReady(Bitmap bitmap) {
        Bitmap bitmap2;
        bitmap.getClass();
        Function2 function2 = this.f$0;
        if (function2 == null || (bitmap2 = (Bitmap) function2.invoke(Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()))) == null) {
            return;
        }
        new Canvas(bitmap2).drawBitmap(bitmap, RecyclerView.DECELERATION_RATE, RecyclerView.DECELERATION_RATE, (Paint) null);
    }
}
