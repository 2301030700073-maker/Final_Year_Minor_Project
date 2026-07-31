package com.evernote.android.state.bundlers;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BundlerListString implements Bundler<List<String>> {
    @Override // com.evernote.android.state.Bundler
    public void put(String str, List<String> list, Bundle bundle) {
        bundle.putStringArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    @Override // com.evernote.android.state.Bundler
    public List<String> get(String str, Bundle bundle) {
        return bundle.getStringArrayList(str);
    }
}
