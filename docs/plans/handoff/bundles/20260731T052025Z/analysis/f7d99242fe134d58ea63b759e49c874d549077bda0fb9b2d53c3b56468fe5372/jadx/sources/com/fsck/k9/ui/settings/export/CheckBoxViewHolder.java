package com.fsck.k9.ui.settings.export;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.google.android.material.checkbox.MaterialCheckBox;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class CheckBoxViewHolder extends RecyclerView.ViewHolder {
    public final MaterialCheckBox checkBox;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CheckBoxViewHolder(View view) {
        super(view);
        view.getClass();
        View findViewById = view.findViewById(R.id.checkBox);
        findViewById.getClass();
        this.checkBox = (MaterialCheckBox) findViewById;
    }
}
