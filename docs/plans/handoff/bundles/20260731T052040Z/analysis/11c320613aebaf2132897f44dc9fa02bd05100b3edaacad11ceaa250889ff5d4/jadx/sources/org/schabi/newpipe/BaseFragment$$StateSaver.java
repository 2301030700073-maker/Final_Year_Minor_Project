package org.schabi.newpipe;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import org.schabi.newpipe.BaseFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BaseFragment$$StateSaver<T extends BaseFragment> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.BaseFragment$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        t.useAsFrontPage = HELPER.getBoolean(bundle, "useAsFrontPage");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        HELPER.putBoolean(bundle, "useAsFrontPage", t.useAsFrontPage);
    }
}
