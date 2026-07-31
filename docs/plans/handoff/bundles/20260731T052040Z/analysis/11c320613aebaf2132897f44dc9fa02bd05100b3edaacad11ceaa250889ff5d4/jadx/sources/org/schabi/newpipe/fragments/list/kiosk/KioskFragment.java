package org.schabi.newpipe.fragments.list.kiosk;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import java.util.HashMap;
import kotlin.ranges.RangesKt;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.ListInfo;
import org.schabi.newpipe.extractor.Page;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.kiosk.KioskInfo;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskEntry;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.extractor.stream.StreamInfoItem;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;
import org.schabi.newpipe.util.ExtractorHelper;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda3;
import org.schabi.newpipe.util.ExtractorHelper$$ExternalSyntheticLambda5;
import org.schabi.newpipe.util.InfoCache;
import org.schabi.newpipe.util.Localization;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class KioskFragment extends BaseListInfoFragment<StreamInfoItem, KioskInfo> {
    ContentCountry contentCountry;
    String kioskId;
    public String kioskTranslatedName;

    public KioskFragment() {
        super(UserAction.REQUESTED_KIOSK);
        this.kioskId = "";
    }

    public static KioskFragment getInstance(int i, String str) {
        KioskFragment kioskFragment = new KioskFragment();
        kioskFragment.setInitialData(((KioskList$KioskEntry) ((HashMap) Utility.getService(i).getKioskList().builder).get(str)).handlerFactory.fromId(str).getUrl(), i, str);
        kioskFragment.kioskId = str;
        return kioskFragment;
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final void handleResult(ListInfo listInfo) {
        super.handleResult((KioskInfo) listInfo);
        String str = this.kioskTranslatedName;
        this.name = str;
        setTitle(str);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final SingleAmb loadMoreItemsLogic() {
        int i = this.serviceId;
        String str = this.url;
        Page page = this.currentNextPage;
        InfoCache infoCache = ExtractorHelper.CACHE;
        return new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda5(i, str, page, 0), 3);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment
    public final Single loadResult(boolean z) {
        this.contentCountry = Localization.getPreferredContentCountry(requireContext());
        int i = this.serviceId;
        String str = this.url;
        return ExtractorHelper.checkCache(z, i, str, 6, new SingleAmb(new ExtractorHelper$$ExternalSyntheticLambda3(i, 2, str), 3));
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String translatedKioskName = RangesKt.getTranslatedKioskName(this.activity, this.kioskId);
        this.kioskTranslatedName = translatedKioskName;
        this.name = translatedKioskName;
        this.contentCountry = Localization.getPreferredContentCountry(requireContext());
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListFragment, androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater menuInflater) {
        super.onCreateOptionsMenu(menu, menuInflater);
        Options.Companion supportActionBar = this.activity.getSupportActionBar();
        if (supportActionBar == null || !this.useAsFrontPage) {
            return;
        }
        supportActionBar.setDisplayHomeAsUpEnabled(false);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_kiosk, viewGroup, false);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (!Localization.getPreferredContentCountry(requireContext()).equals(this.contentCountry)) {
            startLoading(true);
        }
        if (!this.useAsFrontPage || this.activity == null) {
            return;
        }
        try {
            setTitle(this.kioskTranslatedName);
        } catch (Exception e) {
            showSnackBarError(new ErrorInfo(e, UserAction.UI_ERROR, "Setting kiosk title", (Integer) null, 24));
        }
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment
    public final void showEmptyState() {
        TextView textView;
        super.showEmptyState();
        if ("live".equals(((KioskInfo) this.currentInfo).getId()) && ServiceList.MediaCCC.serviceId == ((KioskInfo) this.currentInfo).getServiceId() && (textView = this.emptyStateMessageView) != null) {
            textView.setText(R.string.no_live_streams);
        }
    }
}
