package org.wikipedia.suggestededits;

import androidx.lifecycle.ViewModel;
import coil3.size.ViewSizeResolver$CC;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.util.Resource;
import org.wikipedia.util.ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class SuggestedEditsTasksFragmentViewModel extends ViewModel {
    public final StateFlowImpl _uiState;
    public boolean allowToPatrolEdits;
    public String blockMessageCommons;
    public String blockMessageWikidata;
    public String blockMessageWikipedia;
    public StandaloneCoroutine clientJob;
    public final ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1 handler = new ShareUtil$shareImage$$inlined$CoroutineExceptionHandler$1(this);
    public int homeContributions;
    public int totalContributions;
    public final ReadonlyStateFlow uiState;
    public boolean wikiSupportsImageRecommendations;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class RequireLogin extends Resource {
    }

    public SuggestedEditsTasksFragmentViewModel() {
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._uiState = m786m;
        this.uiState = new ReadonlyStateFlow(m786m);
    }
}
