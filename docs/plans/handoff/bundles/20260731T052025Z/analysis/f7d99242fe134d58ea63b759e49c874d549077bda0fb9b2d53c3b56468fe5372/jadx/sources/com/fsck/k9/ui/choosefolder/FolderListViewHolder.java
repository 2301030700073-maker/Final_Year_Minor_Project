package com.fsck.k9.ui.choosefolder;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderListViewHolder extends RecyclerView.ViewHolder {
    public final ImageView icon;
    public final MaterialTextView name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FolderListViewHolder(View view) {
        super(view);
        view.getClass();
        View findViewById = view.findViewById(R.id.folder_icon);
        findViewById.getClass();
        this.icon = (ImageView) findViewById;
        View findViewById2 = view.findViewById(R.id.folder_name);
        findViewById2.getClass();
        this.name = (MaterialTextView) findViewById2;
    }
}
