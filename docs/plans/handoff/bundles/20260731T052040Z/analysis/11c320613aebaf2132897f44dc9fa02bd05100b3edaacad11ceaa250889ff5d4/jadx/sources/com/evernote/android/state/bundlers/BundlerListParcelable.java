package com.evernote.android.state.bundlers;

import android.os.Bundle;
import android.os.Parcelable;
import com.evernote.android.state.Bundler;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class BundlerListParcelable implements Bundler<List<? extends Parcelable>> {
    @Override // com.evernote.android.state.Bundler
    public void put(String str, List<? extends Parcelable> list, Bundle bundle) {
        bundle.putParcelableArrayList(str, list instanceof ArrayList ? (ArrayList) list : new ArrayList<>(list));
    }

    @Override // com.evernote.android.state.Bundler
    public List<? extends Parcelable> get(String str, Bundle bundle) {
        return bundle.getParcelableArrayList(str);
    }
}
