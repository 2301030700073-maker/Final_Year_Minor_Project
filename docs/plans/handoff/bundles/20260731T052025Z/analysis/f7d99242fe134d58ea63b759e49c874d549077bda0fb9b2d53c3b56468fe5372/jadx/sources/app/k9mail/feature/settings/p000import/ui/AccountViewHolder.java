package app.k9mail.feature.settings.p000import.ui;

import android.view.View;
import com.fsck.k9.R;
import com.google.android.material.textview.MaterialTextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AccountViewHolder extends ImportCheckBoxViewHolder {
    public final MaterialTextView accountDisplayName;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountViewHolder(View view) {
        super(view);
        view.getClass();
        View findViewById = view.findViewById(R.id.accountDisplayName);
        findViewById.getClass();
        this.accountDisplayName = (MaterialTextView) findViewById;
    }
}
