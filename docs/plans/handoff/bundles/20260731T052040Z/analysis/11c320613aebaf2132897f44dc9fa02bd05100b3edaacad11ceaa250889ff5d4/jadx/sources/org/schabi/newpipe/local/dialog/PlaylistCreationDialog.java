package org.schabi.newpipe.local.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.RelativeLayout;
import androidx.appcompat.app.AlertDialog;
import okio.Options;
import org.jsoup.parser.TokenData;
import org.schabi.newpipe.R;
import org.schabi.newpipe.local.feed.FeedFragment$$ExternalSyntheticLambda9;
import org.schabi.newpipe.views.NewPipeEditText;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class PlaylistCreationDialog extends PlaylistDialog {
    @Override // org.schabi.newpipe.local.dialog.PlaylistDialog, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        if (this.streamEntities == null) {
            return super.onCreateDialog(bundle);
        }
        TokenData inflate = TokenData.inflate(getLayoutInflater());
        NewPipeEditText newPipeEditText = (NewPipeEditText) inflate.builder;
        RelativeLayout relativeLayout = (RelativeLayout) inflate.value;
        Context context = relativeLayout.getContext();
        boolean isLightThemeSelected = Options.Companion.isLightThemeSelected(requireContext());
        int i = R.style.DarkDialogTheme;
        context.setTheme(isLightThemeSelected ? R.style.LightDialogTheme : R.style.DarkDialogTheme);
        newPipeEditText.setHint(R.string.name);
        newPipeEditText.setInputType(1);
        Context requireContext = requireContext();
        if (Options.Companion.isLightThemeSelected(requireContext())) {
            i = R.style.LightDialogTheme;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(requireContext, i);
        builder.setTitle(R.string.create_playlist);
        AlertDialog.Builder view = builder.setView(relativeLayout);
        view.P.mCancelable = true;
        return view.setNegativeButton(R.string.cancel, null).setPositiveButton(R.string.create, new FeedFragment$$ExternalSyntheticLambda9(this, inflate, 6)).create();
    }
}
