package org.schabi.newpipe.fragments.detail;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.fragments.detail.VideoDetailFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class VideoDetailFragment$$StateSaver<T extends VideoDetailFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.detail.VideoDetailFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((VideoDetailFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.autoPlayEnabled = injectionHelper.getBoolean(bundle, "autoPlayEnabled");
        t.bottomSheetState = injectionHelper.getInt(bundle, "bottomSheetState");
        t.lastStableBottomSheetState = injectionHelper.getInt(bundle, "lastStableBottomSheetState");
        t.serviceId = injectionHelper.getInt(bundle, "serviceId");
        t.title = injectionHelper.getString(bundle, "title");
        t.url = injectionHelper.getString(bundle, "url");
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((VideoDetailFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putBoolean(bundle, "autoPlayEnabled", t.autoPlayEnabled);
        injectionHelper.putInt(bundle, "bottomSheetState", t.bottomSheetState);
        injectionHelper.putInt(bundle, "lastStableBottomSheetState", t.lastStableBottomSheetState);
        injectionHelper.putInt(bundle, "serviceId", t.serviceId);
        injectionHelper.putString(bundle, "title", t.title);
        injectionHelper.putString(bundle, "url", t.url);
    }
}
