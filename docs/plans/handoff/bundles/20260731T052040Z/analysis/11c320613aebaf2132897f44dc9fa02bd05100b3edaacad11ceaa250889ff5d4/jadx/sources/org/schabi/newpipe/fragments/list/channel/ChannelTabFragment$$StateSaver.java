package org.schabi.newpipe.fragments.list.channel;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.extractor.linkhandler.ListLinkHandler;
import org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver;
import org.schabi.newpipe.fragments.list.channel.ChannelTabFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class ChannelTabFragment$$StateSaver<T extends ChannelTabFragment> extends BaseListInfoFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.list.channel.ChannelTabFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((ChannelTabFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.channelName = injectionHelper.getString(bundle, "channelName");
        t.tabHandler = (ListLinkHandler) injectionHelper.getSerializable(bundle, "tabHandler");
    }

    @Override // org.schabi.newpipe.fragments.list.BaseListInfoFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((ChannelTabFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putString(bundle, "channelName", t.channelName);
        injectionHelper.putSerializable(bundle, "tabHandler", t.tabHandler);
    }
}
