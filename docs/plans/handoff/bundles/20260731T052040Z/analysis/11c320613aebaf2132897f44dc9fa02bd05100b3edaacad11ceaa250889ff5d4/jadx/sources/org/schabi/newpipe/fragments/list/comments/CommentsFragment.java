package org.schabi.newpipe.fragments.list.comments;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import net.newpipe.app.AppKt;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.comments.CommentsInfo;
import org.schabi.newpipe.extractor.comments.CommentsInfoItem;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda3;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class CommentsFragment extends BaseListInfoFragment<CommentsInfoItem, CommentsInfo> {
    public final CompositeDisposable disposables;
    public TextView emptyStateDesc;

    public CommentsFragment() {
        super(UserAction.REQUESTED_COMMENTS);
        this.disposables = new CompositeDisposable();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final ItemViewMode getItemViewMode() {
        return ItemViewMode.LIST;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final void handleResult(ListInfo listInfo) {
        CommentsInfo commentsInfo = (CommentsInfo) listInfo;
        super.handleResult(commentsInfo);
        this.emptyStateDesc.setText(commentsInfo.isCommentsDisabled() ? R.string.comments_are_disabled : R.string.no_comments);
        View requireView = requireView();
        requireView.getClass();
        AppKt.slideUp$default(requireView, 120L, 150L, null, 8);
        this.disposables.clear();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, org.schabi.newpipe.BaseFragment
    public final void initViews(View view, Bundle bundle) {
        super.initViews(view, bundle);
        this.emptyStateDesc = (TextView) view.findViewById(R.id.empty_state_desc);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        int i = this.serviceId;
        CommentsInfo commentsInfo = (CommentsInfo) this.currentInfo;
        Page page = this.currentNextPage;
        ExtractorHelper.checkServiceId(i);
        return new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda4(i, commentsInfo, page, 2), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        int i = this.serviceId;
        String str = this.url;
        ExtractorHelper.checkServiceId(i);
        return ExtractorHelper.checkCache(z, i, str, 4, new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i, 4, str), 3));
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_comments, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onDestroy() {
        super.onDestroy();
        this.disposables.clear();
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void setTitle(String str) {
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }
}
