package org.schabi.newpipe.local.subscription;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.BaseFragment$$StateSaver;
import org.schabi.newpipe.local.subscription.SubscriptionsImportFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SubscriptionsImportFragment$$StateSaver<T extends SubscriptionsImportFragment> extends BaseFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.subscription.SubscriptionsImportFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((SubscriptionsImportFragment$$StateSaver<T>) t, bundle);
        t.currentServiceId = HELPER.getInt(bundle, "currentServiceId");
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((SubscriptionsImportFragment$$StateSaver<T>) t, bundle);
        HELPER.putInt(bundle, "currentServiceId", t.currentServiceId);
    }
}
