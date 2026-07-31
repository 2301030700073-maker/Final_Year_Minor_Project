package org.schabi.newpipe.local.subscription.dialog;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import com.evernote.android.state.Injector;
import java.util.ArrayList;
import java.util.HashMap;
import org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class FeedGroupReorderDialog$$StateSaver<T extends FeedGroupReorderDialog> extends Injector.Object<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.local.subscription.dialog.FeedGroupReorderDialog$$StateSaver", hashMap);
    }

    @Override // com.evernote.android.state.Injector.Object
    public void restore(T t, Bundle bundle) {
        t.groupOrderedIdList = (ArrayList) HELPER.getSerializable(bundle, "groupOrderedIdList");
    }

    @Override // com.evernote.android.state.Injector.Object
    public void save(T t, Bundle bundle) {
        HELPER.putSerializable(bundle, "groupOrderedIdList", t.groupOrderedIdList);
    }
}
