package app.k9mail.feature.settings.p000import.ui;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.fsck.k9.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textview.MaterialTextView;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ViewHolder {
    public final MaterialButton closeButton;
    public final View importButton;
    public final View importProgressBar;
    public final View loadingProgressBar;
    public final View pickAppButton;
    public final View pickDocumentButton;
    public final View scanQrCodeButton;
    public final RecyclerView settingsImportList;
    public final MaterialTextView statusText;

    public ViewHolder(View view) {
        view.getClass();
        View findViewById = view.findViewById(R.id.pickDocumentButton);
        findViewById.getClass();
        this.pickDocumentButton = findViewById;
        View findViewById2 = view.findViewById(R.id.scanQrCodeButton);
        findViewById2.getClass();
        this.scanQrCodeButton = findViewById2;
        View findViewById3 = view.findViewById(R.id.pickAppButton);
        findViewById3.getClass();
        this.pickAppButton = findViewById3;
        View findViewById4 = view.findViewById(R.id.importButton);
        findViewById4.getClass();
        this.importButton = findViewById4;
        View findViewById5 = view.findViewById(R.id.closeButton);
        findViewById5.getClass();
        this.closeButton = (MaterialButton) findViewById5;
        View findViewById6 = view.findViewById(R.id.loadingProgressBar);
        findViewById6.getClass();
        this.loadingProgressBar = findViewById6;
        View findViewById7 = view.findViewById(R.id.importProgressBar);
        findViewById7.getClass();
        this.importProgressBar = findViewById7;
        View findViewById8 = view.findViewById(R.id.statusText);
        findViewById8.getClass();
        this.statusText = (MaterialTextView) findViewById8;
        View findViewById9 = view.findViewById(R.id.settingsImportList);
        findViewById9.getClass();
        this.settingsImportList = (RecyclerView) findViewById9;
    }
}
