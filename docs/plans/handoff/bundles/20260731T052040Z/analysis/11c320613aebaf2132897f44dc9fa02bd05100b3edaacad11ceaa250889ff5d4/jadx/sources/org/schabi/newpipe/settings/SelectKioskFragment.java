package org.schabi.newpipe.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nononsenseapps.filepicker.FileItemAdapter;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.error.ErrorUtil;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public class SelectKioskFragment extends DialogFragment {
    public FileItemAdapter selectKioskAdapter = null;
    public ChooseTabsFragment$$ExternalSyntheticLambda4 onSelectedListener = null;

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(Options.Companion.isLightThemeSelected(requireContext()) ? R.style.LightDialogMinWidthTheme : R.style.DarkDialogMinWidthTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.select_kiosk_fragment, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.items_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        try {
            this.selectKioskAdapter = new FileItemAdapter(this);
        } catch (Exception e) {
            ErrorUtil.showUiErrorSnackbar(this, "Selecting kiosk", e);
        }
        recyclerView.setAdapter(this.selectKioskAdapter);
        return inflate;
    }
}
