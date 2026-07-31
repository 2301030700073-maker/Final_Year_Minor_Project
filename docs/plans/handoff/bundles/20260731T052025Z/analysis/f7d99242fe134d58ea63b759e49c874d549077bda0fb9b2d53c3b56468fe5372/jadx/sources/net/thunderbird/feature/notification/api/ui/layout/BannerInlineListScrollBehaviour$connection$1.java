package net.thunderbird.feature.notification.api.ui.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import kotlin.coroutines.Continuation;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineListScrollBehaviour$connection$1 implements NestedScrollConnection {
    public final /* synthetic */ BannerInlineListScrollBehaviour this$0;

    public BannerInlineListScrollBehaviour$connection$1(BannerInlineListScrollBehaviour bannerInlineListScrollBehaviour) {
        this.this$0 = bannerInlineListScrollBehaviour;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostFling-RZ2iAVY */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo185onPostFlingRZ2iAVY(long r20, long r22, kotlin.coroutines.Continuation r24) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.thunderbird.feature.notification.api.ui.layout.BannerInlineListScrollBehaviour$connection$1.mo185onPostFlingRZ2iAVY(long, long, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPostScroll-DzOQY0M */
    public final long mo186onPostScrollDzOQY0M(int i, long j, long j2) {
        BannerInlineListScrollState bannerInlineListScrollState = this.this$0.state;
        int i2 = (int) (j & 4294967295L);
        bannerInlineListScrollState.accumulatedContentOffset$delegate.setFloatValue(Float.intBitsToFloat(i2) + bannerInlineListScrollState.accumulatedContentOffset$delegate.getFloatValue());
        if (bannerInlineListScrollState.bannerInlineListHeight$delegate.getFloatValue() > 0.0f) {
            float floatValue = bannerInlineListScrollState.bannerInlineListHeight$delegate.getFloatValue();
            float floatValue2 = bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue();
            float f = -floatValue;
            if (floatValue2 == f) {
                bannerInlineListScrollState.contentOffset$delegate.setFloatValue(Float.intBitsToFloat(i2) + bannerInlineListScrollState.contentOffset$delegate.getFloatValue());
                if ((floatValue2 == 0.0f || floatValue2 == f) && Float.intBitsToFloat(i2) == 0.0f && Float.intBitsToFloat((int) (j2 & 4294967295L)) > 0.0f) {
                    bannerInlineListScrollState.contentOffset$delegate.setFloatValue(0.0f);
                }
            }
        }
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreFling-QWom1Mo */
    public final Object mo187onPreFlingQWom1Mo(long j, Continuation continuation) {
        return new Velocity(0L);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /* renamed from: onPreScroll-OzD1aCk */
    public final long mo188onPreScrollOzD1aCk(int i, long j) {
        BannerInlineListScrollState bannerInlineListScrollState = this.this$0.state;
        float floatValue = bannerInlineListScrollState.bannerInlineListHeight$delegate.getFloatValue();
        if (floatValue <= 0.0f || bannerInlineListScrollState.contentOffset$delegate.getFloatValue() != 0.0f || bannerInlineListScrollState.contentOffset$delegate.getFloatValue() != 0.0f) {
            return 0L;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (4294967295L & j));
        float floatValue2 = bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue();
        bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.setFloatValue(RangesKt.coerceIn(bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue() + intBitsToFloat, -floatValue, 0.0f));
        if (floatValue2 == bannerInlineListScrollState.bannerInlineListHeightOffset$delegate.getFloatValue()) {
            return 0L;
        }
        return Offset.m435copydBAh8RU$default(intBitsToFloat, 1, j);
    }
}
