package com.google.android.material.expandable;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ExpandableWidgetHelper {
    public abstract int getExpandedComponentIdHint();

    public abstract boolean isExpanded();

    public abstract void onRestoreInstanceState(Bundle bundle);

    public abstract Bundle onSaveInstanceState();
}
