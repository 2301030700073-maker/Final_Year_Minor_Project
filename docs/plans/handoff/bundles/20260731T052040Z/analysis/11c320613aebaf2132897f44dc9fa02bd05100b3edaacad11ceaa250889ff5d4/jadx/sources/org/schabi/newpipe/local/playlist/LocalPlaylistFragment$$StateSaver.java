package org.schabi.newpipe.local.playlist;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.local.playlist.LocalPlaylistFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class LocalPlaylistFragment$$StateSaver<T extends LocalPlaylistFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.playlist.LocalPlaylistFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((LocalPlaylistFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.itemsListState = injectionHelper.getParcelable(bundle, "itemsListState");
        t.name = injectionHelper.getString(bundle, "name");
        t.playlistId = injectionHelper.getBoxedLong(bundle, "playlistId");
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((LocalPlaylistFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putParcelable(bundle, "itemsListState", t.itemsListState);
        injectionHelper.putString(bundle, "name", t.name);
        injectionHelper.putBoxedLong(bundle, "playlistId", t.playlistId);
    }
}
