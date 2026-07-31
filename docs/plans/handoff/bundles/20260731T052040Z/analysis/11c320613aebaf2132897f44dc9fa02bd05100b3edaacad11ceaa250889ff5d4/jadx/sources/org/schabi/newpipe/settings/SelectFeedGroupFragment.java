package org.schabi.newpipe.settings;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.jakewharton.rxbinding4.view.ViewClickObservable;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import java.util.Vector;
import net.newpipe.app.AppKt;
import okio.Options;
import org.schabi.newpipe.R;
import org.schabi.newpipe.player.ui.VideoPlayerUi;
import org.schabi.newpipe.settings.SelectChannelFragment;
import org.schabi.newpipe.settings.tabs.ChooseTabsFragment$$ExternalSyntheticLambda4;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes3.dex */
public class SelectFeedGroupFragment extends DialogFragment {
    public TextView emptyView;
    public ProgressBar progressBar;
    public RecyclerView recyclerView;
    public ChooseTabsFragment$$ExternalSyntheticLambda4 onSelectedListener = null;
    public List feedGroups = new Vector();

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(Options.Companion.isLightThemeSelected(requireContext()) ? R.style.LightDialogMinWidthTheme : R.style.DarkDialogMinWidthTheme);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.select_feed_group_fragment, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.items_list);
        this.recyclerView = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.recyclerView.setAdapter(new SelectChannelFragment.SelectChannelAdapter(this, 1));
        this.progressBar = (ProgressBar) inflate.findViewById(R.id.progressBar);
        this.emptyView = (TextView) inflate.findViewById(R.id.empty_state_view);
        this.progressBar.setVisibility(0);
        this.recyclerView.setVisibility(8);
        this.emptyView.setVisibility(8);
        new ViewClickObservable(AppKt.getInstance(requireContext()).feedGroupDAO().getAll(), 4).subscribeOn(Schedulers.IO).observeOn(AndroidSchedulers.mainThread()).subscribe(new VideoPlayerUi.AnonymousClass1(this, 14));
        return inflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
    }
}
