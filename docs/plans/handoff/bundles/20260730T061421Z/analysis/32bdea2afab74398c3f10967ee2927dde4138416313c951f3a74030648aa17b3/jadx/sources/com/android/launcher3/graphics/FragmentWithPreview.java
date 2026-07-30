package com.android.launcher3.graphics;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public class FragmentWithPreview extends Fragment {
    public Context mPreviewContext;

    @Override // android.app.Fragment
    public Context getContext() {
        Context context = this.mPreviewContext;
        return context != null ? context : getActivity();
    }

    @Override // android.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        onInit(bundle);
    }

    public void onInit(Bundle bundle) {
    }
}
