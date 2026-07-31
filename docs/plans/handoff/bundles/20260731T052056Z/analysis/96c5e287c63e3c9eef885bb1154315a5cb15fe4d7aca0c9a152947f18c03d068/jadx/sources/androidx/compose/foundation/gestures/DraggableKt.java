package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import androidx.paging.CachedPagingDataKt$cachedIn$5;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class DraggableKt {
    public static final /* synthetic */ int $r8$clinit = 0;

    static {
        int i = 3;
        Continuation continuation = null;
        new CachedPagingDataKt$cachedIn$5(i, 1, continuation);
        new CachedPagingDataKt$cachedIn$5(i, 2, continuation);
    }

    /* renamed from: toValidVelocity-TH1AsA0, reason: not valid java name */
    public static final long m74toValidVelocityTH1AsA0(long j) {
        boolean isNaN = Float.isNaN(Velocity.m731getXimpl(j));
        float f = RecyclerView.DECELERATION_RATE;
        float m731getXimpl = isNaN ? 0.0f : Velocity.m731getXimpl(j);
        if (!Float.isNaN(Velocity.m732getYimpl(j))) {
            f = Velocity.m732getYimpl(j);
        }
        return ResultKt.Velocity(m731getXimpl, f);
    }
}
