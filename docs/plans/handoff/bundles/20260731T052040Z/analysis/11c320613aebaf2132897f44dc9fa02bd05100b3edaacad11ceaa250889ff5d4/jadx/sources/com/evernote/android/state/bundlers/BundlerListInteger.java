package com.evernote.android.state.bundlers;

import android.os.Bundle;
import com.evernote.android.state.Bundler;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BundlerListInteger implements Bundler<List<Integer>> {
    @Override // com.evernote.android.state.Bundler
    public void put(String str, List<Integer> list, Bundle bundle) {
        bundle.putIntegerArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    @Override // com.evernote.android.state.Bundler
    public List<Integer> get(String str, Bundle bundle) {
        return bundle.getIntegerArrayList(str);
    }
}
