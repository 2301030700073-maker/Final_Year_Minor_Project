package com.facebook.react.viewmanagers;

import android.view.View;
import com.facebook.react.uimanager.ViewManagerWithGeneratedInterface;

/* loaded from: classes3.dex */
public interface AutoLayoutViewManagerInterface<T extends View> extends ViewManagerWithGeneratedInterface {
    void setDisableAutoLayout(T t, boolean z);

    void setEnableInstrumentation(T t, boolean z);

    void setHorizontal(T t, boolean z);

    void setRenderAheadOffset(T t, double d);

    void setScrollOffset(T t, double d);

    void setWindowSize(T t, double d);
}
