package org.schabi.newpipe.fragments.list.videos;

import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.preference.PreferenceManager;
import coil3.decode.StaticImageDecoderKt$$ExternalSyntheticLambda0;
import com.google.android.material.chip.Chip$$ExternalSyntheticLambda0;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import j$.util.Objects;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.function.Supplier;
import net.newpipe.app.AppKt;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.InfoItem;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.extractor.stream.StreamInfo;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.fragments.list.search.SearchFragment$$ExternalSyntheticLambda23;
import org.schabi.newpipe.info_list.ItemViewMode;
import org.schabi.newpipe.player.Player$$ExternalSyntheticLambda38;
import org.schabi.newpipe.streams.WebMReader;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RelatedItemsFragment extends BaseListInfoFragment<InfoItem, RelatedItemsInfo> implements SharedPreferences.OnSharedPreferenceChangeListener {
    public static final /* synthetic */ int $r8$clinit = 0;
    public TokenData headerBinding;
    public RelatedItemsInfo relatedItemsInfo;

    public RelatedItemsFragment() {
        super(UserAction.REQUESTED_STREAM);
    }

    public static RelatedItemsFragment getInstance(StreamInfo streamInfo) {
        RelatedItemsFragment relatedItemsFragment = new RelatedItemsFragment();
        relatedItemsFragment.setInitialData(streamInfo.getUrl(), streamInfo.getServiceId(), streamInfo.getName());
        if (relatedItemsFragment.relatedItemsInfo == null) {
            RelatedItemsInfo relatedItemsInfo = new RelatedItemsInfo(streamInfo.getServiceId(), new ListLinkHandler(streamInfo.getOriginalUrl(), streamInfo.getUrl(), streamInfo.getId(), Collections.EMPTY_LIST, null), streamInfo.getName());
            relatedItemsInfo.setRelatedItems(new ArrayList(streamInfo.getRelatedItems()));
            relatedItemsFragment.relatedItemsInfo = relatedItemsInfo;
        }
        return relatedItemsFragment;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final ItemViewMode getItemViewMode() {
        ItemViewMode itemViewMode = super.getItemViewMode();
        ItemViewMode itemViewMode2 = ItemViewMode.LIST;
        return (itemViewMode == itemViewMode2 || itemViewMode == ItemViewMode.CARD) ? itemViewMode : itemViewMode2;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final Supplier getListHeaderSupplier() {
        RelatedItemsInfo relatedItemsInfo = this.relatedItemsInfo;
        if (relatedItemsInfo != null && relatedItemsInfo.getRelatedItems() != null) {
            View inflate = this.activity.getLayoutInflater().inflate(R.layout.related_items_header, (ViewGroup) this.itemsList, false);
            SwitchCompat switchCompat = (SwitchCompat) Options.Companion.findChildViewById(R.id.autoplay_switch, inflate);
            if (switchCompat != null) {
                this.headerBinding = new TokenData((ConstraintLayout) inflate, switchCompat, 9);
                ((SwitchCompat) this.headerBinding.builder).setChecked(PreferenceManager.getDefaultSharedPreferences(requireContext()).getBoolean(getString(R.string.auto_queue_key), false));
                ((SwitchCompat) this.headerBinding.builder).setOnCheckedChangeListener(new Chip$$ExternalSyntheticLambda0(this, 1));
                TokenData tokenData = this.headerBinding;
                Objects.requireNonNull(tokenData);
                return new Player$$ExternalSyntheticLambda38(tokenData, 4);
            }
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m$1("Missing required view with ID: ".concat(inflate.getResources().getResourceName(R.id.autoplay_switch)));
        }
        return null;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final void handleResult(ListInfo listInfo) {
        super.handleResult((RelatedItemsInfo) listInfo);
        TokenData tokenData = this.headerBinding;
        if (tokenData != null) {
            ((ConstraintLayout) tokenData.value).setVisibility(0);
        }
        View requireView = requireView();
        requireView.getClass();
        AppKt.slideUp$default(requireView, 120L, 96L, null, 8);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        return new SingleAmb(new SearchFragment$$ExternalSyntheticLambda23(1), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        return new SingleAmb(new StaticImageDecoderKt$$ExternalSyntheticLambda0(this, 3), 3);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_related_items, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this.headerBinding = null;
        super.onDestroyView();
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment
    public final void onRestoreInstanceState(Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        Serializable serializable = bundle.getSerializable("related_info_key");
        if (serializable instanceof RelatedItemsInfo) {
            this.relatedItemsInfo = (RelatedItemsInfo) serializable;
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putSerializable("related_info_key", this.relatedItemsInfo);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (this.headerBinding == null || !getString(R.string.auto_queue_key).equals(str)) {
            return;
        }
        ((SwitchCompat) this.headerBinding.builder).setChecked(sharedPreferences.getBoolean(str, false));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment
    public final void showInfoItemDialog(StreamInfoItem streamInfoItem) {
        Fragment parentFragment = getParentFragment();
        if (parentFragment == null) {
            super.showInfoItemDialog(streamInfoItem);
            return;
        }
        try {
            new WebMReader.Segment(parentFragment.getActivity(), parentFragment.getContext(), parentFragment, streamInfoItem).create().show();
        } catch (IllegalArgumentException e) {
            WebMReader.Segment.reportErrorDuringInitialization(e, streamInfoItem);
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void showLoading() {
        super.showLoading();
        TokenData tokenData = this.headerBinding;
        if (tokenData != null) {
            ((ConstraintLayout) tokenData.value).setVisibility(4);
        }
    }

    @Override // org.schabi.newpipe.BaseFragment
    public final void setTitle(String str) {
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
    }
}
