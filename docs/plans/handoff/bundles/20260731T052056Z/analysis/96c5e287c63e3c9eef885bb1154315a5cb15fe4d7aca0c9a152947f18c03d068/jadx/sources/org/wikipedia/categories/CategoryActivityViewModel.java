package org.wikipedia.categories;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.paging.FlowExtKt;
import androidx.paging.PageFetcher;
import androidx.paging.Pager$pageFetcher$2;
import androidx.paging.PagingConfig;
import androidx.paging.PagingSource;
import androidx.paging.PagingState;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.ReadonlySharedFlow;
import org.wikipedia.categories.CategoryActivityViewModel;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.page.PageTitle;
import org.wikipedia.page.edithistory.EditHistoryListViewModel;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CategoryActivityViewModel extends ViewModel {
    public final ReadonlySharedFlow categoryMembersFlow;
    public final PageTitle pageTitle;
    public boolean showSubcategories;
    public final ReadonlySharedFlow subcategoriesFlow;

    public CategoryActivityViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        final int i = 0;
        Continuation continuation = null;
        this.categoryMembersFlow = FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(i, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivityViewModel$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivityViewModel f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i2 = i;
                CategoryActivityViewModel categoryActivityViewModel = this.f$0;
                switch (i2) {
                    case 0:
                        return new CategoryActivityViewModel.CategoryMembersPagingSource(categoryActivityViewModel, "page");
                    default:
                        return new CategoryActivityViewModel.CategoryMembersPagingSource(categoryActivityViewModel, "subcat");
                }
            }
        }, continuation), new PagingConfig(10, 62)).flow, ViewModelKt.getViewModelScope(this));
        final int i2 = 1;
        this.subcategoriesFlow = FlowExtKt.cachedIn(new PageFetcher(new Pager$pageFetcher$2(i, new Function0(this) { // from class: org.wikipedia.categories.CategoryActivityViewModel$$ExternalSyntheticLambda0
            public final /* synthetic */ CategoryActivityViewModel f$0;

            {
                this.f$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                int i22 = i2;
                CategoryActivityViewModel categoryActivityViewModel = this.f$0;
                switch (i22) {
                    case 0:
                        return new CategoryActivityViewModel.CategoryMembersPagingSource(categoryActivityViewModel, "page");
                    default:
                        return new CategoryActivityViewModel.CategoryMembersPagingSource(categoryActivityViewModel, "subcat");
                }
            }
        }, continuation), new PagingConfig(10, 62)).flow, ViewModelKt.getViewModelScope(this));
    }

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public final class CategoryMembersPagingSource extends PagingSource {
        public final /* synthetic */ int $r8$classId = 1;
        public final Object resultType;
        public final Object this$0;

        public CategoryMembersPagingSource(String str, WikiSite wikiSite) {
            wikiSite.getClass();
            this.resultType = str;
            this.this$0 = wikiSite;
        }

        @Override // androidx.paging.PagingSource
        public final void getRefreshKey(PagingState pagingState) {
            switch (this.$r8$classId) {
                case 0:
                    pagingState.getClass();
                    break;
                case 1:
                    pagingState.getClass();
                    break;
                default:
                    pagingState.getClass();
                    break;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x003d  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x022f  */
        /* JADX WARN: Removed duplicated region for block: B:126:0x0273 A[Catch: Exception -> 0x02cb, TryCatch #0 {Exception -> 0x02cb, blocks: (B:123:0x0231, B:124:0x026d, B:126:0x0273, B:128:0x027a, B:129:0x028c, B:131:0x0292, B:135:0x02a7, B:138:0x02be, B:140:0x02c4, B:141:0x02c6, B:147:0x023d), top: B:120:0x022d }] */
        /* JADX WARN: Removed duplicated region for block: B:128:0x027a A[Catch: Exception -> 0x02cb, TryCatch #0 {Exception -> 0x02cb, blocks: (B:123:0x0231, B:124:0x026d, B:126:0x0273, B:128:0x027a, B:129:0x028c, B:131:0x0292, B:135:0x02a7, B:138:0x02be, B:140:0x02c4, B:141:0x02c6, B:147:0x023d), top: B:120:0x022d }] */
        /* JADX WARN: Removed duplicated region for block: B:146:0x023a  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00ac A[Catch: HttpException -> 0x00bb, IOException -> 0x00c3, TryCatch #4 {IOException -> 0x00c3, HttpException -> 0x00bb, blocks: (B:12:0x003f, B:13:0x008e, B:15:0x0099, B:17:0x00a1, B:18:0x00a5, B:20:0x00ac, B:21:0x00ae, B:28:0x004b, B:30:0x0051, B:32:0x0057, B:34:0x0060), top: B:9:0x003b }] */
        /* JADX WARN: Removed duplicated region for block: B:27:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x00f2  */
        /* JADX WARN: Removed duplicated region for block: B:88:0x00ff  */
        @Override // androidx.paging.PagingSource
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object load(androidx.paging.PagingSource.LoadParams r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
            /*
                Method dump skipped, instructions count: 730
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.categories.CategoryActivityViewModel.CategoryMembersPagingSource.load(androidx.paging.PagingSource$LoadParams, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
        }

        public CategoryMembersPagingSource(CategoryActivityViewModel categoryActivityViewModel, String str) {
            this.this$0 = categoryActivityViewModel;
            this.resultType = str;
        }

        public CategoryMembersPagingSource(EditHistoryListViewModel editHistoryListViewModel, PageTitle pageTitle) {
            pageTitle.getClass();
            this.this$0 = editHistoryListViewModel;
            this.resultType = pageTitle;
        }
    }
}
