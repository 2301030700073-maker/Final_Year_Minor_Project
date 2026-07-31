package org.schabi.newpipe.fragments;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.BaseFragment$$StateSaver;
import org.schabi.newpipe.error.ErrorInfo;
import org.schabi.newpipe.fragments.BlankFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BlankFragment$$StateSaver<T extends BlankFragment> extends BaseFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.BlankFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((BlankFragment$$StateSaver<T>) t, bundle);
        t.errorInfo = (ErrorInfo) HELPER.getParcelable(bundle, "errorInfo");
    }

    @Override // org.schabi.newpipe.BaseFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((BlankFragment$$StateSaver<T>) t, bundle);
        HELPER.putParcelable(bundle, "errorInfo", t.errorInfo);
    }
}
