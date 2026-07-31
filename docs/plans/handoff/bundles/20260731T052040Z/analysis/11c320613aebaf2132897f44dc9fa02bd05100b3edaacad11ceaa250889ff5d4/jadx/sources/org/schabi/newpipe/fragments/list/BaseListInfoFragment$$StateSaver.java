package org.schabi.newpipe.fragments.list;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BaseListInfoFragment$$StateSaver<T extends BaseListInfoFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((BaseListInfoFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.name = injectionHelper.getString(bundle, "name");
        t.serviceId = injectionHelper.getInt(bundle, "serviceId");
        t.url = injectionHelper.getString(bundle, "url");
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((BaseListInfoFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putString(bundle, "name", t.name);
        injectionHelper.putInt(bundle, "serviceId", t.serviceId);
        injectionHelper.putString(bundle, "url", t.url);
    }
}
