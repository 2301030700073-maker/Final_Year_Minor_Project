package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.BaseViewManager;
import com.facebook.react.uimanager.BaseViewManagerDelegate;
import com.facebook.react.uimanager.LayoutShadowNode;
import com.facebook.react.viewmanagers.AutoLayoutViewManagerInterface;

/* loaded from: classes3.dex */
public class AutoLayoutViewManagerDelegate<T extends View, U extends BaseViewManager<T, ? extends LayoutShadowNode> & AutoLayoutViewManagerInterface<T>> extends BaseViewManagerDelegate<T, U> {
    /* JADX WARN: Incorrect types in method signature: (TU;)V */
    public AutoLayoutViewManagerDelegate(BaseViewManager baseViewManager) {
        super(baseViewManager);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.facebook.react.uimanager.BaseViewManagerDelegate, com.facebook.react.uimanager.ViewManagerDelegate
    /* renamed from: setProperty */
    public void kotlinCompat$setProperty(T t, String str, Object obj) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1742339391:
                if (str.equals("disableAutoLayout")) {
                    c = 0;
                    break;
                }
                break;
            case -1735873685:
                if (str.equals("enableInstrumentation")) {
                    c = 1;
                    break;
                }
                break;
            case -866440768:
                if (str.equals("scrollOffset")) {
                    c = 2;
                    break;
                }
                break;
            case 1387629604:
                if (str.equals("horizontal")) {
                    c = 3;
                    break;
                }
                break;
            case 1705877054:
                if (str.equals("renderAheadOffset")) {
                    c = 4;
                    break;
                }
                break;
            case 1862514705:
                if (str.equals("windowSize")) {
                    c = 5;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setDisableAutoLayout(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 1:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setEnableInstrumentation(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 2:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setScrollOffset(t, obj != null ? ((Double) obj).doubleValue() : 0.0d);
                break;
            case 3:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setHorizontal(t, obj != null ? ((Boolean) obj).booleanValue() : false);
                break;
            case 4:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setRenderAheadOffset(t, obj != null ? ((Double) obj).doubleValue() : 0.0d);
                break;
            case 5:
                ((AutoLayoutViewManagerInterface) this.mViewManager).setWindowSize(t, obj != null ? ((Double) obj).doubleValue() : 0.0d);
                break;
            default:
                super.kotlinCompat$setProperty(t, str, obj);
                break;
        }
    }
}
