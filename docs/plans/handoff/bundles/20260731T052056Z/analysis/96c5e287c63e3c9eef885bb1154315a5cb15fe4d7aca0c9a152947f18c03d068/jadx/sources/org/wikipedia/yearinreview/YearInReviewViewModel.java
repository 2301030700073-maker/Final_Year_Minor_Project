package org.wikipedia.yearinreview;

import android.graphics.Bitmap;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
import org.wikipedia.util.UiState;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class YearInReviewViewModel extends ViewModel {
    public static String currentCampaignId;
    public final StateFlowImpl _uiScreenListState;
    public final ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 handler;
    public Bitmap screenshotHeaderBitmap;
    public final ReadonlyStateFlow uiScreenListState;

    public YearInReviewViewModel() {
        ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
        this.handler = shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;
        StateFlowImpl MutableStateFlow = StateFlowKt.MutableStateFlow(UiState.Loading.INSTANCE);
        this._uiScreenListState = MutableStateFlow;
        this.uiScreenListState = new ReadonlyStateFlow(MutableStateFlow);
        Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        createBitmap.getClass();
        this.screenshotHeaderBitmap = createBitmap;
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), shareUtil$shareImage$$inlined$CoroutineExceptionHandler$1, null, new YearInReviewViewModel$fetchPersonalizedData$1(this, null), 2);
    }
}
