package org.wikipedia.edit.templates;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.dataclient.mwapi.TemplateDataResponse;
import org.wikipedia.games.WikiGames$$ExternalSyntheticLambda0;
import org.wikipedia.page.PageTitle;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TemplatesSearchViewModel extends ViewModel {
    public final boolean isFromDiff;
    public String searchQuery;
    public final ReadonlySharedFlow searchTemplatesFlow;
    public PageTitle selectedPageTitle;
    public final StateFlowImpl uiState;
    public final WikiSite wikiSite;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public class UiState {

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LoadError extends UiState {
            public final Throwable throwable;

            public LoadError(Throwable th) {
                th.getClass();
                this.throwable = th;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof LoadError) && Intrinsics.areEqual(this.throwable, ((LoadError) obj).throwable);
            }

            public final int hashCode() {
                return this.throwable.hashCode();
            }

            public final String toString() {
                return "LoadError(throwable=" + this.throwable + ")";
            }
        }

        /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
        public final class LoadTemplateData extends UiState {
            public final PageTitle pageTitle;
            public final TemplateDataResponse.TemplateData templateData;

            public LoadTemplateData(PageTitle pageTitle, TemplateDataResponse.TemplateData templateData) {
                templateData.getClass();
                this.pageTitle = pageTitle;
                this.templateData = templateData;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof LoadTemplateData)) {
                    return false;
                }
                LoadTemplateData loadTemplateData = (LoadTemplateData) obj;
                return this.pageTitle.equals(loadTemplateData.pageTitle) && Intrinsics.areEqual(this.templateData, loadTemplateData.templateData);
            }

            public final int hashCode() {
                return this.templateData.hashCode() + (this.pageTitle.hashCode() * 31);
            }

            public final String toString() {
                return "LoadTemplateData(pageTitle=" + this.pageTitle + ", templateData=" + this.templateData + ")";
            }
        }
    }

    public TemplatesSearchViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("invokeSource");
        obj.getClass();
        Object obj2 = savedStateHandle.get("wikiSite");
        obj2.getClass();
        this.wikiSite = (WikiSite) obj2;
        Boolean bool = (Boolean) savedStateHandle.get("isFromDiff");
        int i = 0;
        this.isFromDiff = bool != null ? bool.booleanValue() : false;
        this.searchTemplatesFlow = FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(i, new WikiGames$$ExternalSyntheticLambda0(8, this), null), new PagingConfig(10, 62)).flow, ViewModelKt.getViewModelScope(this));
        this.uiState = StateFlowKt.MutableStateFlow(new UiState());
    }
}
