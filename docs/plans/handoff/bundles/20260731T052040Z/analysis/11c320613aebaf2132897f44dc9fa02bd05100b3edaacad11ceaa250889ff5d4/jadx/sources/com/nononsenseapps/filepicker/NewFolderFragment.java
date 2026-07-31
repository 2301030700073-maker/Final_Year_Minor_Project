package com.nononsenseapps.filepicker;

import android.text.TextUtils;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class NewFolderFragment extends NewItemFragment {
    @Override // com.nononsenseapps.filepicker.NewItemFragment
    public final boolean validateName(String str) {
        return (TextUtils.isEmpty(str) || str.contains("/") || str.equals(".") || str.equals("..")) ? false : true;
    }
}
