package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.CellContainerManagerInterface;
import com.google.firebase.analytics.FirebaseAnalytics;

/* loaded from: classes3.dex */
public class CellContainerManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & CellContainerManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    /* JADX WARN: Incorrect types in method signature: (TU;)V */
    public CellContainerManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override // com.facebook.react.uimanager.BaseViewManagerDelegate, com.facebook.react.uimanager.ViewManagerDelegate
    /* renamed from: setProperty */
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals(FirebaseAnalytics.Param.INDEX)) {
            ((CellContainerManagerInterface) this.mViewManager).setIndex(t, obj == null ? 0 : ((Double) obj).intValue());
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
