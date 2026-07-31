package org.wikipedia.page.customize;

import android.view.View;
import android.widget.LinearLayout;
import org.wikipedia.databinding.ItemCustomizeToolbarBinding;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CustomizeToolbarItemView extends LinearLayout {
    public ItemCustomizeToolbarBinding binding;

    public final void setDragHandleEnabled(boolean z) {
        this.binding.dragHandle.setVisibility(z ? 0 : 8);
    }

    public final void setDragHandleTouchListener(View.OnTouchListener onTouchListener) {
        this.binding.dragHandle.setOnTouchListener(onTouchListener);
    }
}
