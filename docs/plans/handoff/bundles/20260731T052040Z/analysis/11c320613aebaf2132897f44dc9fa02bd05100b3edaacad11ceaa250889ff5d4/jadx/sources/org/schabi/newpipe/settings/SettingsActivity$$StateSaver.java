package org.schabi.newpipe.settings;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import org.schabi.newpipe.settings.SettingsActivity;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class SettingsActivity$$StateSaver<T extends SettingsActivity> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.settings.SettingsActivity$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        t.searchText = injectionHelper.getString(bundle, "searchText");
        t.wasSearchActive = injectionHelper.getBoolean(bundle, "wasSearchActive");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putString(bundle, "searchText", t.searchText);
        injectionHelper.putBoolean(bundle, "wasSearchActive", t.wasSearchActive);
    }
}
