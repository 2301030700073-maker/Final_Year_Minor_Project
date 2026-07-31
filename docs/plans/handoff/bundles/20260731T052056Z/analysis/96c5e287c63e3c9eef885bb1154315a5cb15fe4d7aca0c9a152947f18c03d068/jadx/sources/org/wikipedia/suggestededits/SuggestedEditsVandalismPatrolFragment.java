package org.wikipedia.suggestededits;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.BackStackRecord;
import androidx.fragment.app.FragmentManagerImpl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.text.UStringsKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.dataclient.WikiSite;
import org.wikipedia.diff.ArticleEditDetailsFragment;
import org.wikipedia.page.PageTitle;
import org.wikipedia.settings.Prefs;
import retrofit2.OkHttpCall;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;", "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SuggestedEditsVandalismPatrolFragment extends SuggestedEditsItemFragment {
    public OkHttpCall.AnonymousClass1 _binding;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View inflate = layoutInflater.inflate(R.layout.fragment_suggested_edits_vandalism_item, viewGroup, false);
        if (inflate == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$3("rootView");
            return null;
        }
        FrameLayout frameLayout = (FrameLayout) inflate;
        this._binding = new OkHttpCall.AnonymousClass1(8, frameLayout, frameLayout);
        Prefs prefs = Prefs.INSTANCE;
        String recentEditsWikiCode = Prefs.getRecentEditsWikiCode();
        if (bundle == null) {
            FragmentManagerImpl childFragmentManager = getChildFragmentManager();
            childFragmentManager.getClass();
            BackStackRecord backStackRecord = new BackStackRecord(childFragmentManager);
            OkHttpCall.AnonymousClass1 anonymousClass1 = this._binding;
            anonymousClass1.getClass();
            int id = ((FrameLayout) anonymousClass1.this$0).getId();
            WikiSite.Companion.getClass();
            PageTitle pageTitle = new PageTitle("", WikiSite.Companion.forLanguageCode(recentEditsWikiCode), (String) null);
            Constants.InvokeSource invokeSource = Constants.InvokeSource.SUGGESTED_EDITS_RECENT_EDITS;
            invokeSource.getClass();
            ArticleEditDetailsFragment articleEditDetailsFragment = new ArticleEditDetailsFragment();
            articleEditDetailsFragment.setArguments(UStringsKt.bundleOf(new Pair("articleTitle", pageTitle), new Pair("pageId", -1), new Pair("revisionFrom", -1L), new Pair("revisionTo", -1L), new Pair("invokeSource", invokeSource)));
            backStackRecord.doAddOp(id, articleEditDetailsFragment, null, 1);
            backStackRecord.commit();
        }
        OkHttpCall.AnonymousClass1 anonymousClass12 = this._binding;
        anonymousClass12.getClass();
        return (FrameLayout) anonymousClass12.val$callback;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.mCalled = true;
        this._binding = null;
    }

    @Override // org.wikipedia.suggestededits.SuggestedEditsItemFragment
    public final void publish() {
        parent().nextPage(this);
    }
}
