package org.schabi.newpipe.fragments.detail;

import android.view.View;
import android.widget.ImageView;
import androidx.sqlite.SQLite;
import androidx.work.OperationKt;
import com.google.android.material.chip.Chip;
import org.schabi.newpipe.R;
import org.schabi.newpipe.views.NewPipeTextView;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final /* synthetic */ class BaseDescriptionFragment$$ExternalSyntheticLambda0 implements View.OnClickListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ BaseDescriptionFragment f$0;

    public /* synthetic */ BaseDescriptionFragment$$ExternalSyntheticLambda0(BaseDescriptionFragment baseDescriptionFragment, int i) {
        this.$r8$classId = i;
        this.f$0 = baseDescriptionFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.$r8$classId;
        BaseDescriptionFragment baseDescriptionFragment = this.f$0;
        switch (i) {
            case 0:
                if (((NewPipeTextView) baseDescriptionFragment.binding.scopeRegistry).getVisibility() != 0) {
                    ((NewPipeTextView) baseDescriptionFragment.binding.scopeRegistry).setVisibility(0);
                    ((NewPipeTextView) baseDescriptionFragment.binding.instanceRegistry).setTextIsSelectable(true);
                    String string = baseDescriptionFragment.getString(R.string.description_select_disable);
                    ((ImageView) baseDescriptionFragment.binding.extensionManager).setContentDescription(string);
                    OperationKt.setTooltipText((ImageView) baseDescriptionFragment.binding.extensionManager, string);
                    ((ImageView) baseDescriptionFragment.binding.extensionManager).setImageResource(R.drawable.ic_close);
                    break;
                } else {
                    baseDescriptionFragment.disableDescriptionSelection();
                    break;
                }
            default:
                int i2 = BaseDescriptionFragment.$r8$clinit;
                if (baseDescriptionFragment.getParentFragment() != null) {
                    SQLite.openSearchFragment(baseDescriptionFragment.getParentFragment().getParentFragmentManager(), baseDescriptionFragment.getServiceId(), ((Chip) view).getText().toString());
                    break;
                }
                break;
        }
    }
}
