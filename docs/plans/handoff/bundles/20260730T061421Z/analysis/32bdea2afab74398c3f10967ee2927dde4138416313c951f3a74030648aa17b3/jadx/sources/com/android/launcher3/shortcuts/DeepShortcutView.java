package com.android.launcher3.shortcuts;

import android.content.Context;
import android.content.pm.ShortcutInfo;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Launcher;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.systemui.shared.R;

/* loaded from: classes.dex */
public class DeepShortcutView extends FrameLayout {
    public static final Point sTempPoint = new Point();
    public BubbleTextView mBubbleText;
    public ShortcutInfo mDetail;
    public View mDivider;
    public View mIconView;
    public WorkspaceItemInfo mInfo;

    public DeepShortcutView(Context context) {
        this(context, null, 0);
    }

    public WorkspaceItemInfo getFinalInfo() {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this.mInfo);
        Launcher.getLauncher(getContext()).mModel.updateAndBindWorkspaceItem(workspaceItemInfo, this.mDetail);
        return workspaceItemInfo;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mBubbleText = (BubbleTextView) findViewById(R.id.bubble_text);
        this.mIconView = findViewById(R.id.icon);
        this.mDivider = findViewById(R.id.divider);
    }

    public DeepShortcutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DeepShortcutView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
