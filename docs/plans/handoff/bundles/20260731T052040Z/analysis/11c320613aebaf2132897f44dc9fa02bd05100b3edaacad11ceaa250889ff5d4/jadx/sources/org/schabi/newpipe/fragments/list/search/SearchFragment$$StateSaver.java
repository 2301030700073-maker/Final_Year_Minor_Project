package org.schabi.newpipe.fragments.list.search;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import com.evernote.android.state.InjectionHelper;
import java.util.HashMap;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver;
import org.schabi.newpipe.fragments.list.search.SearchFragment;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SearchFragment$$StateSaver<T extends SearchFragment> extends BaseStateFragment$$StateSaver<T> {
    private static final HashMap<String, Bundler<?>> BUNDLERS;
    private static final InjectionHelper HELPER;

    static {
        HashMap<String, Bundler<?>> hashMap = new HashMap<>();
        BUNDLERS = hashMap;
        HELPER = new InjectionHelper("org.schabi.newpipe.fragments.list.search.SearchFragment$$StateSaver", hashMap);
    }

    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void restore(T t, Bundle bundle) {
        super.restore((SearchFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        t.contentFilter = injectionHelper.getStringArray(bundle, "contentFilter");
        t.filterItemCheckedId = injectionHelper.getInt(bundle, "filterItemCheckedId");
        t.isCorrectedSearch = injectionHelper.getBoolean(bundle, "isCorrectedSearch");
        t.lastSearchedString = injectionHelper.getString(bundle, "lastSearchedString");
        t.metaInfo = (MetaInfo[]) injectionHelper.getSerializable(bundle, "metaInfo");
        t.searchString = injectionHelper.getString(bundle, "searchString");
        t.searchSuggestion = injectionHelper.getString(bundle, "searchSuggestion");
        t.serviceId = injectionHelper.getInt(bundle, "serviceId");
        t.sortFilter = injectionHelper.getString(bundle, "sortFilter");
        t.wasSearchFocused = injectionHelper.getBoolean(bundle, "wasSearchFocused");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.Serializable, org.schabi.newpipe.extractor.MetaInfo[]] */
    @Override // org.schabi.newpipe.fragments.BaseStateFragment$$StateSaver
    public void save(T t, Bundle bundle) {
        super.save((SearchFragment$$StateSaver<T>) t, bundle);
        InjectionHelper injectionHelper = HELPER;
        injectionHelper.putStringArray(bundle, "contentFilter", t.contentFilter);
        injectionHelper.putInt(bundle, "filterItemCheckedId", t.filterItemCheckedId);
        injectionHelper.putBoolean(bundle, "isCorrectedSearch", t.isCorrectedSearch);
        injectionHelper.putString(bundle, "lastSearchedString", t.lastSearchedString);
        injectionHelper.putSerializable(bundle, "metaInfo", t.metaInfo);
        injectionHelper.putString(bundle, "searchString", t.searchString);
        injectionHelper.putString(bundle, "searchSuggestion", t.searchSuggestion);
        injectionHelper.putInt(bundle, "serviceId", t.serviceId);
        injectionHelper.putString(bundle, "sortFilter", t.sortFilter);
        injectionHelper.putBoolean(bundle, "wasSearchFocused", t.wasSearchFocused);
    }
}
