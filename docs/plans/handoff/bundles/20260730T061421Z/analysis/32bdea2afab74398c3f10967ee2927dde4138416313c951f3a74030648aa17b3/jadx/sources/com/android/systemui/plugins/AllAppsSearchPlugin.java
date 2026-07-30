package com.android.systemui.plugins;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.EditText;
import com.android.systemui.plugins.annotations.ProvidesInterface;

@ProvidesInterface(action = AllAppsSearchPlugin.ACTION, version = 3)
/* loaded from: classes.dex */
public interface AllAppsSearchPlugin extends Plugin {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_ALL_APPS_SEARCH_ACTIONS";
    public static final int VERSION = 3;

    void onAnimationEnd(float f);

    void onDragStart(float f);

    void setEditText(EditText editText);

    void setProgress(float f);

    void setup(ViewGroup viewGroup, Activity activity, float f);
}
