package androidx.camera.core.impl;

import androidx.core.view.MenuHostHelper;
import androidx.lifecycle.MutableLiveData;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class LiveDataObservable$$ExternalSyntheticLambda1 implements Runnable {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MenuHostHelper f$0;

    public /* synthetic */ LiveDataObservable$$ExternalSyntheticLambda1(MenuHostHelper menuHostHelper, int i) {
        this.$r8$classId = i;
        this.f$0 = menuHostHelper;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        MenuHostHelper menuHostHelper = this.f$0;
        switch (i) {
            case 0:
                LiveDataObservable$$ExternalSyntheticLambda3 liveDataObservable$$ExternalSyntheticLambda3 = (LiveDataObservable$$ExternalSyntheticLambda3) menuHostHelper.mMenuProviders;
                if (liveDataObservable$$ExternalSyntheticLambda3 != null) {
                    ((MutableLiveData) menuHostHelper.mOnInvalidateMenuCallback).removeObserver(liveDataObservable$$ExternalSyntheticLambda3);
                    break;
                }
                break;
            default:
                if (((LiveDataObservable$$ExternalSyntheticLambda3) menuHostHelper.mMenuProviders) == null) {
                    menuHostHelper.mMenuProviders = new LiveDataObservable$$ExternalSyntheticLambda3(0, menuHostHelper);
                }
                ((MutableLiveData) menuHostHelper.mOnInvalidateMenuCallback).observeForever((LiveDataObservable$$ExternalSyntheticLambda3) menuHostHelper.mMenuProviders);
                break;
        }
    }
}
