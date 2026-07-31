package com.fsck.k9.ui.base.loader;

import android.view.View;
import androidx.lifecycle.Observer;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import com.fsck.k9.ui.base.loader.LoaderState;
import java.util.Set;
import kotlin.collections.AbstractMap$$ExternalSyntheticLambda0;
import kotlin.collections.ArraysKt___ArraysKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoaderStateObserver implements Observer {
    public final Set allViews;
    public final View dataView;
    public final AbstractMap$$ExternalSyntheticLambda0 displayData;
    public final View errorView;
    public final View loadingView;

    public LoaderStateObserver(View view, View view2, View view3, AbstractMap$$ExternalSyntheticLambda0 abstractMap$$ExternalSyntheticLambda0) {
        this.loadingView = view;
        this.errorView = view2;
        this.dataView = view3;
        this.displayData = abstractMap$$ExternalSyntheticLambda0;
        this.allViews = ArraysKt___ArraysKt.toSet(new View[]{view, view2, view3});
    }

    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        LoaderState loaderState = (LoaderState) obj;
        loaderState.getClass();
        if (loaderState instanceof LoaderState.Loading) {
            show(this.loadingView);
            return;
        }
        if (loaderState instanceof LoaderState.Error) {
            show(this.errorView);
        } else {
            if (!(loaderState instanceof LoaderState.Data)) {
                UriKt$$ExternalSyntheticBUOutline0.m857m();
                return;
            }
            show(this.dataView);
            this.displayData.invoke(((LoaderState.Data) loaderState).data);
        }
    }

    public final void show(View view) {
        for (View view2 : this.allViews) {
            view2.setVisibility(view2 == view ? 0 : 8);
        }
    }
}
