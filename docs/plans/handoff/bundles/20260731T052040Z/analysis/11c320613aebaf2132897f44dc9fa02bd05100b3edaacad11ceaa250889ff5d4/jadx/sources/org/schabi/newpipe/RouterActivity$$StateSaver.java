package org.schabi.newpipe;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.HashMap;
import org.schabi.newpipe.RouterActivity;
import org.schabi.newpipe.extractor.StreamingService;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class RouterActivity$$StateSaver<T extends RouterActivity> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.RouterActivity$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        t.currentLinkType = (StreamingService.LinkType) injectionHelper.getSerializable(bundle, "currentLinkType");
        t.currentServiceId = injectionHelper.getInt(bundle, "currentServiceId");
        t.selectedRadioPosition = injectionHelper.getInt(bundle, "selectedRadioPosition");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putSerializable(bundle, "currentLinkType", t.currentLinkType);
        injectionHelper.putInt(bundle, "currentServiceId", t.currentServiceId);
        injectionHelper.putInt(bundle, "selectedRadioPosition", t.selectedRadioPosition);
    }
}
