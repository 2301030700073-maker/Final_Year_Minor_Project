package net.thunderbird.feature.notification.api.ui.layout;

import androidx.compose.runtime.ParcelableSnapshotMutableFloatState;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.ui.platform.WeakCache;
import net.thunderbird.feature.changelog.internal.KoinModuleKt$$ExternalSyntheticLambda0;
import net.thunderbird.feature.notification.impl.inject.NotificationModuleKt$$ExternalSyntheticLambda1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class BannerInlineListScrollState {
    public static final WeakCache Saver = SaverKt.listSaver(new NotificationModuleKt$$ExternalSyntheticLambda1(20), new KoinModuleKt$$ExternalSyntheticLambda0(29));
    public final ParcelableSnapshotMutableFloatState accumulatedContentOffset$delegate;
    public final ParcelableSnapshotMutableFloatState bannerInlineListHeight$delegate;
    public final ParcelableSnapshotMutableFloatState bannerInlineListHeightOffset$delegate;
    public final ParcelableSnapshotMutableFloatState contentOffset$delegate;

    public BannerInlineListScrollState(float f, float f2, float f3, float f4) {
        this.bannerInlineListHeight$delegate = new ParcelableSnapshotMutableFloatState(f);
        this.bannerInlineListHeightOffset$delegate = new ParcelableSnapshotMutableFloatState(f2);
        this.contentOffset$delegate = new ParcelableSnapshotMutableFloatState(f3);
        this.accumulatedContentOffset$delegate = new ParcelableSnapshotMutableFloatState(f4);
    }

    public final boolean isBannerListOffScreen() {
        return Math.abs(this.contentOffset$delegate.getFloatValue()) > 0.0f || Math.abs(this.accumulatedContentOffset$delegate.getFloatValue()) > this.bannerInlineListHeight$delegate.getFloatValue();
    }
}
