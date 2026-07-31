package org.wikipedia.descriptions;

import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import coil3.size.ViewSizeResolver$CC;
import kotlin.coroutines.Continuation;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.StandaloneCoroutine;
import kotlinx.coroutines.flow.ReadonlyStateFlow;
import kotlinx.coroutines.flow.StateFlowImpl;
import org.wikipedia.Constants;
import org.wikipedia.descriptions.DescriptionEditActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.suggestededits.PageSummaryForEdit;
import org.wikipedia.util.ShareUtil$shareImage$2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class DescriptionEditViewModel extends ViewModel {
    public static final String[] DESCRIPTION_TEMPLATES = {"Short description", "SHORTDESC"};
    public final StateFlowImpl _loadPageSummaryState;
    public final StateFlowImpl _postDescriptionState;
    public final StateFlowImpl _requestSuggestionState;
    public final StateFlowImpl _waitForRevisionState;
    public final DescriptionEditActivity.Action action;
    public StandaloneCoroutine clientJob;
    public boolean editingAllowed;
    public final String highlightText;
    public final Constants.InvokeSource invokeSource;
    public final ReadonlyStateFlow loadPageSummaryState;
    public final PageTitle pageTitle;
    public final ReadonlyStateFlow postDescriptionState;
    public final ReadonlyStateFlow requestSuggestionState;
    public final PageSummaryForEdit sourceSummary;
    public final PageSummaryForEdit targetSummary;
    public final ReadonlyStateFlow waitForRevisionState;

    public DescriptionEditViewModel(SavedStateHandle savedStateHandle) {
        savedStateHandle.getClass();
        Object obj = savedStateHandle.get("title");
        obj.getClass();
        this.pageTitle = (PageTitle) obj;
        this.highlightText = (String) savedStateHandle.get("highlightText");
        Object obj2 = savedStateHandle.get("intentAction");
        obj2.getClass();
        this.action = (DescriptionEditActivity.Action) obj2;
        Object obj3 = savedStateHandle.get("invokeSource");
        obj3.getClass();
        this.invokeSource = (Constants.InvokeSource) obj3;
        this.sourceSummary = (PageSummaryForEdit) savedStateHandle.get("sourceSummary");
        this.targetSummary = (PageSummaryForEdit) savedStateHandle.get("targetSummary");
        this.editingAllowed = true;
        StateFlowImpl m786m = ViewSizeResolver$CC.m786m();
        this._loadPageSummaryState = m786m;
        this.loadPageSummaryState = new ReadonlyStateFlow(m786m);
        StateFlowImpl m786m2 = ViewSizeResolver$CC.m786m();
        this._requestSuggestionState = m786m2;
        this.requestSuggestionState = new ReadonlyStateFlow(m786m2);
        StateFlowImpl m786m3 = ViewSizeResolver$CC.m786m();
        this._postDescriptionState = m786m3;
        this.postDescriptionState = new ReadonlyStateFlow(m786m3);
        StateFlowImpl m786m4 = ViewSizeResolver$CC.m786m();
        this._waitForRevisionState = m786m4;
        this.waitForRevisionState = new ReadonlyStateFlow(m786m4);
    }

    public final void postDescription(String str, String str2, String str3, String str4, String str5) {
        StandaloneCoroutine standaloneCoroutine = this.clientJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.clientJob = AwaitKt.launch$default(ViewModelKt.getViewModelScope(this), new DescriptionEditViewModel$postDescription$$inlined$CoroutineExceptionHandler$1(this, 0), null, new ShareUtil$shareImage$2(this, str, str2, str3, str4, str5, (Continuation) null), 2);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0198 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object postDescriptionToArticle(java.lang.String r20, java.lang.String r21, java.lang.String r22, java.lang.String r23, java.lang.String r24, java.lang.String r25, kotlin.coroutines.jvm.internal.ContinuationImpl r26) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.descriptions.DescriptionEditViewModel.postDescriptionToArticle(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0175 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0176 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object postDescriptionToWikidata(java.lang.String r17, java.lang.String r18, java.lang.String r19, java.lang.String r20, kotlin.coroutines.jvm.internal.ContinuationImpl r21) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.wikipedia.descriptions.DescriptionEditViewModel.postDescriptionToWikidata(java.lang.String, java.lang.String, java.lang.String, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    public final boolean shouldWriteToLocalWiki() {
        DescriptionEditActivity.Action action = DescriptionEditActivity.Action.ADD_DESCRIPTION;
        DescriptionEditActivity.Action action2 = this.action;
        if (action2 == action || action2 == DescriptionEditActivity.Action.TRANSLATE_DESCRIPTION) {
            String str = this.pageTitle.wikiSite.languageCode;
            str.getClass();
            if (str.equals("en") || StringsKt__StringsJVMKt.startsWith(str, "test", false)) {
                return true;
            }
        }
        return false;
    }
}
