package org.schabi.newpipe.local.bookmark;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.local.bookmark.BookmarkFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BookmarkFragment$$StateSaver<T extends BookmarkFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.bookmark.BookmarkFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((BookmarkFragment$$StateSaver<T>) t, bundle);
        t.itemsListState = HELPER.getParcelable(bundle, "itemsListState");
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((BookmarkFragment$$StateSaver<T>) t, bundle);
        HELPER.putParcelable(bundle, "itemsListState", t.itemsListState);
    }
}
