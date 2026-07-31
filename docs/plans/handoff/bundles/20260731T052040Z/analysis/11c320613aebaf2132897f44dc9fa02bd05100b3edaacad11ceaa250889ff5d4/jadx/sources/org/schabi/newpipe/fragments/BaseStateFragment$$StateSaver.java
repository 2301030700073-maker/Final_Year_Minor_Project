package org.schabi.newpipe.fragments;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.schabi.newpipe.BaseFragment$$StateSaver;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.fragments.BaseStateFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BaseStateFragment$$StateSaver<T extends BaseStateFragment> extends BaseFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((BaseStateFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.lastPanelError = (ErrorInfo) injectionHelper.getParcelable(bundle, "lastPanelError");
        t.wasLoading = (AtomicBoolean) injectionHelper.getSerializable(bundle, "wasLoading");
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((BaseStateFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putParcelable(bundle, "lastPanelError", t.lastPanelError);
        injectionHelper.putSerializable(bundle, "wasLoading", t.wasLoading);
    }
}
