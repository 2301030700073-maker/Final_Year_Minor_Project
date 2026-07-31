package org.schabi.newpipe.fragments.list.kiosk;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.extractor.localization.ContentCountry;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver;
import org.schabi.newpipe.fragments.list.kiosk.KioskFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class KioskFragment$$StateSaver<T extends KioskFragment> extends BaseListInfoFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.list.kiosk.KioskFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((KioskFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.contentCountry = (ContentCountry) injectionHelper.getSerializable(bundle, "contentCountry");
        t.kioskId = injectionHelper.getString(bundle, "kioskId");
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((KioskFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putSerializable(bundle, "contentCountry", t.contentCountry);
        injectionHelper.putString(bundle, "kioskId", t.kioskId);
    }
}
