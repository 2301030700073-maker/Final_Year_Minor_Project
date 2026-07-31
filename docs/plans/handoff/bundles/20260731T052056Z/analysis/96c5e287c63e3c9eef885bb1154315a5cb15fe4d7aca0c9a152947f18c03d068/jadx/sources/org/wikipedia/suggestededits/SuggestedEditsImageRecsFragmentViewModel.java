package org.wikipedia.suggestededits;

import androidx.glance.appwidget.GlanceAppWidgetReceiver$onReceive$1$1;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.dataclient.growthtasks.GrowthImageSuggestion;
import org.wikipedia.dataclient.page.PageSummary;
import org.wikipedia.page.PageTitle;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsImageRecsFragmentViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public boolean attemptInsertInfobox;
    public final ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 handler;
    public final String langCode;
    public PageTitle pageTitle;
    public GrowthImageSuggestion recommendation;
    public PageTitle recommendedImageTitle;
    public PageSummary summary;
    public final ReadonlyStateFlow uiState;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class Depleted extends Resource {
    }

    public SuggestedEditsImageRecsFragmentViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        this.handler = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
        Object obj = savedStateHandle.get("lang");
        obj.getClass();
        this.langCode = (String) obj;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
        fetchRecommendation();
    }

    public final void fetchRecommendation() {
        Resource.Loading loading = new Resource.Loading();
        StateFlowImpl stateFlowImpl = this._uiState;
        stateFlowImpl.getClass();
        stateFlowImpl.updateState(null, loading);
        AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), this.handler, null, new GlanceAppWidgetReceiver$onReceive$1$1(this, null), 2);
    }

    public final PageTitle getPageTitle() {
        PageTitle pageTitle = this.pageTitle;
        if (pageTitle != null) {
            return pageTitle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pageTitle");
        throw null;
    }

    public final GrowthImageSuggestion getRecommendation() {
        GrowthImageSuggestion growthImageSuggestion = this.recommendation;
        if (growthImageSuggestion != null) {
            return growthImageSuggestion;
        }
        Intrinsics.throwUninitializedPropertyAccessException("recommendation");
        throw null;
    }
}
