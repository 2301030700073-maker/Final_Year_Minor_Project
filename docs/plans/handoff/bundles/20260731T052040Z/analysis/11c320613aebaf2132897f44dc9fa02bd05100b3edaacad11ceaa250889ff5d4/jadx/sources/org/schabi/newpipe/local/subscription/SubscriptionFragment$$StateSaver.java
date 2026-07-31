package org.schabi.newpipe.local.subscription;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.local.subscription.SubscriptionFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SubscriptionFragment$$StateSaver<T extends SubscriptionFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.subscription.SubscriptionFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((SubscriptionFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.feedGroupsCarouselState = injectionHelper.getParcelable(bundle, "feedGroupsCarouselState");
        t.itemsListState = injectionHelper.getParcelable(bundle, "itemsListState");
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((SubscriptionFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putParcelable(bundle, "feedGroupsCarouselState", t.feedGroupsCarouselState);
        injectionHelper.putParcelable(bundle, "itemsListState", t.itemsListState);
    }
}
