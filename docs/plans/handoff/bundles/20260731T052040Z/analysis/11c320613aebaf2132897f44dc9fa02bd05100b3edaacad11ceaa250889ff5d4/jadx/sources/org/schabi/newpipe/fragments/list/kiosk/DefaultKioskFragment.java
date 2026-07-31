package org.schabi.newpipe.fragments.list.kiosk;

import android.os.Bundle;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.ConsumerSingleObserver;
import java.util.HashMap;
import kotlin.ranges.RangesKt;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.error.UserAction;
import org.schabi.newpipe.extractor.exceptions.ExtractionException;
import org.schabi.newpipe.extractor.kiosk.KioskList$KioskEntry;
import org.schabi.newpipe.util.ServiceHelper;
import us.shandian.giga.util.Utility;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class DefaultKioskFragment extends KioskFragment {
    @Override // org.schabi.newpipe.fragments.list.kiosk.KioskFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.BaseFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.serviceId < 0) {
            updateSelectedDefaultKiosk();
        }
    }

    @Override // org.schabi.newpipe.fragments.list.kiosk.KioskFragment, org.schabi.newpipe.fragments.list.BaseListInfoFragment, org.schabi.newpipe.fragments.list.BaseListFragment, org.schabi.newpipe.fragments.BaseStateFragment, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        if (this.serviceId != ServiceHelper.getSelectedServiceId(requireContext())) {
            ConsumerSingleObserver consumerSingleObserver = this.currentWorker;
            if (consumerSingleObserver != null) {
                DisposableHelper.dispose(consumerSingleObserver);
            }
            updateSelectedDefaultKiosk();
            startLoading(true);
        }
    }

    public final void updateSelectedDefaultKiosk() {
        try {
            int selectedServiceId = ServiceHelper.getSelectedServiceId(requireContext());
            this.serviceId = selectedServiceId;
            TokenData kioskList = Utility.getService(selectedServiceId).getKioskList();
            String str = (String) kioskList.value;
            this.kioskId = str;
            this.url = ((KioskList$KioskEntry) ((HashMap) kioskList.builder).get(str)).handlerFactory.fromId(this.kioskId).getUrl();
            String translatedKioskName = RangesKt.getTranslatedKioskName(requireContext(), this.kioskId);
            this.kioskTranslatedName = translatedKioskName;
            this.name = translatedKioskName;
            this.currentInfo = null;
            this.currentNextPage = null;
        } catch (ExtractionException e) {
            showError(new ErrorInfo(e, UserAction.REQUESTED_KIOSK, "Loading default kiosk for selected service", (Integer) null, 24));
        }
    }
}
