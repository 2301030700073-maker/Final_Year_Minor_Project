package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.SkiaPictureViewManagerInterface;

/* loaded from: classes3.dex */
public class SkiaPictureViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & SkiaPictureViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    /* JADX WARN: Incorrect types in method signature: (TU;)V */
    public SkiaPictureViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    @Override // com.facebook.react.uimanager.BaseViewManagerDelegate, com.facebook.react.uimanager.ViewManagerDelegate
    /* renamed from: setProperty */
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        if (str.equals("opaque")) {
            ((SkiaPictureViewManagerInterface) this.mViewManager).setOpaque(t, obj != null ? ((Boolean) obj).booleanValue() : false);
        } else if (str.equals("debug")) {
            ((SkiaPictureViewManagerInterface) this.mViewManager).setDebug(t, obj != null ? ((Boolean) obj).booleanValue() : false);
        } else {
            super.kotlinCompat$setProperty(t, str, obj);
        }
    }
}
