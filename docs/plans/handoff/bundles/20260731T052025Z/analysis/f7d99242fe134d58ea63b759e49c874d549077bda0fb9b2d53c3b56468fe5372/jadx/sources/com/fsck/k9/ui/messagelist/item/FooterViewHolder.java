package com.fsck.k9.ui.messagelist.item;

import android.view.View;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FooterViewHolder extends MessageListViewHolder {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final MaterialTextView textView;

    public FooterViewHolder(View view) {
        super(view);
        View findViewById = view.findViewById(R.id.main_text);
        findViewById.getClass();
        this.textView = (MaterialTextView) findViewById;
    }
}
